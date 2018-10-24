library ieee;
use ieee.std_logic_1164.all;


% Component Declarations %
component full_adder is
	port(cin,xin,yin: in std_logic;
		  cout,sum: out std_logic);
end component;
component adder is
	port(xin,yin: in std_logic_vector(15 downto 0);
		  cin: in std_logic;
		  sum: out std_logic_vector(15 downto 0);
		  cout: out std_logic);
end component;
component full_sub is
	port(bin,xin,yin: in std_logic;
		  bout,diff: out std_logic);
end component;
component subtractor is
	port(xin,yin: in std_logic_vector(15 downto 0);
		  bin: in std_logic;
		  diff: out std_logic_vector(15 downto 0);
		  bout: out std_logic);
end component;


% Logic Design %