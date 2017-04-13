/*----------------------------------------------------------------------------------
-- Translated to Verilog from VHDL by Matthew Christian on 8/25/09
-- This translation is not the work of Digilent.
-- This is an independent file translation intended for educational use only.

-- Company: Digilent RO
-- Engineer: Mircea Dabacan
-- 
-- Create Date:    20:46:18 04/06/2009 
-- Design Name: Adept IO Expansion Reference Component
-- Module Name:    IOExpansion - Behavioral 
-- Project Name: Adept 2
-- Target Devices: 
-- Tool versions: WP10.1.03
-- Description: 
--
-- The component implements EPP byte registers for virtual IOs on a FPGA target: 

--   Name              Epp     Dir Explain
--                     Address 
-- regVer(7 downto 0)  0x00    I/O returns the complement of written value
-- Led(7 downto 0)     0x01    In  8 virtual LEDs on the PC I/O Ex GUI
-- LBar(7 downto 0)    0x02    In  8 right lights on the PC I/O Ex GUI light bar
-- LBar(15 downto 8)   0x03    In  8 middle lights on the PC I/O Ex GUI light bar
-- LBar(23 downto 16)  0x04    In  8 left lights on the PC I/O Ex GUI light bar
-- Sw(7 downto 0)      0x05    In  8 switches, bottom row on the PC I/O Ex GUI
-- Sw(15 downto 8)     0x06    In  8 switches, top row on the PC I/O Ex GUI
-- Btn(7 downto 0)     0x07    In  8 Buttons, bottom row on the PC I/O Ex GUI
-- Btn(15 downto 8)    0x08    In  8 Buttons, top row on the PC I/O Ex GUI
-- dwOut(7 downto 0)   0x09    Out 8 Bits in an output double word
-- dwOut(15 downto 8)  0x0a    Out 8 Bits in an output double word
-- dwOut(23 downto 16) 0x0b    Out 8 Bits in an output double word
-- dwOut(31 downto 24) 0x0c    Out 8 Bits in an output double word
-- dwIn(7 downto 0)    0x0d    In  8 Bits in an input double word
-- dwIn(15 downto 8)   0x0e    In  8 Bits in an input double word
-- dwIn(23 downto 16)  0x0f    In  8 Bits in an input double word
-- dwIn(31 downto 24)  0x10    In  8 Bits in an input double word

-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
----------------------------------------------------------------------------------*/

module IOExpansion (EppAstb, EppDstb, EppWr, EppDB, EppWait, Led, LBar, 
							Sw, Btn, dwOut, dwIn );

	//Epp-like bus signals
	input EppAstb;		// Address strobe
	input EppDstb;		// Data strobe
   input EppWr;		// Port write signal
   inout [7:0] EppDB;	// port data bus
	tri [7:0] EppDB;
   output EppWait;		// Port wait signal
	
	//User extended signals
	input [7:0]	Led;		// 0x01       8 virtual LEDs on the PC I/O Ex GUI
   input [23:0] LBar;		// 0x02..4   24 lights on the PC I/O Ex GUI light bar
   output [15:0] Sw;		// 0x05..6   16 switches, bottom row on the PC I/O Ex GUI
   reg [15:0] Sw;
	output [15:0] Btn;		// 0x07..8   16 Buttons, bottom row on the PC I/O Ex GUI
   reg [15:0] Btn;
	output [31:0] dwOut;	// 0x09..b   32 Bits user output
   reg [31:0] dwOut;
	input [31:0] dwIn;		// 0x0d..10  32 Bits user input

	reg [7:0] regEppAdr;		// Epp address 
	reg [7:0] regVer;			// 0x00    I/O returns the complement of written value
	reg [7:0] busEppInternal;	// internal bus (before tristate)

	// Epp signals
	// Port signals
	
	assign EppWait = (!EppAstb || !EppDstb);
        // asynchronous Wait asserting (maximal Epp speed)
	
	//bufif1 EppDB_buf(EppDB, busEppInternal, EppWr);
	assign EppDB = EppWr ? busEppInternal : 8'bZ ;
	
	// always @(EppAstb, regEppAdr) // incomplete sensitivity list
	always @(*) // fixed by Gandhi Puvvada 2/21/2010
	begin
		if (!EppAstb)
			busEppInternal <= regEppAdr;
		else
			begin
				case (regEppAdr) 
					'h00: 		busEppInternal <= regVer;
					'h01: 		busEppInternal <= Led;
					'h02: 		busEppInternal <= LBar[7:0];
					'h03: 		busEppInternal <= LBar[15:8];
					'h04: 		busEppInternal <= LBar[23:16];
					'h0d: 		busEppInternal <= dwIn[7:0];
					'h0e: 		busEppInternal <= dwIn[15:8];
					'h0f:			busEppInternal <= dwIn[23:16];
					default:		busEppInternal <= dwIn[31:24]; // i.e for regEppAdr == 'h10
					
				endcase
			end
	end
		
	// EPP Address register
	always @(posedge EppAstb)		// Astb ending edge
    begin
		if (!EppWr)					// Epp Addr write cycle -- EppWr is a low-active control signal.
			regEppAdr <= EppDB;		// Epp Address register update
    end

	//EPP Write registers register
	always @(posedge EppDstb)			//Dstb ending edge
    begin
        if (!EppWr) 					// Epp Addr write cycle
		begin
			if (regEppAdr == 'h00)
				// regVer <= !EppDB;      	// register update (complemented) // incorrect usage of "!" in place of "~"
				regVer <= ~ EppDB;      	// register update (complemented) // fixed by Gandhi Puvvada 2/21/2010
			else if (regEppAdr == 'h05)
				Sw[7:0] <= EppDB;      	// register update
			else if (regEppAdr == 'h06) 
				Sw[15:8] <= EppDB;     	// register update
			else if (regEppAdr == 'h07)
				Btn[7:0] <= EppDB;     	// register update
			else if (regEppAdr == 'h08)
				Btn[15:8] <= EppDB;    	// register update
			else if (regEppAdr == 'h09)
				dwOut[7:0] <= EppDB;   	// register update
			else if (regEppAdr == 'h0a)
				dwOut[15:8] <= EppDB;  	// register update
			else if (regEppAdr == 'h0b)
				dwOut[23:16] <= EppDB; 	// register update
			else //if (regEppAdr == 'h0c)
				dwOut[31:24] <= EppDB; 	// register update
		end
	end

endmodule //IOExpansion
