library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all; 
library ieee;
use ieee.numeric_std.all; 

entity memory is 
  port (clk : in std_logic_vector(4 downto 0);
		  init: in std_logic;  
        mr  : in std_logic;   
        mw  : in std_logic;
        a   : in std_logic_vector(15 downto 0);   
        di  : in std_logic_vector(15 downto 0);   
        do  : out std_logic_vector(15 downto 0));  
end entity; 

architecture memory_behave of memory is 
	type registerFile is array(0 to ((2**4)-1)) of std_logic_vector(15 downto 0);
	signal mem_reg: registerFile;
	begin
	process(clk)
		begin 
--		if(clk'event and clk = '1') then
			if (init = '1') then
			-- Initialise the memory
				-- lh instructions
				mem_reg(0) <= "0011000101101010"; -- LHI R0, 101101010
				mem_reg(1) <= "0011001011010101"; -- LHI R1, 011010101
				mem_reg(2) <= "0011010101010111"; -- LHI R2, 101010111
				
				-- lw inst
				mem_reg(3) <= "0100011000010101"; -- LW R3, R0, 010101 
--				mem_reg(4) <= "0100100001111011"; -- LW R4, R1, 111011
--				
--				-- lm inst
--				mem_reg(5) <= "0110100000001111"; -- LM R4, 000001111
--				
--				-- add instructions
--				mem_reg(6) <= "0000111101110000"; -- ADD R7, R5, R6
--				mem_reg(7) <= "0000100111011010"; -- ADC R4, R7, R3
				mem_reg(4) <= "0000001010011000"; -- ADD R1, R2, R3
				mem_reg(9) <= "0000101110001001"; -- ADZ R5, R6, R1
				mem_reg(10) <= "0001011101111010"; -- ADI R3, R5, 111010
				
				-- store inst
				mem_reg(11) <= "0101001010000101"; -- SW R1, R2, 000101
				mem_reg(12) <= "0101011100010100"; -- SW R3, R4, 010100
				
				-- nand
				mem_reg(13) <= "0010101110111000"; -- NDU R5, R6, R7
				mem_reg(14) <= "0010100011001001"; -- NDZ R4, R3, R1
				mem_reg(15) <= "0010010100101010"; -- NDC R2, R4, R6
				
----				-- store sw and lm again
--				mem_reg(16) <= "0111100011111111"; -- SM R4, 11111111
--				mem_reg(17) <= "0110100011111111"; -- LM R4, 1111111
--				
--				-- branching inst
--				mem_reg(18) <= "1100001010010101"; -- BEQ R1, R2, 010101
--				mem_reg(19) <= "1100001001010111"; -- BEQ R1, R1, 010111 
--				mem_reg(20) <= "1000110010101010"; -- JAL R6, 010101010
--				mem_reg(21) <= "1001100101000000"; -- JLR R4, R5
		
			elsif (mr = '1') then
				do <= mem_reg(to_integer(unsigned(a(3 downto 0))));
--			elsif (mr = '0') then
--				do <= "1111111111111111";
			end if;

			if (mw = '1') then
				mem_reg(to_integer(unsigned(a(3 downto 0)))) <= di;
			end if;
--		end if;
	end process; 
	end memory_behave;