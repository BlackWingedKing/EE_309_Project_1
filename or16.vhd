library ieee;

use ieee.std_logic_1164.all;

entity or16 is

	port(xin,yin: in std_logic_vector(15 downto 0);
		  zout: out std_logic_vector(15 downto 0));

end entity;

architecture arith of or16 is

begin
	zout(0) <= xin(0) or yin(0);
	zout(1) <= xin(1) or yin(1);
	zout(2) <= xin(2) or yin(2);
	zout(3) <= xin(3) or yin(3);
	zout(4) <= xin(4) or yin(4);
	zout(5) <= xin(5) or yin(5);
	zout(6) <= xin(6) or yin(6);
	zout(7) <= xin(7) or yin(7);
	zout(8) <= xin(8) or yin(8);
	zout(9) <= xin(9) or yin(9);
	zout(10) <= xin(10) or yin(10);
	zout(11) <= xin(11) or yin(11);
	zout(12) <= xin(12) or yin(12);
	zout(13) <= xin(13) or yin(13);
	zout(14) <= xin(14) or yin(14);
	zout(15) <= xin(15) or yin(15);
end arith;
