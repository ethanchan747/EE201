/*
File     : divider_top_with_VIO_multi_step.v 
Author   : Gandhi Puvvada
Revision  : 2.0
Date : Feb 15, 2008, 10/14/08, 2/22/2010, 2/29/2012 
// Revised to suit Nexys-3: 2/29/2012
Translation from VHDL code of EE560 to Verilog for EE201L: 
by Matthew Christian and Gandhi Puvvada
*/

/*
 
 ******* Important differences to note *******
 Here, we want to multi-step the division
 while it is in the compute state though we
 are running the core design at full 100MHz clock. 
 Multi-step = a sequence of single-steps when you keep 
 pressing the button.
 We use BtnU to single-step/multi-step.
 Note: The multi-step allows single-stepping also if 
 you can release BtnU quickly after pressing.
 To demonstrate the need for multi-step, we changed 
 the size of of division from 4-bit to 8-bit.
 Now, "FF" divided by "01" will take 256 clocks in the 
 compute state. So, instead of single-stepping, we can 
 multi-step by just holding the BtnU.  
 
 In this design, we demonstrate the use of VIO to provide
 8-bit operands Xin and Yin. The 8 switches on the Nexys-3
 board (Sw7, Sw6, Sw5, Sw4, Sw3, Sw2, Sw1, Sw0) are not 
 sufficient to provide 8+8=16 bits of input.
 So we are using the 16 "virtual" switches on the Adept-2 
 I/O Ex (for I/O Expansion) tab.
 
 We still use the five buttons on the Nexys-3 board but these 
 buttons are paralleled with the corresponding right-most 5
 buttons on the bottom row of buttons on the VIO.   
 Similarly the 8 LEDs on the Nexy-3 and the 8 LEDs on the VIO
 display identically. 
 
 7-segment displays on Nexys-3 board:
 The 4-digit display can only display two 8-bit items (two 2-digit hex items,
 one pair at a time).
 We display "Xin and Yin" pair in the "initial" state and "Quotient and Remainder" 
 pair in the "compute" and "done" states. 
 We press and hold BtnR to show the secondary display on the SSDs.
 If BtnR is pressed we show the other display ("Quotient and Remainder" 
 in the "initial" state and "Xin and Yin" pair in the
 "compute" and "done" states).
 
 Debounced BtnL acts as the Start signal as well as Acknowledge signal.
 ********************************************
 
*/
module divider_top
		(EppAstb, EppDstb, EppWr, EppDB, EppWait,	// EPP communication signals
		MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS, // Disable the three memory chips

        ClkPort,                           // the 100 MHz incoming clock signal
		
		BtnL, BtnU, BtnD, BtnR,            // the Left, Up, Down, and the Right buttons BtnL, BtnR,
		BtnC,                              // the center button (this is our reset in most of our designs)
		Sw7, Sw6, Sw5, Sw4, Sw3, Sw2, Sw1, Sw0, // 8 switches (Not used here but let us keep them here for uniformity)
		Ld7, Ld6, Ld5, Ld4, Ld3, Ld2, Ld1, Ld0, // 8 LEDs
		An3, An2, An1, An0,			       // 4 anodes
		Ca, Cb, Cc, Cd, Ce, Cf, Cg,        // 7 cathodes
		Dp                                 // Dot Point Cathode on SSDs
	  );

	  /*  INPUTS */
	// Clock & Reset I/O
	input		ClkPort;	
	// Project Specific Inputs
	input		BtnL, BtnU, BtnD, BtnR, BtnC;
	input		Sw7, Sw6, Sw5, Sw4, Sw3, Sw2, Sw1, Sw0; // Not used here
	// Though these Switches and BtnD are not used here, we wish to keep them in the module port list
    //	so that we can use the same .ucf file uniformly in all our designs
	
	/*  OUTPUTS */
	// Control signals on Memory chips 	(to disable them)
	output 	MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS;

	// Project Specific Outputs
	// LEDs
	output 	Ld0, Ld1, Ld2, Ld3, Ld4, Ld5, Ld6, Ld7;
	// SSD Outputs
	output 	Cg, Cf, Ce, Cd, Cc, Cb, Ca, Dp;
	output 	An0, An1, An2, An3;	
	
	input			EppAstb, EppDstb, EppWr;
    inout [7:0]		EppDB;
    output			EppWait;
	
	/*  LOCAL SIGNALS */
	wire		Reset, ClkPort;
	wire		board_clk, sys_clk;
	wire [1:0] 	ssdscan_clk;
	reg [26:0]	DIV_CLK;
	

	wire [7:0] 	X_from_VIO, Y_from_VIO, X_to_VIO, Y_to_VIO;
	wire [7:0] 	Quotient, Remainder;
	wire 		Start, Ack;
	// wire  	Start_Ack_Pulse; // used in the divider_with_debounce
	wire 		Done, Qi, Qc, Qd;
	
	wire		BtnU_combined_Pulse; // Multiple CEN (sequence of clock-wide pulses acting as Clock Enables for multi-stepping)
	
	wire  BtnL_combined, BtnU_combined, BtnR_combined, BtnD_combined, BtnC_combined;
	
