library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity mux_2_1 is
   port(a1,a0: in std_logic_vector(15 downto 0);
		sel: in std_logic;
        outp: out std_logic_vector(15 downto 0));
end entity;

architecture Struct of mux_2_1 is

begin
	outp <= a1 when sel = '1' else
			a0 when sel = '0';
end architecture Struct;