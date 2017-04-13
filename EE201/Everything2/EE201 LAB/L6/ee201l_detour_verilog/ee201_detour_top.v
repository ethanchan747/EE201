//////////////////////////////////////////////////////////////////////////////////
// Author:			Brandon Franzke, Gandhi Puvvada, Bilal Zafar
// Create Date:		02/14/2008 
// Revised:			02/06/2012 (revised to suit Nexys-3) Gandhi Puvvada
// File Name:		ee201_detour_top.v 
// Description: 
//
//
// Revision: 		2.1
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module ee201_detour_top         (   
		MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS, // Disable the three memory chips

        ClkPort,                           // the 100 MHz incoming clock signal
		
		// BtnL, BtnU, BtnD, BtnR,            // the Left, Up, Down, and the Right buttons 
		BtnC,                              // the center button (this is our reset in most of our designs)
		// Sw7, Sw6, Sw5, Sw4, Sw3, Sw2, Sw1, Sw0, // 8 switches
		Sw0,
		Ld7, Ld6, Ld5, Ld4, Ld3, Ld2, Ld1, Ld0, // 8 LEDs
		An3, An2, An1, An0,			       // 4 anodes
		Ca, Cb, Cc, Cd, Ce, Cf, Cg,        // 7 cathodes
		Dp                                 // Dot Point Cathode on SSDs
	  );

/*(ClkPort, 
								Sw0,
								Btn3,
								St_ce_bar, St_rp_bar, Mt_ce_bar, Mt_St_oe_bar, Mt_St_we_bar,
								Ld0, Ld1, Ld2, Ld3, Ld4, Ld5, Ld6, Ld7,
								An0, An1, An2, An3,
								Ca, Cb, Cc, Cd, Ce, Cf, Cg, 
								Dp
								);*/

	/*  INPUTS */
	// Clock & Reset I/O
	input		ClkPort;	
	// Project Specific Inputs
	input		Sw0, BtnC;	
	
	
	/*  OUTPUTS */
	// Control signals on Memory chips 	(to disable them)
	output 	MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS;
	// Project Specific Outputs
	// LEDs
	output 	Ld7, Ld6, Ld5, Ld4, Ld3, Ld2, Ld1, Ld0;
	// SSD Outputs
	output 	Cg, Cf, Ce, Cd, Cc, Cb, Ca, Dp;
	output 	An0, An1, An2, An3;	
	
// It is not necessary to declare inputs and outputs which are wires, as wire is the default data type.
//	wire	reset, ClkPort;
	
	/*  LOCAL SIGNALS */
	wire			board_clk, sys_clk;
	wire [1:0]		ssdscan_clk;
	reg [26:0]	    DIV_CLK;
	wire 			L_Rbar;
 	wire q_I, q_R1, q_R12, q_R123, q_L1, q_L12, q_L123;
	wire GLL, GL, GR, GRR;		
	reg [6:0]	SSD; // we are planning to produce SSD in an always block, hence we declared it as reg. It is not a physical register
	wire [6:0]	SSD0, SSD1, SSD2, SSD3;
	reg [6:0]	SSD_DIRECTION;
	reg [6:0]   SSD_STATENUM;
	reg [3:0] 	state_num;
	
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

	// BUFGP BUFGP2 (reset, BtnC); In the case of Spartan 3E (on Nexys-2 board), we were using BUFGP to provide global routing for the reset signal. But Spartan 6 (on Nexys-3) does not allow this.
	// BUFGP BUFGP2 (reset, BtnC);
	assign reset = BtnC;
	
//------------
	// Our clock is too fast (100MHz) for SSD scanning
	// create a series of slower "divided" clocks
	// each successive bit is 1/2 frequency
  always @(posedge board_clk, posedge reset) 	
    begin							
        if (reset)
		DIV_CLK <= 0;
        else
		DIV_CLK <= DIV_CLK + 1'b1;
    end
//------------
	
	// pick a divided clock bit to assign to system clock
	// your decision should not be "too fast" 
	// or you will not see you state machine working
	assign	sys_clk = DIV_CLK[25]; // DIV_CLK[25] (~1.5Hz) = (100MHz / 2**26)	


//------------
// INPUT: SWITCHES & BUTTONS
	// Sw0 is our L_Rbar here
	assign L_Rbar = Sw0;
	

//------------
// Instatiate the core design with some instance label (here SM1)
// notice that we maintained same names in top design and inner core design for
// several items such as q_I for convenience
	
	ee201_detour_sm SM1( .Clk(sys_clk), .reset(reset), .L_Rbar(L_Rbar), .q_I(q_I), 
								.q_R1(q_R1), .q_R12(q_R12), .q_R123(q_R123), 
								.q_L1(q_L1), .q_L12(q_L12), .q_L123(q_L123),
								.GLL(GLL), .GL(GL), .GR(GR), .GRR(GRR)
								);		

//------------
// OUTPUT: LEDS
	assign {Ld7,Ld6} = {GLL, GLL};
	assign {Ld5,Ld4} = {GL, GL};
	assign {Ld3,Ld2} = {GR, GR};
	assign {Ld1,Ld0} = {GRR, GRR};
	
