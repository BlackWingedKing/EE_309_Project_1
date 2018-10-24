library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all; 
library ieee;
use ieee.numeric_std.all; 


entity priority_encoder is
	port( a : in std_logic_vector (7 downto 0);
		  out: out std_logic_vector(2 downto 0);
		  zero: out std_logic);
end entity;

architecture behave of priority_encoder is

begin
process (a) 
begin

	if(a(0) = '1') then
		out <= "111";
	elsif(a(1) = '1') then
		out <= "110";
	elsif(a(2) = '1') then
		out <= "101";
	elsif(a(3) = '1') then
		out <= "100";	
	elsif(a(4) = '1') then
		out <= "011";
	elsif(a(5) = '1') then
		out <= "010";
	elsif(a(6) = '1') then
		out <= "001";
	elsif(a(7) = '1') then
		out <= "000";
	end if; 

	if (a = "00000000") then
		zero <= '1';
	else 
		zero <= '0';
	end if;

end process;
end architecture behave;