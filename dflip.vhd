library std;
use std.standard.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 


entity dflip is    

  port (din  : in  std_logic; en: in std_logic; clk: in std_logic;
		  dout : out std_logic);

end entity;


architecture seqnt of dflip is

begin
	
	process(clk)
	begin 
		if(clk'event and clk = '1') then
			if enable = '1' then
				dout <= din;
			end if;
		end if;
	end process;

end seqnt;