// SSD (Seven Segment Display)
	reg [3:0]	SSD;
	wire [3:0]	SSD3, SSD2, SSD1, SSD0;
	reg [7:0]  	SSD_CATHODES;
	
	wire [15:0] btn_from_VIO, sw_from_VIO;
	wire [7:0] Data_in;
	wire [7:0] led_to_VIO;
	wire [23:0] lbar_to_VIO;
	wire [31:0] dwIn, dwOut;
	
//------------	
// Disable the three memories so that they do not interfere with the rest of the design.
	assign {MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS} = 5'b11111;
	
	
//------------
// CLOCK DIVISION

	// The clock division circuitary works like this:
	//
	// ClkPort ---> [BUFGP2] ---> board_clk
	// board_clk ---> [clock dividing counter] ---> DIV_CLK
	// DIV_CLK ---> [constant assignment] ---> sys_clk;
	
	BUFGP BUFGP1 (board_clk, ClkPort); 	

// As the ClkPort signal travels throughout our design,
// it is necessary to provide global routing to this signal. 
// The BUFGPs buffer these input ports and connect them to the global 
// routing resources in the FPGA.

	// BUFGP BUFGP2 (Reset, BtnC); In the case of Spartan 3E (on Nexys-2 board), we were using BUFGP to provide global routing for the reset signal. But Spartan 6 (on Nexys-3) does not allow this.
	assign Reset = BtnC_combined;
	
//------------
	// Our clock is too fast (100MHz) for SSD scanning
	// create a series of slower "divided" clocks
	// each successive bit is 1/2 frequency
  always @(posedge board_clk, posedge Reset) 	
    begin							
        if (Reset)
		DIV_CLK <= 0;
        else
		DIV_CLK <= DIV_CLK + 1'b1;
    end
//-------------------	
	// In this design, we run the core design at full 50MHz clock!
	assign	sys_clk = board_clk;
	// assign	sys_clk = DIV_CLK[25];

//------------

	//------------         
	// We are not using the switches on board here
	// assign Xin = {Sw7, Sw6, Sw5, Sw4};
	// assign Yin = {Sw3, Sw2, Sw1, Sw0};
		assign X_from_VIO = sw_from_VIO [7:0] | dwOut[15:8];
		assign Y_from_VIO = sw_from_VIO [15:8] | dwOut[7:0];
		assign X_to_VIO = X_from_VIO;
		assign Y_to_VIO = Y_from_VIO; 
		assign dwIn = {X_to_VIO, Y_to_VIO, Quotient, Remainder};

