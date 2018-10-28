library std;
library ieee;
use std.standard.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity registerfile is    
  port(
		clk : in std_logic;
		dinm : in std_logic_vector(15 downto 0);  
	  	regsela : in std_logic_vector(2 downto 0);
		regselb	: in std_logic_vector(2 downto 0);
		regselm : in std_logic_vector(2 downto 0);
		regwrite : in std_logic;
		douta : out std_logic_vector(15 downto 0);
		doutb : out std_logic_vector(15 downto 0) );
end entity;


architecture behave of registerfile is
-- component declaration
component register16 is
port (din  : in  std_logic_vector(15 downto 0); en: in std_logic; clk: in std_logic;
		dout : out std_logic_vector(15 downto 0));
	end component;
signal regen: std_logic_vector(7 downto 0);
begin
	
	process(clk)
	begin 
		if(clk'event and clk = '1') then
			if regwrite = '1' then
				--as
			end if;
		end if;
	end process;

end behave;