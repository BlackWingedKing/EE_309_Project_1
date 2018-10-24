library ieee;
use ieee.std_logic_1164.all;


entity subtractor is

	port(xin,yin: in std_logic_vector(15 downto 0);
		  bin: in std_logic;
		  diff: out std_logic_vector(15 downto 0);
		  bout: out std_logic);

end entity;


architecture arith of subtractor is
	
	component full_sub is
		port(bin,xin,yin: in std_logic;
			  bout,diff: out std_logic);
	end component;
	
	signal btemp: std_logic_vector(15 downto 0);
	
begin
	btemp(0) <= bin;
	s1: full_sub port map(btemp(0), xin(0), yin(0), btemp(1), diff(0));
	s2: full_sub port map(btemp(1), xin(1), yin(1), btemp(2), diff(1));
	s3: full_sub port map(btemp(2), xin(2), yin(2), btemp(3), diff(2));
	s4: full_sub port map(btemp(3), xin(3), yin(3), btemp(4), diff(3));
	s5: full_sub port map(btemp(4), xin(4), yin(4), btemp(5), diff(4));
	s6: full_sub port map(btemp(5), xin(5), yin(5), btemp(6), diff(5));
	s7: full_sub port map(btemp(6), xin(6), yin(6), btemp(7), diff(6));
	s8: full_sub port map(btemp(7), xin(7), yin(7), btemp(8), diff(7));
	s9: full_sub port map(btemp(8), xin(8), yin(8), btemp(9), diff(8));
	s10: full_sub port map(btemp(9), xin(9), yin(9), btemp(10), diff(9));
	s11: full_sub port map(btemp(10), xin(10), yin(10), btemp(11), diff(10));
	s12: full_sub port map(btemp(11), xin(11), yin(11), btemp(12), diff(11));
	s13: full_sub port map(btemp(12), xin(12), yin(12), btemp(13), diff(12));
	s14: full_sub port map(btemp(13), xin(13), yin(13), btemp(14), diff(13));
	s15: full_sub port map(btemp(14), xin(14), yin(14), btemp(15), diff(14));
	s16: full_sub port map(btemp(15), xin(15), yin(15), bout, diff(15));
end arith;