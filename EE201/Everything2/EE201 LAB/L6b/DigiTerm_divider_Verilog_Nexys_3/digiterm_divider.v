/*
File     : digiterm_divider.v (based on my digiterm_example and Digilent's EppReg.vhd)
Author   : Gandhi Puvvada
Revision  : 1.0, 1.1 
Date : 5/7/2010, 5/9/2010, 5/31/2010, 4/23/2011, 3/25/2012
On 3/25/2012, revised to suit Nexys-3
*/
/*
This design sends out a welcoming message, prompts the user
to input two two-digit hex numbers (for dividend Xin and divisor Yin), performs division and displays the results Quotient and Remainder.
*/
/*
EppReg.vhd (together with DigilentTerminal.exe) was provided by Digilentinc.
This helps an user to send ASCII characters to the terminal and also receive 
ASCII characters from the terminal.
I have translated EppReg.vhd into Verilog and also improved it for this design.
*/

/*
 Make sure to use the DigiTerm_divider.ucf file containing pin info.
*/
module digiterm_divider
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
	
	reg  		CEN;
	reg	 [11:0]	Clocks_taken_count, Clock_Step_CEN_counter;	

	// SSD (Seven Segment Display)
	reg [3:0]	SSD;
	wire [3:0]	SSD3, SSD2, SSD1, SSD0;
	reg [7:0]  	SSD_CATHODES;
	
		
	// Epp interface -- Local signals
	reg EppWait;
	reg pASTB, ppASTB, pDSTB, ppDSTB;
	reg pEppWr, ppEppWr, pppEppWr, ppppEppWr;
	wire iASTB, iDSTB;
	reg iRDYOUT, iRDYIN;
	reg rAdr0; // 1-bit address register; rAdr0 == 1'b0 means data and rAdr0 == 1'b1 means status 
	reg [7:0]  	pEppDB, ppEppDB, pppEppDB, ppppEppDB, Char_to_Terminal, Char_from_terminal;
	wire [7:0] 	Char_or_Status_to_Terminal, Status;
	reg [7:0]	X_2_digit_hex, Y_2_digit_hex;
	
	reg [7:0]	Step; // This "step" is a counter indicating the step to be performed
				// Example: If step # is 8, send message 8, gather X.
	reg 		Busy; 	// Busy == 1'b1; means it is busy performing the step
						// Busy == 1'b0; means next task (next step) can be assigned
	reg [7:0]	Message_Length; // 
	wire		SETIN , CLROUT;  // ****************************
	reg [8*70:1] message;


	localparam CR = 8'h0D, LF = 8'h0A; 
	// the CR (carriage return and LF (line feed) ascii characters

// local signals for interfacing the core design, the divider
// module divider (Xin, Yin, Start, Ack, Clk, Reset, Done, Quotient, Remainder, Qi, Qc, Qd);
	wire [7:0] Quotient, Remainder;
	reg        Start, Ack;
	wire       Done, Qi, Qc, Qd;
	

//function for binary to ascii conversion
function [7:0] bin2ascii;
 input [3:0] data;
  begin
	case (data)
	4'h0:	bin2ascii = "0";  4'h1:	bin2ascii = "1";  4'h2:	bin2ascii = "2";  4'h3:	bin2ascii = "3";  
	4'h4:	bin2ascii = "4";  4'h5:	bin2ascii = "5";  4'h6:	bin2ascii = "6";  4'h7:	bin2ascii = "7";  
	4'h8:	bin2ascii = "8";  4'h9:	bin2ascii = "9";  4'hA:	bin2ascii = "A";  4'hB:	bin2ascii = "B";  
	4'hC:	bin2ascii = "C";  4'hD:	bin2ascii = "D";  4'hE:	bin2ascii = "E";  4'hF:	bin2ascii = "F";  
	default:bin2ascii = "0";  
	endcase
  end
endfunction

