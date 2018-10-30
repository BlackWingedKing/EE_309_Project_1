library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity mux8_8_1 is
   port(a7,a6,a5,a4,a3,a2,a1,a0: in std_logic_vector(7 downto 0);
		  sel: in std_logic_vector(2 downto 0);
        outp: out std_logic_vector(7 downto 0));
end entity;

architecture Struct of mux8_8_1 is

begin
	process (sel) 
	begin

	if(sel = "111") then
		outp <= a7;
	elsif(sel = "110") then
		outp <= a6;
	elsif(sel = "101") then
		outp <= a5;
	elsif(sel = "100") then
		outp <= a4;
	elsif(sel = "011") then
		outp <= a3;
	elsif(sel = "010") then
		outp <= a2;
	elsif(sel = "001") then
		outp <= a1;
	elsif(sel = "000") then
		outp <= a0;
	end if; 
end process;
end architecture Struct;