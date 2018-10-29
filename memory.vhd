library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all; 
library ieee;
use ieee.numeric_std.all; 

entity memory is 
  port (clk,init : in std_logic;  
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
	process(init, mr,mw, a, di, clk)
		begin 
		if(clk'event and clk = '1') then
			if (init = '1') then
				-- Initialise some memory
					mem_reg(0) <= "0001010010000001"; -- ADDI
					mem_reg(1) <= "0110010000111000"; -- LM
				-- mem_reg(1) <= "1001101001000000"; -- JLR
				for i in 2 to 14 loop
					mem_reg(i) <= "1111111111111111"; -- The End
				end loop;
			elsif (mr = '1') then
				do <= mem_reg(to_integer(unsigned(a(3 downto 0))));
			elsif (mr = '0') then
				do <= "1111111111111111";
			end if;

			if (mw = '1') then
				mem_reg(to_integer(unsigned(a(3 downto 0)))) <= di;
			end if;
		end if;
	end process; 
	end memory_behave;