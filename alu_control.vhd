library ieee;

use ieee.std_logic_1164.all;

entity ir is
--input is 16 bit instruction
	port(clk: in std_logic;
		  irwrite: in std_logic;
		  inp: in std_logic_vector(15 downto 0);
		  opcode: out std_logic_vector(3 downto 0); -- 12-15
		  immediate6: out std_logic_vector(5 downto 0); --0-5
		  ra: out std_logic_vector(2 downto 0); --9-11
		  rb: out std_logic_vector(2 downto 0); --6-8
		  rc: out std_logic_vector(2 downto 0); --3-5
		  cz: out std_logic_vector(1 downto 0); --0-1
		  immediate9: out std_logic_vector(8 downto 0); --0-8
		  immediate8: out std_logic_vector(7 downto 0) --0-7
		  );

end entity;


architecture behave of ir is

begin
	process(clk)
	begin 
		if(clk'event and clk = '1') then
			if(irwrite = '1') then
				opcode <= inp(12 downto 15);
				immediate6 <= inp(5 downto 0);
				ra <= inp(11 downto 9);
				rb <= inp(8 downto 6);
				rc <= inp(5 downto 3);
				cz <= inp(1 downto 0);
				immediate9 <= inp(8 downto 0);
				immediate8 <= inp(7 downto 0);
			end if;
		end if;
	end process;
end behave;