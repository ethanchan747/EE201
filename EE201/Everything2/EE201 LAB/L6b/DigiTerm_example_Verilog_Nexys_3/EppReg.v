/*
File     : EppReg.v (Translation of Digilent's EppReg.vhd)
Translated by : Gandhi Puvvada, USC
Revision  : 1.0
Date : 4/18/2010
*/

/*
Note: The original EppReg.vhd provided by Digilentinc. is included
at the bottom of this file for reference. 
Digilent's EppReg.vhd and Digilent's DigilentTerminal.exe help an user  
to send ASCII characters to the terminal and also receive 
ASCII characters from the terminal.
*/

/*
Minor modifications by Gandhi Puvvada:
1. RDYOUT and RDYIN were removed as they were not used on the Nexys-2 board.
2. Declarative initialization used by the Digilent engineer in the following 
lines of his/her code is not the best way of coding. Most likely all synthesis
tools (perhaps except for XST) will ignore  declarative initializations.

	signal pASTB, ppASTB, pDSTB, ppDSTB : std_logic := '1';
	signal iASTB, iDSTB : std_logic := '0';
	signal iRDYOUT : std_logic := '0';
	signal iRDYIN 	: std_logic := '1';
	signal rAdr0 	: std_logic := '0';
	
I have incorporated a Reset signal and used the Btn#3 on Nexys-2 board to 
generate it. My clocked process uses Reset and I am performing explicit initialization. 
*/
module (
		input wire CLK ,
		input wire EPPASTB,
		input wire EPPDSTB,
		input wire EPPWRITE,
		output reg EPPWAIT,
		inout tri [7:0] EPPDB,
		
		output reg [7:0] DATAOUT,
		// RDYOUT -- removed as it is not used
		input wire CLROUT,
		
		input wire [7:0] DATAIN,
		// RDYIN -- removed as it is not used
		input wire SETIN ); 

	// Local signals
	reg pASTB, ppASTB, pDSTB, ppDSTB;
	wire iASTB, iDSTB;
	reg iRDYOUT, iRDYIN;
	reg rAdr0;
	
// actual body of EppReg.v
assign EPPDB = ( (~EPPWRITE) |  EPPDSTB) ? 8'bZ : Char_or_Status_to_Terminal;
assign Char_or_Status_to_Terminal = rAdr0 ? Status : Char_to_Terminal;
assign Status =  {4{1'b0}, SETIN , CLROUT , iRDYIN , iRDYOUT};
  
assign iASTB = (ppASTB & (~pASTB));
// iASTB	<= '1' when ppASTB = '1' and pASTB = '0' else '0';

assign iDSTB = (ppDSTB & (~pDSTB));
// iDSTB <= '1' when ppDSTB = '1' and pDSTB = '0' else '0';
 
always @ (posedge sys_clk, posedge Reset)
  begin : Epp_interface
	
	if (Reset)
	  begin 
		iRDYOUT <= 1'b0;	iRDYIN <= 1'b1; 
		rAdr0  <= 1'b0;	
		Char_from_terminal <= 8'bXXXXXXXX;
		pASTB <= 1'b1; ppASTB <= 1'b1;
		pDSTB <= 1'b1; ppDSTB <= 1'b1;
		Step <= 4'b0000; Busy <= 1'b0;
	  end
	else // means on positive edge of the clock
	  begin
         pASTB  <= EPPASTB;
         ppASTB <= pASTB;
         pDSTB  <= EPPDSTB;
         ppDSTB <= pDSTB;

        if iASTB 
            rAdr0 <= EPPDB(0);
         
        if ((~rAdr0) & (iDSTB) & (~EPPWRITE))
            Char_from_terminal <= EPPDB;

		if ((~ppASTB) | (~ppDSTB))
            EPPWAIT <= 1'b1;
         else
            EPPWAIT <= 1'b0;

        if ((~rAdr0) & (iDSTB) & (~EPPWRITE))
            iRDYOUT <= 1'b1;
         else if CLROUT
            iRDYOUT <= 1'b0;
         
        if rAdr0 = '0' and iDSTB = '1' and EPPWRITE = '1'
            iRDYIN <= 1'b1;
         else if SETIN
            iRDYIN <= 1'b0;
      end	
 end
		
/*
------------------------------------------------------------------------
-- EppReg.vhd 
------------------------------------------------------------------------
-- Author : Kovacs Laszlo Attila
--          Copyright 2008 Digilent RO
------------------------------------------------------------------------
-- Revision History:
--   2008/05/23/(KovacsLA): created
------------------------------------------------------------------------ 
--	
------------------------------------------------------------------------ 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity EppReg is
   Port (
		CLK         : in  std_logic;
		EPPASTB     : in  std_logic;
		EPPDSTB     : in  std_logic;
		EPPWRITE    : in  std_logic;
		EPPWAIT     : out std_logic;
		EPPDB       : inout std_logic_vector(7 downto 0);
		
		DATAOUT     : out std_logic_vector(7 downto 0);
		-- RDYOUT      : out std_logic;
		CLROUT      : in  std_logic;
		
		DATAIN      : in  std_logic_vector(7 downto 0);
		-- RDYIN       : out std_logic;
		SETIN       : in  std_logic); 
end EppReg;

architecture Behavioral of EppReg is

signal pASTB, ppASTB, pDSTB, ppDSTB : std_logic := '1';
signal iASTB, iDSTB : std_logic := '0';
signal iRDYOUT : std_logic := '0';
signal iRDYIN 	: std_logic := '1';
signal rAdr0 	: std_logic := '0';

begin
   
   EPPDB <= 
      (others => 'Z')   when EPPDSTB = '1' or EPPWRITE = '0' else 
      DATAIN            when rAdr0 = '0' else
      x"0" & SETIN & CLROUT & iRDYIN & iRDYOUT;
   
   iASTB	<= '1' when ppASTB = '1' and pASTB = '0' else '0';
   iDSTB <= '1' when ppDSTB = '1' and pDSTB = '0' else '0';
   
	-- RDYIN  <= iRDYIN;
	-- RDYOUT <= iRDYOUT;
	
   process(CLK)
   begin
      if rising_edge(CLK) then
         pASTB  <= EPPASTB;
         ppASTB <= pASTB;
         pDSTB  <= EPPDSTB;
         ppDSTB <= pDSTB;
         
         if iASTB = '1' then
            rAdr0 <= EPPDB(0);
         end if;
         
         if ppASTB = '0' or ppDSTB = '0' then
            EPPWAIT <= '1';
         else
            EPPWAIT <= '0';
         end if;
			
         if rAdr0 = '0' and iDSTB = '1' and EPPWRITE = '0' then
            DATAOUT <= EPPDB;
         end if;
         
         if rAdr0 = '0' and iDSTB = '1' and EPPWRITE = '0' then
            iRDYOUT <= '1';
         elsif CLROUT = '1' then
            iRDYOUT <= '0';
         end if;
         
         if rAdr0 = '0' and iDSTB = '1' and EPPWRITE = '1' then
            iRDYIN <= '1';
         elsif SETIN = '1' then
            iRDYIN <= '0';
         end if;
      end if;
   end process;

end Behavioral;

*/