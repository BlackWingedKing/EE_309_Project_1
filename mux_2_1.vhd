library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity mux_2_1 is
   port(inp: in std_logic_vector(1 downto 0);
		  sel: in std_logic;
        outp: out std_logic);
end entity;
architecture Struct of mux_2_1 is
   signal y,y1,w: std_logic;

begin
	--just implemented x0.s'+x1.s
	a_1: w <= inp(1) and sel;
	n_1: y1 <= not sel;
	a_2: y <= y1 and inp(0);
	o_1: outp <= y or w;
end Struct;
