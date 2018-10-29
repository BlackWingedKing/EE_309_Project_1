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
	component ir is
--input is 16 bit instruction
	port(clk: in std_logic;
		  irwrite: in std_logic;
		  inp: in std_logic_vector(15 downto 0);
		  opcode: out std_logic_vector(3 downto 0); -- 12-15
		  immediate6: out std_logic_vector(5 downto 0); --0-5
		  ra: out std_logic_vector(2 downto 0); --9-11
		  rb: out std_logic_vector(2 downto 0); --6-8
		  rc: out std_logic_vector(2 downto 0); --3-5
		  cz: out std_logic_vector(1 downto 0); --0-1
		  immediate9: out std_logic_vector(8 downto 0); --0-8
		  immediate8: out std_logic_vector(7 downto 0) --0-7
		  );

	end component;
	
	component priority_encoder is
		port(inp : in std_logic_vector (7 downto 0);
		  outp: out std_logic_vector(2 downto 0);
		  zero: out std_logic);
	end component;
	
	-- note here I can keep an enable for alu and make it 
	-- it execute only on the rising edge if things fail need to try that
	component alu is
	port(inp1,inp2: in std_logic_vector(15 downto 0);
		  cin, reset: in std_logic;
		  sel: in std_logic_vector(1 downto 0);
		  outp: out std_logic_vector(15 downto 0);
		  cout: out std_logic;
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
-- registers are pc,a,b,mdr,t1 (it is the alu_out register)
signal pc_en,a_en,b_en,mdr_en,t1_en,z_en,c_en: std_logic;
signal z_flag,c_flag: std_logic; -- here c_flag and z_flag are carry and zero flags
signal a_in,d_in,d_out: std_logic_vector(15 downto 0);
signal pc_in,pc_out,a_in,a_out,b_in,b_out,mdr_in,mdr_out,t1_in,t1_out : std_logic_vector(15 downto 0);
signal carry_in, carry, zero: std_logic;
signal alu_inp1, alu_inp2, alu_out: std_logic_vector(15 downto 0);
signal 
signal state, next_state : std_logic_vector(4 downto 0) := "00000";

begin 
--- register declaration
pc: register16 port map(pc_in,pc_en,clk,pc_out);
a: register16 port map(a_in,a_en,clk,a_out);
b: register16 port map(b_in,b_en,clk,b_out);
mdr: register16 port map(mdr_in,mdr_en,clk,mdr_out);
t1: register16 port map(t1_in,t1_en,clk,t1_out);

z_flag: register1 port map(zero,z_en,clk,z_flag);
c_flag: register1 port map(carry,c_en,clk,c_flag);

-- memory and alu declaration
mem: memory port map(clk,memRd,memWr,a_in,d_in,d_out);
alu: alu port map(alu_inp1, alu_inp2, carry_in, reset, alu_sel, alu_out, carry, zero);

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
