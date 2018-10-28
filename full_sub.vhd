library ieee;

use ieee.std_logic_1164.all;

entity full_sub is

	port(bin,xin,yin: in std_logic;
		  bout,diff: out std_logic);

end entity;


architecture arith of full_sub is
	signal xor_i: std_logic;

begin

	xor_i <= xin xor yin;

	diff <= xor_i xor bin;

	bout <= (((not xin) and (yin)) or (bin and (not xor_i)));

end arith;