//function for ascii to binary conversion
function [3:0] ascii2bin;  
 input [7:0] char;  
  begin
	case (char)
	"0":	ascii2bin = 4'h0;  "1":	ascii2bin = 4'h1;  "2":	ascii2bin = 4'h2;  "3":	ascii2bin = 4'h3;  
	"4":	ascii2bin = 4'h4;  "5":	ascii2bin = 4'h5;  "6":	ascii2bin = 4'h6;  "7":	ascii2bin = 4'h7;  
	"8":	ascii2bin = 4'h8;  "9":	ascii2bin = 4'h9;  "A","a":	ascii2bin = 4'hA;  "B","b":	ascii2bin = 4'hB;  
	"C","c":	ascii2bin = 4'hC;  "D","d":	ascii2bin = 4'hD;  "E","e":	ascii2bin = 4'hE;  "F","f":	ascii2bin = 4'hF;  
	default:ascii2bin = 4'h0;  
	endcase
  end
endfunction

//------------	
// Disable the three memories so that they do not interfere with the rest of the design.
	assign {MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS} = 5'b11111;


// CLOCK DIVISION

	// The clock division circuitary works like this:
	//
	// ClkPort ---> [BUFGP2] ---> board_clk
	// board_clk ---> [clock dividing counter] ---> DIV_CLK
	// DIV_CLK ---> [constant assignment] ---> sys_clk;
	BUFGP BUFGP1 (board_clk, ClkPort); 	
//	BUFGP BUFGP2 (Reset, Btn3);
	BUF BUF2 (Reset, BtnC);
	
	// Our clock is too fast (50MHz) for SSD scanning
	// create a series of slower "divided" clocks
	// each successive bit is 1/2 frequency
	// reg [26:0]	DIV_CLK;
	always @ (posedge board_clk, posedge Reset)  
	begin : CLOCK_DIVIDER
      if (Reset)
		begin
			DIV_CLK <= 0;
			//DIV_CLK_26_delayed <= 1'b0;
		end
      else
		begin
			DIV_CLK <= DIV_CLK + 1'b1;
			//DIV_CLK_26_delayed <= DIV_CLK[26]; // used in incrementing two_second_timer_counter
		end
	end	
	
	// in this design with a terminal interface, we are using the full speed clock
	assign	sys_clk = board_clk;


//------------
// SSD (Seven Segment Display)
	
  assign Dp = 1'b1; // keep the decimal points off
  
//assign sys_clk = divclk[17];  // a slow clock for use by students core design 
                                // divclk[17] (~191Hz) = (50MHz / 2 **18)
  // assign sev_seg_clk  = DIV_CLK[15:14]; // 7 segment display scanning is completed 
						 // every divclk[16] (~381Hz) = (50MHz / 2 **17)
assign ssdscan_clk = DIV_CLK[18:17];

assign An0	= ~(~(ssdscan_clk[1]) && ~(ssdscan_clk[0]));  // when ssdscan_clk = 00
assign An1	= ~(~(ssdscan_clk[1]) &&  (ssdscan_clk[0]));  // when ssdscan_clk = 01
assign An2	= ~( (ssdscan_clk[1]) && ~(ssdscan_clk[0]));  // when ssdscan_clk = 10
assign An3	= ~( (ssdscan_clk[1]) &&  (ssdscan_clk[0]));  // when ssdscan_clk = 11

assign SSD0 = Y_2_digit_hex[3:0];
assign SSD1 = Y_2_digit_hex[7:4];
assign SSD2 = X_2_digit_hex[3:0];
assign SSD3 = X_2_digit_hex[7:4];

always @ (ssdscan_clk, SSD0, SSD1, SSD2, SSD3)
begin
   case (ssdscan_clk) 
           2'b00: SSD = SSD0;
           2'b01: SSD = SSD1;
           2'b10: SSD = SSD2;
           2'b11: SSD = SSD3;
   endcase 
end

reg [6:0]  cathodes;
// Following is Hex-to-SSD conversion. Even though
assign   {Ca, Cb, Cc, Cd, Ce, Cf, Cg} = cathodes; 
//
//
always @ (SSD)
    begin
      case (SSD)
        4'b0000: cathodes = 7'b0000001 ; // 0
        4'b0001: cathodes = 7'b1001111 ; // 1
        4'b0010: cathodes = 7'b0010010 ; // 2
        4'b0011: cathodes = 7'b0000110 ; // 3
        4'b0100: cathodes = 7'b1001100 ; // 4
        4'b0101: cathodes = 7'b0100100 ; // 5
        4'b0110: cathodes = 7'b0100000 ; // 6
        4'b0111: cathodes = 7'b0001111 ; // 7
        4'b1000: cathodes = 7'b0000000 ; // 8
        4'b1001: cathodes = 7'b0000100 ; // 9
        4'b1010: cathodes = 7'b0001000 ; // A
        4'b1011: cathodes = 7'b1100000 ; // b
        4'b1100: cathodes = 7'b0110001 ; // C
        4'b1101: cathodes = 7'b1000010 ; // d
        4'b1110: cathodes = 7'b0110000 ; // E
        4'b1111: cathodes = 7'b0111000 ; // F    
        default: cathodes = 7'bXXXXXXX ; // default isnot needed as we covered all cases
      endcase
    end