// Instantiation of the IO_Expansion module for using the Adept Virtual IO communication
	IOExpansion IO_Expansion_1 
		(
			.EppAstb (EppAstb), 
			.EppDstb (EppDstb), 
			.EppWr (EppWr), 
			.EppDB (EppDB), 
			.EppWait (EppWait), 
			.Led (led_to_VIO), 
			.LBar (lbar_to_VIO),
			.Sw (sw_from_VIO), 
			.Btn (btn_from_VIO),
			.dwOut (dwOut), 
			.dwIn (dwIn)
		);

	// Buttons by default are in UP position and go down only when pressed
	assign BtnL_combined = BtnL | btn_from_VIO[4];
	assign BtnU_combined = BtnU | btn_from_VIO[3];
	assign BtnR_combined = BtnR | btn_from_VIO[2];
	assign BtnD_combined = BtnD | btn_from_VIO[1];
	assign BtnC_combined = BtnC | btn_from_VIO[0];

	
		
	//assign Start = BtnL; assign Ack = BtnR; // This was used in the divider_simple
	// Unlike in the divider_simple, here we use one button BtnL to represent both Start and Ack
	// Instantiate the debouncer	// module ee201_debouncer(CLK, RESET, PB, DPB, SCEN, MCEN, CCEN);
	// notice the "Start_Ack_Pulse" produced here and sent into the divider core further below
ee201_debouncer #(.N_dc(28)) ee201_debouncer_0 
        (.CLK(sys_clk), .RESET(Reset), .PB(BtnL_combined), .DPB( ), 
		.SCEN(Start_Ack_Pulse), .MCEN( ), .CCEN( ));

	assign Start = Start_Ack_Pulse; 
	assign Ack   = Start_Ack_Pulse; 

	// Produce MCEN pulse using BtnU_combined
ee201_debouncer #(.N_dc(28)) ee201_debouncer_2 
        (.CLK(sys_clk), .RESET(Reset), .PB(BtnU_combined), .DPB( ), .SCEN( ), .MCEN(BtnU_combined_Pulse), .CCEN( ));
						
	// instantiate the core divider design. Note the .MCEN(BtnU_combined_Pulse)
divider divider_1(.Xin(X_from_VIO), .Yin(Y_from_VIO), .Start(Start), .Ack(Ack), .Clk(sys_clk), .Reset(Reset), 
				.MCEN(BtnU_combined_Pulse), .Done(Done), .Quotient(Quotient), .Remainder(Remainder), .Qi(Qi), .Qc(Qc), .Qd(Qd) );


//------------
// OUTPUT: LEDS
	
	assign {Ld7, Ld6, Ld5, Ld4} = {Qi, Qc, Qd, Done};
	assign {Ld3, Ld2, Ld1, Ld0} = {BtnL_combined, BtnU_combined, BtnR_combined, BtnD_combined}; // reset is driven by BtnC_combined 
	assign led_to_VIO = {Qi, Qc, Qd, Done, BtnL_combined, BtnU_combined, BtnR_combined, BtnD_combined}; 							
    assign lbar_to_VIO[23:16] =  {8{BtnL_combined}};
	assign lbar_to_VIO[15:8]  =  {8{BtnU_combined}};
	assign lbar_to_VIO[7:0]   =  {8{BtnR_combined}};
	
//------------
// SSD (Seven Segment Display)
	// reg [3:0]	SSD;
	// wire [3:0]	SSD3, SSD2, SSD1, SSD0;
	
	//SSDs display Xin, Yin, Quotient, and Reminder  
	// BtnR_combined acts like a display selecter
	assign SSD3 = BtnR_combined ? (Qi ? Quotient[7:4] : X_from_VIO[7:4] ) : (Qi ? X_from_VIO[7:4] : Quotient[7:4]);
	assign SSD2 = BtnR_combined ? (Qi ? Quotient[3:0] : X_from_VIO[3:0]) : (Qi ? X_from_VIO[3:0] : Quotient[3:0]);
	assign SSD1 = BtnR_combined ? (Qi ? Remainder[7:4] : Y_from_VIO[7:4] ) : (Qi ? Y_from_VIO[7:4] : Remainder[7:4]);
	assign SSD0 = BtnR_combined ? (Qi ? Remainder[3:0] : Y_from_VIO[3:0]) : (Qi ? Y_from_VIO[3:0] : Remainder[3:0]);


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
	
endmodule
