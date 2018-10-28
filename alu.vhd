library ieee;
use ieee.std_logic_1164.all;


entity alu is
	port(inp1,inp2: in std_logic_vector(15 downto 0);
		  enable, reset: in std_logic;
		  opselect: in std_logic_vector(3 downto 0);
		  outp: out std_logic_vector(15 downto 0);
		  carry: out std_logic;
		  zero: out std_logic);
end entity;

architecture behave of alu is

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
	component leftshift is
		port(a: in std_logic_vector(15 downto 0);
        s: in std_logic
		  c: out std_logic_vector(15 downto 0));
	end component;

begin
	-- Logic of ALU
end behave;