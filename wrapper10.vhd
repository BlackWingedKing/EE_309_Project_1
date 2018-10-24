library ieee;

use ieee.std_logic_1164.all;


entity wrapper7 is

	port(xin: in std_logic_vector(5 downto 0);
		  zout: out std_logic_vector(15 downto 0));

end entity;


architecture arith of wrapper7 is

begin
	zout(0) <= xin(0);
	zout(1) <= xin(1);
	zout(2) <= xin(2);
	zout(3) <= xin(3);
	zout(4) <= xin(4);
	zout(5) <= xin(5);
	zout(6) <= '0';
	zout(7) <= '0';
	zout(8) <= '0';
	zout(9) <= '0';
	zout(10) <= '0';
	zout(11) <= '0';
	zout(12) <= '0';
	zout(13) <= '0';
	zout(14) <= '0';
	zout(15) <= '0';
end arith;