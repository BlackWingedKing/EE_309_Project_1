library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity mux3_4_1 is
   port(a3,a2,a1,a0: in std_logic_vector(2 downto 0);
		sel: in std_logic_vector(1 downto 0);
        outp: out std_logic_vector(2 downto 0));
end entity;

architecture Struct of mux3_4_1 is

begin
	outp <= a3 when sel = "11" else
			a2 when sel = "10" else
			a1 when sel = "01" else
			a0 when sel = "00";
end architecture Struct;