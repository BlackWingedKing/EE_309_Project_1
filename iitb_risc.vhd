library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;
use ieee.numeric_std.all;

entity iitb_risc is 

	port(clk, reset: in std_logic;
		input: in std_logic_vector(31 downto 0);
		output: out std_logic_vector(15 downto 0)
		);
		  
end entity;

architecture behave of iitb_risc is 
 -- Component Declarations	
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
		  s: in std_logic;
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

	component register1 is    
		port (din  : in  std_logic; en: in std_logic; clk: in std_logic;
		  dout : out std_logic);
	end component;
	
	component register16 is    
		port (din  : in  std_logic_vector(15 downto 0); en: in std_logic; clk: in std_logic;
		  dout : out std_logic_vector(15 downto 0));
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
	
	component memory is 
  port (clk : in std_logic;  
        mr  : in std_logic;   
        mw  : in std_logic;
        a   : in unsigned(15 downto 0);   
        di  : in unsigned(15 downto 0);   
        do  : out unsigned(15 downto 0));  
	end component;

--control signal encoding....
--- The control word mapping to control signals is as follows 
--- 1 Bit Signals ->
-- regWr: regwrite, memWr: memwrite, memRd: memread, irWr: IRwrite, pcWr: pcwrite, pcWrCnd: pcwritecond, prEn: priorityenable, pcSrc: PCsource, rfB: rfB, IorD: IorD, dCon: datacon, rfA: rfToA
--- 2 Bit Signals ->  
-- aluOp: ALUop, alusrcA: alusrcA, mReg: memtoreg, rDst: regDst
--- 3 Bit Signals ->
-- aluSrcB: ALUscrB
	
signal memRd, memWr, regWr, irWr, pcWr, pcWrCnd, prEn, pcSrc, rfB, IorD, rfA, dCon: std_logic;
signal aluOp, aluSrcA, mReg, rDst: std_logic_vector(1 downto 0);
signal aluSrcB: std_logic_vector(2 downto 0);

-- define signals for registers
-- registers are pc,a,b,mdr,alu_out
signal pc_en,a_en,b_en,mdr_en,alu_out_en: std_logic;
signal pc_in,pc_out,a_in,a_out,b_in,b_out,mdr_in,mdr_out,alu_out_in,alu_out_out : std_logic_vector(15 downto 0);


signal state, next_state : std_logic_vector(4 downto 0) := "00000";

begin 
--- register declaration
r_1: register16 port map(pc_in,pc_en,clk,pc_out);
r_2: register16 port map(a_in,a_en,clk,a_out);
r_3: register16 port map(b_in,b_en,clk,b_out);
r_4: register16 port map(mdr_in,mdr_en,clk,mdr_out);
r_5: register16 port map(alu_out_in,alu_out_en,clk,alu_out_out);


process (input,reset, clk)
begin
   if(clk'event and clk = '1') then
		if (state = "00000") then

			if (reset = '1') then
				next_state <= "00001";
			else
				next_state <= "00000";
			end if;
		end if;
	end if;
	
end process;
end behave;