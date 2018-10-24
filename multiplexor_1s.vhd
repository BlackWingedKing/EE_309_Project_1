library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

--defined the multiplexor
entity multiplexor_1s is
--inputs are x0,x1 and a select bit s
--output is o
   port(x0,x1,s: in std_logic;
        o: out std_logic);
end entity;

architecture Struct of multiplexor_1s is
   signal y,y1,w: std_logic;

begin
	--just implemented x0.s'+x1.s
	a_1: w <= x1 and s;
	n_1: y1 <= not s;
	a_2: y <= y1 and x0;
	o_1: o <= y or w;
end Struct;