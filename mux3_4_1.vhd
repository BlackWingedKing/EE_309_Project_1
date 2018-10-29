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
	process (sel) 
	begin

	if(sel = "11") then
		outp <= a3;
	elsif(sel = "10") then
		outp <= a2;
	elsif(sel = "01") then
		outp <= a1;
	else
		outp <= a0;
	end if; 
end process;
end architecture Struct;