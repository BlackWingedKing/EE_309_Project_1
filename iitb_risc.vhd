library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;

-- The control word mapping to control signals is as follows 
--- 1 Bit Signals ->
-- regWr: regwrite, memWr: memwrite, memRd: memread, irWr: IRwrite, pcWr: pcwrite, pcWrCnd: pcwritecond, prEn: priorityenable, pcSrc: PCsource, rfB: rfB, IorD: IorD, dCon: datacon, rfA: rfToA
--- 2 Bit Signals ->  
-- aluOp: ALUop, alusrcA: alusrcA, mReg: memtoreg, rDst: regDst
--- 3 Bit Signals ->
-- aluSrcB: ALUscrB

entity iitb_risc is 

	port(memRd, memWr, regWr, irWr, pcWr, pcWrCnd, prEn, pcSrc, rfB, IorD, rfA, dCon: in std_logic;
		  aluOp, aluSrcA, mReg, rDst: in std_logic_vector(1 downto 0);
		  aluSrcB: in std_logic_vector(2 downto 0);
		  output: out std_logic_vector(15 downto 0));
		  
end entity;



architecture behave of iitb_risc is 
 
 -- Component Declarations
	
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
	
	component inverter_16bit is
		port(a: in std_logic_vector(15 downto 0);
		  b: out std_logic_vector(15 downto 0));
	end component;

	component leftshift is
		port(a: in std_logic_vector(15 downto 0);
		  s: in std_logic
		  c: out std_logic_vector(15 downto 0));
	end component;
	
	component signextender is
		port(xin: in std_logic_vector(5 downto 0);
		  zout: out std_logic_vector(15 downto 0));
	end component;
	
	component wrapper7 is
		port(xin: in std_logic_vector(8 downto 0);
		  zout: out std_logic_vector(15 downto 0));
	end component;

	component wrapper10 is
		port(xin: in std_logic_vector(5 downto 0);
		  zout: out std_logic_vector(15 downto 0));
	end component;
	
	component dflip is    
		port (din  : in  std_logic; en: in std_logic; clk: in std_logic;
		  dout : out std_logic);
	end component;
	
	component register16 is    
		port (din  : in  std_logic_vector(15 downto 0); en: in std_logic; clk: in std_logic_vector(15 downto 0);
		  dout : out std_logic);
	end component;
	
	component mux_2_1 is
		port(inp: in std_logic_vector(1 downto 0);
			  sel: in std_logic;
           outp: out std_logic);
	end component;
	
	component mux_4_1 is
		port(inp: in std_logic_vector(3 downto 0);
			  sel: in std_logic_vector(1 downto 0);
           outp: out std_logic);
	end component;
	
	component mux_8_1 is
		port(inp: in std_logic_vector(7 downto 0);
			  sel: in std_logic_vector(2 downto 0);
           outp: out std_logic);
	end component;
	
	
	
begin 
 -- FSM Coding Logic
  
end behave;