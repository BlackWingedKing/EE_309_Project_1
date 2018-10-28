library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity leftshift is
   port(a: in std_logic_vector(15 downto 0);
        s: in std_logic;
		  c: out std_logic_vector(15 downto 0));
end entity;

architecture Struct of leftshift is

	--signal y1,y2,y3,y4 : std_logic_vector(7 downto 0);
begin
	g_1: for i in 0 to 8 generate
		begin
		--assign the bits
		c_1: c(7+i) <= a(i);
		end generate g_1;
	
	g_2: for i in 0 to 6 generate
		begin
		--assign the bits
		z_1: c(i) <= '0';
		end generate g_2;
	end Struct;