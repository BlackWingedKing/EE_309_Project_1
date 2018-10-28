library ieee;
use ieee.std_logic_1164.all;


% Component Declarations %
component multiplexor_1s is
   port(x0,x1,s: in std_logic;
        o: out std_logic);
end component;
component priority_encoder is
	port(inp : in std_logic_vector (7 downto 0);
		  outp: out std_logic_vector(2 downto 0);
		  zero: out std_logic);
end component;
component alu is
	port(inp1,inp2: in std_logic_vector(15 downto 0);
		  enable, reset: in std_logic;
		  outp: out std_logic_vector(15 downto 0);
		  carry: out std_logic;
		  zero: out std_logic);
end component;


% Logic Design %