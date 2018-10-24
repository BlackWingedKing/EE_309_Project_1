library std;
use std.standard.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 


entity register16 is    

  port (din  : in  std_logic_vector(15 downto 0); en: in std_logic; clk: in std_logic_vector(15 downto 0);
		  dout : out std_logic);

end entity;


architecture seqnt of register16 is

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