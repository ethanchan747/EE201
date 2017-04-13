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

