library ieee;
use ieee.std_logic_1164.all;


entity full_adder is

	port(cin,xin,yin: in std_logic;
		  cout,sum: out std_logic);

end entity;


architecture arith of full_adder is
	signal xor_i: std_logic;
	
begin

	xor_i <= xin xor yin;

	sum <= xor_i xor cin;

	cout <= ((xin and yin) or (yin and cin) or (cin and xin));

end arith;