// end of SSD (Seven Segment Display) code
//------------
	
	

	//------------         

	assign {Ld7, Ld6, Ld5, Ld4} = {iRDYOUT, iRDYOUT, iRDYIN, iRDYIN}; // status info display
	assign {Ld3, Ld2, Ld1, Ld0} = {BtnL, BtnU, BtnR, BtnD}; // Reset is driven by BtnC
	
	
// Instantiate the lower-level component
// module divider (Xin, Yin, Start, Ack, Clk, Reset, Done, Quotient, Remainder, Qi, Qc, Qd);
divider divider_1 (.Xin(X_2_digit_hex), .Yin(Y_2_digit_hex), .Start(Start), .Ack(Ack), .Clk(sys_clk), .CEN(CEN), .Reset(Reset), .Done(Done), .Quotient(Quotient), .Remainder(Remainder), .Qi(Qi), .Qc(Qc), .Qd(Qd));


// actual body of Epp interface code
assign EppDB = ( (~EppWr) |  EppDstb) ? 8'bZ : Char_or_Status_to_Terminal; // In this design, address is never read by the master
assign Char_or_Status_to_Terminal = rAdr0 ? Status : Char_to_Terminal;
assign Status =  { {4{1'b0}}, SETIN , CLROUT , iRDYIN , iRDYOUT};

assign SETIN = 1'b0; assign CLROUT = 1'b0; // This is a deviation from EppReg.vhd
// In EppReg.vhd, the depression of Btn1 (of Nexys-2) makes SETIN go high which causes iRDYin to go low.
	// iRDYIN == 1'b1; means that there is no pending data (sent by us) 
	// which is yet to be transmitted to the EppMaster. Means we can send a character to Epp.
// While human operation of Btn1 tends to be very long, if SETIN is produced by user hardware
// and if it is a short lived pulse (like a 20ns SCEN pulse from the push-button debouncer), 
// we need to have a stayput signal for Epp to poll. So the SETIN causes iRDYIN to go to zero.
// The Epp master polls the status and gets to see that iRDYIN is zero.
//  assign Status =  { {4{1'b0}}, SETIN , CLROUT , iRDYIN , iRDYOUT};
// And it (the Epp Master) initiates collection of the character on DATAIN.
// 
// Here, in our design, we do not produce SETIN per say, but when we want to send a character, 
// we will directly (synchronously) clear iRDYIN flip-flop per one single clock. 
// The 50Mhz system is sending the character, and since 20ns is very short and fast,
// it is unnecessary to check that SETIN has gone to zero. 
// In fact in our design, there is no pulse called
// SETIN. We directly produce the stayput signal iRDYIN.
// In our design, SETIN is a stayput signal (not a pulse), which is constantly zero.
// We created this because the Epp Master polls this signal.

// Similarly, in EppReg.vhd, the depression of Btn0 (of Nexys02) makes CLROUT go high, which causes iRDYout to go low.
	// iRDYOUT == 1'b0; means, we have no pending data previously sent by the Epp master
	// yet to receive. So Epp master can send us the next character.
// Since human operation of Btn0 tends to be very long, the CLROUT pulse is very long.
// However long it is, it is still a pulse. The iRDYOUT is a stayput signal. 
// The Epp master (perhaps) polls to see
// if the human stopped operating the Btn0 (i.e. CLROUT == 1'b0 && iRDYOUT == 1'b0)
// before initiating transmission of the next character to the human.
// Since, here, the 50Mhz system is collecting the character, 
// it is unnecessary to check that CLROUT has gone to zero. 
// In fact in our design, there is no pulse called
// CLROUT. We directly produce the stayput signal iRDYOUT.
// In our design, CLROUT is a stayput signal (not a pulse), which is constantly zero.
// We created this because the Epp Master polls this signal.

// Previously the iASTB pulse was produced at the begining of the ASTB as shown below
/* assign iASTB = (ppASTB & (~pASTB)); */
// iASTB	<= '1' when ppASTB = '1' and pASTB = '0' else '0';
// iASTB is a 1-clock wide short active-high pulse, which goes active 
// a little after EppAstb goes active (=low)

// Now I am producing iASTB pulse a little *after* the end of the iASTB pulse 
assign iASTB = ((~ppASTB) & pASTB);

// Similarly instead of producing the iDSTB a little after the beginning of the
// DSTB strobe, here we are creating the pulse a little after the end of the DSTB stobe.
// It was previously  
/* assign iDSTB = (ppDSTB & (~pDSTB)); */
// iDSTB <= '1' when ppDSTB = '1' and pDSTB = '0' else '0';
// iDSTB is a 1-clock wide short active-high pulse, which goes active 
// a little after EppDstb goes active (=low)

// Now I am producing iDSTB pulse a little *after* the end of the iDSTB pulse 
assign iDSTB = ((~ppDSTB) & pDSTB);

// You may be wondering, how can you capture the data after it has gone.
// Well, we keep old copies of the data in pipeline registers and capture the oldest (depest)
// pipeline register data into the destination using the above pulses.

		
always @ (posedge sys_clk, posedge Reset)
  begin : Epp_interface
	integer k;
	if (Reset)
	
	  begin 
		iRDYOUT <= 1'b0;	
		// iRDYOUT <= 1'b0; means, we have no pending data previously sent by the Epp master
		// yet to receive (consume). So Epp master can send us the first character.
		iRDYIN <= 1'b1; 
		// iRDYIN <= 1'b1; means that the Epp master has no pending data (sent by us) yet to
		// collect. Means we can send a character to Epp.
		rAdr0  <= 1'b0;	// perhaps it is unimportant to initialize it this way.
		// Most likely the master would not assume that it is reset in this fashion.
		// The master would deposit an address in the address register, before 
		// trying to exchange data/status.
		EppWait <= 1'b0;
		Char_from_terminal <= 8'bXXXXXXXX;
		Char_to_Terminal <= 8'bXXXXXXXX;
		pEppDB <= 8'bXXXXXXXX; ppEppDB <= 8'bXXXXXXXX; pppEppDB <= 8'bXXXXXXXX; ppppEppDB <= 8'bXXXXXXXX; 
		X_2_digit_hex <= 8'bXXXXXXXX;
		Y_2_digit_hex <= 8'bXXXXXXXX;
		pASTB <= 1'b1; ppASTB <= 1'b1;
		pDSTB <= 1'b1; ppDSTB <= 1'b1;
		Step <= 8'h00; Busy <= 1'b0;
		message 		<= 'hX;  // {70{"%"}};  // 'hX; 
		Message_Length  <= 8'hXX;
		Start <= 1'bX;  Ack <= 1'bX; // To convey to the divider
		Clocks_taken_count <= 'hX; Clock_Step_CEN_counter <= 'hX; // notice the unsized constant 'hX
	  end
	  
	else // means on positive edge of the clock
	
	  begin
	  
	  // pipeline registers to produced delayed versions of the 
	  // Address and Data strobes to facilitate the generation of 
	  // the one-clock-wide pulses iASTB and iDSTB.
	  // These pulses in turn help capturing the EppDB into address 
	  // or data registers. Also the handshake control signals/flags
	  // could be updated and EppWait could be controlled using these.
	  
         pASTB  <= EppAstb;
         ppASTB <= pASTB;
         pDSTB  <= EppDstb;
         ppDSTB <= pDSTB;
		 
		 pEppWr <= EppWr;		
		 ppEppWr <= pEppWr;     
		 pppEppWr <= ppEppWr;   
		 ppppEppWr <= pppEppWr; 
		 
		//Pipeline registers constantly gathering data	(like the cockpit recorder in the blackbox)	
		pEppDB <= EppDB; ppEppDB <= pEppDB; pppEppDB <= ppEppDB; ppppEppDB <= pppEppDB;

// Gather the address sent by the Epp master
		
/*Previously address is captured at the beginning of the address strobe by digilent.		
		// allow the DigilentTerminal.exe (through the Epp Master in the USB interface chip) 
		// change the address at its will to poll the status and exchange data
		if ((iASTB) & (~EppWr))
            rAdr0 <= EppDB[0];
*/
// Now gather it at the end of the address strobe.
        if ((iASTB) & (~ppppEppWr)) 
            begin rAdr0 <= ppppEppDB[0]; end
        
		
// Gather the character sent by the Epp master
		
/*Previously data is captured at the beginning of the data strobe by Digilent.
		// Gather the character sent by the Epp master 
        if ((~rAdr0) & (iDSTB) & (~EppWr))
            Char_from_terminal <= EppDB;
*/			
// Now gather it at the end of the data strobe. 
        if ((~rAdr0) & (iDSTB) & (~ppppEppWr)) 
            begin  Char_from_terminal <= ppppEppDB; end

		if ((~ppASTB) | (~ppDSTB))
            EppWait <= 1'b1;
         else
            EppWait <= 1'b0;

        if ((~rAdr0) & (iDSTB) & (~ppppEppWr)) // if Epp master sends us a data  // It was ((~rAdr0) & (iDSTB) & (~EppWr))
            iRDYOUT <= 1'b1;
         // else if (CLROUT) // *******************************************
         //   iRDYOUT <= 1'b0;  // *******************************************
         
        if ( (rAdr0 == 1'b0) & (iDSTB == 1'b1)  & (ppppEppWr == 1'b1) ) // if Epp master collects the data sent by us // it was ( (rAdr0 == 1'b0) & (iDSTB == 1'b1)  & (EppWr == 1'b1) )
            iRDYIN <= 1'b1;
         // else if (SETIN) // *******************************************
         //  iRDYIN <= 1'b0; // *******************************************
			
//======================== Keep a count of clocks taken
	if (Qc && CEN)
		Clocks_taken_count <= Clocks_taken_count + 1;			
//========================			
// 
	    if (!Busy)
		 begin
			message <= {70{"%"}}; // Instead of a default space character, we are using "%" to easily detect any coding error.
			// So if we see "%" on the terminal, we know that something went wrong.
			case (Step)
			 8'h00:  begin 
						Message_Length <= 29; message <= {CR, LF, " Welcome to USC EE201L!", CR, LF, CR, LF}; Busy <= 1'b1; end
			 8'h01:  begin Message_Length <= 31; message <= {" Student Name: Tommy Trojan", CR, LF, CR, LF}; Busy <= 1'b1; end
			 8'h02:  begin Message_Length <= 50; message <= {" Demo of DigiTerm using Divider as core design", CR, LF, CR, LF}; Busy <= 1'b1; end
			 //                                              123456789012345678901234567890123456789012345678901234567890
			 8'h03:  begin 
						Start <= 1'b0;  Ack <= 1'b0; // Initialize these
						Clocks_taken_count <= 0; Clock_Step_CEN_counter <= 0; // Initialize these			 
						Message_Length <= 60; message <= {" Type-in a 2-digit hex for Xin and a two-digit hex for Yin", CR, LF}; Busy <= 1'b1; end
			 8'h04:  begin Message_Length <= 51; message <= {" We will compute Quotient and Remainder in hex!", CR, LF, CR, LF}; Busy <= 1'b1; end
			 8'h05:  begin Message_Length <= 7; message <= {" Xin = "}; Busy <= 1'b1; end
			 8'h06:  begin  // Echo the first digit of the 2-digit X
						if (iRDYOUT == 1)
							begin
								Message_Length <= 1; 
								message <= {Char_from_terminal};
								X_2_digit_hex[7:4] <= ascii2bin ( Char_from_terminal );
								iRDYOUT <= 1'b0; // CLROUT <= 1'b1;
								Busy <= 1'b1; 
							end
					end
			 8'h07:  begin // Echo the second digit of the 2-digit X
						if (iRDYOUT == 1)
							begin
								Message_Length <= 1; 
								message <= {Char_from_terminal};
								X_2_digit_hex[3:0] <= ascii2bin ( Char_from_terminal );
								iRDYOUT <= 1'b0; // CLROUT <= 1'b1;
								Busy <= 1'b1; 
							end
					end
			 8'h08:  begin 
						Message_Length <= 2; message <= {CR, LF}; Busy <= 1'b1; end
			 8'h09:  begin Message_Length <= 7; message <= {" Yin = "}; Busy <= 1'b1; end
			 8'h0A:  begin  // Echo the first digit of the 2-digit X
						if (iRDYOUT == 1)
							begin
								Message_Length <= 1; 
								message <= {Char_from_terminal};
								Y_2_digit_hex[7:4] <= ascii2bin ( Char_from_terminal );
								iRDYOUT <= 1'b0; // CLROUT <= 1'b1;
								Busy <= 1'b1; 
							end
					end
			 8'h0B:  begin // Echo the second digit of the 2-digit X
						if (iRDYOUT == 1)
							begin
								Message_Length <= 3; 
								message <= {Char_from_terminal, CR, LF};
								Y_2_digit_hex[3:0] <= ascii2bin ( Char_from_terminal );
								//Start <= 1'b1; // Note that we activate Start now and inactivate 
								//				// not necessarily in the next clock. But that is OK
								iRDYOUT <= 1'b0; // CLROUT <= 1'b1;
								Busy <= 1'b1; 
							end
					end
			
			 8'h0C:  begin Message_Length <= 53; message <= {" Now you can single-step or multi-step your design.", CR, LF}; Busy <= 1'b1; end
			 8'h0D:  begin Message_Length <= 55; message <= {" Specify clocks (steps) to be applied to your design ", CR, LF}; Busy <= 1'b1; end
			 8'h0E:  begin Message_Length <= 62; message <= {"  as a 3-digit hex number. For example, 001 for single step.", CR, LF}; Busy <= 1'b1; end
			 8'h0F:  begin Message_Length <=  24; message <= {" Clocks to be applied = "}; Busy <= 1'b1; end
			 //                                               123456789012345678901234567890123456789012345678901234567890
			 8'h10:  begin  // Echo the first digit of the 3-digit Clock_Step_CEN_counter
						if (iRDYOUT == 1)
							begin
								Message_Length <= 1; 
								message <= {Char_from_terminal};
								Clock_Step_CEN_counter[11:8] <= ascii2bin ( Char_from_terminal );
								iRDYOUT <= 1'b0; // CLROUT <= 1'b1;
								Busy <= 1'b1; 
							end
					end
			 8'h11:  begin  // Echo the first digit of the 3-digit Clock_Step_CEN_counter
						if (iRDYOUT == 1)
							begin
								Message_Length <= 1; 
								message <= {Char_from_terminal};
								Clock_Step_CEN_counter[7:4] <= ascii2bin ( Char_from_terminal );
								iRDYOUT <= 1'b0; // CLROUT <= 1'b1;
								Busy <= 1'b1; 
							end
					end
			 8'h12:  begin // Echo the second digit of the 3-digit Clock_Step_CEN_counter
						if (iRDYOUT == 1)
							begin
								Message_Length <= 3; 
								message <= {Char_from_terminal,CR, LF};
								Clock_Step_CEN_counter[3:0] <= ascii2bin ( Char_from_terminal );
								Start <= 1'b1; // Note that we activate Start now and inactivate 
												// not necessarily in the next clock. But that is OK
												// Anyways, CEN and Ack will avoid the state machine to go around
												// come back to the Initial state and get restarted.
								iRDYOUT <= 1'b0; // CLROUT <= 1'b1;
								Busy <= 1'b1; 
							end
					end						
			 
			 
			 8'h13:  begin 
						Start <= 1'b0;  
						if (Clock_Step_CEN_counter == 12'h000)
						  begin Message_Length <= 45; message <= {CR, LF, " Please type a non-zero 3-digit hex number.", CR, LF}; 
								//                                 123456789012345678901234567890123456789012345678901234567890
								Step <= 8'h0E; Busy <= 1'b1; end
								// Notice that we have made step number 8'h0E, though we wanted to go to 8'h0F after this
								// as we have set Busy to one, and the communication part of this design would increment the Step.
						else // if Clock_Step_CEN_counter is a non zero value
						  begin
							CEN <= 1'b1; // activate CEN and wait until Clock_Step_CEN_counter goes down to a 1 before inactivating it
							// Since CEN is a register, actual activation and inactivation take place after a clock.
							Clock_Step_CEN_counter <= Clock_Step_CEN_counter - 1;
							if (Clock_Step_CEN_counter == 12'h001)
								Step <= Step + 1;
						  end
					 end
			 8'h14:  begin 
						CEN <= 1'b0; // inactivate CEN and check to see if the divider went to the done state
						// wait for 1 clock for the core design to produce the effect of the last CEN.
						Step <= Step + 1;
					 end
			 8'h15:  begin 
						if (Done == 1'b1) begin Step <= 8'h17; end // Notice that we did not set Busy to 1.
						else begin Step <= Step + 1; end
					 end
			 8'h16:  begin 
			 			// Now let us display the first result 
						Message_Length <= 61; message <= {" Intermediate Quotient = ", bin2ascii(Quotient[7:4]),  bin2ascii(Quotient[3:0]), CR, LF, " Intermediate Remainder = ", bin2ascii(Remainder[7:4]),  bin2ascii(Remainder[3:0]), CR, LF, CR, LF}; 
						Busy <= 1'b1; 
						Step <= 8'h0E;  // Notice that we have made step number 8'h0E, though we wanted to go to 8'h0F after this step
					 end
			 //                                            123456789012345678901234567890                                                            123456789012345678901234567890
			 8'h17:  begin 
			 			// Now let us display the final result 
						Message_Length <= 47; message <= {" Final Quotient = ", bin2ascii(Quotient[7:4]),  bin2ascii(Quotient[3:0]), CR, LF, " Final Remainder = ", bin2ascii(Remainder[7:4]),  bin2ascii(Remainder[3:0]), CR, LF, CR, LF}; Busy <= 1'b1; end
			 //                                            123456789012345678901234567890                                                     123456789012345678901234567890
			 8'h18:  begin 
			 			// Now let us display the clocks taken 
						Message_Length <= 31; message <= {" Total Clocks taken = ", bin2ascii(Clocks_taken_count[11:8]),  bin2ascii(Clocks_taken_count[7:4]),  bin2ascii(Clocks_taken_count[3:0]), " Hex", CR, LF}; Busy <= 1'b1; end
			 //                                            123456789012345678901234567890                                                     123456789012345678901234567890
			 8'h19:  	begin 
							Ack <= 1'b1;
							Message_Length <= 41; message <= {CR, LF, " Cheers!", CR, LF,                " ======================= ",  CR, LF, CR, LF};
			 //                                                        123456789012345678901234567890     123456789012345678901234567890
							Busy <= 1'b1; 
						end
			 8'h20:  	begin 
							Ack <= 1'b0; Step <= 8'h03;
						end
			 default:  Step <= 8'h03; // FAIL-SAFE operation
			endcase
		 end
		else // i.e. if Busy == 1'b1 then get busy transmitting the message
		// This piece of code acts like a subroutine or a procedure. 
		// Initially (on Reset), the "Busy" is zero and the "Step" counter is at zero.
		// The first (0th) task (step) for this procedure is to transmit the EE201 welcome message.
		// The case branch 8'h00 above sets this task, and sets "Busy" to one. 
		// At the end of performing the task,
		// (i.e. after ensuring that the last character got transmitted), this procedure 
		// increments step number and makes "Busy" inactive so that the upper case statement
		// can delegate a new task to this procedure. 
		begin
			// The SETIN or the CLROUT is a 1-clock pulse. So if it is currently set, we want to reset it.
			// if (SETIN == 1'b1) SETIN <= 1'b0;   // *******************************************
			// if (CLROUT == 1'b1) CLROUT <= 1'b0; // *******************************************
			// if ((Message_Length != 0) && (SETIN == 1'b0) && (iRDYIN == 1'b1)) // *******************************************
			if ((Message_Length != 0) && (iRDYIN == 1'b1)) // It was ((Message_Length != 0) && (iRDYIN == 1'b1) && (pDSTB == 1'b1))
			begin : Transmit_block
				k = 8 * Message_Length;
				Char_to_Terminal <= {message [k], message [k-1], message [k-2], message [k-3], message [k-4], message [k-5], message [k-6], message [k-7]};
				// Read the extract from: IEEE Std 1364-2001 at the bottom of this file.
				// The above line can be written as shown below following the format: big_vect[msb_base_expr -: width_expr]:
				// Char_to_Terminal <= message [k -: 8]; // starting from k  8 bits downwards

				iRDYIN <= 1'b0; // SETIN <= 1'b1; // *******************************************
				Message_Length <= Message_Length - 1;
			  end
			if (Message_Length == 0)
			  begin
				Busy <= 1'b0;
				Step <= Step + 1;
			  end
		end 
      end
  end

//------------ Epp Terminal Interface code end

	
endmodule
