library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity mux_8_1 is
   port(inp: in std_logic_vector(7 downto 0);
   	  sel: in std_logic_vector(2 downto 0);
        outp: out std_logic);
end entity;

architecture Struct of mux_8_1 is
   signal ns0, ns1, ns2, o1, o2, o3: std_logic ;

begin
	s_1: ns0 <= not (sel(0));
	s_2: ns1 <= not (sel(1));
	s_3: ns2 <= not (sel(2));
	o_1: o1 <= (inp(0) and ns2 and ns1 and ns0) or (inp(1) and ns2 and ns1 and sel(0)) or (inp(2) and ns2 and sel(1) and ns0) or (inp(3) and ns2 and sel(1) and sel(0));
	o_2: o2 <= (inp(4) and sel(2) and ns1 and ns0) or (inp(5) and sel(2) and ns1 and sel(0)) or (inp(6) and sel(2) and sel(1) and ns0) or (inp(7) and sel(2) and sel(1) and sel(0));
	o_3: outp <= o1 or o2;
end Struct;
