library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity mux_8_1 is
   port(a7,a6,a5,a4,a3,a2,a1,a0: in std_logic_vector(15 downto 0);
		sel: in std_logic_vector(2 downto 0);
        outp: out std_logic_vector(15 downto 0));
end entity;

architecture Struct of mux_8_1 is

begin
	outp <= a7 when sel = "111" else
			a6 when sel = "110" else
			a5 when sel = "101" else
			a4 when sel = "100" else
			a3 when sel = "011" else
			a2 when sel = "010" else
			a1 when sel = "001" else
			a0 when sel = "000";
end architecture Struct;