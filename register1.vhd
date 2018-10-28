library std;
library ieee;
use std.standard.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 


entity register1 is    

  port (din  : in  std_logic; en: in std_logic; clk: in std_logic;
		  dout : out std_logic);

end entity;


architecture seqnt of register1 is

begin
	
	process(clk)
	begin 
		if(clk'event and clk = '1') then
			if en = '1' then
				dout <= din;
			end if;
		end if;
	end process;

end seqnt;