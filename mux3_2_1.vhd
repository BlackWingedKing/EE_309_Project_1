library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity mux3_2_1 is
   port(a1,a0: in std_logic_vector(2 downto 0);
		  sel: in std_logic;
        outp: out std_logic_vector(2 downto 0));
end entity;

architecture Struct of mux3_2_1 is

begin
	process (sel)--,a0,a1) 
	begin

	if(sel = '1') then
		outp <= a1;
	else
		outp <= a0;
	end if; 
	
end process;
end architecture Struct;