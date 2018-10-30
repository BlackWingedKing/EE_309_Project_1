library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all; 
library ieee;
use ieee.numeric_std.all; 


entity priority_encoder is
	port(clk : in std_logic;
		  inp : in std_logic_vector (7 downto 0);
		  outp: out std_logic_vector(2 downto 0);
		  zero: out std_logic);
end entity;

architecture behave of priority_encoder is

begin
	process (clk) 
	begin
	if(clk'event and clk = '1') then
		if(inp(0) = '1') then
			outp <= "111";
		elsif(inp(1) = '1') then
			outp <= "110";
		elsif(inp(2) = '1') then
			outp <= "101";
		elsif(inp(3) = '1') then
			outp <= "100";	
		elsif(inp(4) = '1') then
			outp <= "011";
		elsif(inp(5) = '1') then
			outp <= "010";
		elsif(inp(6) = '1') then
			outp <= "001";
		elsif(inp(7) = '1') then
			outp <= "000";
		end if; 

		if (inp = "00000000") then
			zero <= '1';
		else 
			zero <= '0';
		end if;
	end if;
end process;
end architecture behave;