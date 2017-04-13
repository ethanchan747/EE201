/*
File     : divider_top_with_single_step_LCD.v 
Author   : Gandhi Puvvada, Prasanjeet Das
Revision  : 1.3
Date : Feb 15, 2008, 10/14/08, 2/22/2010, 4/6/2010

On 4/10/2010, we revised the earlier ivider_top_with_single_step.v
to make it ivider_top_with_single_step_LCD.v (which include LCD interface).
*/

/*
 
 ******* Important difference to note *******
 In the divider_top.v for the divider simple, we had the BtnD to serve as  
 the Start button and BtnR to serve as the Ack button. Here, also we have 
 the same. This is different from the divider_with_debounce design. Here, we
 want to single-step the division while it is in compute state though we
 are running the core design at full 50MHz clock. We use BtnL to single-step.
 ********************************************
 
*/
module divider_top(ClkPort,
								MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS,
								Sw7, Sw6, Sw5, Sw4, Sw3, Sw2, Sw1, Sw0,
								BtnC, BtnD, BtnR, BtnL,
								Ld0, Ld1, Ld2, Ld3, Ld4, Ld5, Ld6, Ld7,
								/* LCD SIGNALS */
								LCD_data, LCD_e, LCD_rs, LCD_rw, LCD_bl,
								/*  */								
								An0, An1, An2, An3,
								Ca, Cb, Cc, Cd, Ce, Cf, Cg, 
								Dp
								);
		/*  INPUTS */
	// Clock & Reset I/O
	input		ClkPort;	
	// Project Specific Inputs
	input		BtnC, BtnD, BtnR, BtnL;	
	input		Sw7, Sw6, Sw5, Sw4, Sw3, Sw2, Sw1, Sw0;
	
	
	/*  OUTPUTS */
	// ROM drivers 	
	output 	MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS;
	// Project Specific Outputs
	// LEDs
	output 	Ld0, Ld1, Ld2, Ld3, Ld4, Ld5, Ld6, Ld7;
	// LCD outputs
	output [7:0] LCD_data;
	output LCD_e, LCD_rs, LCD_rw, LCD_bl;
	// SSD Outputs
	output 	Cg, Cf, Ce, Cd, Cc, Cb, Ca, Dp;
	output 	An0, An1, An2, An3;	
	
	/*  LOCAL SIGNALS */
	wire		Reset, ClkPort;
	wire		board_clk, sys_clk;
	wire [1:0] 	ssdscan_clk;
	
	wire [3:0] 	Xin, Yin;
	wire [3:0] 	Quotient, Remainder;
	wire 		Start, Ack;
	// wire  	Start_Ack_SCEN; // used in the divider_with_debounce
	wire 		Done, Qi, Qc, Qd;
	
	wire		SCEN; // Single CEN (one clock-wide Single Clock Enable for single-stepping)
	
// to produce divided clock
	reg [26:0]	DIV_CLK;
// SSD (Seven Segment Display)
	reg [3:0]	SSD;
	wire [3:0]	SSD3, SSD2, SSD1, SSD0;
	reg [7:0]  	SSD_CATHODES;
	
	//intermediate data wires carrying the 32 characters to the LCD module
	wire [7:0]  data1, data2, data3, data4, data5, data6, data7, data8,
				   data9, data10, data11, data12, data13, data14, data15, data16,
					data17, data18, data19, data20, data21, data22, data23, data24,
					data25, data26, data27, data28, data29, data30, data31, data32;	
