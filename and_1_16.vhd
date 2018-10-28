library ieee;

use ieee.std_logic_1164.all;

entity and_1_16 is

	port(xin: in std_logic_vector(15 downto 0);
		  yin: in std_logic;
		  zout: out std_logic_vector(15 downto 0));

end entity;

architecture arith of and_1_16 is

begin
	g_1: for i in 0 to 15 generate
		begin
		--assign the bits
		c_1: zout(i) <= xin(i) and yin;
		end generate g_1;
end arith;
	
