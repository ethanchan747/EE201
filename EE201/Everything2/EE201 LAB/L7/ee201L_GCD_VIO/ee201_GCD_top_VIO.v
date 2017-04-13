//////////////////////////////////////////////////////////////////////////////////
// Author:			Gandhi Puvvada
// Create Date:		03/1/2010
// Revised to suit Nexys-3: 2/20/2012
// File Name:		ee201_GCD_top_VIO.v 
// Description: 
// 
//
// Revision: 		2.2
// Additional Comments: 
//  This "part 3" design is based on the earlier design by
//  Shideh Shahidi, Bilal Zafar, Gandhi Puvvada. Here we have added VIO.
//  Also changed single stepping (SCEN) control to Multi-step (MCEN) control.
//  These additions are based on a similar design, "divider_top_with_VIO_multi_step.v".  
//////////////////////////////////////////////////////////////////////////////////
//-------------------------------------------------------------------
// Here, the 8-bit input can be provided by the 8 switches on the board 
// or the bottom 8 switches of the VIO.
// The right-most 5 push buttons on VIO operate in parallel to the 
// 5 buttons on the Nexys-3 board.
// The 8 LEDs on both VIO and Nexys-3 parallelly display the state, etc.
// The "to FPGA" box on the VIO is not used, but the "from FPGA" box is used
// to display the four 8-bit quntities: Ain, Bin, GCD, i_count in that order 
// from left to right.
//-------------------------------------------------------------------

