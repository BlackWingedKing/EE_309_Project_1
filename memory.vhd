library ieee;
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;

entity memory is 
  port (clk : in std_logic;  
        we  : in std_logic;   
        a   : in unsigned(15 downto 0);   
        di  : in unsigned(15 downto 0);   
        do  : out unsigned(15 downto 0));   
end memory;

   
architecture syn of memory is   
  type ram_type is array (1023 downto 0)   
        of unsigned (15 downto 0);   

	function init_ram
		return ram_type is 
		variable tmp : ram_type := (others => (others => '0'));
	begin 
		for addr_pos in 0 to 500 loop 
			-- Initialize each address with the address itself
			tmp(addr_pos) := (to_unsigned(addr_pos, 16));
		end loop;
		
		   --tmp(10):=to_unsigned(1,16);
		return tmp;
	end init_ram;

  signal RAM : ram_type:=init_ram;	

	begin   
  process (clk)   
  begin   
    if (clk'event and clk = '1') then   
      if (we = '1') then   
        RAM(to_integer(a)) <= di;   
      end if;   
    end if;
  end process;
do <= RAM(to_integer(a));   
end syn;