//------------
// CLOCK DIVISION

	// The clock division circuitary works like this:
	//
	// ClkPort ---> [BUFGP2] ---> board_clk
	// board_clk ---> [clock dividing counter] ---> DIV_CLK
	// DIV_CLK ---> [constant assignment] ---> sys_clk;
	BUFGP BUFGP1 (board_clk, ClkPort); 	
	BUF BUF2 (Reset, BtnC);
	
	// Our clock is too fast (50MHz) for SSD scanning
	// create a series of slower "divided" clocks
	// each successive bit is 1/2 frequency
	// reg [26:0]	DIV_CLK;
	always @ (posedge board_clk, posedge Reset)  
	begin : CLOCK_DIVIDER
      if (Reset)
			DIV_CLK <= 0;
      else
			// just incrementing makes our life easier
			DIV_CLK <= DIV_CLK + 1'b1;
	end	
	
	// In this design, we run the core design at full 50MHz clock!
	assign	sys_clk = board_clk;
	// assign	sys_clk = DIV_CLK[24];
	
	// Disable the two memories on the board, since they are not used in this design
	assign {MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS} = {5'b11111};

	//------------         

	assign Xin = {Sw7, Sw6, Sw5, Sw4};
	assign Yin = {Sw3, Sw2, Sw1, Sw0};
	
	
	
	assign Start = BtnD; assign Ack = BtnR; // This was used in the divider_simple and also here
ee201_debouncer #(.N_dc(24)) ee201_debouncer_1 
        (.CLK(sys_clk), .RESET(Reset), .PB(BtnL), .DPB( ), .SCEN(SCEN), .MCEN( ), .CCEN( ));
						
	// instantiate the core divider design. Note the .SCEN(SCEN)
	divider divider_1(.Xin(Xin), .Yin(Yin), .Start(Start), .Ack(Ack), .Clk(sys_clk), .Reset(Reset), 
				.SCEN(SCEN), .Done(Done), .Quotient(Quotient), .Remainder(Remainder), .Qi(Qi), .Qc(Qc), .Qd(Qd) );

//------------
// OUTPUT: LEDS
	
	assign {Ld7, Ld6, Ld5, Ld4} = {Qi, Qc, Qd, Done};
	assign {Ld3, Ld2, Ld1, Ld0} = {Reset, BtnL, BtnD, BtnR}; // Reset is driven by BtnC
//------------
// SSD (Seven Segment Display)
	// reg [3:0]	SSD;
	// wire [3:0]	SSD3, SSD2, SSD1, SSD0;
	
	//SSDs display Xin, Yin, Quotient, and Reminder  
	assign SSD3 = Xin;
	assign SSD2 = Yin;
	assign SSD1 = Quotient;
	assign SSD0 = Remainder;


	// need a scan clk for the seven segment display 
	// 191Hz (50MHz / 2^18) works well
	assign ssdscan_clk = DIV_CLK[18:17];	
	assign An0	= !(~(ssdscan_clk[1]) && ~(ssdscan_clk[0]));  // when ssdscan_clk = 00
	assign An1	= !(~(ssdscan_clk[1]) &&  (ssdscan_clk[0]));  // when ssdscan_clk = 01
	assign An2	=  !((ssdscan_clk[1]) && ~(ssdscan_clk[0]));  // when ssdscan_clk = 10
	assign An3	=  !((ssdscan_clk[1]) &&  (ssdscan_clk[0]));  // when ssdscan_clk = 11
	
	
	always @ (ssdscan_clk, SSD0, SSD1, SSD2, SSD3)
	begin : SSD_SCAN_OUT
		case (ssdscan_clk) 
				  2'b00: SSD = SSD0;
				  2'b01: SSD = SSD1;
				  2'b10: SSD = SSD2;
				  2'b11: SSD = SSD3;
		endcase 
	end

	// Following is Hex-to-SSD conversion
	always @ (SSD) 
	begin : HEX_TO_SSD
		case (SSD) // in this solution file the dot points are made to glow by making Dp = 0
		    //                                                                abcdefg,Dp
			4'b0000: SSD_CATHODES = 8'b00000010; // 0
			4'b0001: SSD_CATHODES = 8'b10011110; // 1
			4'b0010: SSD_CATHODES = 8'b00100100; // 2
			4'b0011: SSD_CATHODES = 8'b00001100; // 3
			4'b0100: SSD_CATHODES = 8'b10011000; // 4
			4'b0101: SSD_CATHODES = 8'b01001000; // 5
			4'b0110: SSD_CATHODES = 8'b01000000; // 6
			4'b0111: SSD_CATHODES = 8'b00011110; // 7
			4'b1000: SSD_CATHODES = 8'b00000000; // 8
			4'b1001: SSD_CATHODES = 8'b00001000; // 9
			4'b1010: SSD_CATHODES = 8'b00010000; // A
			4'b1011: SSD_CATHODES = 8'b11000000; // B
			4'b1100: SSD_CATHODES = 8'b01100010; // C
			4'b1101: SSD_CATHODES = 8'b10000100; // D
			4'b1110: SSD_CATHODES = 8'b01100000; // E
			4'b1111: SSD_CATHODES = 8'b01110000; // F    
			default: SSD_CATHODES = 8'bXXXXXXXX; // default is not needed as we covered all cases
		endcase
	end	
	
	// reg [7:0]  SSD_CATHODES;
	assign {Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp} = {SSD_CATHODES};
	

//------------ LCD interface starts here -------------------

	// we only write to the LCD panel, so ..
	assign LCD_bl = 0;	

	
	//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	//#########################################################################################################
	// THE STUDENTS NEED TO CHANGE JUST THE FOLLOWING PORTION OF THE CODE WHICH TAKES THE 32 DATA ITEMS TO BE 
	// GIVEN TO THE LCD CONTROLLER, REMEMBER TO USE THE FUNCTION bin2hex WHILE SENDING NUMERALS!!
	//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
	//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	//data assignment 
	
	//  NOTE: send the text message in character format and use "bin2hex" function for sending numerals
	
	//LINE 1
	assign data1 = " ";
	assign data2 = "X";
	assign data3 = " ";
	assign data4 = "=";
	assign data5 = " ";
	assign data6 = bin2x(0);  //note the use of function bin2hex
	assign data7 = bin2x(Xin);  //note the use of function bin2hex
	assign data8 = " ";
	assign data9 = " ";
	assign data10 = "Y";
	assign data11 = " ";
	assign data12 = "=";
	assign data13 = " ";
	assign data14 = bin2x(0);   //note the use of function bin2hex
	assign data15 = bin2x(Yin); //note the use of function bin2hex
	assign data16 = " ";
	
	// LINE 2
	assign data17 = " ";
	assign data18 = "Q";
	assign data19 = " ";
	assign data20 = "=";
	assign data21 = " ";
	assign data22 = bin2x(0);  //note the use of function bin2hex
	assign data23 = bin2x(Quotient);  //note the use of function bin2hex
	assign data24 = " ";
	assign data25 = " ";
	assign data26 = "R";
	assign data27 = " ";
	assign data28 = "=";
	assign data29 = " ";
	assign data30 = bin2x(0);   //note the use of function bin2hex
	assign data31 = bin2x(Remainder); //note the use of function bin2hex
	assign data32 = " ";	
	
	//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	//#########################################################################################################
	
	
	// Instantiate the Unit Under Test (UUT)
	lcd_core uut (
		.clk(board_clk), 
		.reset(reset), 
		.lcd_data(LCD_data), 
		.lcd_e(LCD_e), 
		.lcd_rs(LCD_rs),
		.lcd_rw(LCD_rw),
		.data_f1(data1), .data_f2(data2), .data_f3(data3), .data_f4(data4), .data_f5(data5),.data_f6(data6), 
		.data_f7(data7), .data_f8(data8), .data_f9(data9), .data_f10(data10), .data_f11(data11), .data_f12(data12), 
		.data_f13(data13), .data_f14(data14), .data_f15(data15), .data_f16(data16),.data_s1(data17), .data_s2(data18), 
		.data_s3(data19), .data_s4(data20), .data_s5(data21),.data_s6(data22), .data_s7(data23), .data_s8(data24),
		.data_s9(data25), .data_s10(data26), .data_s11(data27), .data_s12(data28), .data_s13(data29), .data_s14(data30),
		.data_s15(data31), .data_s16(data32)
	);
	
//function for binary to hexadecimal(character) conversion
function [7:0] bin2x;
 input [3:0] data;
  begin
	case (data)
	4'h0:	bin2x = "0";4'h1:	bin2x = "1";4'h2:	bin2x = "2";4'h3:	bin2x = "3";
	4'h4:	bin2x = "4";4'h5:	bin2x = "5";4'h6:	bin2x = "6";4'h7:	bin2x = "7";
	4'h8:	bin2x = "8";4'h9:	bin2x = "9";4'hA:	bin2x = "A";4'hB:	bin2x = "B";
	4'hC:	bin2x = "C";4'hD:	bin2x = "D";4'hE:	bin2x = "E";4'hF:	bin2x = "F";
	default:bin2x = "0";
	endcase
  end
endfunction
	
endmodule
