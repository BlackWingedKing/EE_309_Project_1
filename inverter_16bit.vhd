library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity inverter_16bit is
   port(a: in std_logic_vector(15 downto 0);
		  b: out std_logic_vector(15 downto 0));
end entity;
architecture Struct of inverter_16bit is

begin
	g_1: for i in 0 to 15 generate
		begin
		m_1: b(i)<= not(a(i));
		end generate g_1;
end Struct;