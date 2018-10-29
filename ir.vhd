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
		  cz: out std_logic_vector(1 downto 0); --0-1 -- 0 is z and 1 is c
		  immediate9: out std_logic_vector(8 downto 0); --0-8
		  immediate8: out std_logic_vector(7 downto 0) --0-7
		  );

end entity;


architecture behave of ir is
component register16 is    
  port (din  : in  std_logic_vector(15 downto 0); en: in std_logic; clk: in std_logic;
		  dout : out std_logic_vector(15 downto 0));

end component;
signal ir_regout: std_logic_vector(15 downto 0);

begin
	r_1: register16 port map (inp,irwrite,clk,ir_regout);
	opcode <= ir_regout(15 downto 12);
	immediate6 <= ir_regout(5 downto 0);
	ra <= ir_regout(11 downto 9);
	rb <= ir_regout(8 downto 6);
	rc <= ir_regout(5 downto 3);
	cz <= ir_regout(1 downto 0);
	immediate9 <= ir_regout(8 downto 0);
	immediate8 <= ir_regout(7 downto 0);
end behave;