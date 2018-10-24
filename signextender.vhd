library ieee;

use ieee.std_logic_1164.all;


entity signextender is

	port(xin: in std_logic_vector(5 downto 0);
		  zout: out std_logic_vector(15 downto 0));

end entity;


architecture arith of signextender is

begin
	zout(0) <= xin(0);
	zout(1) <= xin(1);
	zout(2) <= xin(2);
	zout(3) <= xin(3);
	zout(4) <= xin(4);
	zout(5) <= xin(5);
	zout(6) <= xin(5);
	zout(7) <= xin(5);
	zout(8) <= xin(5);
	zout(9) <= xin(5);
	zout(10) <= xin(5);
	zout(11) <= xin(5);
	zout(12) <= xin(5);
	zout(13) <= xin(5);
	zout(14) <= xin(5);
	zout(15) <= xin(5);
end arith;