//------------
// SSD (Seven Segment Display)

	
	// define the SSD combinations for L/R
	// We can use the localparam construct instead of `define if we want.
	// We  wanted to show you the `define usage
	`define L_SSDLTR 7'b1110001  // Letter "L"
	`define R_SSDLTR 7'b1111010  // Letter "r"
	`define SSD_OFF  7'b1111111  // pattern to turn off the middle two SSDs
	
	// select the direction here
	always @ (L_Rbar)
	begin
		case(L_Rbar)
			1'b1: SSD_DIRECTION = `L_SSDLTR;
			1'b0: SSD_DIRECTION = `R_SSDLTR;
		endcase
	end
	
	
	
	
	// convert the 1-hot state to a hex-number for easy display
	
	`define QI_NUM 		4'b0000
	`define QL1_NUM 	4'b0001
	`define QL12_NUM 	4'b0010
	`define QL123_NUM 	4'b0011
	`define QR1_NUM 	4'b0100
	`define QR12_NUM 	4'b0101
	`define QR123_NUM 	4'b0110
	`define UNKNOWN		4'b1111
	always @ ( q_I, q_L1, q_L12, q_L123, q_R1, q_R12, q_R123 )
	begin : ONE_HOT_TO_HEX
		(* full_case, parallel_case *) // avoid prioritization (Verilog 2001 standard)
		case ( {q_I, q_L1, q_L12, q_L123, q_R1, q_R12, q_R123} )		
			7'b1000000: state_num = `QI_NUM;
			7'b0100000: state_num = `QL1_NUM;
			7'b0010000: state_num = `QL12_NUM;
			7'b0001000: state_num = `QL123_NUM;			
			7'b0000100: state_num = `QR1_NUM;
			7'b0000010: state_num = `QR12_NUM;
			7'b0000001: state_num = `QR123_NUM;	
			default:    state_num = `UNKNOWN;
		endcase
	end
	
	// and finally convert state_num to ssd
	// normally we would convert the output of our 4-bit 4x1 mux
	//	but we have special output sets this time (L_Rbar)

	// Following is our Hex-to-SSD conversion. Even though we use 
	// only a few numbers we design an exhaustive converter 
	// that we can use in later labs
	always @ (state_num) 
	begin : HEX_TO_SSD
		case (state_num)
			4'b0000: SSD_STATENUM = 7'b0000001 ; // 0
			4'b0001: SSD_STATENUM = 7'b1001111 ; // 1
			4'b0010: SSD_STATENUM = 7'b0010010 ; // 2
			4'b0011: SSD_STATENUM = 7'b0000110 ; // 3
			4'b0100: SSD_STATENUM = 7'b1001100 ; // 4
			4'b0101: SSD_STATENUM = 7'b0100100 ; // 5
			4'b0110: SSD_STATENUM = 7'b0100000 ; // 6
			4'b0111: SSD_STATENUM = 7'b0001111 ; // 7
			4'b1000: SSD_STATENUM = 7'b0000000 ; // 8
			4'b1001: SSD_STATENUM = 7'b0000100 ; // 9
			4'b1010: SSD_STATENUM = 7'b0001000 ; // A
			4'b1011: SSD_STATENUM = 7'b1100000 ; // B
			4'b1100: SSD_STATENUM = 7'b0110001 ; // C
			4'b1101: SSD_STATENUM = 7'b1000010 ; // D
			4'b1110: SSD_STATENUM = 7'b0110000 ; // E
			4'b1111: SSD_STATENUM = 7'b0111000 ; // F    
			default: SSD_STATENUM = 7'bXXXXXXX ; // default not needed since all cases are covered, but there is no harm using default
		endcase
	end	
	
	assign SSD0 = SSD_DIRECTION;
	assign SSD1 = `SSD_OFF;
	assign SSD2 = `SSD_OFF;
	assign SSD3 = SSD_STATENUM;	
	
	assign ssdscan_clk = DIV_CLK[19:18];	
	assign An0	= ~(~(ssdscan_clk[1]) && ~(ssdscan_clk[0]));  // when ssdscan_clk = 00
	assign An1	= ~(~(ssdscan_clk[1]) &&  (ssdscan_clk[0]));  // when ssdscan_clk = 01
	assign An2	= ~( (ssdscan_clk[1]) && ~(ssdscan_clk[0]));  // when ssdscan_clk = 10
	assign An3	= ~( (ssdscan_clk[1]) &&  (ssdscan_clk[0]));  // when ssdscan_clk = 11
	
	
	// need a scan clk for the seven segment display 
	// DIV_CLK[19] with 95.4Hz (100MHz / 2^20) frequency works well
	// 7 segment display scanning is completed every DIV_CLK[19] (~95.4Hz) (every 10.5 ms)
	// DIV_CLK[17] 381.5 Hz (100MHz / 2^18)(time period = 2.6 ms) governs the scan rate.
	// This is fast enough for the human eye and quite slow and confortable for the LEDs!
	
	always @ (ssdscan_clk, SSD0, SSD1, SSD2, SSD3)
	begin : SSD_SCAN_OUT
		case (ssdscan_clk) 
				  2'b00: SSD = SSD0;
				  2'b01: SSD = SSD1;
				  2'b10: SSD = SSD2;
				  2'b11: SSD = SSD3;
		endcase 
	end	

// Notice that the above design requiring a 7-bit wide 4-to-1 mux with its two middle inputs tied to 
// constant SSD_OFF  (=7'b1111111) is not an optimal design. We could have easily in activated the 
// two middle anodes as in the schematic design.
// In most future designs, we use all 4 SSDs and we do the muxing at the 4-bit hex level using a 
// 4-bit wide 4-to-1 mux and then use the Hex-to-SSD converter.
 	
	assign {Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp} = {SSD, 1'b1};
	
endmodule


