library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity mux_4_1 is
   port(inp: in std_logic_vector(3 downto 0);
		  sel: in std_logic_vector(1 downto 0);
        outp: out std_logic);
end entity;

architecture Struct of mux_4_1 is
   signal ns0, ns1;

begin
	--just implemented x0.s'+x1.s
	s_1: ns0 <= not (sel(0))
	s_2: ns1 <= not (sel(1))
	o_1: o <= (inp(0) and sel(1) and sel(0)) or (inp(1) and sel(1) and ns0) or (inp(2) and ns1 and sel(0)) or (inp(3) and ns1 and ns0)
end Struct;