`timescale 1ns / 1ps

module ee201_GCD_top_VIO 
		(EppAstb, EppDstb, EppWr, EppDB, EppWait,	// EPP communication signals
		MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS, // Disable the three memory chips

        ClkPort,                           // the 100 MHz incoming clock signal
		
		BtnL, BtnU, BtnD, BtnR,            // the Left, Up, Down, and the Right buttons BtnL, BtnR,
		BtnC,                              // the center button (this is our reset in most of our designs)
		Sw7, Sw6, Sw5, Sw4, Sw3, Sw2, Sw1, Sw0, // 8 switches
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
	input		Sw7, Sw6, Sw5, Sw4, Sw3, Sw2, Sw1, Sw0;
	
	
	/*  OUTPUTS */
	// Control signals on Memory chips 	(to disable them)
	output 	MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS;
	// Project Specific Outputs
	// LEDs
	output 	Ld0, Ld1, Ld2, Ld3, Ld4, Ld5, Ld6, Ld7;
	// SSD Outputs
	output 	Cg, Cf, Ce, Cd, Cc, Cb, Ca, Dp;
	output 	An0, An1, An2, An3;	

	// Epp signals
	input			EppAstb, EppDstb, EppWr;
    inout [7:0]		EppDB;
    output			EppWait;
	
	/*  LOCAL SIGNALS */
	wire		Reset, ClkPort;
	wire		board_clk, sys_clk;
	wire [1:0] 	ssdscan_clk;
	reg [26:0]	DIV_CLK;
	
	wire Start_Ack_Pulse;
	wire in_AB_Pulse, CEN_Pulse, BtnR_Pulse, BtnU_Pulse;
	wire q_I, q_Sub, q_Mult, q_Done;
	wire [7:0] A, B, AB_GCD, i_count;
	reg [7:0] Ain;
	reg [7:0] Bin;
	reg A_bar_slash_B;
	reg [3:0]	SSD;
	wire [3:0]	SSD3, SSD2, SSD1, SSD0;
	reg [7:0]  SSD_CATHODES;
	


	wire  BtnL_combined, BtnU_combined, BtnR_combined, BtnD_combined, BtnC_combined;

	
	// VIO signals  // ****** TODO ******		// Nothing to fill-in here.
	wire [15:0] btn_from_VIO, sw_from_VIO; 	// Just explain to your TA how these signals
	wire [7:0] led_to_VIO; 					// are connected to the resources on the Adept GUI.
	wire [23:0] lbar_to_VIO; // not used in this design, 
	// however since we do not want to remove it from UCF file
	// we let it be here in the code
	wire [31:0] dwIn, dwOut;

	wire [7:0] Ain_from_VIO, Bin_from_VIO, value_for_Ain, value_for_Bin;

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
         
	// Note: We are not using the upper 8 switches on VIO: sw_from_VIO [15:8]
	// ****** TODO ******		// Nothing to fill-in here.
	// Unlike push buttons, switches have no default position (normally open or normally closed).
	// So, when you want to control the board completely from the VIO GUI, do you leave the 
	// Nexys-3 board switches in a particular state (all up or all down)? Explain to your TA.
	// Note that we are ORing below. This will help you to form an answer for your TA.
		assign Ain_from_VIO = sw_from_VIO [7:0]; // sw_from_VIO [15:8] | dwOut[15:8]; // <== This is useful in Part 4
		assign Bin_from_VIO = sw_from_VIO [7:0]; //sw_from_VIO [7:0] | dwOut[7:0];  // <== This is useful in Part 4
		assign value_for_Ain = Ain_from_VIO | {Sw7, Sw6, Sw5, Sw4, Sw3, Sw2, Sw1, Sw0};
		assign value_for_Bin = Bin_from_VIO | {Sw7, Sw6, Sw5, Sw4, Sw3, Sw2, Sw1, Sw0}; 

		// ****** TODO ******		// Nothing to fill-in here.
		// Explain to your TA, what does the following line achieve. 
		assign dwIn = {SSD3, SSD2, SSD1, SSD0};

// Instantiation of the IO_Expansion module for using the Adept Virtual IO communication
// ****** TODO ******		// Nothing to fill-in here.
// Explain to your TA, if this IOExpansion block of logic is on your FPGA along with the GCD logic
// or on the Cypress USB interface chip on Nexys-3 board or on your PC in the Adept software?
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
	

//------------
// INPUT: SWITCHES & BUTTONS
	// BtnL is used as both Start and Acknowledge. 
	// To make this possible, we need a single clock producing  circuit.

ee201_debouncer #(.N_dc(28)) ee201_debouncer_2 
        (.CLK(sys_clk), .RESET(Reset), .PB(BtnL_combined), .DPB( ), 
		.SCEN(Start_Ack_Pulse), .MCEN( ), .CCEN( ));
		 		 
		 // BtnR is used to generate in_AB_Pulse to record the values of 
		 // the inputs A and B as set on the switches.
		 // BtnU is used as CEN_Pulse to allow single-stepping or multi-stepping
	assign {in_AB_Pulse, CEN_Pulse} = {BtnR_Pulse, BtnU_Pulse};

ee201_debouncer #(.N_dc(28)) ee201_debouncer_1 
        (.CLK(sys_clk), .RESET(Reset), .PB(BtnR_combined), .DPB( ), 
		.SCEN(BtnR_Pulse), .MCEN( ), .CCEN( ));

// ****** TODO ******		// Nothing to fill-in here.
// Here, in the instantiation below, we used BtnU_combined where as in Part 2, we use BtnU.
// Explain to your TA why is this difference. 
ee201_debouncer #(.N_dc(28)) ee201_debouncer_0 
        (.CLK(sys_clk), .RESET(Reset), .PB(BtnU_combined), .DPB( ), 
		.SCEN( ), .MCEN(BtnU_Pulse), .CCEN( ));  // Note: we are using MCEN rather than SCEN here.
		
//------------
// DESIGN
	// On two pushes of BtnR, numbers A and B are recorded in Ain and Bin
    // (registers of the TOP) respectively
	always @ (posedge sys_clk, posedge Reset)
	begin
		if(Reset)
		begin
			Ain <= 0;
			Bin <= 0;
			A_bar_slash_B <= 1;
		end
		else
		begin
			if (in_AB_Pulse)  	// Note: in_AB_Pulse is same as BtnR_Pulse.
								// ****** TODO ******		// Nothing to fill-in here.
								// Explain to your TA, what is the difference between these
								// line and the lines filled by you in part 2.
								// Are they effectively the same or are they identical?
				begin
					A_bar_slash_B <= ~ A_bar_slash_B;
					if (A_bar_slash_B == 1'b1)
						Ain <= value_for_Ain; // {Sw7, Sw6, Sw5, Sw4, Sw3, Sw2, Sw1, Sw0};
					else
						Bin <= value_for_Bin; // {Sw7, Sw6, Sw5, Sw4, Sw3, Sw2, Sw1, Sw0};
				end
		end
	end
	
	// the state machine module
	ee201_GCD ee201_GCD_1(.Clk(sys_clk), .CEN(CEN_Pulse), .Reset(Reset), .Start(Start_Ack_Pulse), .Ack(Start_Ack_Pulse), 
						  .Ain(Ain), .Bin(Bin), .A(A), .B(B), .AB_GCD(AB_GCD), .i_count(i_count),
						  .q_I(q_I), .q_Sub(q_Sub), .q_Mult(q_Mult), .q_Done(q_Done));

//------------
// OUTPUT: LEDS
	
	assign {Ld7, Ld6, Ld5, Ld4} = {q_I, q_Sub, q_Mult, q_Done};
	assign {Ld3, Ld2, Ld1, Ld0} = {BtnL_combined, BtnU_combined, BtnR_combined, BtnD_combined}; // reset is driven by BtnC_combined
	assign led_to_VIO = {q_I, q_Sub, q_Mult, q_Done, BtnL_combined, BtnU_combined, BtnR_combined, BtnD_combined}; 
//------------
// SSD (Seven Segment Display)
	
	//SSDs show Ain and Bin in initial state, A and B in subtract state, and GCD and i_count in multiply and done states.
	// ****** TODO  in Part 2 ******
	// assign y = s ? i1 : i0;  // an example of a 2-to-1 mux coding
	// assign y = s1 ? (s0 ? i3: i2): (s0 ? i1: i0); // an example of a 4-to-1 mux coding
	assign SSD3 = (q_Mult | q_Done) ? AB_GCD[7:4]  : q_I ? Ain[7:4] : A[7:4];
	assign SSD2 = (q_Mult | q_Done) ? AB_GCD[3:0]  : q_I ? Ain[3:0] : A[3:0];
	assign SSD1 = (q_Mult | q_Done) ? i_count[7:4] : q_I ? Bin[7:4] : B[7:4];
	assign SSD0 = (q_Mult | q_Done) ? i_count[3:0] : q_I ? Bin[3:0] : B[3:0];


	// need a scan clk for the seven segment display 
	// 191Hz (100 MHz / 2^19) works well
	assign ssdscan_clk = DIV_CLK[19:18];
	
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
	
	// and finally convert SSD_num to ssd
	// We convert the output of our 4-bit 4x1 mux

	assign {Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp} = {SSD_CATHODES};

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

	
	
endmodule

