library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

--defined the multiplexor
entity mux_4_1 is
--inputs are x0,x1 and a select bit s
--output is o
   port(a: in std_logic_vector(3 downto 0);
   		s: in std_logic_vector(1 downto 0);
        o: out std_logic);
end entity;

architecture Struct of mux_4_1 is
   signal ns0, ns1;

begin
	--just implemented x0.s'+x1.s
	s_1: ns0 <= not (s(0))
	s_2: ns1 <= not (s(1))
	o_1: o <= (a(0) and s(1) and s(0)) or (a(1) and s(1) and ns0) or (a(2) and ns1 and s(0)) or (a(3) and ns1 and ns0)
end Struct;