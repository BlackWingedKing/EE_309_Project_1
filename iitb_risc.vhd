library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;
use ieee.numeric_std.all;

entity iitb_risc is 

	port(clk, extmeminit: in std_logic;
		input: in std_logic_vector(31 downto 0);
		output: out std_logic_vector(9 downto 0)
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
	port(clk : in std_logic;
		  inp : in std_logic_vector (7 downto 0);
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
	
	component wrapper13 is

	port(xin: in std_logic_vector(2 downto 0);
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
   port(a1,a0: in std_logic_vector(15 downto 0);
		  sel: in std_logic;
        outp: out std_logic_vector(15 downto 0));
	end component;
	
	component mux_4_1 is
   port(a3,a2,a1,a0: in std_logic_vector(15 downto 0);
		  sel: in std_logic_vector(1 downto 0);
        outp: out std_logic_vector(15 downto 0));
	end component;
	
	component mux_8_1 is
   port(a7,a6,a5,a4,a3,a2,a1,a0: in std_logic_vector(15 downto 0);
		  sel: in std_logic_vector(2 downto 0);
        outp: out std_logic_vector(15 downto 0));
	end component;
	
	component mux8_8_1 is
   port(a7,a6,a5,a4,a3,a2,a1,a0: in std_logic_vector(7 downto 0);
		  sel: in std_logic_vector(2 downto 0);
        outp: out std_logic_vector(7 downto 0));
   end component;
	

	component mux3_2_1 is
   port(a1,a0: in std_logic_vector(2 downto 0);
		  sel: in std_logic;
        outp: out std_logic_vector(2 downto 0));
	end component;
	
	component mux3_4_1 is
   port(a3,a2,a1,a0: in std_logic_vector(2 downto 0);
		  sel: in std_logic_vector(1 downto 0);
        outp: out std_logic_vector(2 downto 0));
	end component;
	
	component memory is 
  port (clk,init : in std_logic;  
        mr  : in std_logic;   
        mw  : in std_logic;
        a   : in std_logic_vector(15 downto 0);   
        di  : in std_logic_vector(15 downto 0);   
        do  : out std_logic_vector(15 downto 0));   
	end component;

	component registerfile is 
  port(
		clk : in std_logic;
		dinm : in std_logic_vector(15 downto 0);  
	  	regsela : in std_logic_vector(2 downto 0);
		regselb	: in std_logic_vector(2 downto 0);
		regselm : in std_logic_vector(2 downto 0);
		regwrite : in std_logic;
		douta : out std_logic_vector(15 downto 0);
		doutb : out std_logic_vector(15 downto 0) );
	end component;

--control signal encoding....
--- The control word mapping to control signals is as follows 
--- 1 Bit Signals ->
-- regWr: regwrite, memWr: memwrite, memRd: memread, irWr: IRwrite, pcWr: pcwrite, pcWrCnd: pcwritecond, prEn: priorityenable, pcSrc: PCsource, rfB: rfB, IorD: IorD, dCon: datacon, rfA: rfToA
--- 2 Bit Signals ->  
-- aluOp: ALUop, alusrcA: alusrcA, mReg: memtoreg, rDst: regDst
--- 3 Bit Signals ->
-- aluSrcB: ALUscrB
	
signal meminit,memrd, memwr, regwr, irwr, pcwr, prEn, pcsrc, rfb, rftoa: std_logic;
signal aluop, alusrca, memtoreg, rdst,iord,dcon: std_logic_vector(1 downto 0);
signal alusrcb,regs_b,rf_in: std_logic_vector(2 downto 0);

-- define signals for registers
-- registers are pc,a,b,mdr,t1 (it is the alu_out register)
signal a_en,b_en,mdr_en,alu_en, alud, lol: std_logic;
signal z_flag,c_flag: std_logic; -- here c_flag and z_flag are carry and zero flags
signal add_in,d_in,d_out: std_logic_vector(15 downto 0);
signal pc_in,pc_out,a_in,a_out,b_out,mdr_in,mdr_out,t1_in,t1_out: std_logic_vector(15 downto 0);
signal carry, zero: std_logic;
signal alu_inp1, alu_inp2, alu_out: std_logic_vector(15 downto 0);
signal state, next_state : std_logic_vector(4 downto 0) := "00000";
signal cz: std_logic_vector(1 downto 0);
signal opcode: std_logic_vector(3 downto 0);
signal immediate6: std_logic_vector(5 downto 0); --0-5
signal ra,rb,rc,pr_en: std_logic_vector(2 downto 0); --9-11
signal immediate9: std_logic_vector(8 downto 0); --0-8
signal immediate8,priorityin, and8: std_logic_vector(7 downto 0); --0-7
signal imm_6_16,sign_6_16,imm_9_16,lfimm9,mreg_in,r_outa,r_outb: std_logic_vector(15 downto 0);
signal extadd_in,extdata_in,pr_3_16:std_logic_vector(15 downto 0);
begin 

-- extadd_in, extdata_in... 
extadd_in<= input(15 downto 0);
extdata_in<= input(31 downto 16);

-- initiate the memory block-- note that memory has unsigned inputs
mem: memory port map(clk,'0',memrd,memwr,add_in,d_in,d_out);

-- ir block
ir_1: ir port map(clk,irwr,d_out,opcode,immediate6,ra,rb,rc,cz,immediate9,immediate8);

--- register declarations12
mdr: register16 port map(d_out,mdr_en,clk,mdr_out); -- mdr saves the data from do
pc: register16 port map(pc_in,pcwr,clk,pc_out);
a: register16 port map(a_in,a_en,clk,a_out);
b: register16 port map(r_outb,b_en,clk,b_out);
t1: register16 port map(alu_out,alu_en,clk,t1_out);

-- alu config..
alu_en <= (not(cz(0)) and not(cz(1))) or (cz(1) and c_flag) or (cz(0) and z_flag) or alud;
zero_flag: register1 port map(zero,alu_en,clk,z_flag);
carry_flag: register1 port map(carry,alu_en,clk,c_flag);

-- alu declaration
alu_1: alu port map(alu_inp1, alu_inp2,'0', '0', aluop, alu_out, carry, zero);

-- extensions
e_1: wrapper10 port map(immediate6,imm_6_16);
e_2: signextender port map(immediate6,sign_6_16);
e_3: wrapper7 port map(immediate9,imm_9_16);
l_1: leftshift port map(imm_9_16,lfimm9);
e_4: wrapper13 port map(pr_en,pr_3_16);

-- register file
reg_1: registerfile port map(clk,mreg_in,ra, regs_b,rf_in,regwr,r_outa,r_outb);

-- priority encoder
p_1: priority_encoder port map(clk,priorityin,pr_en,lol);
-- data path starts
m_1: mux_4_1 port map(X"0000",extadd_in,pc_out,t1_out,iord,add_in);
m_2: mux_4_1 port map(x"0000",extdata_in,b_out,a_out,dcon,d_in);
m_3: mux_4_1 port map(x"0000",lfimm9,mdr_out,t1_out,memtoreg,mreg_in);
m_4: mux3_2_1 port map(pr_en,rb,rfb,regs_b);
m_5: mux3_4_1 port map(pr_en,ra,rb,rc,rdst,rf_in);
m_6: mux_2_1 port map(t1_out,r_outa,rftoa,a_in);
m_7: mux_4_1 port map(x"0000",imm_6_16,a_out,pc_out,alusrca,alu_inp1);
m_8: mux_8_1 port map(pr_3_16,x"0007",imm_6_16,sign_6_16,x"0000",x"0001",x"0001",b_out,alusrcb,alu_inp2);
m_9: mux_2_1 port map(t1_out,alu_out,pcsrc,pc_in);
m_10:mux8_8_1 port map("01111111","10111111","11011111","11101111","11110111","11111011","11111101","11111110",pr_en,and8);
-- registers a,b,mdr are always enabled
a_en <= '1';
b_en <= '1';
mdr_en <= '1';

process (clk)
	begin
		if (clk'event and clk = '1') then
			state <= next_state;
		end if;
end process;

process(input,extmeminit,clk)
begin
	-- output is the current and next state


   if(clk'event and clk = '1') then
		output(9 downto 5) <= state; 
		output(4 downto 0) <= next_state;
		
		if (state = "00000") then
			memrd <= '0';
			memwr <= '1';
			iord <= "10";
			dcon <= "10";
			regwr <= '0';
			irwr <= '0';
			pcwr <= '0';
			pcsrc <= '0';
			rfb <= '0';
			aluop <= "00";
			alusrca <= "00";
			alusrcb <= "000";
			memtoreg <= "00";
			rdst <= "00";
			rftoa <= '0';
			alud <= '0';
			
			if (extmeminit = '0') then
				next_state <= "00001";
			else
				next_state <= "00000";
			end if;
		
		elsif (state = "00001") then -- this is the house keeping state
			memrd <= '1';
			memwr <= '0';
			iord <= "00";
			dcon <= "00";
			regwr <= '0';
			irwr <= '1';
			pcwr <= '1';
			pcsrc <= '0';
			rfb <= '0';
			aluop <= "00";
			alusrca <= "00";
			alusrcb <= "001";
			memtoreg <= "00";
			rdst <= "00";
			rftoa <= '0';
			alud <= '1';
			priorityin<= immediate8;
			
			next_state <= "00010";
		
		elsif (state = "00010") then
			memrd <= '0';
			alusrca <= "00";
			alusrcb <= "101";
			aluop <= "00";
			pcwr <= '0';
			irwr <= '0';
			
			if(opcode = "0000") then                           --ADD
				next_state <= "01010";
			elsif (opcode = "0010") then                     --NAND
				next_state <= "01001";                       
			elsif (opcode = "0001") then                     --ADI
				next_state <= "00111";
			elsif (opcode = "1000" or opcode = "1001") then  --JAL/ JLR                       CHECK THE "OR" USED IN THIS LINE
				next_state <= "01110";
			-- LHI
			elsif(opcode = "0011") then
				next_state <= "01101";
			-- LW
			elsif(opcode = "0100") then
				next_state <= "00011";
			-- SW
			elsif( opcode= "0101") then
				next_state <= "00011";
			-- LM
			elsif(opcode = "0110") then
				next_state <= "10010";
			-- SM
			elsif(opcode = "0111") then
				next_state <= "10010";
			-- BEQ
			elsif(opcode = "1100") then
				next_state <= "01100"; 
			end if; 		
		 
		
		elsif (state = "01010") then                              -- this is ADD 
			alud <= '0';
			alusrca <= "01";
			alusrcb <= "000";
			aluop <= "00";

			next_state <= "01011";

		elsif (state = "01001") then
			alud <= '0';
			alusrca <= "01";
			alusrcb <= "000";
			aluop <= "10";

			next_state <= "01011";

		elsif (state = "01011") then
			memtoreg <= "00";
			regwr <= '1';
			rdst <= "00";

			next_state <= "00001";

		elsif (state = "00111") then                            -- this is ADI
			alusrca <= "01";
			alusrcb <= "100";
			aluop <= "00";

			next_state <= "01000";

		elsif (state = "01000") then
			regwr <= '1';
			memtoreg <= "00";
			rdst <= "01";

			next_state <= "00001";	

		elsif (state = "01110") then
			alusrca <= "00";
			alusrcb <= "011";
			aluop <= "00";

			next_state <= "01111";

		elsif (state = "01111") then
			rdst <= "10";
			regwr <= '1';
			memtoreg <= "00";

			if (opcode = "1000") then
				next_state <= "10000";
			elsif (opcode = "1001") then
				next_state <= "10001";
			end if;
		
		elsif (state = "10000") then
			alusrca <= "00";
			alusrcb <= "101";
			pcsrc <= '0';
			pcwr <= '1';					
            regwr<='0';

			next_state <= "00001";

		elsif (state = "10000") then
			regwr <= '0';
			alusrca <= "11";
			alusrcb <= "000";
			pcsrc <= '0';
			pcwr <= '1';					

			next_state <= "00001";	

		elsif (state = "01101") then
			memtoreg <= "10";
			regwr <= '1';
			rdst <= "10";
			next_state <= "00001";
		elsif (state = "00011") then
			alusrca <= "10";
			alusrcb <= "000";
			aluop <= "00";
			-- LW
			if(opcode = "0100") then
				next_state <= "00100";
			-- SW
			elsif( opcode= "0101") then
				next_state <= "00101";
		   end if;
		elsif (state = "10010") then
			alusrca <= "01";
			alusrcb <= "111";
			aluop <= "00";
			-- LM
			if(opcode = "0110") then
				next_state <= "10011";
			-- SM
			elsif(opcode = "0111") then
				next_state <= "10100";
		   end if;
		elsif (state = "01100") then
			alusrca <= "01";
			alusrcb <= "000";
			aluop <= "01";
			pcwr <= z_flag;
			pcsrc <= '1';
			next_state <= "00001";
		elsif (state = "00100") then
			memrd <= '1';
			iord <= "01";
			next_state <= "00110";
		elsif (state = "00110") then
			regwr <= '1';
			iord <= "00";
			memtoreg <= "01";
			rdst <= "10";
			memrd <= '0';
			next_state <= "00001";
		elsif (state = "00101") then
			memwr <= '1';
			dcon <= "00";
			iord <= "01";
			next_state <= "00001";
		elsif (state = "10011") then
			iord <= "01";
			memrd <= '1';
			next_state <= "10101";
		elsif (state = "10101") then
			regwr <= '1';
			memtoreg <= "01";
			rdst <= "11";
			memrd <= '0';
			iord <= "00";
			next_state <= "10111";
		elsif (state = "10100") then
			rfb <= '1';
			next_state <= "10110";
		elsif (state = "10110") then
			dcon <= "01";
			memwr <= '1';
			iord <= "01";
			next_state <= "10111";
		
		elsif (state = "10111") then-- couldn't understand
			priorityin<= priorityin and and8;
			if(priorityin = "00000000") then
			   next_state <= "00001";
			else
			   next_state<="11000";
		   end if;
		elsif (state = "11000") then
			iord <="00";
			memwr <='0';
			regwr <='0';
			next_state<= "10010";
		end if;
		
		
	end if;
end process;
end behave;