library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all; 
library ieee;
use ieee.numeric_std.all; 


entity decoder_3_8 is
	port(inp : in std_logic_vector (2 downto 0);
		  outp: out std_logic_vector(7 downto 0)
		  );
end entity;

architecture behave of decoder_3_8 is
begin
	process (inp) 
	begin

	if(inp = "111") then
		outp <= "10000000";
	elsif(inp = "110") then
		outp <= "01000000";
	elsif(inp = "101") then
		outp <= "00100000";
	elsif(inp = "100") then
		outp <= "00010000";	
	elsif(inp = "011") then
		outp <= "00001000";
	elsif(inp = "010") then
		outp <= "00000100";
	elsif(inp = "001") then
		outp <= "00000010";
	elsif(inp = "000") then
		outp <= "00000001";
	end if; 
end process;

end architecture behave;
