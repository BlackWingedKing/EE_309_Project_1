-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "11/05/2018 23:11:26"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	iitb_risc IS
    PORT (
	clk : IN std_logic;
	extmeminit : IN std_logic;
	input : IN std_logic_vector(31 DOWNTO 0);
	output : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END iitb_risc;

-- Design Ports Information
-- input[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[8]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[9]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[10]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[11]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[12]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[13]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[14]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[15]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[27]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[26]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[25]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[24]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extmeminit	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[29]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[30]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[28]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[31]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[21]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[23]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[17]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[16]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[18]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[19]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[20]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[22]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF iitb_risc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_extmeminit : std_logic;
SIGNAL ww_input : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(9 DOWNTO 0);
SIGNAL \mem|do[15]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu_en~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|mem_reg[10][0]~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|mem_reg[0][0]~18clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|mem_reg[15][0]~27clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|mem_reg[12][0]~20clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|mem_reg[14][0]~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|mem_reg[11][0]~22clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|mem_reg[13][0]~13clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|mem_reg[1][0]~11clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|mem_reg[4][0]~15clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|mem_reg[5][0]~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|mem_reg[6][0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|mem_reg[8][0]~16clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|mem_reg[7][0]~23clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|mem_reg[9][0]~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pcwr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|mem_reg[2][0]~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|mem_reg[3][0]~25clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \input[8]~input_o\ : std_logic;
SIGNAL \input[9]~input_o\ : std_logic;
SIGNAL \input[10]~input_o\ : std_logic;
SIGNAL \input[11]~input_o\ : std_logic;
SIGNAL \input[12]~input_o\ : std_logic;
SIGNAL \input[13]~input_o\ : std_logic;
SIGNAL \input[14]~input_o\ : std_logic;
SIGNAL \input[15]~input_o\ : std_logic;
SIGNAL \input[27]~input_o\ : std_logic;
SIGNAL \input[26]~input_o\ : std_logic;
SIGNAL \input[25]~input_o\ : std_logic;
SIGNAL \input[24]~input_o\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \output[8]~output_o\ : std_logic;
SIGNAL \output[9]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \memrd~3_combout\ : std_logic;
SIGNAL \comb~19_combout\ : std_logic;
SIGNAL \comb~18_combout\ : std_logic;
SIGNAL \irwr~combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \dcon[1]~0_combout\ : std_logic;
SIGNAL \dcon[1]~1_combout\ : std_logic;
SIGNAL \input[28]~input_o\ : std_logic;
SIGNAL \next_state[4]~41_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \m_2|outp[12]~3_combout\ : std_logic;
SIGNAL \memwr~2_combout\ : std_logic;
SIGNAL \memwr~4_combout\ : std_logic;
SIGNAL \memwr~5_combout\ : std_logic;
SIGNAL \memwr~combout\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \iord[1]~10_combout\ : std_logic;
SIGNAL \iord[1]~11_combout\ : std_logic;
SIGNAL \iord[0]~8_combout\ : std_logic;
SIGNAL \iord[0]~9_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \alusrca[1]~26_combout\ : std_logic;
SIGNAL \alusrcb[2]~6_combout\ : std_logic;
SIGNAL \alusrcb[2]~7_combout\ : std_logic;
SIGNAL \alusrcb[2]~8_combout\ : std_logic;
SIGNAL \aluop[1]~8_combout\ : std_logic;
SIGNAL \alusrca[1]~23_combout\ : std_logic;
SIGNAL \alusrca[1]~28_combout\ : std_logic;
SIGNAL \alusrcb[2]~11_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \aluop[1]~9_combout\ : std_logic;
SIGNAL \aluop[1]~10_combout\ : std_logic;
SIGNAL \comb~30_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \pcwr~8_combout\ : std_logic;
SIGNAL \pcwr~9_combout\ : std_logic;
SIGNAL \pcwr~5_combout\ : std_logic;
SIGNAL \pcwr~4_combout\ : std_logic;
SIGNAL \alud~0_combout\ : std_logic;
SIGNAL \alud~combout\ : std_logic;
SIGNAL \aluop[1]~12_combout\ : std_logic;
SIGNAL \aluop[0]~4_combout\ : std_logic;
SIGNAL \aluop[0]~13_combout\ : std_logic;
SIGNAL \aluop[1]~7_combout\ : std_logic;
SIGNAL \aluop[1]~14_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \alusrcb[1]~9_combout\ : std_logic;
SIGNAL \alusrcb[1]~12_combout\ : std_logic;
SIGNAL \comb~27_combout\ : std_logic;
SIGNAL \meminit~combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \alusrca[1]~25_combout\ : std_logic;
SIGNAL \pcsrc~0_combout\ : std_logic;
SIGNAL \pcsrc~1_combout\ : std_logic;
SIGNAL \pcsrc~combout\ : std_logic;
SIGNAL \input[22]~input_o\ : std_logic;
SIGNAL \m_2|outp[6]~12_combout\ : std_logic;
SIGNAL \mem|mem_reg[5][6]~combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \aluop[1]~11_combout\ : std_logic;
SIGNAL \comb~29_combout\ : std_logic;
SIGNAL \comb~28_combout\ : std_logic;
SIGNAL \alusrca[1]~12_combout\ : std_logic;
SIGNAL \alusrca[1]~27_combout\ : std_logic;
SIGNAL \alusrca[1]~31_combout\ : std_logic;
SIGNAL \mem|Decoder0~11_combout\ : std_logic;
SIGNAL \m_2|outp[4]~1_combout\ : std_logic;
SIGNAL \input[17]~input_o\ : std_logic;
SIGNAL \mem|mem_reg[12][1]~100_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][0]~20_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][0]~20clkctrl_outclk\ : std_logic;
SIGNAL \mem|mem_reg[12][1]~combout\ : std_logic;
SIGNAL \mem|Decoder0~3_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][1]~99_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][0]~6_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][0]~6clkctrl_outclk\ : std_logic;
SIGNAL \mem|mem_reg[14][1]~combout\ : std_logic;
SIGNAL \mem|Mux14~7_combout\ : std_logic;
SIGNAL \m_2|outp[1]~7_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][1]~101_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][1]~combout\ : std_logic;
SIGNAL \mem|Decoder0~7_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][1]~98_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][0]~13_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][0]~13clkctrl_outclk\ : std_logic;
SIGNAL \mem|mem_reg[13][1]~combout\ : std_logic;
SIGNAL \mem|Mux14~8_combout\ : std_logic;
SIGNAL \mem|Decoder0~6_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][1]~95_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][0]~11_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][0]~11clkctrl_outclk\ : std_logic;
SIGNAL \mem|mem_reg[1][1]~combout\ : std_logic;
SIGNAL \mem|Decoder0~10_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][1]~96_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][0]~18_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][0]~18clkctrl_outclk\ : std_logic;
SIGNAL \mem|mem_reg[0][1]~combout\ : std_logic;
SIGNAL \mem|Mux14~4_combout\ : std_logic;
SIGNAL \mem|Decoder0~14_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][1]~97_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][0]~25_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][0]~25clkctrl_outclk\ : std_logic;
SIGNAL \mem|mem_reg[3][1]~combout\ : std_logic;
SIGNAL \mem|Decoder0~2_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][1]~94_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][0]~4_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][0]~4clkctrl_outclk\ : std_logic;
SIGNAL \mem|mem_reg[2][1]~combout\ : std_logic;
SIGNAL \mem|Mux14~5_combout\ : std_logic;
SIGNAL \mem|mem_reg[5][1]~combout\ : std_logic;
SIGNAL \mem|Decoder0~13_combout\ : std_logic;
SIGNAL \mem|mem_reg[7][0]~23_combout\ : std_logic;
SIGNAL \mem|mem_reg[7][0]~23clkctrl_outclk\ : std_logic;
SIGNAL \mem|mem_reg[7][1]~combout\ : std_logic;
SIGNAL \mem|Decoder0~8_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][1]~93_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][0]~15_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][0]~15clkctrl_outclk\ : std_logic;
SIGNAL \mem|mem_reg[4][1]~combout\ : std_logic;
SIGNAL \mem|Decoder0~0_combout\ : std_logic;
SIGNAL \mem|mem_reg[6][0]~0_combout\ : std_logic;
SIGNAL \mem|mem_reg[6][0]~0clkctrl_outclk\ : std_logic;
SIGNAL \mem|mem_reg[6][1]~combout\ : std_logic;
SIGNAL \mem|Mux14~2_combout\ : std_logic;
SIGNAL \mem|Mux14~3_combout\ : std_logic;
SIGNAL \mem|Mux14~6_combout\ : std_logic;
SIGNAL \mem|Decoder0~9_combout\ : std_logic;
SIGNAL \mem|mem_reg[8][0]~16_combout\ : std_logic;
SIGNAL \mem|mem_reg[8][0]~16clkctrl_outclk\ : std_logic;
SIGNAL \mem|mem_reg[8][1]~combout\ : std_logic;
SIGNAL \mem|Decoder0~4_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][1]~91_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][0]~8_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][0]~8clkctrl_outclk\ : std_logic;
SIGNAL \mem|mem_reg[9][1]~combout\ : std_logic;
SIGNAL \mem|Mux14~0_combout\ : std_logic;
SIGNAL \mem|Decoder0~12_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][1]~92_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][0]~22_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][0]~22clkctrl_outclk\ : std_logic;
SIGNAL \mem|mem_reg[11][1]~combout\ : std_logic;
SIGNAL \mem|Decoder0~1_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][1]~90_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][0]~2_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][0]~2clkctrl_outclk\ : std_logic;
SIGNAL \mem|mem_reg[10][1]~combout\ : std_logic;
SIGNAL \mem|Mux14~1_combout\ : std_logic;
SIGNAL \mem|Mux14~9_combout\ : std_logic;
SIGNAL \memrd~2_combout\ : std_logic;
SIGNAL \memrd~6_combout\ : std_logic;
SIGNAL \memrd~4_combout\ : std_logic;
SIGNAL \memrd~5_combout\ : std_logic;
SIGNAL \memrd~7_combout\ : std_logic;
SIGNAL \memrd~combout\ : std_logic;
SIGNAL \mem|do[15]~0_combout\ : std_logic;
SIGNAL \mem|do[15]~0clkctrl_outclk\ : std_logic;
SIGNAL \alusrca[0]~29_combout\ : std_logic;
SIGNAL \alusrca[0]~30_combout\ : std_logic;
SIGNAL \alusrca[0]~32_combout\ : std_logic;
SIGNAL \comb~21_combout\ : std_logic;
SIGNAL \comb~20_combout\ : std_logic;
SIGNAL \m_7|outp[1]~2_combout\ : std_logic;
SIGNAL \m_7|outp[0]~1_combout\ : std_logic;
SIGNAL \alu_1|opr1|a2|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s2|bout~combout\ : std_logic;
SIGNAL \input[18]~input_o\ : std_logic;
SIGNAL \mem|mem_reg[15][2]~126_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][2]~combout\ : std_logic;
SIGNAL \m_2|outp[2]~9_combout\ : std_logic;
SIGNAL \mem|mem_reg[7][2]~combout\ : std_logic;
SIGNAL \mem|mem_reg[3][2]~125_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][2]~combout\ : std_logic;
SIGNAL \mem|Mux13~7_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][2]~124_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][2]~combout\ : std_logic;
SIGNAL \mem|Mux13~8_combout\ : std_logic;
SIGNAL \mem|mem_reg[5][2]~combout\ : std_logic;
SIGNAL \mem|mem_reg[1][2]~119_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][2]~combout\ : std_logic;
SIGNAL \mem|Mux13~2_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][2]~118_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][2]~combout\ : std_logic;
SIGNAL \mem|mem_reg[13][2]~120_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][2]~combout\ : std_logic;
SIGNAL \mem|Mux13~3_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][2]~122_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][2]~combout\ : std_logic;
SIGNAL \mem|mem_reg[8][2]~combout\ : std_logic;
SIGNAL \mem|Mux13~4_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][2]~123_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][2]~combout\ : std_logic;
SIGNAL \mem|mem_reg[4][2]~121_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][2]~combout\ : std_logic;
SIGNAL \mem|Mux13~5_combout\ : std_logic;
SIGNAL \mem|Mux13~6_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][2]~115_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][2]~combout\ : std_logic;
SIGNAL \mem|mem_reg[2][2]~116_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][2]~combout\ : std_logic;
SIGNAL \mem|Mux13~0_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][2]~117_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][2]~combout\ : std_logic;
SIGNAL \mem|mem_reg[6][2]~combout\ : std_logic;
SIGNAL \mem|Mux13~1_combout\ : std_logic;
SIGNAL \mem|Mux13~9_combout\ : std_logic;
SIGNAL \alusrcb[0]~10_combout\ : std_logic;
SIGNAL \alusrcb[0]~13_combout\ : std_logic;
SIGNAL \comb~23_combout\ : std_logic;
SIGNAL \comb~22_combout\ : std_logic;
SIGNAL \m_8|outp[2]~6_combout\ : std_logic;
SIGNAL \m_8|outp[0]~7_combout\ : std_logic;
SIGNAL \m_7|outp[2]~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s3|xor_i~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[2]~39_combout\ : std_logic;
SIGNAL \m_8|outp[2]~12_combout\ : std_logic;
SIGNAL \alu_1|temp_out[2]~67_combout\ : std_logic;
SIGNAL \alu_1|temp_out[2]~40_combout\ : std_logic;
SIGNAL \m_9|outp[2]~0_combout\ : std_logic;
SIGNAL \m_1|outp[2]~0_combout\ : std_logic;
SIGNAL \m_1|outp[2]~1_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][6]~155_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][6]~combout\ : std_logic;
SIGNAL \mem|Mux9~2_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][6]~156_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][6]~combout\ : std_logic;
SIGNAL \mem|mem_reg[9][6]~154_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][6]~combout\ : std_logic;
SIGNAL \mem|Mux9~3_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][6]~158_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][6]~combout\ : std_logic;
SIGNAL \mem|mem_reg[8][6]~combout\ : std_logic;
SIGNAL \mem|Mux9~4_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][6]~159_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][6]~160_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][6]~combout\ : std_logic;
SIGNAL \mem|mem_reg[4][6]~157_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][6]~combout\ : std_logic;
SIGNAL \mem|Mux9~5_combout\ : std_logic;
SIGNAL \mem|Mux9~6_combout\ : std_logic;
SIGNAL \mem|mem_reg[6][6]~combout\ : std_logic;
SIGNAL \mem|mem_reg[2][6]~152_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][6]~combout\ : std_logic;
SIGNAL \mem|mem_reg[10][6]~151_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][6]~combout\ : std_logic;
SIGNAL \mem|Mux9~0_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][6]~153_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][6]~combout\ : std_logic;
SIGNAL \mem|Mux9~1_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][6]~163_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][6]~combout\ : std_logic;
SIGNAL \mem|mem_reg[3][6]~162_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][6]~combout\ : std_logic;
SIGNAL \mem|mem_reg[7][6]~combout\ : std_logic;
SIGNAL \mem|Mux9~7_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][6]~161_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][6]~combout\ : std_logic;
SIGNAL \mem|Mux9~8_combout\ : std_logic;
SIGNAL \mem|Mux9~9_combout\ : std_logic;
SIGNAL \priorityin[6]~16_combout\ : std_logic;
SIGNAL \priorityin[6]~17_combout\ : std_logic;
SIGNAL \priorityin[1]~2_combout\ : std_logic;
SIGNAL \priorityin[1]~3_combout\ : std_logic;
SIGNAL \priorityin[5]~0_combout\ : std_logic;
SIGNAL \priorityin[5]~1_combout\ : std_logic;
SIGNAL \priorityin[4]~14_combout\ : std_logic;
SIGNAL \input[20]~input_o\ : std_logic;
SIGNAL \mem|mem_reg[9][4]~139_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][4]~combout\ : std_logic;
SIGNAL \m_2|outp[4]~11_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][4]~140_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][4]~combout\ : std_logic;
SIGNAL \mem|Mux11~0_combout\ : std_logic;
SIGNAL \mem|mem_reg[5][4]~combout\ : std_logic;
SIGNAL \mem|mem_reg[13][4]~141_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][4]~combout\ : std_logic;
SIGNAL \mem|Mux11~1_combout\ : std_logic;
SIGNAL \mem|mem_reg[7][4]~combout\ : std_logic;
SIGNAL \mem|mem_reg[3][4]~148_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][4]~combout\ : std_logic;
SIGNAL \mem|mem_reg[15][4]~149_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][4]~combout\ : std_logic;
SIGNAL \mem|mem_reg[11][4]~150_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][4]~combout\ : std_logic;
SIGNAL \mem|Mux11~7_combout\ : std_logic;
SIGNAL \mem|Mux11~8_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][4]~145_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][4]~combout\ : std_logic;
SIGNAL \mem|mem_reg[0][4]~146_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][4]~combout\ : std_logic;
SIGNAL \mem|Mux11~4_combout\ : std_logic;
SIGNAL \mem|mem_reg[8][4]~combout\ : std_logic;
SIGNAL \mem|mem_reg[12][4]~147_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][4]~combout\ : std_logic;
SIGNAL \mem|Mux11~5_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][4]~144_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][4]~combout\ : std_logic;
SIGNAL \mem|mem_reg[6][4]~combout\ : std_logic;
SIGNAL \mem|mem_reg[2][4]~143_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][4]~combout\ : std_logic;
SIGNAL \mem|Mux11~2_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][4]~142_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][4]~combout\ : std_logic;
SIGNAL \mem|Mux11~3_combout\ : std_logic;
SIGNAL \mem|Mux11~6_combout\ : std_logic;
SIGNAL \mem|Mux11~9_combout\ : std_logic;
SIGNAL \priorityin[4]~15_combout\ : std_logic;
SIGNAL \p_1|outp~2_combout\ : std_logic;
SIGNAL \priorityin[2]~10_combout\ : std_logic;
SIGNAL \priorityin[2]~11_combout\ : std_logic;
SIGNAL \priorityin[0]~8_combout\ : std_logic;
SIGNAL \priorityin[0]~9_combout\ : std_logic;
SIGNAL \p_1|outp~3_combout\ : std_logic;
SIGNAL \Equal35~0_combout\ : std_logic;
SIGNAL \Equal35~1_combout\ : std_logic;
SIGNAL \input[23]~input_o\ : std_logic;
SIGNAL \mem|mem_reg[2][7]~83_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][7]~combout\ : std_logic;
SIGNAL \mem|mem_reg[0][7]~84_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][7]~combout\ : std_logic;
SIGNAL \mem|Mux8~4_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][7]~85_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][7]~combout\ : std_logic;
SIGNAL \m_2|outp[7]~6_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][7]~82_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][7]~combout\ : std_logic;
SIGNAL \mem|Mux8~5_combout\ : std_logic;
SIGNAL \mem|mem_reg[8][7]~combout\ : std_logic;
SIGNAL \mem|mem_reg[10][7]~80_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][7]~combout\ : std_logic;
SIGNAL \mem|Mux8~2_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][7]~79_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][7]~combout\ : std_logic;
SIGNAL \mem|mem_reg[11][7]~81_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][7]~combout\ : std_logic;
SIGNAL \mem|Mux8~3_combout\ : std_logic;
SIGNAL \mem|Mux8~6_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][7]~87_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][7]~combout\ : std_logic;
SIGNAL \mem|mem_reg[12][7]~88_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][7]~combout\ : std_logic;
SIGNAL \mem|Mux8~7_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][7]~89_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][7]~combout\ : std_logic;
SIGNAL \mem|mem_reg[14][7]~86_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][7]~combout\ : std_logic;
SIGNAL \mem|Mux8~8_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][7]~78_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][7]~combout\ : std_logic;
SIGNAL \mem|mem_reg[5][7]~combout\ : std_logic;
SIGNAL \mem|Mux8~0_combout\ : std_logic;
SIGNAL \mem|mem_reg[7][7]~combout\ : std_logic;
SIGNAL \mem|mem_reg[6][7]~combout\ : std_logic;
SIGNAL \mem|Mux8~1_combout\ : std_logic;
SIGNAL \mem|Mux8~9_combout\ : std_logic;
SIGNAL \priorityin[7]~4_combout\ : std_logic;
SIGNAL \priorityin[7]~5_combout\ : std_logic;
SIGNAL \Equal35~2_combout\ : std_logic;
SIGNAL \priorityin[3]~12_combout\ : std_logic;
SIGNAL \input[19]~input_o\ : std_logic;
SIGNAL \m_2|outp[3]~10_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][3]~133_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][3]~combout\ : std_logic;
SIGNAL \mem|mem_reg[2][3]~132_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][3]~combout\ : std_logic;
SIGNAL \mem|Mux12~4_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][3]~131_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][3]~combout\ : std_logic;
SIGNAL \mem|mem_reg[3][3]~134_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][3]~combout\ : std_logic;
SIGNAL \mem|Mux12~5_combout\ : std_logic;
SIGNAL \mem|mem_reg[8][3]~combout\ : std_logic;
SIGNAL \mem|mem_reg[10][3]~129_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][3]~combout\ : std_logic;
SIGNAL \mem|Mux12~2_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][3]~128_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][3]~combout\ : std_logic;
SIGNAL \mem|mem_reg[11][3]~130_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][3]~combout\ : std_logic;
SIGNAL \mem|Mux12~3_combout\ : std_logic;
SIGNAL \mem|Mux12~6_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][3]~135_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][3]~combout\ : std_logic;
SIGNAL \mem|mem_reg[12][3]~137_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][3]~combout\ : std_logic;
SIGNAL \mem|mem_reg[13][3]~136_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][3]~combout\ : std_logic;
SIGNAL \mem|Mux12~7_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][3]~138_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][3]~combout\ : std_logic;
SIGNAL \mem|Mux12~8_combout\ : std_logic;
SIGNAL \mem|mem_reg[5][3]~combout\ : std_logic;
SIGNAL \mem|mem_reg[4][3]~127_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][3]~combout\ : std_logic;
SIGNAL \mem|Mux12~0_combout\ : std_logic;
SIGNAL \mem|mem_reg[7][3]~combout\ : std_logic;
SIGNAL \mem|mem_reg[6][3]~combout\ : std_logic;
SIGNAL \mem|Mux12~1_combout\ : std_logic;
SIGNAL \mem|Mux12~9_combout\ : std_logic;
SIGNAL \priorityin[3]~13_combout\ : std_logic;
SIGNAL \Equal35~3_combout\ : std_logic;
SIGNAL \priorityin[1]~6_combout\ : std_logic;
SIGNAL \priorityin[1]~7_combout\ : std_logic;
SIGNAL \p_1|outp~0_combout\ : std_logic;
SIGNAL \p_1|outp~1_combout\ : std_logic;
SIGNAL \m_8|outp[1]~9_combout\ : std_logic;
SIGNAL \m_8|outp[1]~14_combout\ : std_logic;
SIGNAL \alu_1|temp_out[1]~69_combout\ : std_logic;
SIGNAL \alu_1|opr2|s2|xor_i~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[1]~42_combout\ : std_logic;
SIGNAL \alu_1|temp_out[1]~43_combout\ : std_logic;
SIGNAL \m_9|outp[1]~2_combout\ : std_logic;
SIGNAL \m_1|outp[1]~4_combout\ : std_logic;
SIGNAL \m_1|outp[1]~5_combout\ : std_logic;
SIGNAL \mem|Decoder0~15_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][0]~27_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][0]~27clkctrl_outclk\ : std_logic;
SIGNAL \input[21]~input_o\ : std_logic;
SIGNAL \m_2|outp[5]~5_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][5]~77_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][5]~combout\ : std_logic;
SIGNAL \mem|mem_reg[14][5]~75_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][5]~combout\ : std_logic;
SIGNAL \mem|mem_reg[12][5]~76_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][5]~combout\ : std_logic;
SIGNAL \mem|Mux10~7_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][5]~74_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][5]~combout\ : std_logic;
SIGNAL \mem|Mux10~8_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][5]~67_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][5]~combout\ : std_logic;
SIGNAL \mem|mem_reg[8][5]~combout\ : std_logic;
SIGNAL \mem|Mux10~0_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][5]~66_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][5]~combout\ : std_logic;
SIGNAL \mem|mem_reg[11][5]~68_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][5]~combout\ : std_logic;
SIGNAL \mem|Mux10~1_combout\ : std_logic;
SIGNAL \mem|mem_reg[5][5]~combout\ : std_logic;
SIGNAL \mem|mem_reg[4][5]~69_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][5]~combout\ : std_logic;
SIGNAL \mem|mem_reg[6][5]~combout\ : std_logic;
SIGNAL \mem|Mux10~2_combout\ : std_logic;
SIGNAL \mem|mem_reg[7][5]~combout\ : std_logic;
SIGNAL \mem|Mux10~3_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][5]~72_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][5]~combout\ : std_logic;
SIGNAL \mem|mem_reg[1][5]~71_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][5]~combout\ : std_logic;
SIGNAL \mem|Mux10~4_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][5]~70_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][5]~combout\ : std_logic;
SIGNAL \mem|mem_reg[3][5]~73_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][5]~combout\ : std_logic;
SIGNAL \mem|Mux10~5_combout\ : std_logic;
SIGNAL \mem|Mux10~6_combout\ : std_logic;
SIGNAL \mem|Mux10~9_combout\ : std_logic;
SIGNAL \m_8|outp[15]~10_combout\ : std_logic;
SIGNAL \alu_1|temp_out[15]~44_combout\ : std_logic;
SIGNAL \alu_1|temp_out[0]~38_combout\ : std_logic;
SIGNAL \m_7|outp[3]~3_combout\ : std_logic;
SIGNAL \alu_1|opr1|a4|cout~5_combout\ : std_logic;
SIGNAL \m_8|outp[4]~11_combout\ : std_logic;
SIGNAL \alu_1|opr1|a4|cout~6_combout\ : std_logic;
SIGNAL \alu_1|opr1|a4|cout~4_combout\ : std_logic;
SIGNAL \alu_1|opr1|a5|sum~combout\ : std_logic;
SIGNAL \alu_1|opr2|s4|xor_i~2_combout\ : std_logic;
SIGNAL \alu_1|opr2|s4|bout~2_combout\ : std_logic;
SIGNAL \alu_1|opr2|s4|bout~3_combout\ : std_logic;
SIGNAL \alu_1|opr2|s5|diff~combout\ : std_logic;
SIGNAL \alu_1|temp_out[4]~61_combout\ : std_logic;
SIGNAL \alu_1|temp_out[4]~62_combout\ : std_logic;
SIGNAL \alu_en~clkctrl_outclk\ : std_logic;
SIGNAL \m_9|outp[4]~15_combout\ : std_logic;
SIGNAL \pcwr~clkctrl_outclk\ : std_logic;
SIGNAL \m_7|outp[4]~15_combout\ : std_logic;
SIGNAL \alu_1|opr1|a6|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s5|bout~combout\ : std_logic;
SIGNAL \alu_1|temp_out[5]~59_combout\ : std_logic;
SIGNAL \alu_1|temp_out[5]~60_combout\ : std_logic;
SIGNAL \alu_1|temp_out[5]~74_combout\ : std_logic;
SIGNAL \m_9|outp[5]~14_combout\ : std_logic;
SIGNAL \m_7|outp[5]~14_combout\ : std_logic;
SIGNAL \alu_1|opr1|a6|cout~1_combout\ : std_logic;
SIGNAL \alu_1|opr2|s6|bout~combout\ : std_logic;
SIGNAL \alu_1|temp_out[6]~82_combout\ : std_logic;
SIGNAL \alu_1|temp_out[6]~83_combout\ : std_logic;
SIGNAL \m_9|outp[6]~13_combout\ : std_logic;
SIGNAL \m_7|outp[6]~13_combout\ : std_logic;
SIGNAL \alu_1|opr1|a8|sum~combout\ : std_logic;
SIGNAL \alu_1|opr2|s8|diff~combout\ : std_logic;
SIGNAL \alu_1|temp_out[7]~63_combout\ : std_logic;
SIGNAL \alu_1|temp_out[7]~64_combout\ : std_logic;
SIGNAL \m_9|outp[7]~12_combout\ : std_logic;
SIGNAL \m_7|outp[7]~12_combout\ : std_logic;
SIGNAL \alu_1|opr2|s8|bout~combout\ : std_logic;
SIGNAL \alu_1|opr1|a8|cout~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[8]~84_combout\ : std_logic;
SIGNAL \alu_1|temp_out[8]~85_combout\ : std_logic;
SIGNAL \m_9|outp[8]~11_combout\ : std_logic;
SIGNAL \m_7|outp[8]~11_combout\ : std_logic;
SIGNAL \alu_1|opr2|s10|diff~combout\ : std_logic;
SIGNAL \alu_1|opr1|a10|sum~combout\ : std_logic;
SIGNAL \alu_1|temp_out[9]~52_combout\ : std_logic;
SIGNAL \alu_1|temp_out[9]~53_combout\ : std_logic;
SIGNAL \m_9|outp[9]~10_combout\ : std_logic;
SIGNAL \m_7|outp[9]~10_combout\ : std_logic;
SIGNAL \alu_1|opr1|a10|cout~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[10]~56_combout\ : std_logic;
SIGNAL \alu_1|temp_out[10]~57_combout\ : std_logic;
SIGNAL \alu_1|temp_out[15]~46_combout\ : std_logic;
SIGNAL \alu_1|opr2|s10|bout~combout\ : std_logic;
SIGNAL \alu_1|temp_out[10]~55_combout\ : std_logic;
SIGNAL \alu_1|temp_out[10]~58_combout\ : std_logic;
SIGNAL \m_9|outp[10]~9_combout\ : std_logic;
SIGNAL \m_7|outp[10]~9_combout\ : std_logic;
SIGNAL \alu_1|opr2|s12|diff~combout\ : std_logic;
SIGNAL \alu_1|temp_out[11]~72_combout\ : std_logic;
SIGNAL \alu_1|temp_out[11]~73_combout\ : std_logic;
SIGNAL \alu_1|opr1|a12|sum~combout\ : std_logic;
SIGNAL \alu_1|temp_out[11]~54_combout\ : std_logic;
SIGNAL \m_9|outp[11]~8_combout\ : std_logic;
SIGNAL \m_7|outp[11]~8_combout\ : std_logic;
SIGNAL \alu_1|opr1|a12|cout~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[12]~49_combout\ : std_logic;
SIGNAL \alu_1|temp_out[12]~50_combout\ : std_logic;
SIGNAL \alu_1|opr2|s12|bout~combout\ : std_logic;
SIGNAL \alu_1|temp_out[12]~48_combout\ : std_logic;
SIGNAL \alu_1|temp_out[12]~51_combout\ : std_logic;
SIGNAL \m_9|outp[12]~7_combout\ : std_logic;
SIGNAL \m_7|outp[12]~7_combout\ : std_logic;
SIGNAL \alu_1|temp_out[13]~80_combout\ : std_logic;
SIGNAL \alu_1|temp_out[13]~81_combout\ : std_logic;
SIGNAL \alu_1|opr2|s14|diff~combout\ : std_logic;
SIGNAL \alu_1|temp_out[13]~77_combout\ : std_logic;
SIGNAL \alu_1|temp_out[13]~79_combout\ : std_logic;
SIGNAL \m_9|outp[13]~6_combout\ : std_logic;
SIGNAL \m_7|outp[13]~6_combout\ : std_logic;
SIGNAL \alu_1|opr1|a14|cout~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[14]~76_combout\ : std_logic;
SIGNAL \alu_1|opr2|s15|xor_i~2_combout\ : std_logic;
SIGNAL \alu_1|temp_out[14]~65_combout\ : std_logic;
SIGNAL \alu_1|opr2|s14|bout~combout\ : std_logic;
SIGNAL \alu_1|temp_out[14]~66_combout\ : std_logic;
SIGNAL \alu_1|temp_out[14]~75_combout\ : std_logic;
SIGNAL \m_9|outp[14]~5_combout\ : std_logic;
SIGNAL \m_7|outp[14]~5_combout\ : std_logic;
SIGNAL \alu_1|opr1|a15|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s16|xor_i~2_combout\ : std_logic;
SIGNAL \alu_1|opr2|s15|bout~combout\ : std_logic;
SIGNAL \alu_1|temp_out[15]~71_combout\ : std_logic;
SIGNAL \alu_1|temp_out[15]~45_combout\ : std_logic;
SIGNAL \alu_1|temp_out[15]~47_combout\ : std_logic;
SIGNAL \alu_1|temp_out[15]~78_combout\ : std_logic;
SIGNAL \m_9|outp[15]~4_combout\ : std_logic;
SIGNAL \m_7|outp[15]~4_combout\ : std_logic;
SIGNAL \alu_1|cout~0_combout\ : std_logic;
SIGNAL \alu_1|cout~1_combout\ : std_logic;
SIGNAL \alu_1|cout~2_combout\ : std_logic;
SIGNAL \carry_flag|dout~combout\ : std_logic;
SIGNAL \alu_en~0_combout\ : std_logic;
SIGNAL \alu_en~combout\ : std_logic;
SIGNAL \alu_1|zero_flag~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s4|diff~combout\ : std_logic;
SIGNAL \alu_1|opr1|a4|sum~combout\ : std_logic;
SIGNAL \alu_1|temp_out[3]~41_combout\ : std_logic;
SIGNAL \alu_1|temp_out[3]~68_combout\ : std_logic;
SIGNAL \alu_1|zero_flag~1_combout\ : std_logic;
SIGNAL \alu_1|zero_flag~2_combout\ : std_logic;
SIGNAL \alu_1|zero_flag~3_combout\ : std_logic;
SIGNAL \alu_1|zero_flag~4_combout\ : std_logic;
SIGNAL \alu_1|zero_flag~5_combout\ : std_logic;
SIGNAL \zero_flag|dout~combout\ : std_logic;
SIGNAL \pcwr~6_combout\ : std_logic;
SIGNAL \pcwr~10_combout\ : std_logic;
SIGNAL \comb~24_combout\ : std_logic;
SIGNAL \pcwr~7_combout\ : std_logic;
SIGNAL \comb~25_combout\ : std_logic;
SIGNAL \next_state[4]~48_combout\ : std_logic;
SIGNAL \comb~26_combout\ : std_logic;
SIGNAL \pcwr~combout\ : std_logic;
SIGNAL \m_9|outp[3]~1_combout\ : std_logic;
SIGNAL \m_1|outp[3]~2_combout\ : std_logic;
SIGNAL \m_1|outp[3]~3_combout\ : std_logic;
SIGNAL \input[16]~input_o\ : std_logic;
SIGNAL \mem|mem_reg[12][0]~110_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][0]~111_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][0]~combout\ : std_logic;
SIGNAL \m_2|outp[0]~8_combout\ : std_logic;
SIGNAL \mem|mem_reg[8][0]~combout\ : std_logic;
SIGNAL \mem|mem_reg[0][0]~109_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][0]~combout\ : std_logic;
SIGNAL \mem|mem_reg[4][0]~108_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][0]~combout\ : std_logic;
SIGNAL \mem|Mux15~4_combout\ : std_logic;
SIGNAL \mem|Mux15~5_combout\ : std_logic;
SIGNAL \mem|mem_reg[6][0]~combout\ : std_logic;
SIGNAL \mem|mem_reg[2][0]~106_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][0]~combout\ : std_logic;
SIGNAL \mem|Mux15~2_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][0]~107_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][0]~combout\ : std_logic;
SIGNAL \mem|mem_reg[10][0]~105_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][0]~combout\ : std_logic;
SIGNAL \mem|Mux15~3_combout\ : std_logic;
SIGNAL \mem|Mux15~6_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][0]~102_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][0]~combout\ : std_logic;
SIGNAL \mem|mem_reg[1][0]~103_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][0]~combout\ : std_logic;
SIGNAL \mem|Mux15~0_combout\ : std_logic;
SIGNAL \mem|mem_reg[5][0]~combout\ : std_logic;
SIGNAL \mem|mem_reg[13][0]~104_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][0]~combout\ : std_logic;
SIGNAL \mem|Mux15~1_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][0]~113_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][0]~combout\ : std_logic;
SIGNAL \mem|mem_reg[11][0]~112_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][0]~combout\ : std_logic;
SIGNAL \mem|Mux15~7_combout\ : std_logic;
SIGNAL \mem|mem_reg[7][0]~combout\ : std_logic;
SIGNAL \mem|mem_reg[15][0]~114_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][0]~combout\ : std_logic;
SIGNAL \mem|Mux15~8_combout\ : std_logic;
SIGNAL \mem|Mux15~9_combout\ : std_logic;
SIGNAL \m_8|outp[0]~8_combout\ : std_logic;
SIGNAL \m_8|outp[0]~13_combout\ : std_logic;
SIGNAL \alu_1|temp_out[0]~70_combout\ : std_logic;
SIGNAL \m_9|outp[0]~3_combout\ : std_logic;
SIGNAL \m_1|outp[0]~6_combout\ : std_logic;
SIGNAL \m_1|outp[0]~7_combout\ : std_logic;
SIGNAL \mem|Decoder0~5_combout\ : std_logic;
SIGNAL \mem|mem_reg[5][0]~9_combout\ : std_logic;
SIGNAL \mem|mem_reg[5][0]~9clkctrl_outclk\ : std_logic;
SIGNAL \mem|mem_reg[5][12]~combout\ : std_logic;
SIGNAL \mem|mem_reg[6][12]~combout\ : std_logic;
SIGNAL \mem|mem_reg[4][12]~43_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][12]~combout\ : std_logic;
SIGNAL \mem|Mux3~2_combout\ : std_logic;
SIGNAL \mem|mem_reg[7][12]~combout\ : std_logic;
SIGNAL \mem|Mux3~3_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][12]~48_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][12]~49_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][12]~combout\ : std_logic;
SIGNAL \mem|mem_reg[0][12]~46_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][12]~47_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][12]~combout\ : std_logic;
SIGNAL \mem|mem_reg[1][12]~45_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][12]~combout\ : std_logic;
SIGNAL \mem|Mux3~4_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][12]~44_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][12]~combout\ : std_logic;
SIGNAL \mem|Mux3~5_combout\ : std_logic;
SIGNAL \mem|Mux3~6_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][12]~52_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][12]~combout\ : std_logic;
SIGNAL \mem|mem_reg[14][12]~51_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][12]~combout\ : std_logic;
SIGNAL \mem|Mux3~7_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][12]~50_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][12]~combout\ : std_logic;
SIGNAL \mem|mem_reg[15][12]~53_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][12]~combout\ : std_logic;
SIGNAL \mem|Mux3~8_combout\ : std_logic;
SIGNAL \mem|mem_reg[8][12]~combout\ : std_logic;
SIGNAL \mem|mem_reg[9][12]~41_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][12]~combout\ : std_logic;
SIGNAL \mem|Mux3~0_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][12]~40_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][12]~combout\ : std_logic;
SIGNAL \mem|mem_reg[11][12]~42_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][12]~combout\ : std_logic;
SIGNAL \mem|Mux3~1_combout\ : std_logic;
SIGNAL \mem|Mux3~9_combout\ : std_logic;
SIGNAL \input[31]~input_o\ : std_logic;
SIGNAL \mem|mem_reg[9][15]~54_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][15]~combout\ : std_logic;
SIGNAL \mem|mem_reg[1][15]~55_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][15]~combout\ : std_logic;
SIGNAL \mem|Mux0~0_combout\ : std_logic;
SIGNAL \m_2|outp[15]~4_combout\ : std_logic;
SIGNAL \mem|mem_reg[5][15]~combout\ : std_logic;
SIGNAL \mem|mem_reg[13][15]~56_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][15]~combout\ : std_logic;
SIGNAL \mem|Mux0~1_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][15]~58_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][15]~combout\ : std_logic;
SIGNAL \mem|mem_reg[6][15]~combout\ : std_logic;
SIGNAL \mem|Mux0~2_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][15]~59_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][15]~combout\ : std_logic;
SIGNAL \mem|mem_reg[10][15]~57_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][15]~combout\ : std_logic;
SIGNAL \mem|Mux0~3_combout\ : std_logic;
SIGNAL \mem|mem_reg[8][15]~combout\ : std_logic;
SIGNAL \mem|mem_reg[0][15]~61_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][15]~combout\ : std_logic;
SIGNAL \mem|mem_reg[4][15]~60_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][15]~combout\ : std_logic;
SIGNAL \mem|Mux0~4_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][15]~62_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][15]~combout\ : std_logic;
SIGNAL \mem|Mux0~5_combout\ : std_logic;
SIGNAL \mem|Mux0~6_combout\ : std_logic;
SIGNAL \mem|mem_reg[7][15]~combout\ : std_logic;
SIGNAL \mem|mem_reg[11][15]~63_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][15]~combout\ : std_logic;
SIGNAL \mem|mem_reg[3][15]~64_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][15]~combout\ : std_logic;
SIGNAL \mem|Mux0~7_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][15]~65_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][15]~combout\ : std_logic;
SIGNAL \mem|Mux0~8_combout\ : std_logic;
SIGNAL \mem|Mux0~9_combout\ : std_logic;
SIGNAL \input[30]~input_o\ : std_logic;
SIGNAL \m_2|outp[14]~2_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][14]~38_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][14]~combout\ : std_logic;
SIGNAL \mem|mem_reg[13][14]~37_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][14]~combout\ : std_logic;
SIGNAL \mem|Mux1~7_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][14]~36_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][14]~combout\ : std_logic;
SIGNAL \mem|mem_reg[15][14]~39_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][14]~combout\ : std_logic;
SIGNAL \mem|Mux1~8_combout\ : std_logic;
SIGNAL \mem|mem_reg[5][14]~combout\ : std_logic;
SIGNAL \mem|mem_reg[4][14]~28_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][14]~combout\ : std_logic;
SIGNAL \mem|Mux1~0_combout\ : std_logic;
SIGNAL \mem|mem_reg[7][14]~combout\ : std_logic;
SIGNAL \mem|mem_reg[6][14]~combout\ : std_logic;
SIGNAL \mem|Mux1~1_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][14]~31_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][14]~combout\ : std_logic;
SIGNAL \mem|mem_reg[8][14]~combout\ : std_logic;
SIGNAL \mem|mem_reg[10][14]~30_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][14]~combout\ : std_logic;
SIGNAL \mem|Mux1~2_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][14]~29_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][14]~combout\ : std_logic;
SIGNAL \mem|Mux1~3_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][14]~34_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][14]~combout\ : std_logic;
SIGNAL \mem|mem_reg[2][14]~33_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][14]~combout\ : std_logic;
SIGNAL \mem|Mux1~4_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][14]~32_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][14]~combout\ : std_logic;
SIGNAL \mem|mem_reg[3][14]~35_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][14]~combout\ : std_logic;
SIGNAL \mem|Mux1~5_combout\ : std_logic;
SIGNAL \mem|Mux1~6_combout\ : std_logic;
SIGNAL \mem|Mux1~9_combout\ : std_logic;
SIGNAL \input[29]~input_o\ : std_logic;
SIGNAL \m_2|outp[13]~0_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][13]~3_combout\ : std_logic;
SIGNAL \mem|mem_reg[2][13]~combout\ : std_logic;
SIGNAL \mem|mem_reg[10][13]~1_combout\ : std_logic;
SIGNAL \mem|mem_reg[10][13]~combout\ : std_logic;
SIGNAL \mem|Mux2~0_combout\ : std_logic;
SIGNAL \mem|mem_reg[6][13]~combout\ : std_logic;
SIGNAL \mem|mem_reg[14][13]~5_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][13]~combout\ : std_logic;
SIGNAL \mem|Mux2~1_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][13]~24_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][13]~combout\ : std_logic;
SIGNAL \mem|mem_reg[7][13]~combout\ : std_logic;
SIGNAL \mem|Mux2~7_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][13]~26_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][13]~combout\ : std_logic;
SIGNAL \mem|mem_reg[11][13]~21_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][13]~combout\ : std_logic;
SIGNAL \mem|Mux2~8_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][13]~14_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][13]~combout\ : std_logic;
SIGNAL \mem|mem_reg[8][13]~combout\ : std_logic;
SIGNAL \mem|mem_reg[0][13]~17_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][13]~combout\ : std_logic;
SIGNAL \mem|Mux2~4_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][13]~19_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][13]~combout\ : std_logic;
SIGNAL \mem|Mux2~5_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][13]~7_combout\ : std_logic;
SIGNAL \mem|mem_reg[9][13]~combout\ : std_logic;
SIGNAL \mem|mem_reg[5][13]~combout\ : std_logic;
SIGNAL \mem|mem_reg[1][13]~10_combout\ : std_logic;
SIGNAL \mem|mem_reg[1][13]~combout\ : std_logic;
SIGNAL \mem|Mux2~2_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][13]~12_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][13]~combout\ : std_logic;
SIGNAL \mem|Mux2~3_combout\ : std_logic;
SIGNAL \mem|Mux2~6_combout\ : std_logic;
SIGNAL \mem|Mux2~9_combout\ : std_logic;
SIGNAL \next_state~55_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \next_state[3]~42_combout\ : std_logic;
SIGNAL \next_state[2]~38_combout\ : std_logic;
SIGNAL \next_state~39_combout\ : std_logic;
SIGNAL \next_state[3]~43_combout\ : std_logic;
SIGNAL \next_state[3]~44_combout\ : std_logic;
SIGNAL \next_state[3]~45_combout\ : std_logic;
SIGNAL \next_state[3]~46_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \next_state[4]~23_combout\ : std_logic;
SIGNAL \next_state[4]~24_combout\ : std_logic;
SIGNAL \next_state[4]~58_combout\ : std_logic;
SIGNAL \aluop[1]~15_combout\ : std_logic;
SIGNAL \aluop[1]~16_combout\ : std_logic;
SIGNAL \next_state[4]~28_combout\ : std_logic;
SIGNAL \next_state[4]~27_combout\ : std_logic;
SIGNAL \next_state[4]~25_combout\ : std_logic;
SIGNAL \next_state[4]~26_combout\ : std_logic;
SIGNAL \next_state[4]~29_combout\ : std_logic;
SIGNAL \next_state[4]~30_combout\ : std_logic;
SIGNAL \next_state[0]~11_combout\ : std_logic;
SIGNAL \next_state[2]~10_combout\ : std_logic;
SIGNAL \next_state[2]~56_combout\ : std_logic;
SIGNAL \next_state[2]~57_combout\ : std_logic;
SIGNAL \next_state[2]~40_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \next_state[1]~33_combout\ : std_logic;
SIGNAL \next_state[1]~34_combout\ : std_logic;
SIGNAL \next_state[1]~36_combout\ : std_logic;
SIGNAL \next_state[1]~35_combout\ : std_logic;
SIGNAL \next_state[1]~31_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \next_state[1]~32_combout\ : std_logic;
SIGNAL \next_state[1]~37_combout\ : std_logic;
SIGNAL \next_state[1]~59_combout\ : std_logic;
SIGNAL \next_state[4]~49_combout\ : std_logic;
SIGNAL \next_state[4]~47_combout\ : std_logic;
SIGNAL \next_state[4]~50_combout\ : std_logic;
SIGNAL \next_state[4]~51_combout\ : std_logic;
SIGNAL \next_state[4]~52_combout\ : std_logic;
SIGNAL \next_state[4]~53_combout\ : std_logic;
SIGNAL \next_state[0]~20_combout\ : std_logic;
SIGNAL \next_state[0]~19_combout\ : std_logic;
SIGNAL \next_state[0]~18_combout\ : std_logic;
SIGNAL \next_state[0]~21_combout\ : std_logic;
SIGNAL \next_state[0]~12_combout\ : std_logic;
SIGNAL \next_state~13_combout\ : std_logic;
SIGNAL \next_state[0]~14_combout\ : std_logic;
SIGNAL \next_state[0]~15_combout\ : std_logic;
SIGNAL \extmeminit~input_o\ : std_logic;
SIGNAL \next_state[0]~16_combout\ : std_logic;
SIGNAL \next_state[0]~17_combout\ : std_logic;
SIGNAL \next_state[0]~22_combout\ : std_logic;
SIGNAL \next_state[0]~54_combout\ : std_logic;
SIGNAL alusrcb : std_logic_vector(2 DOWNTO 0);
SIGNAL alusrca : std_logic_vector(1 DOWNTO 0);
SIGNAL aluop : std_logic_vector(1 DOWNTO 0);
SIGNAL state : std_logic_vector(4 DOWNTO 0);
SIGNAL \mem|do\ : std_logic_vector(15 DOWNTO 0);
SIGNAL dcon : std_logic_vector(1 DOWNTO 0);
SIGNAL next_state : std_logic_vector(4 DOWNTO 0);
SIGNAL \ir_1|r_1|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL priorityin : std_logic_vector(7 DOWNTO 0);
SIGNAL \t1|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pc|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \p_1|outp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL iord : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_extmeminit <= extmeminit;
ww_input <= input;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem|do[15]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|do[15]~0_combout\);

\alu_en~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \alu_en~combout\);

\mem|mem_reg[10][0]~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|mem_reg[10][0]~2_combout\);

\mem|mem_reg[0][0]~18clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|mem_reg[0][0]~18_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\mem|mem_reg[15][0]~27clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|mem_reg[15][0]~27_combout\);

\mem|mem_reg[12][0]~20clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|mem_reg[12][0]~20_combout\);

\mem|mem_reg[14][0]~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|mem_reg[14][0]~6_combout\);

\mem|mem_reg[11][0]~22clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|mem_reg[11][0]~22_combout\);

\mem|mem_reg[13][0]~13clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|mem_reg[13][0]~13_combout\);

\mem|mem_reg[1][0]~11clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|mem_reg[1][0]~11_combout\);

\mem|mem_reg[4][0]~15clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|mem_reg[4][0]~15_combout\);

\mem|mem_reg[5][0]~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|mem_reg[5][0]~9_combout\);

\mem|mem_reg[6][0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|mem_reg[6][0]~0_combout\);

\mem|mem_reg[8][0]~16clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|mem_reg[8][0]~16_combout\);

\mem|mem_reg[7][0]~23clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|mem_reg[7][0]~23_combout\);

\mem|mem_reg[9][0]~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|mem_reg[9][0]~8_combout\);

\pcwr~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pcwr~combout\);

\mem|mem_reg[2][0]~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|mem_reg[2][0]~4_combout\);

\mem|mem_reg[3][0]~25clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|mem_reg[3][0]~25_combout\);

-- Location: IOOBUF_X20_Y0_N2
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => next_state(0),
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => next_state(1),
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => next_state(2),
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => next_state(3),
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => next_state(4),
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(0),
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(1),
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(2),
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\output[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(3),
	devoe => ww_devoe,
	o => \output[8]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\output[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(4),
	devoe => ww_devoe,
	o => \output[9]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: FF_X26_Y20_N7
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => next_state(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

-- Location: LCCOMB_X27_Y23_N8
\memrd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \memrd~3_combout\ = (state(3)) # ((state(4)) # ((state(1) & state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(4),
	datac => state(1),
	datad => state(0),
	combout => \memrd~3_combout\);

-- Location: LCCOMB_X27_Y23_N22
\comb~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~19_combout\ = (!state(2) & (state(0) & (!\memrd~3_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(0),
	datac => \memrd~3_combout\,
	datad => \Equal0~4_combout\,
	combout => \comb~19_combout\);

-- Location: LCCOMB_X27_Y23_N6
\comb~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~18_combout\ = (state(2)) # ((\memrd~3_combout\) # ((state(0) & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(0),
	datac => \memrd~3_combout\,
	datad => \Equal0~4_combout\,
	combout => \comb~18_combout\);

-- Location: LCCOMB_X27_Y23_N30
irwr : cycloneive_lcell_comb
-- Equation(s):
-- \irwr~combout\ = (\comb~18_combout\ & ((\comb~19_combout\) # (\irwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~19_combout\,
	datac => \irwr~combout\,
	datad => \comb~18_combout\,
	combout => \irwr~combout\);

-- Location: LCCOMB_X26_Y22_N28
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~4_combout\ & !state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datad => state(0),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X27_Y23_N20
\dcon[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dcon[1]~0_combout\ = (!state(3) & ((state(1) & (!state(0) & state(4))) # (!state(1) & (state(0) & !state(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(1),
	datac => state(0),
	datad => state(4),
	combout => \dcon[1]~0_combout\);

-- Location: LCCOMB_X27_Y23_N26
\dcon[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dcon[1]~1_combout\ = (state(2) & \dcon[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datad => \dcon[1]~0_combout\,
	combout => \dcon[1]~1_combout\);

-- Location: LCCOMB_X26_Y22_N14
\dcon[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- dcon(1) = (!\Equal0~6_combout\ & ((\Equal0~5_combout\) # ((dcon(1) & !\dcon[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => dcon(1),
	datad => \dcon[1]~1_combout\,
	combout => dcon(1));

-- Location: IOIBUF_X38_Y34_N15
\input[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(28),
	o => \input[28]~input_o\);

-- Location: LCCOMB_X27_Y20_N20
\next_state[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[4]~41_combout\ = (!state(3) & (!state(2) & (!state(4) & !state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(2),
	datac => state(4),
	datad => state(1),
	combout => \next_state[4]~41_combout\);

-- Location: LCCOMB_X27_Y23_N28
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!state(3) & (!state(4) & (!state(1) & state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(4),
	datac => state(1),
	datad => state(2),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X26_Y22_N24
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (state(0) & \Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X26_Y22_N4
\dcon[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- dcon(0) = (!\next_state[4]~41_combout\ & ((\dcon[1]~1_combout\ & (!\Equal0~9_combout\)) # (!\dcon[1]~1_combout\ & ((dcon(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state[4]~41_combout\,
	datab => \Equal0~9_combout\,
	datac => dcon(0),
	datad => \dcon[1]~1_combout\,
	combout => dcon(0));

-- Location: LCCOMB_X26_Y22_N20
\m_2|outp[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2|outp[12]~3_combout\ = (dcon(1) & (\input[28]~input_o\ & !dcon(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dcon(1),
	datac => \input[28]~input_o\,
	datad => dcon(0),
	combout => \m_2|outp[12]~3_combout\);

-- Location: LCCOMB_X27_Y20_N10
\memwr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwr~2_combout\ = (state(4) & ((state(1) & (!state(3) & state(2))) # (!state(1) & (state(3) & !state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(1),
	datac => state(3),
	datad => state(2),
	combout => \memwr~2_combout\);

-- Location: LCCOMB_X27_Y23_N16
\memwr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwr~4_combout\ = (state(0) & ((\Equal0~8_combout\))) # (!state(0) & (\memwr~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => \memwr~2_combout\,
	datad => \Equal0~8_combout\,
	combout => \memwr~4_combout\);

-- Location: LCCOMB_X27_Y23_N12
\memwr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwr~5_combout\ = (\memwr~4_combout\ & ((\dcon[1]~1_combout\))) # (!\memwr~4_combout\ & (\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datac => \dcon[1]~1_combout\,
	datad => \memwr~4_combout\,
	combout => \memwr~5_combout\);

-- Location: LCCOMB_X26_Y22_N0
memwr : cycloneive_lcell_comb
-- Equation(s):
-- \memwr~combout\ = (!\Equal0~6_combout\ & ((\memwr~5_combout\) # (\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~5_combout\,
	datab => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \memwr~combout\);

-- Location: IOIBUF_X25_Y0_N15
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: LCCOMB_X26_Y19_N16
\iord[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \iord[1]~10_combout\ = (state(4) & (state(1) $ (state(2) $ (!state(0))))) # (!state(4) & (state(2) & ((!state(0)) # (!state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(1),
	datac => state(2),
	datad => state(0),
	combout => \iord[1]~10_combout\);

-- Location: LCCOMB_X26_Y19_N26
\iord[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \iord[1]~11_combout\ = (\iord[1]~10_combout\ & (state(3) $ (((state(1)) # (state(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iord[1]~10_combout\,
	datab => state(1),
	datac => state(2),
	datad => state(3),
	combout => \iord[1]~11_combout\);

-- Location: LCCOMB_X25_Y19_N20
\iord[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- iord(1) = (!\Equal0~6_combout\ & ((\Equal0~5_combout\) # ((iord(1) & !\iord[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => iord(1),
	datac => \Equal0~5_combout\,
	datad => \iord[1]~11_combout\,
	combout => iord(1));

-- Location: LCCOMB_X26_Y19_N30
\iord[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \iord[0]~8_combout\ = (state(1) & (state(4) & (state(0) $ (state(2))))) # (!state(1) & (((!state(4) & state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => state(4),
	datad => state(2),
	combout => \iord[0]~8_combout\);

-- Location: LCCOMB_X23_Y19_N20
\iord[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \iord[0]~9_combout\ = (!state(3) & \iord[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(3),
	datad => \iord[0]~8_combout\,
	combout => \iord[0]~9_combout\);

-- Location: LCCOMB_X25_Y19_N2
\iord[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- iord(0) = (!\next_state[4]~41_combout\ & ((\iord[1]~11_combout\ & (\iord[0]~9_combout\)) # (!\iord[1]~11_combout\ & ((iord(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state[4]~41_combout\,
	datab => \iord[0]~9_combout\,
	datac => iord(0),
	datad => \iord[1]~11_combout\,
	combout => iord(0));

-- Location: LCCOMB_X26_Y20_N22
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (state(2) & (!state(3) & (state(1) & !state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(3),
	datac => state(1),
	datad => state(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X26_Y20_N4
\alusrca[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrca[1]~26_combout\ = (!state(3) & (!state(2) & state(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(3),
	datac => state(2),
	datad => state(4),
	combout => \alusrca[1]~26_combout\);

-- Location: LCCOMB_X26_Y20_N18
\alusrcb[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrcb[2]~6_combout\ = (state(2) & (!state(4) & (state(0) $ (state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(3),
	datac => state(2),
	datad => state(4),
	combout => \alusrcb[2]~6_combout\);

-- Location: LCCOMB_X26_Y20_N2
\alusrcb[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrcb[2]~7_combout\ = (state(1) & \alusrcb[2]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => \alusrcb[2]~6_combout\,
	combout => \alusrcb[2]~7_combout\);

-- Location: LCCOMB_X26_Y20_N26
\alusrcb[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrcb[2]~8_combout\ = (state(0) & (\Equal0~1_combout\ & ((\alusrcb[2]~7_combout\)))) # (!state(0) & (((\alusrca[1]~26_combout\ & !\alusrcb[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Equal0~1_combout\,
	datac => \alusrca[1]~26_combout\,
	datad => \alusrcb[2]~7_combout\,
	combout => \alusrcb[2]~8_combout\);

-- Location: LCCOMB_X28_Y20_N26
\aluop[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluop[1]~8_combout\ = (state(2) & (!state(4) & (state(0) $ (state(3))))) # (!state(2) & (!state(3) & (state(0) $ (state(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(3),
	datac => state(2),
	datad => state(4),
	combout => \aluop[1]~8_combout\);

-- Location: LCCOMB_X28_Y20_N10
\alusrca[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrca[1]~23_combout\ = (state(3) & (!state(0) & (state(2) & !state(4)))) # (!state(3) & (((!state(2) & state(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(3),
	datac => state(2),
	datad => state(4),
	combout => \alusrca[1]~23_combout\);

-- Location: LCCOMB_X28_Y20_N12
\alusrca[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrca[1]~28_combout\ = (state(1) & (\aluop[1]~8_combout\)) # (!state(1) & ((\alusrca[1]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datac => \aluop[1]~8_combout\,
	datad => \alusrca[1]~23_combout\,
	combout => \alusrca[1]~28_combout\);

-- Location: LCCOMB_X26_Y20_N6
\alusrcb[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrcb[2]~11_combout\ = (\alusrca[1]~28_combout\ & (\alusrcb[2]~8_combout\)) # (!\alusrca[1]~28_combout\ & ((alusrcb(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alusrcb[2]~8_combout\,
	datab => alusrcb(2),
	datad => \alusrca[1]~28_combout\,
	combout => \alusrcb[2]~11_combout\);

-- Location: LCCOMB_X27_Y20_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!state(4) & (state(1) & (!state(3) & !state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(1),
	datac => state(3),
	datad => state(2),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X27_Y20_N26
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!state(0) & \Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datad => \Equal0~2_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X27_Y20_N24
\aluop[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluop[1]~9_combout\ = (state(3) & (!state(4) & (state(1) $ (state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(1),
	datac => state(0),
	datad => state(4),
	combout => \aluop[1]~9_combout\);

-- Location: LCCOMB_X27_Y20_N8
\aluop[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluop[1]~10_combout\ = (\Equal0~6_combout\) # ((\Equal0~10_combout\) # ((\aluop[1]~9_combout\ & !state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \aluop[1]~9_combout\,
	datac => \Equal0~10_combout\,
	datad => state(2),
	combout => \aluop[1]~10_combout\);

-- Location: LCCOMB_X25_Y20_N20
\comb~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~30_combout\ = (state(0) & (\aluop[1]~10_combout\)) # (!state(0) & (!\Equal0~2_combout\ & ((\aluop[1]~10_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \aluop[1]~10_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~4_combout\,
	combout => \comb~30_combout\);

-- Location: LCCOMB_X25_Y20_N2
\alusrcb[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- alusrcb(2) = (!\comb~30_combout\ & ((\alusrcb[2]~11_combout\) # (\Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alusrcb[2]~11_combout\,
	datac => \Equal0~10_combout\,
	datad => \comb~30_combout\,
	combout => alusrcb(2));

-- Location: IOIBUF_X18_Y34_N22
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LCCOMB_X26_Y19_N28
\pcwr~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcwr~8_combout\ = (state(3) & (state(2) & ((!state(0)) # (!state(1))))) # (!state(3) & (state(1) & (state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => state(2),
	datad => state(3),
	combout => \pcwr~8_combout\);

-- Location: LCCOMB_X26_Y19_N8
\pcwr~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcwr~9_combout\ = (state(2) & (!state(4) & (\pcwr~8_combout\))) # (!state(2) & (!state(3) & (state(4) $ (\pcwr~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => \pcwr~8_combout\,
	datac => state(2),
	datad => state(3),
	combout => \pcwr~9_combout\);

-- Location: LCCOMB_X26_Y19_N12
\pcwr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcwr~5_combout\ = (state(4) & (!state(1) & (!state(2)))) # (!state(4) & (state(2) & (state(1) $ (state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(1),
	datac => state(2),
	datad => state(0),
	combout => \pcwr~5_combout\);

-- Location: LCCOMB_X26_Y19_N24
\pcwr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcwr~4_combout\ = (state(4) & (!state(2) & ((!state(0)) # (!state(1))))) # (!state(4) & (state(1) & ((state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(1),
	datac => state(2),
	datad => state(0),
	combout => \pcwr~4_combout\);

-- Location: LCCOMB_X26_Y20_N16
\alud~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alud~0_combout\ = (\aluop[1]~9_combout\ & (!state(2) & ((state(0)) # (!\Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \aluop[1]~9_combout\,
	datac => state(2),
	datad => \Equal0~2_combout\,
	combout => \alud~0_combout\);

-- Location: LCCOMB_X25_Y20_N30
alud : cycloneive_lcell_comb
-- Equation(s):
-- \alud~combout\ = (!\Equal0~5_combout\ & ((\Equal0~6_combout\) # ((\alud~combout\ & !\alud~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \alud~combout\,
	datad => \alud~0_combout\,
	combout => \alud~combout\);

-- Location: LCCOMB_X28_Y20_N20
\aluop[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluop[1]~12_combout\ = (\aluop[1]~10_combout\) # ((\Equal0~4_combout\ & !state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => state(0),
	datad => \aluop[1]~10_combout\,
	combout => \aluop[1]~12_combout\);

-- Location: LCCOMB_X28_Y20_N22
\aluop[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluop[0]~4_combout\ = (state(2) & (!state(4) & (state(0) $ (state(3))))) # (!state(2) & (!state(3) & (state(4) $ (state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(4),
	datac => state(0),
	datad => state(3),
	combout => \aluop[0]~4_combout\);

-- Location: LCCOMB_X28_Y20_N4
\aluop[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluop[0]~13_combout\ = (\aluop[0]~4_combout\ & state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluop[0]~4_combout\,
	datad => state(1),
	combout => \aluop[0]~13_combout\);

-- Location: LCCOMB_X28_Y20_N28
\aluop[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluop[1]~7_combout\ = (!state(0) & (state(3) & (!state(4) & state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(3),
	datac => state(4),
	datad => state(2),
	combout => \aluop[1]~7_combout\);

-- Location: LCCOMB_X28_Y20_N8
\aluop[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluop[1]~14_combout\ = (state(1) & ((\aluop[1]~8_combout\))) # (!state(1) & (\aluop[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluop[1]~7_combout\,
	datab => \aluop[1]~8_combout\,
	datad => state(1),
	combout => \aluop[1]~14_combout\);

-- Location: LCCOMB_X28_Y20_N16
\aluop[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- aluop(0) = (!\aluop[1]~12_combout\ & ((\aluop[1]~14_combout\ & (!\aluop[0]~13_combout\)) # (!\aluop[1]~14_combout\ & ((aluop(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluop[1]~12_combout\,
	datab => \aluop[0]~13_combout\,
	datac => \aluop[1]~14_combout\,
	datad => aluop(0),
	combout => aluop(0));

-- Location: LCCOMB_X26_Y20_N30
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!state(2) & (!state(3) & (state(1) & state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(3),
	datac => state(1),
	datad => state(4),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X26_Y20_N8
\alusrcb[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrcb[1]~9_combout\ = (state(0) & (((!\Equal0~1_combout\ & \alusrcb[2]~7_combout\)))) # (!state(0) & ((\Equal0~3_combout\) # ((\alusrcb[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Equal0~3_combout\,
	datac => \Equal0~1_combout\,
	datad => \alusrcb[2]~7_combout\,
	combout => \alusrcb[1]~9_combout\);

-- Location: LCCOMB_X26_Y20_N12
\alusrcb[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrcb[1]~12_combout\ = (\alusrca[1]~28_combout\ & ((\alusrcb[1]~9_combout\))) # (!\alusrca[1]~28_combout\ & (alusrcb(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrcb(1),
	datac => \alusrca[1]~28_combout\,
	datad => \alusrcb[1]~9_combout\,
	combout => \alusrcb[1]~12_combout\);

-- Location: LCCOMB_X27_Y20_N2
\comb~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~27_combout\ = (\aluop[1]~10_combout\ & ((state(0)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluop[1]~10_combout\,
	datab => \Equal0~4_combout\,
	datad => state(0),
	combout => \comb~27_combout\);

-- Location: LCCOMB_X25_Y20_N16
\alusrcb[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- alusrcb(1) = (!\comb~27_combout\ & ((\alusrcb[1]~12_combout\) # (\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alusrcb[1]~12_combout\,
	datac => \Equal0~5_combout\,
	datad => \comb~27_combout\,
	combout => alusrcb(1));

-- Location: LCCOMB_X27_Y24_N30
meminit : cycloneive_lcell_comb
-- Equation(s):
-- \meminit~combout\ = (!\Equal0~6_combout\ & ((\Equal0~5_combout\) # (\meminit~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \meminit~combout\,
	combout => \meminit~combout\);

-- Location: IOIBUF_X20_Y34_N8
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LCCOMB_X27_Y19_N22
\alusrca[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrca[1]~25_combout\ = (!state(1) & (!state(3) & (!state(2) & state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(3),
	datac => state(2),
	datad => state(4),
	combout => \alusrca[1]~25_combout\);

-- Location: LCCOMB_X27_Y19_N6
\pcsrc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcsrc~0_combout\ = (state(2) & (!state(0) & (state(3) & !state(4)))) # (!state(2) & (((!state(3) & state(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => state(3),
	datad => state(4),
	combout => \pcsrc~0_combout\);

-- Location: LCCOMB_X27_Y19_N18
\pcsrc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcsrc~1_combout\ = (\pcsrc~0_combout\ & !state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcsrc~0_combout\,
	datad => state(1),
	combout => \pcsrc~1_combout\);

-- Location: LCCOMB_X27_Y19_N28
pcsrc : cycloneive_lcell_comb
-- Equation(s):
-- \pcsrc~combout\ = (!\next_state[4]~41_combout\ & ((\pcsrc~1_combout\ & (!\alusrca[1]~25_combout\)) # (!\pcsrc~1_combout\ & ((\pcsrc~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alusrca[1]~25_combout\,
	datab => \pcsrc~1_combout\,
	datac => \next_state[4]~41_combout\,
	datad => \pcsrc~combout\,
	combout => \pcsrc~combout\);

-- Location: IOIBUF_X29_Y34_N15
\input[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(22),
	o => \input[22]~input_o\);

-- Location: LCCOMB_X27_Y24_N6
\m_2|outp[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2|outp[6]~12_combout\ = (\input[22]~input_o\ & (dcon(1) & !dcon(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[22]~input_o\,
	datac => dcon(1),
	datad => dcon(0),
	combout => \m_2|outp[6]~12_combout\);

-- Location: LCCOMB_X23_Y24_N30
\mem|mem_reg[5][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[5][6]~combout\ = (GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & (\m_2|outp[6]~12_combout\)) # (!GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & ((\mem|mem_reg[5][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[6]~12_combout\,
	datac => \mem|mem_reg[5][6]~combout\,
	datad => \mem|mem_reg[5][0]~9clkctrl_outclk\,
	combout => \mem|mem_reg[5][6]~combout\);

-- Location: IOIBUF_X14_Y34_N15
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X26_Y20_N24
\aluop[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluop[1]~11_combout\ = (!state(0) & (!state(2) & (state(1) & !state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => state(1),
	datad => state(4),
	combout => \aluop[1]~11_combout\);

-- Location: LCCOMB_X24_Y20_N0
\comb~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~29_combout\ = (!\Equal0~4_combout\ & (!\aluop[1]~11_combout\ & \aluop[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \aluop[1]~11_combout\,
	datad => \aluop[1]~10_combout\,
	combout => \comb~29_combout\);

-- Location: LCCOMB_X27_Y20_N30
\comb~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~28_combout\ = (\aluop[1]~10_combout\ & (!\Equal0~4_combout\ & (!\aluop[1]~11_combout\))) # (!\aluop[1]~10_combout\ & (((state(0))) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluop[1]~10_combout\,
	datab => \Equal0~4_combout\,
	datac => \aluop[1]~11_combout\,
	datad => state(0),
	combout => \comb~28_combout\);

-- Location: LCCOMB_X24_Y20_N22
\aluop[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- aluop(1) = (\comb~28_combout\ & ((\comb~29_combout\) # ((!\aluop[1]~14_combout\ & aluop(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluop[1]~14_combout\,
	datab => \comb~29_combout\,
	datac => aluop(1),
	datad => \comb~28_combout\,
	combout => aluop(1));

-- Location: LCCOMB_X23_Y20_N22
\alusrca[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrca[1]~12_combout\ = state(1) $ (state(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => state(4),
	combout => \alusrca[1]~12_combout\);

-- Location: LCCOMB_X23_Y20_N24
\alusrca[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrca[1]~27_combout\ = (state(0) & (!state(3) & (!state(2) & \alusrca[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(3),
	datac => state(2),
	datad => \alusrca[1]~12_combout\,
	combout => \alusrca[1]~27_combout\);

-- Location: LCCOMB_X23_Y20_N14
\alusrca[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrca[1]~31_combout\ = (\alusrca[1]~28_combout\ & ((\alusrca[1]~27_combout\))) # (!\alusrca[1]~28_combout\ & (alusrca(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(1),
	datac => \alusrca[1]~28_combout\,
	datad => \alusrca[1]~27_combout\,
	combout => \alusrca[1]~31_combout\);

-- Location: LCCOMB_X27_Y20_N0
\alusrca[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- alusrca(1) = (!\comb~27_combout\ & ((\alusrca[1]~31_combout\) # (\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alusrca[1]~31_combout\,
	datab => \comb~27_combout\,
	datad => \Equal0~5_combout\,
	combout => alusrca(1));

-- Location: LCCOMB_X29_Y19_N6
\mem|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~11_combout\ = (\m_1|outp[2]~1_combout\ & (!\m_1|outp[1]~5_combout\ & (\m_1|outp[3]~3_combout\ & !\m_1|outp[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \m_1|outp[0]~7_combout\,
	combout => \mem|Decoder0~11_combout\);

-- Location: LCCOMB_X28_Y23_N8
\m_2|outp[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2|outp[4]~1_combout\ = (dcon(1) & !dcon(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dcon(1),
	datac => dcon(0),
	combout => \m_2|outp[4]~1_combout\);

-- Location: IOIBUF_X23_Y34_N22
\input[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(17),
	o => \input[17]~input_o\);

-- Location: LCCOMB_X30_Y23_N14
\mem|mem_reg[12][1]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][1]~100_combout\ = (\mem|Decoder0~11_combout\ & (\m_2|outp[4]~1_combout\ & (\input[17]~input_o\ & \memwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~11_combout\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \input[17]~input_o\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[12][1]~100_combout\);

-- Location: LCCOMB_X29_Y21_N12
\mem|mem_reg[12][0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][0]~20_combout\ = (\meminit~combout\) # ((\mem|Decoder0~11_combout\ & \memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~11_combout\,
	datab => \memwr~combout\,
	datad => \meminit~combout\,
	combout => \mem|mem_reg[12][0]~20_combout\);

-- Location: CLKCTRL_G6
\mem|mem_reg[12][0]~20clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|mem_reg[12][0]~20clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|mem_reg[12][0]~20clkctrl_outclk\);

-- Location: LCCOMB_X30_Y23_N12
\mem|mem_reg[12][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][1]~combout\ = (GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & ((\mem|mem_reg[12][1]~100_combout\))) # (!GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & (\mem|mem_reg[12][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[12][1]~combout\,
	datab => \mem|mem_reg[12][1]~100_combout\,
	datac => \mem|mem_reg[12][0]~20clkctrl_outclk\,
	combout => \mem|mem_reg[12][1]~combout\);

-- Location: LCCOMB_X29_Y20_N26
\mem|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~3_combout\ = (\m_1|outp[1]~5_combout\ & (\m_1|outp[3]~3_combout\ & (\m_1|outp[2]~1_combout\ & !\m_1|outp[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \m_1|outp[3]~3_combout\,
	datac => \m_1|outp[2]~1_combout\,
	datad => \m_1|outp[0]~7_combout\,
	combout => \mem|Decoder0~3_combout\);

-- Location: LCCOMB_X30_Y24_N30
\mem|mem_reg[14][1]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][1]~99_combout\ = (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & (\input[17]~input_o\ & \mem|Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \memwr~combout\,
	datac => \input[17]~input_o\,
	datad => \mem|Decoder0~3_combout\,
	combout => \mem|mem_reg[14][1]~99_combout\);

-- Location: LCCOMB_X29_Y20_N6
\mem|mem_reg[14][0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][0]~6_combout\ = (\meminit~combout\) # ((\memwr~combout\ & \mem|Decoder0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwr~combout\,
	datac => \mem|Decoder0~3_combout\,
	datad => \meminit~combout\,
	combout => \mem|mem_reg[14][0]~6_combout\);

-- Location: CLKCTRL_G7
\mem|mem_reg[14][0]~6clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|mem_reg[14][0]~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|mem_reg[14][0]~6clkctrl_outclk\);

-- Location: LCCOMB_X30_Y24_N12
\mem|mem_reg[14][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][1]~combout\ = (GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & ((\mem|mem_reg[14][1]~99_combout\))) # (!GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & (\mem|mem_reg[14][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[14][1]~combout\,
	datab => \mem|mem_reg[14][1]~99_combout\,
	datad => \mem|mem_reg[14][0]~6clkctrl_outclk\,
	combout => \mem|mem_reg[14][1]~combout\);

-- Location: LCCOMB_X24_Y23_N8
\mem|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux14~7_combout\ = (\m_1|outp[1]~5_combout\ & (((\mem|mem_reg[14][1]~combout\) # (\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~5_combout\ & (\mem|mem_reg[12][1]~combout\ & ((!\m_1|outp[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \mem|mem_reg[12][1]~combout\,
	datac => \mem|mem_reg[14][1]~combout\,
	datad => \m_1|outp[0]~7_combout\,
	combout => \mem|Mux14~7_combout\);

-- Location: LCCOMB_X26_Y22_N18
\m_2|outp[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2|outp[1]~7_combout\ = (!dcon(0) & (\input[17]~input_o\ & dcon(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dcon(0),
	datab => \input[17]~input_o\,
	datad => dcon(1),
	combout => \m_2|outp[1]~7_combout\);

-- Location: LCCOMB_X26_Y23_N10
\mem|mem_reg[15][1]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][1]~101_combout\ = (\m_2|outp[1]~7_combout\) # ((!\mem|Decoder0~15_combout\) # (!\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[1]~7_combout\,
	datab => \memwr~combout\,
	datad => \mem|Decoder0~15_combout\,
	combout => \mem|mem_reg[15][1]~101_combout\);

-- Location: LCCOMB_X26_Y23_N26
\mem|mem_reg[15][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][1]~combout\ = (GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & ((\mem|mem_reg[15][1]~101_combout\))) # (!GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & (\mem|mem_reg[15][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[15][1]~combout\,
	datac => \mem|mem_reg[15][0]~27clkctrl_outclk\,
	datad => \mem|mem_reg[15][1]~101_combout\,
	combout => \mem|mem_reg[15][1]~combout\);

-- Location: LCCOMB_X29_Y19_N18
\mem|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~7_combout\ = (\m_1|outp[2]~1_combout\ & (!\m_1|outp[1]~5_combout\ & (\m_1|outp[3]~3_combout\ & \m_1|outp[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \m_1|outp[0]~7_combout\,
	combout => \mem|Decoder0~7_combout\);

-- Location: LCCOMB_X28_Y24_N30
\mem|mem_reg[13][1]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][1]~98_combout\ = (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & (\input[17]~input_o\ & \mem|Decoder0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \memwr~combout\,
	datac => \input[17]~input_o\,
	datad => \mem|Decoder0~7_combout\,
	combout => \mem|mem_reg[13][1]~98_combout\);

-- Location: LCCOMB_X30_Y22_N22
\mem|mem_reg[13][0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][0]~13_combout\ = (\meminit~combout\) # ((\mem|Decoder0~7_combout\ & \memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~7_combout\,
	datac => \meminit~combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[13][0]~13_combout\);

-- Location: CLKCTRL_G8
\mem|mem_reg[13][0]~13clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|mem_reg[13][0]~13clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|mem_reg[13][0]~13clkctrl_outclk\);

-- Location: LCCOMB_X28_Y24_N18
\mem|mem_reg[13][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][1]~combout\ = (GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & (\mem|mem_reg[13][1]~98_combout\)) # (!GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & ((\mem|mem_reg[13][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[13][1]~98_combout\,
	datab => \mem|mem_reg[13][1]~combout\,
	datad => \mem|mem_reg[13][0]~13clkctrl_outclk\,
	combout => \mem|mem_reg[13][1]~combout\);

-- Location: LCCOMB_X24_Y23_N30
\mem|Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux14~8_combout\ = (\mem|Mux14~7_combout\ & ((\mem|mem_reg[15][1]~combout\) # ((!\m_1|outp[0]~7_combout\)))) # (!\mem|Mux14~7_combout\ & (((\mem|mem_reg[13][1]~combout\ & \m_1|outp[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux14~7_combout\,
	datab => \mem|mem_reg[15][1]~combout\,
	datac => \mem|mem_reg[13][1]~combout\,
	datad => \m_1|outp[0]~7_combout\,
	combout => \mem|Mux14~8_combout\);

-- Location: LCCOMB_X25_Y22_N18
\mem|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~6_combout\ = (!\m_1|outp[2]~1_combout\ & (!\m_1|outp[1]~5_combout\ & (\m_1|outp[0]~7_combout\ & !\m_1|outp[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \m_1|outp[3]~3_combout\,
	combout => \mem|Decoder0~6_combout\);

-- Location: LCCOMB_X24_Y23_N2
\mem|mem_reg[1][1]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][1]~95_combout\ = (\memwr~combout\ & (\mem|Decoder0~6_combout\ & (\input[17]~input_o\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datab => \mem|Decoder0~6_combout\,
	datac => \input[17]~input_o\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[1][1]~95_combout\);

-- Location: LCCOMB_X27_Y24_N14
\mem|mem_reg[1][0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][0]~11_combout\ = (\meminit~combout\) # ((\memwr~combout\ & \mem|Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \meminit~combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~6_combout\,
	combout => \mem|mem_reg[1][0]~11_combout\);

-- Location: CLKCTRL_G11
\mem|mem_reg[1][0]~11clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|mem_reg[1][0]~11clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|mem_reg[1][0]~11clkctrl_outclk\);

-- Location: LCCOMB_X24_Y23_N26
\mem|mem_reg[1][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][1]~combout\ = (GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & ((\mem|mem_reg[1][1]~95_combout\))) # (!GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & (\mem|mem_reg[1][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[1][1]~combout\,
	datac => \mem|mem_reg[1][1]~95_combout\,
	datad => \mem|mem_reg[1][0]~11clkctrl_outclk\,
	combout => \mem|mem_reg[1][1]~combout\);

-- Location: LCCOMB_X27_Y22_N26
\mem|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~10_combout\ = (!\m_1|outp[0]~7_combout\ & (!\m_1|outp[3]~3_combout\ & (!\m_1|outp[2]~1_combout\ & !\m_1|outp[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \m_1|outp[3]~3_combout\,
	datac => \m_1|outp[2]~1_combout\,
	datad => \m_1|outp[1]~5_combout\,
	combout => \mem|Decoder0~10_combout\);

-- Location: LCCOMB_X24_Y23_N10
\mem|mem_reg[0][1]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][1]~96_combout\ = ((\m_2|outp[1]~7_combout\) # (!\memwr~combout\)) # (!\mem|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~10_combout\,
	datac => \memwr~combout\,
	datad => \m_2|outp[1]~7_combout\,
	combout => \mem|mem_reg[0][1]~96_combout\);

-- Location: LCCOMB_X27_Y24_N24
\mem|mem_reg[0][0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][0]~18_combout\ = (\meminit~combout\) # ((\mem|Decoder0~10_combout\ & \memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~10_combout\,
	datac => \memwr~combout\,
	datad => \meminit~combout\,
	combout => \mem|mem_reg[0][0]~18_combout\);

-- Location: CLKCTRL_G17
\mem|mem_reg[0][0]~18clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|mem_reg[0][0]~18clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|mem_reg[0][0]~18clkctrl_outclk\);

-- Location: LCCOMB_X24_Y23_N0
\mem|mem_reg[0][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][1]~combout\ = (GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & (\mem|mem_reg[0][1]~96_combout\)) # (!GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & ((\mem|mem_reg[0][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[0][1]~96_combout\,
	datab => \mem|mem_reg[0][1]~combout\,
	datad => \mem|mem_reg[0][0]~18clkctrl_outclk\,
	combout => \mem|mem_reg[0][1]~combout\);

-- Location: LCCOMB_X24_Y23_N24
\mem|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux14~4_combout\ = (\m_1|outp[1]~5_combout\ & (\m_1|outp[0]~7_combout\)) # (!\m_1|outp[1]~5_combout\ & ((\m_1|outp[0]~7_combout\ & (\mem|mem_reg[1][1]~combout\)) # (!\m_1|outp[0]~7_combout\ & ((\mem|mem_reg[0][1]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \mem|mem_reg[1][1]~combout\,
	datad => \mem|mem_reg[0][1]~combout\,
	combout => \mem|Mux14~4_combout\);

-- Location: LCCOMB_X27_Y18_N26
\mem|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~14_combout\ = (\m_1|outp[1]~5_combout\ & (!\m_1|outp[3]~3_combout\ & (!\m_1|outp[2]~1_combout\ & \m_1|outp[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \m_1|outp[3]~3_combout\,
	datac => \m_1|outp[2]~1_combout\,
	datad => \m_1|outp[0]~7_combout\,
	combout => \mem|Decoder0~14_combout\);

-- Location: LCCOMB_X24_Y25_N30
\mem|mem_reg[3][1]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][1]~97_combout\ = (\input[17]~input_o\ & (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & \mem|Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[17]~input_o\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~14_combout\,
	combout => \mem|mem_reg[3][1]~97_combout\);

-- Location: LCCOMB_X27_Y18_N16
\mem|mem_reg[3][0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][0]~25_combout\ = (\meminit~combout\) # ((\mem|Decoder0~14_combout\ & \memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~14_combout\,
	datac => \meminit~combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[3][0]~25_combout\);

-- Location: CLKCTRL_G19
\mem|mem_reg[3][0]~25clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|mem_reg[3][0]~25clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|mem_reg[3][0]~25clkctrl_outclk\);

-- Location: LCCOMB_X24_Y25_N28
\mem|mem_reg[3][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][1]~combout\ = (GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & (\mem|mem_reg[3][1]~97_combout\)) # (!GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & ((\mem|mem_reg[3][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[3][1]~97_combout\,
	datab => \mem|mem_reg[3][1]~combout\,
	datad => \mem|mem_reg[3][0]~25clkctrl_outclk\,
	combout => \mem|mem_reg[3][1]~combout\);

-- Location: LCCOMB_X28_Y19_N2
\mem|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~2_combout\ = (!\m_1|outp[2]~1_combout\ & (\m_1|outp[1]~5_combout\ & (!\m_1|outp[3]~3_combout\ & !\m_1|outp[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \m_1|outp[0]~7_combout\,
	combout => \mem|Decoder0~2_combout\);

-- Location: LCCOMB_X29_Y19_N30
\mem|mem_reg[2][1]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][1]~94_combout\ = ((\m_2|outp[1]~7_combout\) # (!\mem|Decoder0~2_combout\)) # (!\memwr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwr~combout\,
	datac => \mem|Decoder0~2_combout\,
	datad => \m_2|outp[1]~7_combout\,
	combout => \mem|mem_reg[2][1]~94_combout\);

-- Location: LCCOMB_X29_Y20_N12
\mem|mem_reg[2][0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][0]~4_combout\ = (\meminit~combout\) # ((\mem|Decoder0~2_combout\ & \memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~2_combout\,
	datac => \memwr~combout\,
	datad => \meminit~combout\,
	combout => \mem|mem_reg[2][0]~4_combout\);

-- Location: CLKCTRL_G15
\mem|mem_reg[2][0]~4clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|mem_reg[2][0]~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|mem_reg[2][0]~4clkctrl_outclk\);

-- Location: LCCOMB_X29_Y19_N22
\mem|mem_reg[2][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][1]~combout\ = (GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & ((\mem|mem_reg[2][1]~94_combout\))) # (!GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & (\mem|mem_reg[2][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[2][1]~combout\,
	datac => \mem|mem_reg[2][1]~94_combout\,
	datad => \mem|mem_reg[2][0]~4clkctrl_outclk\,
	combout => \mem|mem_reg[2][1]~combout\);

-- Location: LCCOMB_X24_Y23_N22
\mem|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux14~5_combout\ = (\m_1|outp[1]~5_combout\ & ((\mem|Mux14~4_combout\ & (\mem|mem_reg[3][1]~combout\)) # (!\mem|Mux14~4_combout\ & ((\mem|mem_reg[2][1]~combout\))))) # (!\m_1|outp[1]~5_combout\ & (\mem|Mux14~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \mem|Mux14~4_combout\,
	datac => \mem|mem_reg[3][1]~combout\,
	datad => \mem|mem_reg[2][1]~combout\,
	combout => \mem|Mux14~5_combout\);

-- Location: LCCOMB_X23_Y20_N8
\mem|mem_reg[5][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[5][1]~combout\ = (GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & (\m_2|outp[1]~7_combout\)) # (!GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & ((\mem|mem_reg[5][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[1]~7_combout\,
	datac => \mem|mem_reg[5][1]~combout\,
	datad => \mem|mem_reg[5][0]~9clkctrl_outclk\,
	combout => \mem|mem_reg[5][1]~combout\);

-- Location: LCCOMB_X26_Y21_N0
\mem|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~13_combout\ = (\m_1|outp[0]~7_combout\ & (\m_1|outp[2]~1_combout\ & (\m_1|outp[1]~5_combout\ & !\m_1|outp[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_1|outp[1]~5_combout\,
	datad => \m_1|outp[3]~3_combout\,
	combout => \mem|Decoder0~13_combout\);

-- Location: LCCOMB_X26_Y21_N6
\mem|mem_reg[7][0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[7][0]~23_combout\ = (\memwr~combout\ & \mem|Decoder0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memwr~combout\,
	datad => \mem|Decoder0~13_combout\,
	combout => \mem|mem_reg[7][0]~23_combout\);

-- Location: CLKCTRL_G5
\mem|mem_reg[7][0]~23clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|mem_reg[7][0]~23clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|mem_reg[7][0]~23clkctrl_outclk\);

-- Location: LCCOMB_X24_Y21_N24
\mem|mem_reg[7][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[7][1]~combout\ = (GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & ((\m_2|outp[1]~7_combout\))) # (!GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & (\mem|mem_reg[7][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[7][1]~combout\,
	datac => \mem|mem_reg[7][0]~23clkctrl_outclk\,
	datad => \m_2|outp[1]~7_combout\,
	combout => \mem|mem_reg[7][1]~combout\);

-- Location: LCCOMB_X25_Y23_N22
\mem|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~8_combout\ = (!\m_1|outp[1]~5_combout\ & (!\m_1|outp[0]~7_combout\ & (!\m_1|outp[3]~3_combout\ & \m_1|outp[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \m_1|outp[2]~1_combout\,
	combout => \mem|Decoder0~8_combout\);

-- Location: LCCOMB_X25_Y24_N30
\mem|mem_reg[4][1]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][1]~93_combout\ = (\input[17]~input_o\ & (\mem|Decoder0~8_combout\ & (\m_2|outp[4]~1_combout\ & \memwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[17]~input_o\,
	datab => \mem|Decoder0~8_combout\,
	datac => \m_2|outp[4]~1_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[4][1]~93_combout\);

-- Location: LCCOMB_X25_Y26_N2
\mem|mem_reg[4][0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][0]~15_combout\ = (\meminit~combout\) # ((\memwr~combout\ & \mem|Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \meminit~combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~8_combout\,
	combout => \mem|mem_reg[4][0]~15_combout\);

-- Location: CLKCTRL_G13
\mem|mem_reg[4][0]~15clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|mem_reg[4][0]~15clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|mem_reg[4][0]~15clkctrl_outclk\);

-- Location: LCCOMB_X25_Y24_N8
\mem|mem_reg[4][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][1]~combout\ = (GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & (\mem|mem_reg[4][1]~93_combout\)) # (!GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & ((\mem|mem_reg[4][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[4][1]~93_combout\,
	datac => \mem|mem_reg[4][1]~combout\,
	datad => \mem|mem_reg[4][0]~15clkctrl_outclk\,
	combout => \mem|mem_reg[4][1]~combout\);

-- Location: LCCOMB_X24_Y22_N18
\mem|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~0_combout\ = (!\m_1|outp[3]~3_combout\ & (!\m_1|outp[0]~7_combout\ & (\m_1|outp[1]~5_combout\ & \m_1|outp[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~3_combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_1|outp[1]~5_combout\,
	datad => \m_1|outp[2]~1_combout\,
	combout => \mem|Decoder0~0_combout\);

-- Location: LCCOMB_X24_Y22_N22
\mem|mem_reg[6][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[6][0]~0_combout\ = (\memwr~combout\ & \mem|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memwr~combout\,
	datad => \mem|Decoder0~0_combout\,
	combout => \mem|mem_reg[6][0]~0_combout\);

-- Location: CLKCTRL_G1
\mem|mem_reg[6][0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|mem_reg[6][0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|mem_reg[6][0]~0clkctrl_outclk\);

-- Location: LCCOMB_X24_Y24_N8
\mem|mem_reg[6][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[6][1]~combout\ = (GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & (\m_2|outp[1]~7_combout\)) # (!GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & ((\mem|mem_reg[6][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[1]~7_combout\,
	datac => \mem|mem_reg[6][1]~combout\,
	datad => \mem|mem_reg[6][0]~0clkctrl_outclk\,
	combout => \mem|mem_reg[6][1]~combout\);

-- Location: LCCOMB_X24_Y23_N12
\mem|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux14~2_combout\ = (\m_1|outp[1]~5_combout\ & ((\m_1|outp[0]~7_combout\) # ((\mem|mem_reg[6][1]~combout\)))) # (!\m_1|outp[1]~5_combout\ & (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[4][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \mem|mem_reg[4][1]~combout\,
	datad => \mem|mem_reg[6][1]~combout\,
	combout => \mem|Mux14~2_combout\);

-- Location: LCCOMB_X24_Y23_N14
\mem|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux14~3_combout\ = (\mem|Mux14~2_combout\ & (((\mem|mem_reg[7][1]~combout\) # (!\m_1|outp[0]~7_combout\)))) # (!\mem|Mux14~2_combout\ & (\mem|mem_reg[5][1]~combout\ & ((\m_1|outp[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[5][1]~combout\,
	datab => \mem|mem_reg[7][1]~combout\,
	datac => \mem|Mux14~2_combout\,
	datad => \m_1|outp[0]~7_combout\,
	combout => \mem|Mux14~3_combout\);

-- Location: LCCOMB_X24_Y23_N16
\mem|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux14~6_combout\ = (\m_1|outp[3]~3_combout\ & (((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~3_combout\ & ((\m_1|outp[2]~1_combout\ & ((\mem|Mux14~3_combout\))) # (!\m_1|outp[2]~1_combout\ & (\mem|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux14~5_combout\,
	datab => \mem|Mux14~3_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \m_1|outp[2]~1_combout\,
	combout => \mem|Mux14~6_combout\);

-- Location: LCCOMB_X30_Y19_N22
\mem|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~9_combout\ = (!\m_1|outp[0]~7_combout\ & (!\m_1|outp[1]~5_combout\ & (\m_1|outp[3]~3_combout\ & !\m_1|outp[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \m_1|outp[2]~1_combout\,
	combout => \mem|Decoder0~9_combout\);

-- Location: LCCOMB_X30_Y19_N28
\mem|mem_reg[8][0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[8][0]~16_combout\ = (\mem|Decoder0~9_combout\ & \memwr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|Decoder0~9_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[8][0]~16_combout\);

-- Location: CLKCTRL_G16
\mem|mem_reg[8][0]~16clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|mem_reg[8][0]~16clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|mem_reg[8][0]~16clkctrl_outclk\);

-- Location: LCCOMB_X21_Y23_N4
\mem|mem_reg[8][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[8][1]~combout\ = (GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & (\m_2|outp[1]~7_combout\)) # (!GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & ((\mem|mem_reg[8][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[1]~7_combout\,
	datac => \mem|mem_reg[8][1]~combout\,
	datad => \mem|mem_reg[8][0]~16clkctrl_outclk\,
	combout => \mem|mem_reg[8][1]~combout\);

-- Location: LCCOMB_X26_Y21_N4
\mem|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~4_combout\ = (\m_1|outp[0]~7_combout\ & (!\m_1|outp[2]~1_combout\ & (!\m_1|outp[1]~5_combout\ & \m_1|outp[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_1|outp[1]~5_combout\,
	datad => \m_1|outp[3]~3_combout\,
	combout => \mem|Decoder0~4_combout\);

-- Location: LCCOMB_X25_Y25_N30
\mem|mem_reg[9][1]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][1]~91_combout\ = (\m_2|outp[4]~1_combout\ & (\input[17]~input_o\ & (\memwr~combout\ & \mem|Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[17]~input_o\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~4_combout\,
	combout => \mem|mem_reg[9][1]~91_combout\);

-- Location: LCCOMB_X26_Y24_N2
\mem|mem_reg[9][0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][0]~8_combout\ = (\meminit~combout\) # ((\mem|Decoder0~4_combout\ & \memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~4_combout\,
	datac => \memwr~combout\,
	datad => \meminit~combout\,
	combout => \mem|mem_reg[9][0]~8_combout\);

-- Location: CLKCTRL_G10
\mem|mem_reg[9][0]~8clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|mem_reg[9][0]~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|mem_reg[9][0]~8clkctrl_outclk\);

-- Location: LCCOMB_X25_Y25_N20
\mem|mem_reg[9][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][1]~combout\ = (GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & ((\mem|mem_reg[9][1]~91_combout\))) # (!GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & (\mem|mem_reg[9][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[9][1]~combout\,
	datac => \mem|mem_reg[9][1]~91_combout\,
	datad => \mem|mem_reg[9][0]~8clkctrl_outclk\,
	combout => \mem|mem_reg[9][1]~combout\);

-- Location: LCCOMB_X24_Y23_N20
\mem|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux14~0_combout\ = (\m_1|outp[1]~5_combout\ & (\m_1|outp[0]~7_combout\)) # (!\m_1|outp[1]~5_combout\ & ((\m_1|outp[0]~7_combout\ & ((\mem|mem_reg[9][1]~combout\))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[8][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \mem|mem_reg[8][1]~combout\,
	datad => \mem|mem_reg[9][1]~combout\,
	combout => \mem|Mux14~0_combout\);

-- Location: LCCOMB_X29_Y21_N30
\mem|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~12_combout\ = (\m_1|outp[0]~7_combout\ & (!\m_1|outp[2]~1_combout\ & (\m_1|outp[3]~3_combout\ & \m_1|outp[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \m_1|outp[1]~5_combout\,
	combout => \mem|Decoder0~12_combout\);

-- Location: LCCOMB_X29_Y23_N14
\mem|mem_reg[11][1]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][1]~92_combout\ = (\input[17]~input_o\ & (\memwr~combout\ & (\m_2|outp[4]~1_combout\ & \mem|Decoder0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[17]~input_o\,
	datab => \memwr~combout\,
	datac => \m_2|outp[4]~1_combout\,
	datad => \mem|Decoder0~12_combout\,
	combout => \mem|mem_reg[11][1]~92_combout\);

-- Location: LCCOMB_X29_Y20_N30
\mem|mem_reg[11][0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][0]~22_combout\ = (\meminit~combout\) # ((\mem|Decoder0~12_combout\ & \memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~12_combout\,
	datab => \memwr~combout\,
	datad => \meminit~combout\,
	combout => \mem|mem_reg[11][0]~22_combout\);

-- Location: CLKCTRL_G4
\mem|mem_reg[11][0]~22clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|mem_reg[11][0]~22clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|mem_reg[11][0]~22clkctrl_outclk\);

-- Location: LCCOMB_X29_Y23_N18
\mem|mem_reg[11][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][1]~combout\ = (GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & (\mem|mem_reg[11][1]~92_combout\)) # (!GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & ((\mem|mem_reg[11][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[11][1]~92_combout\,
	datac => \mem|mem_reg[11][1]~combout\,
	datad => \mem|mem_reg[11][0]~22clkctrl_outclk\,
	combout => \mem|mem_reg[11][1]~combout\);

-- Location: LCCOMB_X30_Y19_N12
\mem|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~1_combout\ = (!\m_1|outp[0]~7_combout\ & (\m_1|outp[1]~5_combout\ & (\m_1|outp[3]~3_combout\ & !\m_1|outp[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \m_1|outp[2]~1_combout\,
	combout => \mem|Decoder0~1_combout\);

-- Location: LCCOMB_X26_Y22_N26
\mem|mem_reg[10][1]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][1]~90_combout\ = (\m_2|outp[1]~7_combout\) # ((!\memwr~combout\) # (!\mem|Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[1]~7_combout\,
	datac => \mem|Decoder0~1_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[10][1]~90_combout\);

-- Location: LCCOMB_X26_Y22_N2
\mem|mem_reg[10][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][0]~2_combout\ = (\meminit~combout\) # ((\mem|Decoder0~1_combout\ & \memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~1_combout\,
	datac => \meminit~combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[10][0]~2_combout\);

-- Location: CLKCTRL_G18
\mem|mem_reg[10][0]~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|mem_reg[10][0]~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|mem_reg[10][0]~2clkctrl_outclk\);

-- Location: LCCOMB_X26_Y22_N10
\mem|mem_reg[10][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][1]~combout\ = (GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & (\mem|mem_reg[10][1]~90_combout\)) # (!GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & ((\mem|mem_reg[10][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[10][1]~90_combout\,
	datac => \mem|mem_reg[10][0]~2clkctrl_outclk\,
	datad => \mem|mem_reg[10][1]~combout\,
	combout => \mem|mem_reg[10][1]~combout\);

-- Location: LCCOMB_X24_Y23_N6
\mem|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux14~1_combout\ = (\m_1|outp[1]~5_combout\ & ((\mem|Mux14~0_combout\ & (\mem|mem_reg[11][1]~combout\)) # (!\mem|Mux14~0_combout\ & ((\mem|mem_reg[10][1]~combout\))))) # (!\m_1|outp[1]~5_combout\ & (\mem|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \mem|Mux14~0_combout\,
	datac => \mem|mem_reg[11][1]~combout\,
	datad => \mem|mem_reg[10][1]~combout\,
	combout => \mem|Mux14~1_combout\);

-- Location: LCCOMB_X24_Y23_N28
\mem|Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux14~9_combout\ = (\mem|Mux14~6_combout\ & ((\mem|Mux14~8_combout\) # ((!\m_1|outp[3]~3_combout\)))) # (!\mem|Mux14~6_combout\ & (((\m_1|outp[3]~3_combout\ & \mem|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux14~8_combout\,
	datab => \mem|Mux14~6_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \mem|Mux14~1_combout\,
	combout => \mem|Mux14~9_combout\);

-- Location: LCCOMB_X27_Y23_N18
\memrd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \memrd~2_combout\ = (state(4) & (state(0) & (state(2) $ (state(1))))) # (!state(4) & (state(2) & ((!state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(4),
	datac => state(1),
	datad => state(0),
	combout => \memrd~2_combout\);

-- Location: LCCOMB_X27_Y23_N4
\memrd~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \memrd~6_combout\ = (!state(3) & \memrd~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datad => \memrd~2_combout\,
	combout => \memrd~6_combout\);

-- Location: LCCOMB_X27_Y23_N10
\memrd~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \memrd~4_combout\ = (state(0) & (state(4) & (state(1) & !state(2)))) # (!state(0) & (!state(4) & (!state(1) & state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(4),
	datac => state(1),
	datad => state(2),
	combout => \memrd~4_combout\);

-- Location: LCCOMB_X27_Y23_N0
\memrd~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \memrd~5_combout\ = (!state(3) & \memrd~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datad => \memrd~4_combout\,
	combout => \memrd~5_combout\);

-- Location: LCCOMB_X27_Y23_N14
\memrd~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \memrd~7_combout\ = (\memrd~6_combout\ & ((\memrd~5_combout\))) # (!\memrd~6_combout\ & (\memrd~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memrd~combout\,
	datac => \memrd~6_combout\,
	datad => \memrd~5_combout\,
	combout => \memrd~7_combout\);

-- Location: LCCOMB_X27_Y23_N24
memrd : cycloneive_lcell_comb
-- Equation(s):
-- \memrd~combout\ = (\comb~18_combout\ & ((\memrd~7_combout\) # (\comb~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memrd~7_combout\,
	datac => \comb~19_combout\,
	datad => \comb~18_combout\,
	combout => \memrd~combout\);

-- Location: LCCOMB_X26_Y23_N8
\mem|do[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|do[15]~0_combout\ = (!\meminit~combout\ & \memrd~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \meminit~combout\,
	datad => \memrd~combout\,
	combout => \mem|do[15]~0_combout\);

-- Location: CLKCTRL_G12
\mem|do[15]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|do[15]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|do[15]~0clkctrl_outclk\);

-- Location: LCCOMB_X24_Y23_N18
\mem|do[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|do\(1) = (GLOBAL(\mem|do[15]~0clkctrl_outclk\) & (\mem|Mux14~9_combout\)) # (!GLOBAL(\mem|do[15]~0clkctrl_outclk\) & ((\mem|do\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Mux14~9_combout\,
	datac => \mem|do[15]~0clkctrl_outclk\,
	datad => \mem|do\(1),
	combout => \mem|do\(1));

-- Location: LCCOMB_X24_Y23_N4
\ir_1|r_1|dout[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_1|r_1|dout\(1) = (\irwr~combout\ & ((\mem|do\(1)))) # (!\irwr~combout\ & (\ir_1|r_1|dout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_1|r_1|dout\(1),
	datac => \irwr~combout\,
	datad => \mem|do\(1),
	combout => \ir_1|r_1|dout\(1));

-- Location: LCCOMB_X23_Y20_N26
\alusrca[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrca[0]~29_combout\ = (state(1) & ((state(4)) # (state(0) $ (!state(2))))) # (!state(1) & ((state(0)) # ((state(2)) # (!state(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => state(1),
	datad => state(4),
	combout => \alusrca[0]~29_combout\);

-- Location: LCCOMB_X23_Y20_N16
\alusrca[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrca[0]~30_combout\ = (\alusrca[0]~29_combout\) # ((state(3) & ((!state(2)))) # (!state(3) & (!state(4) & state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(3),
	datac => state(2),
	datad => \alusrca[0]~29_combout\,
	combout => \alusrca[0]~30_combout\);

-- Location: LCCOMB_X23_Y20_N10
\alusrca[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrca[0]~32_combout\ = (\alusrca[1]~28_combout\ & ((\alusrca[0]~30_combout\))) # (!\alusrca[1]~28_combout\ & (alusrca(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => alusrca(0),
	datac => \alusrca[1]~28_combout\,
	datad => \alusrca[0]~30_combout\,
	combout => \alusrca[0]~32_combout\);

-- Location: LCCOMB_X23_Y20_N30
\comb~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~21_combout\ = (\next_state[4]~41_combout\ & (((\Equal0~5_combout\)))) # (!\next_state[4]~41_combout\ & (!\Equal0~10_combout\ & ((\aluop[1]~10_combout\) # (\Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state[4]~41_combout\,
	datab => \Equal0~10_combout\,
	datac => \aluop[1]~10_combout\,
	datad => \Equal0~5_combout\,
	combout => \comb~21_combout\);

-- Location: LCCOMB_X23_Y20_N12
\comb~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~20_combout\ = (\next_state[4]~41_combout\ & (((\aluop[1]~10_combout\ & !\Equal0~5_combout\)))) # (!\next_state[4]~41_combout\ & (\Equal0~10_combout\ & ((\aluop[1]~10_combout\) # (\Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state[4]~41_combout\,
	datab => \Equal0~10_combout\,
	datac => \aluop[1]~10_combout\,
	datad => \Equal0~5_combout\,
	combout => \comb~20_combout\);

-- Location: LCCOMB_X23_Y20_N0
\alusrca[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- alusrca(0) = (!\comb~20_combout\ & ((\alusrca[0]~32_combout\) # (\comb~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alusrca[0]~32_combout\,
	datac => \comb~21_combout\,
	datad => \comb~20_combout\,
	combout => alusrca(0));

-- Location: LCCOMB_X25_Y20_N4
\m_7|outp[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_7|outp[1]~2_combout\ = (!alusrca(0) & ((alusrca(1) & ((\ir_1|r_1|dout\(1)))) # (!alusrca(1) & (\pc|dout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(1),
	datab => alusrca(1),
	datac => \ir_1|r_1|dout\(1),
	datad => alusrca(0),
	combout => \m_7|outp[1]~2_combout\);

-- Location: LCCOMB_X25_Y20_N28
\m_7|outp[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_7|outp[0]~1_combout\ = (!alusrca(0) & ((alusrca(1) & (\ir_1|r_1|dout\(0))) # (!alusrca(1) & ((\pc|dout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(0),
	datab => \ir_1|r_1|dout\(0),
	datac => \pc|dout\(0),
	datad => alusrca(1),
	combout => \m_7|outp[0]~1_combout\);

-- Location: LCCOMB_X25_Y20_N6
\alu_1|opr1|a2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr1|a2|cout~0_combout\ = (\m_8|outp[1]~14_combout\ & ((\m_7|outp[1]~2_combout\) # ((\m_8|outp[0]~13_combout\ & \m_7|outp[0]~1_combout\)))) # (!\m_8|outp[1]~14_combout\ & (\m_8|outp[0]~13_combout\ & (\m_7|outp[1]~2_combout\ & 
-- \m_7|outp[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[1]~14_combout\,
	datab => \m_8|outp[0]~13_combout\,
	datac => \m_7|outp[1]~2_combout\,
	datad => \m_7|outp[0]~1_combout\,
	combout => \alu_1|opr1|a2|cout~0_combout\);

-- Location: LCCOMB_X25_Y20_N0
\alu_1|opr2|s2|bout\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s2|bout~combout\ = (\m_8|outp[1]~14_combout\ & (((\m_8|outp[0]~13_combout\ & !\m_7|outp[0]~1_combout\)) # (!\m_7|outp[1]~2_combout\))) # (!\m_8|outp[1]~14_combout\ & (\m_8|outp[0]~13_combout\ & (!\m_7|outp[1]~2_combout\ & 
-- !\m_7|outp[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[1]~14_combout\,
	datab => \m_8|outp[0]~13_combout\,
	datac => \m_7|outp[1]~2_combout\,
	datad => \m_7|outp[0]~1_combout\,
	combout => \alu_1|opr2|s2|bout~combout\);

-- Location: IOIBUF_X23_Y34_N15
\input[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(18),
	o => \input[18]~input_o\);

-- Location: LCCOMB_X26_Y26_N26
\mem|mem_reg[15][2]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][2]~126_combout\ = (\m_2|outp[4]~1_combout\ & (\input[18]~input_o\ & (\memwr~combout\ & \mem|Decoder0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[18]~input_o\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~15_combout\,
	combout => \mem|mem_reg[15][2]~126_combout\);

-- Location: LCCOMB_X26_Y26_N22
\mem|mem_reg[15][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][2]~combout\ = (GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & ((\mem|mem_reg[15][2]~126_combout\))) # (!GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & (\mem|mem_reg[15][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[15][2]~combout\,
	datac => \mem|mem_reg[15][0]~27clkctrl_outclk\,
	datad => \mem|mem_reg[15][2]~126_combout\,
	combout => \mem|mem_reg[15][2]~combout\);

-- Location: LCCOMB_X28_Y23_N12
\m_2|outp[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2|outp[2]~9_combout\ = (dcon(1) & (!dcon(0) & \input[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dcon(1),
	datab => dcon(0),
	datac => \input[18]~input_o\,
	combout => \m_2|outp[2]~9_combout\);

-- Location: LCCOMB_X28_Y23_N28
\mem|mem_reg[7][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[7][2]~combout\ = (GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & ((\m_2|outp[2]~9_combout\))) # (!GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & (\mem|mem_reg[7][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[7][2]~combout\,
	datac => \m_2|outp[2]~9_combout\,
	datad => \mem|mem_reg[7][0]~23clkctrl_outclk\,
	combout => \mem|mem_reg[7][2]~combout\);

-- Location: LCCOMB_X27_Y18_N30
\mem|mem_reg[3][2]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][2]~125_combout\ = (\m_2|outp[2]~9_combout\) # ((!\memwr~combout\) # (!\mem|Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[2]~9_combout\,
	datac => \mem|Decoder0~14_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[3][2]~125_combout\);

-- Location: LCCOMB_X27_Y18_N18
\mem|mem_reg[3][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][2]~combout\ = (GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & ((\mem|mem_reg[3][2]~125_combout\))) # (!GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & (\mem|mem_reg[3][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[3][2]~combout\,
	datac => \mem|mem_reg[3][2]~125_combout\,
	datad => \mem|mem_reg[3][0]~25clkctrl_outclk\,
	combout => \mem|mem_reg[3][2]~combout\);

-- Location: LCCOMB_X23_Y21_N20
\mem|Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux13~7_combout\ = (\m_1|outp[2]~1_combout\ & ((\mem|mem_reg[7][2]~combout\) # ((\m_1|outp[3]~3_combout\)))) # (!\m_1|outp[2]~1_combout\ & (((!\m_1|outp[3]~3_combout\ & \mem|mem_reg[3][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|mem_reg[7][2]~combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \mem|mem_reg[3][2]~combout\,
	combout => \mem|Mux13~7_combout\);

-- Location: LCCOMB_X29_Y23_N4
\mem|mem_reg[11][2]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][2]~124_combout\ = (\m_2|outp[2]~9_combout\) # ((!\memwr~combout\) # (!\mem|Decoder0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[2]~9_combout\,
	datac => \mem|Decoder0~12_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[11][2]~124_combout\);

-- Location: LCCOMB_X29_Y23_N6
\mem|mem_reg[11][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][2]~combout\ = (GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & ((\mem|mem_reg[11][2]~124_combout\))) # (!GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & (\mem|mem_reg[11][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[11][2]~combout\,
	datac => \mem|mem_reg[11][2]~124_combout\,
	datad => \mem|mem_reg[11][0]~22clkctrl_outclk\,
	combout => \mem|mem_reg[11][2]~combout\);

-- Location: LCCOMB_X23_Y21_N18
\mem|Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux13~8_combout\ = (\mem|Mux13~7_combout\ & ((\mem|mem_reg[15][2]~combout\) # ((!\m_1|outp[3]~3_combout\)))) # (!\mem|Mux13~7_combout\ & (((\m_1|outp[3]~3_combout\ & \mem|mem_reg[11][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[15][2]~combout\,
	datab => \mem|Mux13~7_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \mem|mem_reg[11][2]~combout\,
	combout => \mem|Mux13~8_combout\);

-- Location: LCCOMB_X27_Y18_N28
\mem|mem_reg[5][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[5][2]~combout\ = (GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & (\m_2|outp[2]~9_combout\)) # (!GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & ((\mem|mem_reg[5][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[2]~9_combout\,
	datac => \mem|mem_reg[5][0]~9clkctrl_outclk\,
	datad => \mem|mem_reg[5][2]~combout\,
	combout => \mem|mem_reg[5][2]~combout\);

-- Location: LCCOMB_X27_Y18_N22
\mem|mem_reg[1][2]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][2]~119_combout\ = (\m_2|outp[2]~9_combout\) # ((!\mem|Decoder0~6_combout\) # (!\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[2]~9_combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~6_combout\,
	combout => \mem|mem_reg[1][2]~119_combout\);

-- Location: LCCOMB_X27_Y18_N12
\mem|mem_reg[1][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][2]~combout\ = (GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & ((\mem|mem_reg[1][2]~119_combout\))) # (!GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & (\mem|mem_reg[1][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[1][2]~combout\,
	datab => \mem|mem_reg[1][2]~119_combout\,
	datad => \mem|mem_reg[1][0]~11clkctrl_outclk\,
	combout => \mem|mem_reg[1][2]~combout\);

-- Location: LCCOMB_X23_Y21_N6
\mem|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux13~2_combout\ = (\m_1|outp[2]~1_combout\ & ((\mem|mem_reg[5][2]~combout\) # ((\m_1|outp[3]~3_combout\)))) # (!\m_1|outp[2]~1_combout\ & (((!\m_1|outp[3]~3_combout\ & \mem|mem_reg[1][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|mem_reg[5][2]~combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \mem|mem_reg[1][2]~combout\,
	combout => \mem|Mux13~2_combout\);

-- Location: LCCOMB_X25_Y25_N24
\mem|mem_reg[9][2]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][2]~118_combout\ = (\memwr~combout\ & (\input[18]~input_o\ & (\m_2|outp[4]~1_combout\ & \mem|Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datab => \input[18]~input_o\,
	datac => \m_2|outp[4]~1_combout\,
	datad => \mem|Decoder0~4_combout\,
	combout => \mem|mem_reg[9][2]~118_combout\);

-- Location: LCCOMB_X25_Y25_N14
\mem|mem_reg[9][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][2]~combout\ = (GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & (\mem|mem_reg[9][2]~118_combout\)) # (!GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & ((\mem|mem_reg[9][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[9][2]~118_combout\,
	datac => \mem|mem_reg[9][2]~combout\,
	datad => \mem|mem_reg[9][0]~8clkctrl_outclk\,
	combout => \mem|mem_reg[9][2]~combout\);

-- Location: LCCOMB_X29_Y24_N2
\mem|mem_reg[13][2]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][2]~120_combout\ = (\memwr~combout\ & (\input[18]~input_o\ & (\mem|Decoder0~7_combout\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datab => \input[18]~input_o\,
	datac => \mem|Decoder0~7_combout\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[13][2]~120_combout\);

-- Location: LCCOMB_X29_Y24_N8
\mem|mem_reg[13][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][2]~combout\ = (GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & ((\mem|mem_reg[13][2]~120_combout\))) # (!GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & (\mem|mem_reg[13][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[13][2]~combout\,
	datac => \mem|mem_reg[13][2]~120_combout\,
	datad => \mem|mem_reg[13][0]~13clkctrl_outclk\,
	combout => \mem|mem_reg[13][2]~combout\);

-- Location: LCCOMB_X23_Y21_N28
\mem|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux13~3_combout\ = (\mem|Mux13~2_combout\ & (((\mem|mem_reg[13][2]~combout\) # (!\m_1|outp[3]~3_combout\)))) # (!\mem|Mux13~2_combout\ & (\mem|mem_reg[9][2]~combout\ & (\m_1|outp[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux13~2_combout\,
	datab => \mem|mem_reg[9][2]~combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \mem|mem_reg[13][2]~combout\,
	combout => \mem|Mux13~3_combout\);

-- Location: LCCOMB_X23_Y21_N26
\mem|mem_reg[0][2]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][2]~122_combout\ = (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & (\input[18]~input_o\ & \mem|Decoder0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \memwr~combout\,
	datac => \input[18]~input_o\,
	datad => \mem|Decoder0~10_combout\,
	combout => \mem|mem_reg[0][2]~122_combout\);

-- Location: LCCOMB_X23_Y21_N30
\mem|mem_reg[0][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][2]~combout\ = (GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & (\mem|mem_reg[0][2]~122_combout\)) # (!GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & ((\mem|mem_reg[0][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[0][2]~122_combout\,
	datac => \mem|mem_reg[0][2]~combout\,
	datad => \mem|mem_reg[0][0]~18clkctrl_outclk\,
	combout => \mem|mem_reg[0][2]~combout\);

-- Location: LCCOMB_X23_Y21_N8
\mem|mem_reg[8][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[8][2]~combout\ = (GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & (\m_2|outp[2]~9_combout\)) # (!GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & ((\mem|mem_reg[8][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[2]~9_combout\,
	datac => \mem|mem_reg[8][2]~combout\,
	datad => \mem|mem_reg[8][0]~16clkctrl_outclk\,
	combout => \mem|mem_reg[8][2]~combout\);

-- Location: LCCOMB_X23_Y21_N14
\mem|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux13~4_combout\ = (\m_1|outp[3]~3_combout\ & (((\mem|mem_reg[8][2]~combout\) # (\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~3_combout\ & (\mem|mem_reg[0][2]~combout\ & ((!\m_1|outp[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[0][2]~combout\,
	datab => \mem|mem_reg[8][2]~combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \m_1|outp[2]~1_combout\,
	combout => \mem|Mux13~4_combout\);

-- Location: LCCOMB_X29_Y19_N16
\mem|mem_reg[12][2]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][2]~123_combout\ = (\m_2|outp[2]~9_combout\) # ((!\memwr~combout\) # (!\mem|Decoder0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[2]~9_combout\,
	datac => \mem|Decoder0~11_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[12][2]~123_combout\);

-- Location: LCCOMB_X29_Y19_N10
\mem|mem_reg[12][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][2]~combout\ = (GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & (\mem|mem_reg[12][2]~123_combout\)) # (!GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & ((\mem|mem_reg[12][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[12][2]~123_combout\,
	datac => \mem|mem_reg[12][2]~combout\,
	datad => \mem|mem_reg[12][0]~20clkctrl_outclk\,
	combout => \mem|mem_reg[12][2]~combout\);

-- Location: LCCOMB_X25_Y24_N4
\mem|mem_reg[4][2]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][2]~121_combout\ = (\input[18]~input_o\ & (\mem|Decoder0~8_combout\ & (\memwr~combout\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[18]~input_o\,
	datab => \mem|Decoder0~8_combout\,
	datac => \memwr~combout\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[4][2]~121_combout\);

-- Location: LCCOMB_X25_Y24_N18
\mem|mem_reg[4][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][2]~combout\ = (GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & ((\mem|mem_reg[4][2]~121_combout\))) # (!GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & (\mem|mem_reg[4][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[4][2]~combout\,
	datac => \mem|mem_reg[4][2]~121_combout\,
	datad => \mem|mem_reg[4][0]~15clkctrl_outclk\,
	combout => \mem|mem_reg[4][2]~combout\);

-- Location: LCCOMB_X23_Y21_N0
\mem|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux13~5_combout\ = (\m_1|outp[2]~1_combout\ & ((\mem|Mux13~4_combout\ & (\mem|mem_reg[12][2]~combout\)) # (!\mem|Mux13~4_combout\ & ((\mem|mem_reg[4][2]~combout\))))) # (!\m_1|outp[2]~1_combout\ & (\mem|Mux13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|Mux13~4_combout\,
	datac => \mem|mem_reg[12][2]~combout\,
	datad => \mem|mem_reg[4][2]~combout\,
	combout => \mem|Mux13~5_combout\);

-- Location: LCCOMB_X23_Y21_N22
\mem|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux13~6_combout\ = (\m_1|outp[1]~5_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~5_combout\ & ((\m_1|outp[0]~7_combout\ & (\mem|Mux13~3_combout\)) # (!\m_1|outp[0]~7_combout\ & ((\mem|Mux13~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux13~3_combout\,
	datab => \mem|Mux13~5_combout\,
	datac => \m_1|outp[1]~5_combout\,
	datad => \m_1|outp[0]~7_combout\,
	combout => \mem|Mux13~6_combout\);

-- Location: LCCOMB_X29_Y25_N30
\mem|mem_reg[10][2]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][2]~115_combout\ = (\memwr~combout\ & (\m_2|outp[4]~1_combout\ & (\input[18]~input_o\ & \mem|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \input[18]~input_o\,
	datad => \mem|Decoder0~1_combout\,
	combout => \mem|mem_reg[10][2]~115_combout\);

-- Location: LCCOMB_X29_Y25_N14
\mem|mem_reg[10][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][2]~combout\ = (GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & (\mem|mem_reg[10][2]~115_combout\)) # (!GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & ((\mem|mem_reg[10][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[10][2]~115_combout\,
	datab => \mem|mem_reg[10][2]~combout\,
	datad => \mem|mem_reg[10][0]~2clkctrl_outclk\,
	combout => \mem|mem_reg[10][2]~combout\);

-- Location: LCCOMB_X29_Y19_N8
\mem|mem_reg[2][2]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][2]~116_combout\ = (\m_2|outp[2]~9_combout\) # ((!\memwr~combout\) # (!\mem|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[2]~9_combout\,
	datac => \mem|Decoder0~2_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[2][2]~116_combout\);

-- Location: LCCOMB_X29_Y19_N2
\mem|mem_reg[2][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][2]~combout\ = (GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & ((\mem|mem_reg[2][2]~116_combout\))) # (!GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & (\mem|mem_reg[2][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[2][2]~combout\,
	datac => \mem|mem_reg[2][2]~116_combout\,
	datad => \mem|mem_reg[2][0]~4clkctrl_outclk\,
	combout => \mem|mem_reg[2][2]~combout\);

-- Location: LCCOMB_X23_Y21_N2
\mem|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux13~0_combout\ = (\m_1|outp[2]~1_combout\ & (((\m_1|outp[3]~3_combout\)))) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~3_combout\ & (\mem|mem_reg[10][2]~combout\)) # (!\m_1|outp[3]~3_combout\ & ((\mem|mem_reg[2][2]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|mem_reg[10][2]~combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \mem|mem_reg[2][2]~combout\,
	combout => \mem|Mux13~0_combout\);

-- Location: LCCOMB_X30_Y24_N10
\mem|mem_reg[14][2]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][2]~117_combout\ = (\input[18]~input_o\ & (\memwr~combout\ & (\m_2|outp[4]~1_combout\ & \mem|Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[18]~input_o\,
	datab => \memwr~combout\,
	datac => \m_2|outp[4]~1_combout\,
	datad => \mem|Decoder0~3_combout\,
	combout => \mem|mem_reg[14][2]~117_combout\);

-- Location: LCCOMB_X30_Y24_N0
\mem|mem_reg[14][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][2]~combout\ = (GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & ((\mem|mem_reg[14][2]~117_combout\))) # (!GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & (\mem|mem_reg[14][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[14][2]~combout\,
	datac => \mem|mem_reg[14][2]~117_combout\,
	datad => \mem|mem_reg[14][0]~6clkctrl_outclk\,
	combout => \mem|mem_reg[14][2]~combout\);

-- Location: LCCOMB_X28_Y23_N18
\mem|mem_reg[6][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[6][2]~combout\ = (GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & ((\m_2|outp[2]~9_combout\))) # (!GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & (\mem|mem_reg[6][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[6][2]~combout\,
	datac => \m_2|outp[2]~9_combout\,
	datad => \mem|mem_reg[6][0]~0clkctrl_outclk\,
	combout => \mem|mem_reg[6][2]~combout\);

-- Location: LCCOMB_X23_Y21_N16
\mem|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux13~1_combout\ = (\m_1|outp[2]~1_combout\ & ((\mem|Mux13~0_combout\ & (\mem|mem_reg[14][2]~combout\)) # (!\mem|Mux13~0_combout\ & ((\mem|mem_reg[6][2]~combout\))))) # (!\m_1|outp[2]~1_combout\ & (\mem|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|Mux13~0_combout\,
	datac => \mem|mem_reg[14][2]~combout\,
	datad => \mem|mem_reg[6][2]~combout\,
	combout => \mem|Mux13~1_combout\);

-- Location: LCCOMB_X23_Y21_N4
\mem|Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux13~9_combout\ = (\mem|Mux13~6_combout\ & ((\mem|Mux13~8_combout\) # ((!\m_1|outp[1]~5_combout\)))) # (!\mem|Mux13~6_combout\ & (((\m_1|outp[1]~5_combout\ & \mem|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux13~8_combout\,
	datab => \mem|Mux13~6_combout\,
	datac => \m_1|outp[1]~5_combout\,
	datad => \mem|Mux13~1_combout\,
	combout => \mem|Mux13~9_combout\);

-- Location: LCCOMB_X23_Y21_N10
\mem|do[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|do\(2) = (GLOBAL(\mem|do[15]~0clkctrl_outclk\) & (\mem|Mux13~9_combout\)) # (!GLOBAL(\mem|do[15]~0clkctrl_outclk\) & ((\mem|do\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Mux13~9_combout\,
	datac => \mem|do[15]~0clkctrl_outclk\,
	datad => \mem|do\(2),
	combout => \mem|do\(2));

-- Location: LCCOMB_X23_Y21_N12
\ir_1|r_1|dout[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_1|r_1|dout\(2) = (\irwr~combout\ & ((\mem|do\(2)))) # (!\irwr~combout\ & (\ir_1|r_1|dout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(2),
	datac => \irwr~combout\,
	datad => \mem|do\(2),
	combout => \ir_1|r_1|dout\(2));

-- Location: LCCOMB_X26_Y20_N28
\alusrcb[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrcb[0]~10_combout\ = (state(0) & (!\Equal0~1_combout\ & ((\alusrcb[2]~7_combout\)))) # (!state(0) & (((\alusrca[1]~26_combout\) # (\alusrcb[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Equal0~1_combout\,
	datac => \alusrca[1]~26_combout\,
	datad => \alusrcb[2]~7_combout\,
	combout => \alusrcb[0]~10_combout\);

-- Location: LCCOMB_X26_Y20_N14
\alusrcb[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrcb[0]~13_combout\ = (\alusrca[1]~28_combout\ & ((\alusrcb[0]~10_combout\))) # (!\alusrca[1]~28_combout\ & (alusrcb(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => alusrcb(0),
	datac => \alusrca[1]~28_combout\,
	datad => \alusrcb[0]~10_combout\,
	combout => \alusrcb[0]~13_combout\);

-- Location: LCCOMB_X26_Y22_N22
\comb~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~23_combout\ = (\Equal0~5_combout\ & (\next_state[4]~41_combout\ $ (((\Equal0~10_combout\))))) # (!\Equal0~5_combout\ & (\aluop[1]~10_combout\ & (\next_state[4]~41_combout\ $ (\Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \next_state[4]~41_combout\,
	datac => \aluop[1]~10_combout\,
	datad => \Equal0~10_combout\,
	combout => \comb~23_combout\);

-- Location: LCCOMB_X25_Y20_N12
\comb~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~22_combout\ = (\Equal0~5_combout\ & (\next_state[4]~41_combout\ $ ((!\Equal0~10_combout\)))) # (!\Equal0~5_combout\ & (\aluop[1]~10_combout\ & (\next_state[4]~41_combout\ $ (!\Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \next_state[4]~41_combout\,
	datac => \Equal0~10_combout\,
	datad => \aluop[1]~10_combout\,
	combout => \comb~22_combout\);

-- Location: LCCOMB_X25_Y20_N8
\alusrcb[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- alusrcb(0) = (!\comb~22_combout\ & ((\alusrcb[0]~13_combout\) # (\comb~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alusrcb[0]~13_combout\,
	datac => \comb~23_combout\,
	datad => \comb~22_combout\,
	combout => alusrcb(0));

-- Location: LCCOMB_X24_Y21_N16
\m_8|outp[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_8|outp[2]~6_combout\ = (alusrcb(1) & (alusrcb(2) & ((\p_1|outp\(2)) # (!alusrcb(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrcb(1),
	datab => \p_1|outp\(2),
	datac => alusrcb(0),
	datad => alusrcb(2),
	combout => \m_8|outp[2]~6_combout\);

-- Location: LCCOMB_X24_Y21_N30
\m_8|outp[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_8|outp[0]~7_combout\ = (!alusrcb(1) & alusrcb(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => alusrcb(1),
	datad => alusrcb(2),
	combout => \m_8|outp[0]~7_combout\);

-- Location: LCCOMB_X23_Y21_N24
\m_7|outp[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_7|outp[2]~0_combout\ = (!alusrca(0) & ((alusrca(1) & (\ir_1|r_1|dout\(2))) # (!alusrca(1) & ((\pc|dout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(2),
	datab => \pc|dout\(2),
	datac => alusrca(1),
	datad => alusrca(0),
	combout => \m_7|outp[2]~0_combout\);

-- Location: LCCOMB_X24_Y21_N12
\alu_1|opr2|s3|xor_i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s3|xor_i~0_combout\ = \m_7|outp[2]~0_combout\ $ (((\m_8|outp[2]~6_combout\) # ((\ir_1|r_1|dout\(2) & \m_8|outp[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(2),
	datab => \m_8|outp[2]~6_combout\,
	datac => \m_8|outp[0]~7_combout\,
	datad => \m_7|outp[2]~0_combout\,
	combout => \alu_1|opr2|s3|xor_i~0_combout\);

-- Location: LCCOMB_X24_Y19_N4
\alu_1|temp_out[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[2]~39_combout\ = \alu_1|opr2|s3|xor_i~0_combout\ $ (((aluop(0) & ((\alu_1|opr2|s2|bout~combout\))) # (!aluop(0) & (\alu_1|opr1|a2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aluop(0),
	datab => \alu_1|opr1|a2|cout~0_combout\,
	datac => \alu_1|opr2|s2|bout~combout\,
	datad => \alu_1|opr2|s3|xor_i~0_combout\,
	combout => \alu_1|temp_out[2]~39_combout\);

-- Location: LCCOMB_X24_Y21_N0
\m_8|outp[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_8|outp[2]~12_combout\ = (\m_8|outp[2]~6_combout\) # ((\ir_1|r_1|dout\(2) & (!alusrcb(1) & alusrcb(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(2),
	datab => \m_8|outp[2]~6_combout\,
	datac => alusrcb(1),
	datad => alusrcb(2),
	combout => \m_8|outp[2]~12_combout\);

-- Location: LCCOMB_X24_Y21_N10
\alu_1|temp_out[2]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[2]~67_combout\ = (aluop(1) & (!aluop(0) & ((!\m_8|outp[2]~12_combout\) # (!\m_7|outp[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => \m_7|outp[2]~0_combout\,
	datac => aluop(0),
	datad => \m_8|outp[2]~12_combout\,
	combout => \alu_1|temp_out[2]~67_combout\);

-- Location: LCCOMB_X24_Y19_N6
\alu_1|temp_out[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[2]~40_combout\ = (\alu_1|temp_out[2]~67_combout\) # ((!aluop(1) & \alu_1|temp_out[2]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aluop(1),
	datac => \alu_1|temp_out[2]~39_combout\,
	datad => \alu_1|temp_out[2]~67_combout\,
	combout => \alu_1|temp_out[2]~40_combout\);

-- Location: LCCOMB_X25_Y19_N28
\t1|dout[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|dout\(2) = (\alu_en~combout\ & ((\alu_1|temp_out[2]~40_combout\))) # (!\alu_en~combout\ & (\t1|dout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|dout\(2),
	datac => \alu_1|temp_out[2]~40_combout\,
	datad => \alu_en~combout\,
	combout => \t1|dout\(2));

-- Location: LCCOMB_X24_Y19_N0
\m_9|outp[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_9|outp[2]~0_combout\ = (\pcsrc~combout\ & (\t1|dout\(2))) # (!\pcsrc~combout\ & ((\alu_1|temp_out[2]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pcsrc~combout\,
	datac => \t1|dout\(2),
	datad => \alu_1|temp_out[2]~40_combout\,
	combout => \m_9|outp[2]~0_combout\);

-- Location: LCCOMB_X25_Y19_N14
\pc|dout[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|dout\(2) = (\pcwr~combout\ & (\m_9|outp[2]~0_combout\)) # (!\pcwr~combout\ & ((\pc|dout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcwr~combout\,
	datab => \m_9|outp[2]~0_combout\,
	datad => \pc|dout\(2),
	combout => \pc|dout\(2));

-- Location: LCCOMB_X25_Y19_N26
\m_1|outp[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_1|outp[2]~0_combout\ = (!iord(1) & ((iord(0) & ((\t1|dout\(2)))) # (!iord(0) & (\pc|dout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => iord(0),
	datab => iord(1),
	datac => \pc|dout\(2),
	datad => \t1|dout\(2),
	combout => \m_1|outp[2]~0_combout\);

-- Location: LCCOMB_X25_Y19_N4
\m_1|outp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_1|outp[2]~1_combout\ = (\m_1|outp[2]~0_combout\) # ((\input[2]~input_o\ & (!iord(0) & iord(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => iord(0),
	datac => \m_1|outp[2]~0_combout\,
	datad => iord(1),
	combout => \m_1|outp[2]~1_combout\);

-- Location: LCCOMB_X24_Y22_N12
\mem|mem_reg[1][6]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][6]~155_combout\ = (\m_2|outp[6]~12_combout\) # ((!\mem|Decoder0~6_combout\) # (!\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[6]~12_combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~6_combout\,
	combout => \mem|mem_reg[1][6]~155_combout\);

-- Location: LCCOMB_X24_Y22_N4
\mem|mem_reg[1][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][6]~combout\ = (GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & (\mem|mem_reg[1][6]~155_combout\)) # (!GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & ((\mem|mem_reg[1][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[1][6]~155_combout\,
	datab => \mem|mem_reg[1][6]~combout\,
	datad => \mem|mem_reg[1][0]~11clkctrl_outclk\,
	combout => \mem|mem_reg[1][6]~combout\);

-- Location: LCCOMB_X23_Y23_N4
\mem|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux9~2_combout\ = (\m_1|outp[2]~1_combout\ & ((\mem|mem_reg[5][6]~combout\) # ((\m_1|outp[3]~3_combout\)))) # (!\m_1|outp[2]~1_combout\ & (((!\m_1|outp[3]~3_combout\ & \mem|mem_reg[1][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[5][6]~combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \mem|mem_reg[1][6]~combout\,
	combout => \mem|Mux9~2_combout\);

-- Location: LCCOMB_X29_Y24_N12
\mem|mem_reg[13][6]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][6]~156_combout\ = (\memwr~combout\ & (\input[22]~input_o\ & (\mem|Decoder0~7_combout\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datab => \input[22]~input_o\,
	datac => \mem|Decoder0~7_combout\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[13][6]~156_combout\);

-- Location: LCCOMB_X29_Y24_N30
\mem|mem_reg[13][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][6]~combout\ = (GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & ((\mem|mem_reg[13][6]~156_combout\))) # (!GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & (\mem|mem_reg[13][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[13][6]~combout\,
	datac => \mem|mem_reg[13][6]~156_combout\,
	datad => \mem|mem_reg[13][0]~13clkctrl_outclk\,
	combout => \mem|mem_reg[13][6]~combout\);

-- Location: LCCOMB_X25_Y25_N2
\mem|mem_reg[9][6]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][6]~154_combout\ = (\m_2|outp[4]~1_combout\ & (\input[22]~input_o\ & (\memwr~combout\ & \mem|Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[22]~input_o\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~4_combout\,
	combout => \mem|mem_reg[9][6]~154_combout\);

-- Location: LCCOMB_X25_Y25_N8
\mem|mem_reg[9][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][6]~combout\ = (GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & (\mem|mem_reg[9][6]~154_combout\)) # (!GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & ((\mem|mem_reg[9][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[9][6]~154_combout\,
	datac => \mem|mem_reg[9][6]~combout\,
	datad => \mem|mem_reg[9][0]~8clkctrl_outclk\,
	combout => \mem|mem_reg[9][6]~combout\);

-- Location: LCCOMB_X23_Y23_N14
\mem|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux9~3_combout\ = (\m_1|outp[3]~3_combout\ & ((\mem|Mux9~2_combout\ & (\mem|mem_reg[13][6]~combout\)) # (!\mem|Mux9~2_combout\ & ((\mem|mem_reg[9][6]~combout\))))) # (!\m_1|outp[3]~3_combout\ & (\mem|Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~3_combout\,
	datab => \mem|Mux9~2_combout\,
	datac => \mem|mem_reg[13][6]~combout\,
	datad => \mem|mem_reg[9][6]~combout\,
	combout => \mem|Mux9~3_combout\);

-- Location: LCCOMB_X23_Y23_N28
\mem|mem_reg[0][6]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][6]~158_combout\ = (\m_2|outp[6]~12_combout\) # ((!\mem|Decoder0~10_combout\) # (!\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[6]~12_combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~10_combout\,
	combout => \mem|mem_reg[0][6]~158_combout\);

-- Location: LCCOMB_X23_Y23_N26
\mem|mem_reg[0][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][6]~combout\ = (GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & (\mem|mem_reg[0][6]~158_combout\)) # (!GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & ((\mem|mem_reg[0][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[0][6]~158_combout\,
	datac => \mem|mem_reg[0][6]~combout\,
	datad => \mem|mem_reg[0][0]~18clkctrl_outclk\,
	combout => \mem|mem_reg[0][6]~combout\);

-- Location: LCCOMB_X23_Y23_N24
\mem|mem_reg[8][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[8][6]~combout\ = (GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & (\m_2|outp[6]~12_combout\)) # (!GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & ((\mem|mem_reg[8][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[6]~12_combout\,
	datab => \mem|mem_reg[8][6]~combout\,
	datad => \mem|mem_reg[8][0]~16clkctrl_outclk\,
	combout => \mem|mem_reg[8][6]~combout\);

-- Location: LCCOMB_X23_Y23_N12
\mem|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux9~4_combout\ = (\m_1|outp[3]~3_combout\ & ((\m_1|outp[2]~1_combout\) # ((\mem|mem_reg[8][6]~combout\)))) # (!\m_1|outp[3]~3_combout\ & (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[0][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~3_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|mem_reg[0][6]~combout\,
	datad => \mem|mem_reg[8][6]~combout\,
	combout => \mem|Mux9~4_combout\);

-- Location: LCCOMB_X27_Y24_N26
\mem|mem_reg[12][6]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][6]~159_combout\ = (\input[22]~input_o\ & (\m_1|outp[3]~3_combout\ & (\m_2|outp[4]~1_combout\ & \memwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[22]~input_o\,
	datab => \m_1|outp[3]~3_combout\,
	datac => \m_2|outp[4]~1_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[12][6]~159_combout\);

-- Location: LCCOMB_X27_Y24_N8
\mem|mem_reg[12][6]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][6]~160_combout\ = (\mem|mem_reg[12][6]~159_combout\ & (!\m_1|outp[1]~5_combout\ & (!\m_1|outp[0]~7_combout\ & \m_1|outp[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[12][6]~159_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \m_1|outp[2]~1_combout\,
	combout => \mem|mem_reg[12][6]~160_combout\);

-- Location: LCCOMB_X27_Y24_N12
\mem|mem_reg[12][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][6]~combout\ = (GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & (\mem|mem_reg[12][6]~160_combout\)) # (!GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & ((\mem|mem_reg[12][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[12][6]~160_combout\,
	datab => \mem|mem_reg[12][6]~combout\,
	datad => \mem|mem_reg[12][0]~20clkctrl_outclk\,
	combout => \mem|mem_reg[12][6]~combout\);

-- Location: LCCOMB_X25_Y25_N16
\mem|mem_reg[4][6]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][6]~157_combout\ = (\m_2|outp[4]~1_combout\ & (\input[22]~input_o\ & (\memwr~combout\ & \mem|Decoder0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[22]~input_o\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~8_combout\,
	combout => \mem|mem_reg[4][6]~157_combout\);

-- Location: LCCOMB_X25_Y25_N10
\mem|mem_reg[4][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][6]~combout\ = (GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & ((\mem|mem_reg[4][6]~157_combout\))) # (!GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & (\mem|mem_reg[4][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[4][6]~combout\,
	datac => \mem|mem_reg[4][6]~157_combout\,
	datad => \mem|mem_reg[4][0]~15clkctrl_outclk\,
	combout => \mem|mem_reg[4][6]~combout\);

-- Location: LCCOMB_X23_Y23_N18
\mem|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux9~5_combout\ = (\mem|Mux9~4_combout\ & (((\mem|mem_reg[12][6]~combout\)) # (!\m_1|outp[2]~1_combout\))) # (!\mem|Mux9~4_combout\ & (\m_1|outp[2]~1_combout\ & ((\mem|mem_reg[4][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux9~4_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|mem_reg[12][6]~combout\,
	datad => \mem|mem_reg[4][6]~combout\,
	combout => \mem|Mux9~5_combout\);

-- Location: LCCOMB_X23_Y23_N16
\mem|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux9~6_combout\ = (\m_1|outp[1]~5_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~5_combout\ & ((\m_1|outp[0]~7_combout\ & (\mem|Mux9~3_combout\)) # (!\m_1|outp[0]~7_combout\ & ((\mem|Mux9~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \mem|Mux9~3_combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \mem|Mux9~5_combout\,
	combout => \mem|Mux9~6_combout\);

-- Location: LCCOMB_X23_Y24_N28
\mem|mem_reg[6][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[6][6]~combout\ = (GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & (\m_2|outp[6]~12_combout\)) # (!GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & ((\mem|mem_reg[6][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[6]~12_combout\,
	datac => \mem|mem_reg[6][0]~0clkctrl_outclk\,
	datad => \mem|mem_reg[6][6]~combout\,
	combout => \mem|mem_reg[6][6]~combout\);

-- Location: LCCOMB_X24_Y22_N20
\mem|mem_reg[2][6]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][6]~152_combout\ = ((\m_2|outp[6]~12_combout\) # (!\memwr~combout\)) # (!\mem|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~2_combout\,
	datab => \memwr~combout\,
	datad => \m_2|outp[6]~12_combout\,
	combout => \mem|mem_reg[2][6]~152_combout\);

-- Location: LCCOMB_X24_Y22_N8
\mem|mem_reg[2][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][6]~combout\ = (GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & (\mem|mem_reg[2][6]~152_combout\)) # (!GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & ((\mem|mem_reg[2][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[2][6]~152_combout\,
	datac => \mem|mem_reg[2][6]~combout\,
	datad => \mem|mem_reg[2][0]~4clkctrl_outclk\,
	combout => \mem|mem_reg[2][6]~combout\);

-- Location: LCCOMB_X24_Y22_N16
\mem|mem_reg[10][6]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][6]~151_combout\ = (\m_2|outp[6]~12_combout\) # ((!\mem|Decoder0~1_combout\) # (!\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[6]~12_combout\,
	datab => \memwr~combout\,
	datad => \mem|Decoder0~1_combout\,
	combout => \mem|mem_reg[10][6]~151_combout\);

-- Location: LCCOMB_X24_Y22_N2
\mem|mem_reg[10][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][6]~combout\ = (GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & (\mem|mem_reg[10][6]~151_combout\)) # (!GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & ((\mem|mem_reg[10][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[10][6]~151_combout\,
	datac => \mem|mem_reg[10][0]~2clkctrl_outclk\,
	datad => \mem|mem_reg[10][6]~combout\,
	combout => \mem|mem_reg[10][6]~combout\);

-- Location: LCCOMB_X24_Y22_N10
\mem|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux9~0_combout\ = (\m_1|outp[2]~1_combout\ & (\m_1|outp[3]~3_combout\)) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~3_combout\ & ((\mem|mem_reg[10][6]~combout\))) # (!\m_1|outp[3]~3_combout\ & (\mem|mem_reg[2][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \m_1|outp[3]~3_combout\,
	datac => \mem|mem_reg[2][6]~combout\,
	datad => \mem|mem_reg[10][6]~combout\,
	combout => \mem|Mux9~0_combout\);

-- Location: LCCOMB_X29_Y20_N0
\mem|mem_reg[14][6]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][6]~153_combout\ = ((\m_2|outp[6]~12_combout\) # (!\memwr~combout\)) # (!\mem|Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~3_combout\,
	datac => \memwr~combout\,
	datad => \m_2|outp[6]~12_combout\,
	combout => \mem|mem_reg[14][6]~153_combout\);

-- Location: LCCOMB_X29_Y20_N10
\mem|mem_reg[14][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][6]~combout\ = (GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & ((\mem|mem_reg[14][6]~153_combout\))) # (!GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & (\mem|mem_reg[14][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[14][6]~combout\,
	datac => \mem|mem_reg[14][6]~153_combout\,
	datad => \mem|mem_reg[14][0]~6clkctrl_outclk\,
	combout => \mem|mem_reg[14][6]~combout\);

-- Location: LCCOMB_X23_Y23_N2
\mem|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux9~1_combout\ = (\m_1|outp[2]~1_combout\ & ((\mem|Mux9~0_combout\ & ((\mem|mem_reg[14][6]~combout\))) # (!\mem|Mux9~0_combout\ & (\mem|mem_reg[6][6]~combout\)))) # (!\m_1|outp[2]~1_combout\ & (((\mem|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|mem_reg[6][6]~combout\,
	datac => \mem|Mux9~0_combout\,
	datad => \mem|mem_reg[14][6]~combout\,
	combout => \mem|Mux9~1_combout\);

-- Location: LCCOMB_X26_Y26_N14
\mem|mem_reg[15][6]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][6]~163_combout\ = (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & (\input[22]~input_o\ & \mem|Decoder0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \memwr~combout\,
	datac => \input[22]~input_o\,
	datad => \mem|Decoder0~15_combout\,
	combout => \mem|mem_reg[15][6]~163_combout\);

-- Location: LCCOMB_X26_Y26_N30
\mem|mem_reg[15][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][6]~combout\ = (GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & (\mem|mem_reg[15][6]~163_combout\)) # (!GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & ((\mem|mem_reg[15][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[15][6]~163_combout\,
	datac => \mem|mem_reg[15][6]~combout\,
	datad => \mem|mem_reg[15][0]~27clkctrl_outclk\,
	combout => \mem|mem_reg[15][6]~combout\);

-- Location: LCCOMB_X28_Y23_N2
\mem|mem_reg[3][6]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][6]~162_combout\ = (\mem|Decoder0~14_combout\ & (\input[22]~input_o\ & (\m_2|outp[4]~1_combout\ & \memwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~14_combout\,
	datab => \input[22]~input_o\,
	datac => \m_2|outp[4]~1_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[3][6]~162_combout\);

-- Location: LCCOMB_X28_Y23_N6
\mem|mem_reg[3][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][6]~combout\ = (GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & ((\mem|mem_reg[3][6]~162_combout\))) # (!GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & (\mem|mem_reg[3][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[3][6]~combout\,
	datac => \mem|mem_reg[3][0]~25clkctrl_outclk\,
	datad => \mem|mem_reg[3][6]~162_combout\,
	combout => \mem|mem_reg[3][6]~combout\);

-- Location: LCCOMB_X23_Y24_N24
\mem|mem_reg[7][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[7][6]~combout\ = (GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & (\m_2|outp[6]~12_combout\)) # (!GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & ((\mem|mem_reg[7][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[6]~12_combout\,
	datac => \mem|mem_reg[7][6]~combout\,
	datad => \mem|mem_reg[7][0]~23clkctrl_outclk\,
	combout => \mem|mem_reg[7][6]~combout\);

-- Location: LCCOMB_X23_Y23_N22
\mem|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux9~7_combout\ = (\m_1|outp[2]~1_combout\ & (((\m_1|outp[3]~3_combout\) # (\mem|mem_reg[7][6]~combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[3][6]~combout\ & (!\m_1|outp[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|mem_reg[3][6]~combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \mem|mem_reg[7][6]~combout\,
	combout => \mem|Mux9~7_combout\);

-- Location: LCCOMB_X29_Y23_N30
\mem|mem_reg[11][6]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][6]~161_combout\ = (\input[22]~input_o\ & (\memwr~combout\ & (\m_2|outp[4]~1_combout\ & \mem|Decoder0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[22]~input_o\,
	datab => \memwr~combout\,
	datac => \m_2|outp[4]~1_combout\,
	datad => \mem|Decoder0~12_combout\,
	combout => \mem|mem_reg[11][6]~161_combout\);

-- Location: LCCOMB_X29_Y23_N0
\mem|mem_reg[11][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][6]~combout\ = (GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & (\mem|mem_reg[11][6]~161_combout\)) # (!GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & ((\mem|mem_reg[11][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[11][6]~161_combout\,
	datac => \mem|mem_reg[11][6]~combout\,
	datad => \mem|mem_reg[11][0]~22clkctrl_outclk\,
	combout => \mem|mem_reg[11][6]~combout\);

-- Location: LCCOMB_X23_Y23_N8
\mem|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux9~8_combout\ = (\m_1|outp[3]~3_combout\ & ((\mem|Mux9~7_combout\ & (\mem|mem_reg[15][6]~combout\)) # (!\mem|Mux9~7_combout\ & ((\mem|mem_reg[11][6]~combout\))))) # (!\m_1|outp[3]~3_combout\ & (((\mem|Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~3_combout\,
	datab => \mem|mem_reg[15][6]~combout\,
	datac => \mem|Mux9~7_combout\,
	datad => \mem|mem_reg[11][6]~combout\,
	combout => \mem|Mux9~8_combout\);

-- Location: LCCOMB_X23_Y23_N10
\mem|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux9~9_combout\ = (\m_1|outp[1]~5_combout\ & ((\mem|Mux9~6_combout\ & ((\mem|Mux9~8_combout\))) # (!\mem|Mux9~6_combout\ & (\mem|Mux9~1_combout\)))) # (!\m_1|outp[1]~5_combout\ & (\mem|Mux9~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \mem|Mux9~6_combout\,
	datac => \mem|Mux9~1_combout\,
	datad => \mem|Mux9~8_combout\,
	combout => \mem|Mux9~9_combout\);

-- Location: LCCOMB_X23_Y23_N6
\mem|do[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|do\(6) = (GLOBAL(\mem|do[15]~0clkctrl_outclk\) & (\mem|Mux9~9_combout\)) # (!GLOBAL(\mem|do[15]~0clkctrl_outclk\) & ((\mem|do\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux9~9_combout\,
	datac => \mem|do[15]~0clkctrl_outclk\,
	datad => \mem|do\(6),
	combout => \mem|do\(6));

-- Location: LCCOMB_X23_Y23_N20
\ir_1|r_1|dout[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_1|r_1|dout\(6) = (\irwr~combout\ & (\mem|do\(6))) # (!\irwr~combout\ & ((\ir_1|r_1|dout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|do\(6),
	datac => \irwr~combout\,
	datad => \ir_1|r_1|dout\(6),
	combout => \ir_1|r_1|dout\(6));

-- Location: LCCOMB_X23_Y19_N24
\priorityin[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[6]~16_combout\ = (priorityin(6) & (((\p_1|outp\(0)) # (!\p_1|outp\(1))) # (!\p_1|outp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_1|outp\(2),
	datab => \p_1|outp\(0),
	datac => \p_1|outp\(1),
	datad => priorityin(6),
	combout => \priorityin[6]~16_combout\);

-- Location: LCCOMB_X23_Y23_N0
\priorityin[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[6]~17_combout\ = (state(0) & ((\Equal0~4_combout\ & (\ir_1|r_1|dout\(6))) # (!\Equal0~4_combout\ & ((\priorityin[6]~16_combout\))))) # (!state(0) & (((\priorityin[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \ir_1|r_1|dout\(6),
	datac => \Equal0~4_combout\,
	datad => \priorityin[6]~16_combout\,
	combout => \priorityin[6]~17_combout\);

-- Location: LCCOMB_X26_Y19_N2
\priorityin[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[1]~2_combout\ = (state(3)) # ((state(4) & ((!state(2)) # (!state(1)))) # (!state(4) & ((state(1)) # (state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(1),
	datac => state(2),
	datad => state(3),
	combout => \priorityin[1]~2_combout\);

-- Location: LCCOMB_X23_Y22_N0
\priorityin[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[1]~3_combout\ = (\priorityin[1]~2_combout\) # (!state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \priorityin[1]~2_combout\,
	datad => state(0),
	combout => \priorityin[1]~3_combout\);

-- Location: LCCOMB_X23_Y23_N30
\priorityin[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- priorityin(6) = (\priorityin[1]~3_combout\ & ((priorityin(6)))) # (!\priorityin[1]~3_combout\ & (\priorityin[6]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \priorityin[6]~17_combout\,
	datac => priorityin(6),
	datad => \priorityin[1]~3_combout\,
	combout => priorityin(6));

-- Location: LCCOMB_X23_Y19_N8
\priorityin[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[5]~0_combout\ = (priorityin(5) & (((\p_1|outp\(1)) # (!\p_1|outp\(2))) # (!\p_1|outp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => priorityin(5),
	datab => \p_1|outp\(0),
	datac => \p_1|outp\(1),
	datad => \p_1|outp\(2),
	combout => \priorityin[5]~0_combout\);

-- Location: LCCOMB_X23_Y19_N14
\priorityin[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[5]~1_combout\ = (state(0) & ((\Equal0~4_combout\ & ((\ir_1|r_1|dout\(5)))) # (!\Equal0~4_combout\ & (\priorityin[5]~0_combout\)))) # (!state(0) & (((\priorityin[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Equal0~4_combout\,
	datac => \priorityin[5]~0_combout\,
	datad => \ir_1|r_1|dout\(5),
	combout => \priorityin[5]~1_combout\);

-- Location: LCCOMB_X23_Y22_N26
\priorityin[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- priorityin(5) = (\priorityin[1]~3_combout\ & ((priorityin(5)))) # (!\priorityin[1]~3_combout\ & (\priorityin[5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \priorityin[5]~1_combout\,
	datac => priorityin(5),
	datad => \priorityin[1]~3_combout\,
	combout => priorityin(5));

-- Location: LCCOMB_X23_Y19_N26
\priorityin[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[4]~14_combout\ = (priorityin(4) & (((\p_1|outp\(0)) # (\p_1|outp\(1))) # (!\p_1|outp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_1|outp\(2),
	datab => \p_1|outp\(0),
	datac => \p_1|outp\(1),
	datad => priorityin(4),
	combout => \priorityin[4]~14_combout\);

-- Location: IOIBUF_X31_Y34_N8
\input[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(20),
	o => \input[20]~input_o\);

-- Location: LCCOMB_X26_Y24_N28
\mem|mem_reg[9][4]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][4]~139_combout\ = (\input[20]~input_o\ & (\mem|Decoder0~4_combout\ & (\memwr~combout\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[20]~input_o\,
	datab => \mem|Decoder0~4_combout\,
	datac => \memwr~combout\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[9][4]~139_combout\);

-- Location: LCCOMB_X26_Y24_N10
\mem|mem_reg[9][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][4]~combout\ = (GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & ((\mem|mem_reg[9][4]~139_combout\))) # (!GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & (\mem|mem_reg[9][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[9][4]~combout\,
	datac => \mem|mem_reg[9][0]~8clkctrl_outclk\,
	datad => \mem|mem_reg[9][4]~139_combout\,
	combout => \mem|mem_reg[9][4]~combout\);

-- Location: LCCOMB_X30_Y22_N4
\m_2|outp[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2|outp[4]~11_combout\ = (dcon(1) & (\input[20]~input_o\ & !dcon(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dcon(1),
	datac => \input[20]~input_o\,
	datad => dcon(0),
	combout => \m_2|outp[4]~11_combout\);

-- Location: LCCOMB_X25_Y22_N8
\mem|mem_reg[1][4]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][4]~140_combout\ = (\m_2|outp[4]~11_combout\) # ((!\mem|Decoder0~6_combout\) # (!\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[4]~11_combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~6_combout\,
	combout => \mem|mem_reg[1][4]~140_combout\);

-- Location: LCCOMB_X25_Y22_N30
\mem|mem_reg[1][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][4]~combout\ = (GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & (\mem|mem_reg[1][4]~140_combout\)) # (!GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & ((\mem|mem_reg[1][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[1][4]~140_combout\,
	datac => \mem|mem_reg[1][4]~combout\,
	datad => \mem|mem_reg[1][0]~11clkctrl_outclk\,
	combout => \mem|mem_reg[1][4]~combout\);

-- Location: LCCOMB_X26_Y18_N20
\mem|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux11~0_combout\ = (\m_1|outp[2]~1_combout\ & (((\m_1|outp[3]~3_combout\)))) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~3_combout\ & (\mem|mem_reg[9][4]~combout\)) # (!\m_1|outp[3]~3_combout\ & ((\mem|mem_reg[1][4]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[9][4]~combout\,
	datab => \mem|mem_reg[1][4]~combout\,
	datac => \m_1|outp[2]~1_combout\,
	datad => \m_1|outp[3]~3_combout\,
	combout => \mem|Mux11~0_combout\);

-- Location: LCCOMB_X27_Y18_N20
\mem|mem_reg[5][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[5][4]~combout\ = (GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & (\m_2|outp[4]~11_combout\)) # (!GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & ((\mem|mem_reg[5][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[4]~11_combout\,
	datac => \mem|mem_reg[5][0]~9clkctrl_outclk\,
	datad => \mem|mem_reg[5][4]~combout\,
	combout => \mem|mem_reg[5][4]~combout\);

-- Location: LCCOMB_X30_Y19_N10
\mem|mem_reg[13][4]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][4]~141_combout\ = (\m_2|outp[4]~11_combout\) # ((!\memwr~combout\) # (!\mem|Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[4]~11_combout\,
	datac => \mem|Decoder0~7_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[13][4]~141_combout\);

-- Location: LCCOMB_X30_Y19_N20
\mem|mem_reg[13][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][4]~combout\ = (GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & ((\mem|mem_reg[13][4]~141_combout\))) # (!GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & (\mem|mem_reg[13][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[13][4]~combout\,
	datac => \mem|mem_reg[13][4]~141_combout\,
	datad => \mem|mem_reg[13][0]~13clkctrl_outclk\,
	combout => \mem|mem_reg[13][4]~combout\);

-- Location: LCCOMB_X26_Y18_N30
\mem|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux11~1_combout\ = (\mem|Mux11~0_combout\ & (((\mem|mem_reg[13][4]~combout\)) # (!\m_1|outp[2]~1_combout\))) # (!\mem|Mux11~0_combout\ & (\m_1|outp[2]~1_combout\ & (\mem|mem_reg[5][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux11~0_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|mem_reg[5][4]~combout\,
	datad => \mem|mem_reg[13][4]~combout\,
	combout => \mem|Mux11~1_combout\);

-- Location: LCCOMB_X28_Y18_N4
\mem|mem_reg[7][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[7][4]~combout\ = (GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & (\m_2|outp[4]~11_combout\)) # (!GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & ((\mem|mem_reg[7][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~11_combout\,
	datac => \mem|mem_reg[7][4]~combout\,
	datad => \mem|mem_reg[7][0]~23clkctrl_outclk\,
	combout => \mem|mem_reg[7][4]~combout\);

-- Location: LCCOMB_X29_Y18_N8
\mem|mem_reg[3][4]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][4]~148_combout\ = (\m_2|outp[4]~11_combout\) # ((!\mem|Decoder0~14_combout\) # (!\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~11_combout\,
	datab => \memwr~combout\,
	datac => \mem|Decoder0~14_combout\,
	combout => \mem|mem_reg[3][4]~148_combout\);

-- Location: LCCOMB_X29_Y18_N26
\mem|mem_reg[3][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][4]~combout\ = (GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & (\mem|mem_reg[3][4]~148_combout\)) # (!GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & ((\mem|mem_reg[3][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[3][4]~148_combout\,
	datac => \mem|mem_reg[3][4]~combout\,
	datad => \mem|mem_reg[3][0]~25clkctrl_outclk\,
	combout => \mem|mem_reg[3][4]~combout\);

-- Location: LCCOMB_X26_Y26_N12
\mem|mem_reg[15][4]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][4]~149_combout\ = (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & (\input[20]~input_o\ & \mem|Decoder0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \memwr~combout\,
	datac => \input[20]~input_o\,
	datad => \mem|Decoder0~15_combout\,
	combout => \mem|mem_reg[15][4]~149_combout\);

-- Location: LCCOMB_X26_Y26_N8
\mem|mem_reg[15][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][4]~combout\ = (GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & ((\mem|mem_reg[15][4]~149_combout\))) # (!GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & (\mem|mem_reg[15][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[15][4]~combout\,
	datac => \mem|mem_reg[15][0]~27clkctrl_outclk\,
	datad => \mem|mem_reg[15][4]~149_combout\,
	combout => \mem|mem_reg[15][4]~combout\);

-- Location: LCCOMB_X30_Y22_N26
\mem|mem_reg[11][4]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][4]~150_combout\ = (\memwr~combout\ & (\m_2|outp[4]~1_combout\ & (\input[20]~input_o\ & \mem|Decoder0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \input[20]~input_o\,
	datad => \mem|Decoder0~12_combout\,
	combout => \mem|mem_reg[11][4]~150_combout\);

-- Location: LCCOMB_X30_Y22_N20
\mem|mem_reg[11][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][4]~combout\ = (GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & (\mem|mem_reg[11][4]~150_combout\)) # (!GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & ((\mem|mem_reg[11][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[11][4]~150_combout\,
	datab => \mem|mem_reg[11][4]~combout\,
	datad => \mem|mem_reg[11][0]~22clkctrl_outclk\,
	combout => \mem|mem_reg[11][4]~combout\);

-- Location: LCCOMB_X26_Y18_N22
\mem|Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux11~7_combout\ = (\m_1|outp[2]~1_combout\ & ((\mem|mem_reg[15][4]~combout\) # ((!\m_1|outp[3]~3_combout\)))) # (!\m_1|outp[2]~1_combout\ & (((\mem|mem_reg[11][4]~combout\ & \m_1|outp[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[15][4]~combout\,
	datab => \mem|mem_reg[11][4]~combout\,
	datac => \m_1|outp[2]~1_combout\,
	datad => \m_1|outp[3]~3_combout\,
	combout => \mem|Mux11~7_combout\);

-- Location: LCCOMB_X26_Y18_N24
\mem|Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux11~8_combout\ = (\mem|Mux11~7_combout\ & ((\mem|mem_reg[7][4]~combout\) # ((\m_1|outp[3]~3_combout\)))) # (!\mem|Mux11~7_combout\ & (((\mem|mem_reg[3][4]~combout\ & !\m_1|outp[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[7][4]~combout\,
	datab => \mem|mem_reg[3][4]~combout\,
	datac => \mem|Mux11~7_combout\,
	datad => \m_1|outp[3]~3_combout\,
	combout => \mem|Mux11~8_combout\);

-- Location: LCCOMB_X25_Y18_N18
\mem|mem_reg[4][4]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][4]~145_combout\ = ((\m_2|outp[4]~11_combout\) # (!\mem|Decoder0~8_combout\)) # (!\memwr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datac => \m_2|outp[4]~11_combout\,
	datad => \mem|Decoder0~8_combout\,
	combout => \mem|mem_reg[4][4]~145_combout\);

-- Location: LCCOMB_X25_Y18_N6
\mem|mem_reg[4][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][4]~combout\ = (GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & ((\mem|mem_reg[4][4]~145_combout\))) # (!GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & (\mem|mem_reg[4][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[4][4]~combout\,
	datac => \mem|mem_reg[4][0]~15clkctrl_outclk\,
	datad => \mem|mem_reg[4][4]~145_combout\,
	combout => \mem|mem_reg[4][4]~combout\);

-- Location: LCCOMB_X27_Y24_N2
\mem|mem_reg[0][4]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][4]~146_combout\ = (\input[20]~input_o\ & (\m_2|outp[4]~1_combout\ & (\mem|Decoder0~10_combout\ & \memwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[20]~input_o\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \mem|Decoder0~10_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[0][4]~146_combout\);

-- Location: LCCOMB_X27_Y24_N16
\mem|mem_reg[0][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][4]~combout\ = (GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & ((\mem|mem_reg[0][4]~146_combout\))) # (!GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & (\mem|mem_reg[0][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[0][4]~combout\,
	datac => \mem|mem_reg[0][0]~18clkctrl_outclk\,
	datad => \mem|mem_reg[0][4]~146_combout\,
	combout => \mem|mem_reg[0][4]~combout\);

-- Location: LCCOMB_X26_Y18_N12
\mem|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux11~4_combout\ = (\m_1|outp[3]~3_combout\ & (\m_1|outp[2]~1_combout\)) # (!\m_1|outp[3]~3_combout\ & ((\m_1|outp[2]~1_combout\ & (\mem|mem_reg[4][4]~combout\)) # (!\m_1|outp[2]~1_combout\ & ((\mem|mem_reg[0][4]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~3_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|mem_reg[4][4]~combout\,
	datad => \mem|mem_reg[0][4]~combout\,
	combout => \mem|Mux11~4_combout\);

-- Location: LCCOMB_X28_Y18_N30
\mem|mem_reg[8][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[8][4]~combout\ = (GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & (\m_2|outp[4]~11_combout\)) # (!GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & ((\mem|mem_reg[8][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~11_combout\,
	datac => \mem|mem_reg[8][4]~combout\,
	datad => \mem|mem_reg[8][0]~16clkctrl_outclk\,
	combout => \mem|mem_reg[8][4]~combout\);

-- Location: LCCOMB_X29_Y19_N4
\mem|mem_reg[12][4]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][4]~147_combout\ = ((\m_2|outp[4]~11_combout\) # (!\mem|Decoder0~11_combout\)) # (!\memwr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwr~combout\,
	datac => \mem|Decoder0~11_combout\,
	datad => \m_2|outp[4]~11_combout\,
	combout => \mem|mem_reg[12][4]~147_combout\);

-- Location: LCCOMB_X29_Y19_N24
\mem|mem_reg[12][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][4]~combout\ = (GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & (\mem|mem_reg[12][4]~147_combout\)) # (!GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & ((\mem|mem_reg[12][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[12][4]~147_combout\,
	datab => \mem|mem_reg[12][4]~combout\,
	datad => \mem|mem_reg[12][0]~20clkctrl_outclk\,
	combout => \mem|mem_reg[12][4]~combout\);

-- Location: LCCOMB_X26_Y18_N2
\mem|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux11~5_combout\ = (\mem|Mux11~4_combout\ & (((\mem|mem_reg[12][4]~combout\) # (!\m_1|outp[3]~3_combout\)))) # (!\mem|Mux11~4_combout\ & (\mem|mem_reg[8][4]~combout\ & ((\m_1|outp[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux11~4_combout\,
	datab => \mem|mem_reg[8][4]~combout\,
	datac => \mem|mem_reg[12][4]~combout\,
	datad => \m_1|outp[3]~3_combout\,
	combout => \mem|Mux11~5_combout\);

-- Location: LCCOMB_X30_Y24_N4
\mem|mem_reg[14][4]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][4]~144_combout\ = (\input[20]~input_o\ & (\memwr~combout\ & (\mem|Decoder0~3_combout\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[20]~input_o\,
	datab => \memwr~combout\,
	datac => \mem|Decoder0~3_combout\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[14][4]~144_combout\);

-- Location: LCCOMB_X30_Y24_N2
\mem|mem_reg[14][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][4]~combout\ = (GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & ((\mem|mem_reg[14][4]~144_combout\))) # (!GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & (\mem|mem_reg[14][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[14][4]~combout\,
	datac => \mem|mem_reg[14][4]~144_combout\,
	datad => \mem|mem_reg[14][0]~6clkctrl_outclk\,
	combout => \mem|mem_reg[14][4]~combout\);

-- Location: LCCOMB_X28_Y18_N8
\mem|mem_reg[6][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[6][4]~combout\ = (GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & (\m_2|outp[4]~11_combout\)) # (!GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & ((\mem|mem_reg[6][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~11_combout\,
	datac => \mem|mem_reg[6][0]~0clkctrl_outclk\,
	datad => \mem|mem_reg[6][4]~combout\,
	combout => \mem|mem_reg[6][4]~combout\);

-- Location: LCCOMB_X29_Y19_N20
\mem|mem_reg[2][4]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][4]~143_combout\ = (\m_2|outp[4]~11_combout\) # ((!\memwr~combout\) # (!\mem|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[4]~11_combout\,
	datac => \mem|Decoder0~2_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[2][4]~143_combout\);

-- Location: LCCOMB_X29_Y19_N0
\mem|mem_reg[2][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][4]~combout\ = (GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & (\mem|mem_reg[2][4]~143_combout\)) # (!GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & ((\mem|mem_reg[2][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[2][4]~143_combout\,
	datac => \mem|mem_reg[2][4]~combout\,
	datad => \mem|mem_reg[2][0]~4clkctrl_outclk\,
	combout => \mem|mem_reg[2][4]~combout\);

-- Location: LCCOMB_X26_Y18_N8
\mem|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux11~2_combout\ = (\m_1|outp[3]~3_combout\ & (\m_1|outp[2]~1_combout\)) # (!\m_1|outp[3]~3_combout\ & ((\m_1|outp[2]~1_combout\ & (\mem|mem_reg[6][4]~combout\)) # (!\m_1|outp[2]~1_combout\ & ((\mem|mem_reg[2][4]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~3_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|mem_reg[6][4]~combout\,
	datad => \mem|mem_reg[2][4]~combout\,
	combout => \mem|Mux11~2_combout\);

-- Location: LCCOMB_X30_Y19_N24
\mem|mem_reg[10][4]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][4]~142_combout\ = ((\m_2|outp[4]~11_combout\) # (!\mem|Decoder0~1_combout\)) # (!\memwr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datab => \m_2|outp[4]~11_combout\,
	datad => \mem|Decoder0~1_combout\,
	combout => \mem|mem_reg[10][4]~142_combout\);

-- Location: LCCOMB_X30_Y19_N30
\mem|mem_reg[10][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][4]~combout\ = (GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & ((\mem|mem_reg[10][4]~142_combout\))) # (!GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & (\mem|mem_reg[10][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[10][4]~combout\,
	datac => \mem|mem_reg[10][0]~2clkctrl_outclk\,
	datad => \mem|mem_reg[10][4]~142_combout\,
	combout => \mem|mem_reg[10][4]~combout\);

-- Location: LCCOMB_X26_Y18_N10
\mem|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux11~3_combout\ = (\mem|Mux11~2_combout\ & ((\mem|mem_reg[14][4]~combout\) # ((!\m_1|outp[3]~3_combout\)))) # (!\mem|Mux11~2_combout\ & (((\mem|mem_reg[10][4]~combout\ & \m_1|outp[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[14][4]~combout\,
	datab => \mem|Mux11~2_combout\,
	datac => \mem|mem_reg[10][4]~combout\,
	datad => \m_1|outp[3]~3_combout\,
	combout => \mem|Mux11~3_combout\);

-- Location: LCCOMB_X26_Y18_N0
\mem|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux11~6_combout\ = (\m_1|outp[1]~5_combout\ & (((\mem|Mux11~3_combout\) # (\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~5_combout\ & (\mem|Mux11~5_combout\ & ((!\m_1|outp[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \mem|Mux11~5_combout\,
	datac => \mem|Mux11~3_combout\,
	datad => \m_1|outp[0]~7_combout\,
	combout => \mem|Mux11~6_combout\);

-- Location: LCCOMB_X26_Y18_N6
\mem|Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux11~9_combout\ = (\mem|Mux11~6_combout\ & (((\mem|Mux11~8_combout\) # (!\m_1|outp[0]~7_combout\)))) # (!\mem|Mux11~6_combout\ & (\mem|Mux11~1_combout\ & ((\m_1|outp[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux11~1_combout\,
	datab => \mem|Mux11~8_combout\,
	datac => \mem|Mux11~6_combout\,
	datad => \m_1|outp[0]~7_combout\,
	combout => \mem|Mux11~9_combout\);

-- Location: LCCOMB_X26_Y18_N26
\mem|do[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|do\(4) = (GLOBAL(\mem|do[15]~0clkctrl_outclk\) & (\mem|Mux11~9_combout\)) # (!GLOBAL(\mem|do[15]~0clkctrl_outclk\) & ((\mem|do\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux11~9_combout\,
	datac => \mem|do\(4),
	datad => \mem|do[15]~0clkctrl_outclk\,
	combout => \mem|do\(4));

-- Location: LCCOMB_X26_Y18_N4
\ir_1|r_1|dout[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_1|r_1|dout\(4) = (\irwr~combout\ & ((\mem|do\(4)))) # (!\irwr~combout\ & (\ir_1|r_1|dout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_1|r_1|dout\(4),
	datac => \mem|do\(4),
	datad => \irwr~combout\,
	combout => \ir_1|r_1|dout\(4));

-- Location: LCCOMB_X23_Y19_N22
\priorityin[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[4]~15_combout\ = (state(0) & ((\Equal0~4_combout\ & ((\ir_1|r_1|dout\(4)))) # (!\Equal0~4_combout\ & (\priorityin[4]~14_combout\)))) # (!state(0) & (((\priorityin[4]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Equal0~4_combout\,
	datac => \priorityin[4]~14_combout\,
	datad => \ir_1|r_1|dout\(4),
	combout => \priorityin[4]~15_combout\);

-- Location: LCCOMB_X23_Y22_N22
\priorityin[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- priorityin(4) = (\priorityin[1]~3_combout\ & ((priorityin(4)))) # (!\priorityin[1]~3_combout\ & (\priorityin[4]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \priorityin[4]~15_combout\,
	datac => priorityin(4),
	datad => \priorityin[1]~3_combout\,
	combout => priorityin(4));

-- Location: LCCOMB_X23_Y22_N24
\p_1|outp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_1|outp~2_combout\ = (!priorityin(3) & ((priorityin(4)) # ((priorityin(6) & !priorityin(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => priorityin(6),
	datab => priorityin(5),
	datac => priorityin(4),
	datad => priorityin(3),
	combout => \p_1|outp~2_combout\);

-- Location: LCCOMB_X23_Y22_N8
\priorityin[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[2]~10_combout\ = (priorityin(2) & ((\p_1|outp\(0)) # ((\p_1|outp\(2)) # (!\p_1|outp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => priorityin(2),
	datab => \p_1|outp\(0),
	datac => \p_1|outp\(2),
	datad => \p_1|outp\(1),
	combout => \priorityin[2]~10_combout\);

-- Location: LCCOMB_X24_Y22_N26
\priorityin[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[2]~11_combout\ = (state(0) & ((\Equal0~4_combout\ & ((\ir_1|r_1|dout\(2)))) # (!\Equal0~4_combout\ & (\priorityin[2]~10_combout\)))) # (!state(0) & (\priorityin[2]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \priorityin[2]~10_combout\,
	datab => state(0),
	datac => \ir_1|r_1|dout\(2),
	datad => \Equal0~4_combout\,
	combout => \priorityin[2]~11_combout\);

-- Location: LCCOMB_X23_Y22_N18
\priorityin[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- priorityin(2) = (\priorityin[1]~3_combout\ & ((priorityin(2)))) # (!\priorityin[1]~3_combout\ & (\priorityin[2]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \priorityin[2]~11_combout\,
	datac => priorityin(2),
	datad => \priorityin[1]~3_combout\,
	combout => priorityin(2));

-- Location: LCCOMB_X23_Y19_N16
\priorityin[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[0]~8_combout\ = (priorityin(0) & ((\p_1|outp\(2)) # ((\p_1|outp\(0)) # (\p_1|outp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_1|outp\(2),
	datab => \p_1|outp\(0),
	datac => \p_1|outp\(1),
	datad => priorityin(0),
	combout => \priorityin[0]~8_combout\);

-- Location: LCCOMB_X23_Y19_N12
\priorityin[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[0]~9_combout\ = (state(0) & ((\Equal0~4_combout\ & (\ir_1|r_1|dout\(0))) # (!\Equal0~4_combout\ & ((\priorityin[0]~8_combout\))))) # (!state(0) & (((\priorityin[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Equal0~4_combout\,
	datac => \ir_1|r_1|dout\(0),
	datad => \priorityin[0]~8_combout\,
	combout => \priorityin[0]~9_combout\);

-- Location: LCCOMB_X23_Y22_N4
\priorityin[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- priorityin(0) = (\priorityin[1]~3_combout\ & (priorityin(0))) # (!\priorityin[1]~3_combout\ & ((\priorityin[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => priorityin(0),
	datac => \priorityin[0]~9_combout\,
	datad => \priorityin[1]~3_combout\,
	combout => priorityin(0));

-- Location: LCCOMB_X23_Y22_N16
\p_1|outp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_1|outp~3_combout\ = (priorityin(0)) # ((!priorityin(1) & ((\p_1|outp~2_combout\) # (priorityin(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => priorityin(1),
	datab => \p_1|outp~2_combout\,
	datac => priorityin(2),
	datad => priorityin(0),
	combout => \p_1|outp~3_combout\);

-- Location: LCCOMB_X23_Y22_N12
\Equal35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal35~0_combout\ = (priorityin(0)) # ((priorityin(2)) # ((priorityin(1)) # (priorityin(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => priorityin(0),
	datab => priorityin(2),
	datac => priorityin(1),
	datad => priorityin(3),
	combout => \Equal35~0_combout\);

-- Location: LCCOMB_X23_Y22_N28
\Equal35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal35~1_combout\ = (priorityin(4)) # (priorityin(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => priorityin(4),
	datac => priorityin(6),
	combout => \Equal35~1_combout\);

-- Location: IOIBUF_X34_Y34_N15
\input[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(23),
	o => \input[23]~input_o\);

-- Location: LCCOMB_X29_Y22_N26
\mem|mem_reg[2][7]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][7]~83_combout\ = (\memwr~combout\ & (\input[23]~input_o\ & (\mem|Decoder0~2_combout\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datab => \input[23]~input_o\,
	datac => \mem|Decoder0~2_combout\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[2][7]~83_combout\);

-- Location: LCCOMB_X29_Y22_N22
\mem|mem_reg[2][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][7]~combout\ = (GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & ((\mem|mem_reg[2][7]~83_combout\))) # (!GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & (\mem|mem_reg[2][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[2][7]~combout\,
	datac => \mem|mem_reg[2][7]~83_combout\,
	datad => \mem|mem_reg[2][0]~4clkctrl_outclk\,
	combout => \mem|mem_reg[2][7]~combout\);

-- Location: LCCOMB_X28_Y22_N24
\mem|mem_reg[0][7]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][7]~84_combout\ = (\memwr~combout\ & (\mem|Decoder0~10_combout\ & (\input[23]~input_o\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datab => \mem|Decoder0~10_combout\,
	datac => \input[23]~input_o\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[0][7]~84_combout\);

-- Location: LCCOMB_X28_Y22_N22
\mem|mem_reg[0][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][7]~combout\ = (GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & ((\mem|mem_reg[0][7]~84_combout\))) # (!GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & (\mem|mem_reg[0][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[0][7]~combout\,
	datac => \mem|mem_reg[0][0]~18clkctrl_outclk\,
	datad => \mem|mem_reg[0][7]~84_combout\,
	combout => \mem|mem_reg[0][7]~combout\);

-- Location: LCCOMB_X29_Y22_N10
\mem|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux8~4_combout\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[1]~5_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~5_combout\ & (\mem|mem_reg[2][7]~combout\)) # (!\m_1|outp[1]~5_combout\ & ((\mem|mem_reg[0][7]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[2][7]~combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_1|outp[1]~5_combout\,
	datad => \mem|mem_reg[0][7]~combout\,
	combout => \mem|Mux8~4_combout\);

-- Location: LCCOMB_X27_Y18_N8
\mem|mem_reg[3][7]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][7]~85_combout\ = (\mem|Decoder0~14_combout\ & (\input[23]~input_o\ & (\memwr~combout\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~14_combout\,
	datab => \input[23]~input_o\,
	datac => \memwr~combout\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[3][7]~85_combout\);

-- Location: LCCOMB_X27_Y18_N24
\mem|mem_reg[3][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][7]~combout\ = (GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & (\mem|mem_reg[3][7]~85_combout\)) # (!GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & ((\mem|mem_reg[3][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[3][7]~85_combout\,
	datac => \mem|mem_reg[3][7]~combout\,
	datad => \mem|mem_reg[3][0]~25clkctrl_outclk\,
	combout => \mem|mem_reg[3][7]~combout\);

-- Location: LCCOMB_X28_Y23_N16
\m_2|outp[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2|outp[7]~6_combout\ = (\input[23]~input_o\ & (!dcon(0) & dcon(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[23]~input_o\,
	datac => dcon(0),
	datad => dcon(1),
	combout => \m_2|outp[7]~6_combout\);

-- Location: LCCOMB_X25_Y22_N12
\mem|mem_reg[1][7]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][7]~82_combout\ = (\m_2|outp[7]~6_combout\) # ((!\mem|Decoder0~6_combout\) # (!\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[7]~6_combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~6_combout\,
	combout => \mem|mem_reg[1][7]~82_combout\);

-- Location: LCCOMB_X25_Y22_N14
\mem|mem_reg[1][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][7]~combout\ = (GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & (\mem|mem_reg[1][7]~82_combout\)) # (!GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & ((\mem|mem_reg[1][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[1][7]~82_combout\,
	datac => \mem|mem_reg[1][7]~combout\,
	datad => \mem|mem_reg[1][0]~11clkctrl_outclk\,
	combout => \mem|mem_reg[1][7]~combout\);

-- Location: LCCOMB_X29_Y22_N12
\mem|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux8~5_combout\ = (\mem|Mux8~4_combout\ & ((\mem|mem_reg[3][7]~combout\) # ((!\m_1|outp[0]~7_combout\)))) # (!\mem|Mux8~4_combout\ & (((\m_1|outp[0]~7_combout\ & \mem|mem_reg[1][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux8~4_combout\,
	datab => \mem|mem_reg[3][7]~combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \mem|mem_reg[1][7]~combout\,
	combout => \mem|Mux8~5_combout\);

-- Location: LCCOMB_X29_Y22_N4
\mem|mem_reg[8][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[8][7]~combout\ = (GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & (\m_2|outp[7]~6_combout\)) # (!GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & ((\mem|mem_reg[8][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[7]~6_combout\,
	datac => \mem|mem_reg[8][7]~combout\,
	datad => \mem|mem_reg[8][0]~16clkctrl_outclk\,
	combout => \mem|mem_reg[8][7]~combout\);

-- Location: LCCOMB_X29_Y25_N10
\mem|mem_reg[10][7]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][7]~80_combout\ = (\m_2|outp[4]~1_combout\ & (\input[23]~input_o\ & (\memwr~combout\ & \mem|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[23]~input_o\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~1_combout\,
	combout => \mem|mem_reg[10][7]~80_combout\);

-- Location: LCCOMB_X29_Y25_N6
\mem|mem_reg[10][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][7]~combout\ = (GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & (\mem|mem_reg[10][7]~80_combout\)) # (!GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & ((\mem|mem_reg[10][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[10][7]~80_combout\,
	datac => \mem|mem_reg[10][0]~2clkctrl_outclk\,
	datad => \mem|mem_reg[10][7]~combout\,
	combout => \mem|mem_reg[10][7]~combout\);

-- Location: LCCOMB_X29_Y22_N30
\mem|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux8~2_combout\ = (\m_1|outp[1]~5_combout\ & (((\m_1|outp[0]~7_combout\) # (\mem|mem_reg[10][7]~combout\)))) # (!\m_1|outp[1]~5_combout\ & (\mem|mem_reg[8][7]~combout\ & (!\m_1|outp[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \mem|mem_reg[8][7]~combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \mem|mem_reg[10][7]~combout\,
	combout => \mem|Mux8~2_combout\);

-- Location: LCCOMB_X25_Y22_N0
\mem|mem_reg[9][7]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][7]~79_combout\ = ((\m_2|outp[7]~6_combout\) # (!\memwr~combout\)) # (!\mem|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~4_combout\,
	datac => \memwr~combout\,
	datad => \m_2|outp[7]~6_combout\,
	combout => \mem|mem_reg[9][7]~79_combout\);

-- Location: LCCOMB_X25_Y22_N4
\mem|mem_reg[9][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][7]~combout\ = (GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & ((\mem|mem_reg[9][7]~79_combout\))) # (!GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & (\mem|mem_reg[9][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[9][0]~8clkctrl_outclk\,
	datab => \mem|mem_reg[9][7]~combout\,
	datad => \mem|mem_reg[9][7]~79_combout\,
	combout => \mem|mem_reg[9][7]~combout\);

-- Location: LCCOMB_X30_Y22_N8
\mem|mem_reg[11][7]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][7]~81_combout\ = ((\m_2|outp[7]~6_combout\) # (!\memwr~combout\)) # (!\mem|Decoder0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~12_combout\,
	datac => \memwr~combout\,
	datad => \m_2|outp[7]~6_combout\,
	combout => \mem|mem_reg[11][7]~81_combout\);

-- Location: LCCOMB_X30_Y22_N18
\mem|mem_reg[11][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][7]~combout\ = (GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & (\mem|mem_reg[11][7]~81_combout\)) # (!GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & ((\mem|mem_reg[11][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[11][7]~81_combout\,
	datab => \mem|mem_reg[11][7]~combout\,
	datad => \mem|mem_reg[11][0]~22clkctrl_outclk\,
	combout => \mem|mem_reg[11][7]~combout\);

-- Location: LCCOMB_X29_Y22_N24
\mem|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux8~3_combout\ = (\mem|Mux8~2_combout\ & (((\mem|mem_reg[11][7]~combout\)) # (!\m_1|outp[0]~7_combout\))) # (!\mem|Mux8~2_combout\ & (\m_1|outp[0]~7_combout\ & (\mem|mem_reg[9][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux8~2_combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \mem|mem_reg[9][7]~combout\,
	datad => \mem|mem_reg[11][7]~combout\,
	combout => \mem|Mux8~3_combout\);

-- Location: LCCOMB_X29_Y22_N18
\mem|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux8~6_combout\ = (\m_1|outp[2]~1_combout\ & (((\m_1|outp[3]~3_combout\)))) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~3_combout\ & ((\mem|Mux8~3_combout\))) # (!\m_1|outp[3]~3_combout\ & (\mem|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux8~5_combout\,
	datab => \mem|Mux8~3_combout\,
	datac => \m_1|outp[2]~1_combout\,
	datad => \m_1|outp[3]~3_combout\,
	combout => \mem|Mux8~6_combout\);

-- Location: LCCOMB_X30_Y22_N10
\mem|mem_reg[13][7]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][7]~87_combout\ = ((\m_2|outp[7]~6_combout\) # (!\memwr~combout\)) # (!\mem|Decoder0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~7_combout\,
	datac => \memwr~combout\,
	datad => \m_2|outp[7]~6_combout\,
	combout => \mem|mem_reg[13][7]~87_combout\);

-- Location: LCCOMB_X30_Y22_N6
\mem|mem_reg[13][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][7]~combout\ = (GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & ((\mem|mem_reg[13][7]~87_combout\))) # (!GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & (\mem|mem_reg[13][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[13][7]~combout\,
	datac => \mem|mem_reg[13][0]~13clkctrl_outclk\,
	datad => \mem|mem_reg[13][7]~87_combout\,
	combout => \mem|mem_reg[13][7]~combout\);

-- Location: LCCOMB_X30_Y23_N24
\mem|mem_reg[12][7]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][7]~88_combout\ = (\mem|Decoder0~11_combout\ & (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & \input[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~11_combout\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \memwr~combout\,
	datad => \input[23]~input_o\,
	combout => \mem|mem_reg[12][7]~88_combout\);

-- Location: LCCOMB_X30_Y23_N30
\mem|mem_reg[12][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][7]~combout\ = (GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & ((\mem|mem_reg[12][7]~88_combout\))) # (!GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & (\mem|mem_reg[12][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[12][7]~combout\,
	datac => \mem|mem_reg[12][0]~20clkctrl_outclk\,
	datad => \mem|mem_reg[12][7]~88_combout\,
	combout => \mem|mem_reg[12][7]~combout\);

-- Location: LCCOMB_X29_Y22_N28
\mem|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux8~7_combout\ = (\m_1|outp[1]~5_combout\ & (\m_1|outp[0]~7_combout\)) # (!\m_1|outp[1]~5_combout\ & ((\m_1|outp[0]~7_combout\ & (\mem|mem_reg[13][7]~combout\)) # (!\m_1|outp[0]~7_combout\ & ((\mem|mem_reg[12][7]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \mem|mem_reg[13][7]~combout\,
	datad => \mem|mem_reg[12][7]~combout\,
	combout => \mem|Mux8~7_combout\);

-- Location: LCCOMB_X26_Y26_N2
\mem|mem_reg[15][7]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][7]~89_combout\ = (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & (\input[23]~input_o\ & \mem|Decoder0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \memwr~combout\,
	datac => \input[23]~input_o\,
	datad => \mem|Decoder0~15_combout\,
	combout => \mem|mem_reg[15][7]~89_combout\);

-- Location: LCCOMB_X26_Y26_N6
\mem|mem_reg[15][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][7]~combout\ = (GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & ((\mem|mem_reg[15][7]~89_combout\))) # (!GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & (\mem|mem_reg[15][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[15][7]~combout\,
	datac => \mem|mem_reg[15][0]~27clkctrl_outclk\,
	datad => \mem|mem_reg[15][7]~89_combout\,
	combout => \mem|mem_reg[15][7]~combout\);

-- Location: LCCOMB_X29_Y20_N20
\mem|mem_reg[14][7]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][7]~86_combout\ = ((\m_2|outp[7]~6_combout\) # (!\memwr~combout\)) # (!\mem|Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~3_combout\,
	datac => \memwr~combout\,
	datad => \m_2|outp[7]~6_combout\,
	combout => \mem|mem_reg[14][7]~86_combout\);

-- Location: LCCOMB_X29_Y20_N28
\mem|mem_reg[14][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][7]~combout\ = (GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & ((\mem|mem_reg[14][7]~86_combout\))) # (!GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & (\mem|mem_reg[14][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[14][7]~combout\,
	datac => \mem|mem_reg[14][7]~86_combout\,
	datad => \mem|mem_reg[14][0]~6clkctrl_outclk\,
	combout => \mem|mem_reg[14][7]~combout\);

-- Location: LCCOMB_X29_Y22_N14
\mem|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux8~8_combout\ = (\m_1|outp[1]~5_combout\ & ((\mem|Mux8~7_combout\ & (\mem|mem_reg[15][7]~combout\)) # (!\mem|Mux8~7_combout\ & ((\mem|mem_reg[14][7]~combout\))))) # (!\m_1|outp[1]~5_combout\ & (\mem|Mux8~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \mem|Mux8~7_combout\,
	datac => \mem|mem_reg[15][7]~combout\,
	datad => \mem|mem_reg[14][7]~combout\,
	combout => \mem|Mux8~8_combout\);

-- Location: LCCOMB_X25_Y24_N12
\mem|mem_reg[4][7]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][7]~78_combout\ = ((\m_2|outp[7]~6_combout\) # (!\mem|Decoder0~8_combout\)) # (!\memwr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datac => \mem|Decoder0~8_combout\,
	datad => \m_2|outp[7]~6_combout\,
	combout => \mem|mem_reg[4][7]~78_combout\);

-- Location: LCCOMB_X25_Y24_N26
\mem|mem_reg[4][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][7]~combout\ = (GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & (\mem|mem_reg[4][7]~78_combout\)) # (!GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & ((\mem|mem_reg[4][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[4][7]~78_combout\,
	datac => \mem|mem_reg[4][7]~combout\,
	datad => \mem|mem_reg[4][0]~15clkctrl_outclk\,
	combout => \mem|mem_reg[4][7]~combout\);

-- Location: LCCOMB_X25_Y24_N28
\mem|mem_reg[5][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[5][7]~combout\ = (GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & (\m_2|outp[7]~6_combout\)) # (!GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & ((\mem|mem_reg[5][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[7]~6_combout\,
	datab => \mem|mem_reg[5][7]~combout\,
	datad => \mem|mem_reg[5][0]~9clkctrl_outclk\,
	combout => \mem|mem_reg[5][7]~combout\);

-- Location: LCCOMB_X29_Y22_N6
\mem|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux8~0_combout\ = (\m_1|outp[1]~5_combout\ & (\m_1|outp[0]~7_combout\)) # (!\m_1|outp[1]~5_combout\ & ((\m_1|outp[0]~7_combout\ & ((\mem|mem_reg[5][7]~combout\))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[4][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \mem|mem_reg[4][7]~combout\,
	datad => \mem|mem_reg[5][7]~combout\,
	combout => \mem|Mux8~0_combout\);

-- Location: LCCOMB_X28_Y23_N22
\mem|mem_reg[7][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[7][7]~combout\ = (GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & ((\m_2|outp[7]~6_combout\))) # (!GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & (\mem|mem_reg[7][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[7][7]~combout\,
	datac => \m_2|outp[7]~6_combout\,
	datad => \mem|mem_reg[7][0]~23clkctrl_outclk\,
	combout => \mem|mem_reg[7][7]~combout\);

-- Location: LCCOMB_X28_Y23_N4
\mem|mem_reg[6][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[6][7]~combout\ = (GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & (\m_2|outp[7]~6_combout\)) # (!GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & ((\mem|mem_reg[6][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[7]~6_combout\,
	datab => \mem|mem_reg[6][7]~combout\,
	datad => \mem|mem_reg[6][0]~0clkctrl_outclk\,
	combout => \mem|mem_reg[6][7]~combout\);

-- Location: LCCOMB_X29_Y22_N8
\mem|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux8~1_combout\ = (\m_1|outp[1]~5_combout\ & ((\mem|Mux8~0_combout\ & (\mem|mem_reg[7][7]~combout\)) # (!\mem|Mux8~0_combout\ & ((\mem|mem_reg[6][7]~combout\))))) # (!\m_1|outp[1]~5_combout\ & (\mem|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \mem|Mux8~0_combout\,
	datac => \mem|mem_reg[7][7]~combout\,
	datad => \mem|mem_reg[6][7]~combout\,
	combout => \mem|Mux8~1_combout\);

-- Location: LCCOMB_X29_Y22_N0
\mem|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux8~9_combout\ = (\mem|Mux8~6_combout\ & ((\mem|Mux8~8_combout\) # ((!\m_1|outp[2]~1_combout\)))) # (!\mem|Mux8~6_combout\ & (((\mem|Mux8~1_combout\ & \m_1|outp[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux8~6_combout\,
	datab => \mem|Mux8~8_combout\,
	datac => \mem|Mux8~1_combout\,
	datad => \m_1|outp[2]~1_combout\,
	combout => \mem|Mux8~9_combout\);

-- Location: LCCOMB_X29_Y22_N2
\mem|do[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|do\(7) = (GLOBAL(\mem|do[15]~0clkctrl_outclk\) & (\mem|Mux8~9_combout\)) # (!GLOBAL(\mem|do[15]~0clkctrl_outclk\) & ((\mem|do\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux8~9_combout\,
	datac => \mem|do[15]~0clkctrl_outclk\,
	datad => \mem|do\(7),
	combout => \mem|do\(7));

-- Location: LCCOMB_X29_Y22_N20
\ir_1|r_1|dout[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_1|r_1|dout\(7) = (\irwr~combout\ & ((\mem|do\(7)))) # (!\irwr~combout\ & (\ir_1|r_1|dout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irwr~combout\,
	datab => \ir_1|r_1|dout\(7),
	datad => \mem|do\(7),
	combout => \ir_1|r_1|dout\(7));

-- Location: LCCOMB_X23_Y19_N6
\priorityin[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[7]~4_combout\ = (priorityin(7) & (((!\p_1|outp\(2)) # (!\p_1|outp\(1))) # (!\p_1|outp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => priorityin(7),
	datab => \p_1|outp\(0),
	datac => \p_1|outp\(1),
	datad => \p_1|outp\(2),
	combout => \priorityin[7]~4_combout\);

-- Location: LCCOMB_X28_Y22_N4
\priorityin[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[7]~5_combout\ = (state(0) & ((\Equal0~4_combout\ & (\ir_1|r_1|dout\(7))) # (!\Equal0~4_combout\ & ((\priorityin[7]~4_combout\))))) # (!state(0) & (((\priorityin[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \ir_1|r_1|dout\(7),
	datac => \priorityin[7]~4_combout\,
	datad => \Equal0~4_combout\,
	combout => \priorityin[7]~5_combout\);

-- Location: LCCOMB_X28_Y22_N6
\priorityin[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- priorityin(7) = (\priorityin[1]~3_combout\ & (priorityin(7))) # (!\priorityin[1]~3_combout\ & ((\priorityin[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => priorityin(7),
	datab => \priorityin[7]~5_combout\,
	datad => \priorityin[1]~3_combout\,
	combout => priorityin(7));

-- Location: LCCOMB_X23_Y22_N30
\Equal35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal35~2_combout\ = (\Equal35~0_combout\) # ((\Equal35~1_combout\) # ((priorityin(7)) # (priorityin(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal35~0_combout\,
	datab => \Equal35~1_combout\,
	datac => priorityin(7),
	datad => priorityin(5),
	combout => \Equal35~2_combout\);

-- Location: FF_X23_Y22_N17
\p_1|outp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p_1|outp~3_combout\,
	ena => \Equal35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_1|outp\(0));

-- Location: LCCOMB_X23_Y22_N10
\priorityin[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[3]~12_combout\ = (priorityin(3) & (((\p_1|outp\(2)) # (!\p_1|outp\(1))) # (!\p_1|outp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => priorityin(3),
	datab => \p_1|outp\(0),
	datac => \p_1|outp\(2),
	datad => \p_1|outp\(1),
	combout => \priorityin[3]~12_combout\);

-- Location: IOIBUF_X34_Y34_N8
\input[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(19),
	o => \input[19]~input_o\);

-- Location: LCCOMB_X26_Y22_N16
\m_2|outp[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2|outp[3]~10_combout\ = (!dcon(0) & (dcon(1) & \input[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dcon(0),
	datab => dcon(1),
	datac => \input[19]~input_o\,
	combout => \m_2|outp[3]~10_combout\);

-- Location: LCCOMB_X26_Y25_N24
\mem|mem_reg[0][3]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][3]~133_combout\ = (\m_2|outp[3]~10_combout\) # ((!\mem|Decoder0~10_combout\) # (!\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[3]~10_combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~10_combout\,
	combout => \mem|mem_reg[0][3]~133_combout\);

-- Location: LCCOMB_X26_Y25_N26
\mem|mem_reg[0][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][3]~combout\ = (GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & ((\mem|mem_reg[0][3]~133_combout\))) # (!GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & (\mem|mem_reg[0][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[0][3]~combout\,
	datac => \mem|mem_reg[0][0]~18clkctrl_outclk\,
	datad => \mem|mem_reg[0][3]~133_combout\,
	combout => \mem|mem_reg[0][3]~combout\);

-- Location: LCCOMB_X27_Y22_N6
\mem|mem_reg[2][3]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][3]~132_combout\ = (\memwr~combout\ & (\m_2|outp[4]~1_combout\ & (\mem|Decoder0~2_combout\ & \input[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \mem|Decoder0~2_combout\,
	datad => \input[19]~input_o\,
	combout => \mem|mem_reg[2][3]~132_combout\);

-- Location: LCCOMB_X27_Y22_N22
\mem|mem_reg[2][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][3]~combout\ = (GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & (\mem|mem_reg[2][3]~132_combout\)) # (!GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & ((\mem|mem_reg[2][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[2][3]~132_combout\,
	datac => \mem|mem_reg[2][3]~combout\,
	datad => \mem|mem_reg[2][0]~4clkctrl_outclk\,
	combout => \mem|mem_reg[2][3]~combout\);

-- Location: LCCOMB_X26_Y25_N28
\mem|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux12~4_combout\ = (\m_1|outp[0]~7_combout\ & (\m_1|outp[1]~5_combout\)) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~5_combout\ & ((\mem|mem_reg[2][3]~combout\))) # (!\m_1|outp[1]~5_combout\ & (\mem|mem_reg[0][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \mem|mem_reg[0][3]~combout\,
	datad => \mem|mem_reg[2][3]~combout\,
	combout => \mem|Mux12~4_combout\);

-- Location: LCCOMB_X25_Y22_N26
\mem|mem_reg[1][3]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][3]~131_combout\ = (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & (\input[19]~input_o\ & \mem|Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \memwr~combout\,
	datac => \input[19]~input_o\,
	datad => \mem|Decoder0~6_combout\,
	combout => \mem|mem_reg[1][3]~131_combout\);

-- Location: LCCOMB_X25_Y22_N22
\mem|mem_reg[1][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][3]~combout\ = (GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & ((\mem|mem_reg[1][3]~131_combout\))) # (!GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & (\mem|mem_reg[1][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[1][3]~combout\,
	datac => \mem|mem_reg[1][3]~131_combout\,
	datad => \mem|mem_reg[1][0]~11clkctrl_outclk\,
	combout => \mem|mem_reg[1][3]~combout\);

-- Location: LCCOMB_X24_Y25_N24
\mem|mem_reg[3][3]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][3]~134_combout\ = (\input[19]~input_o\ & (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & \mem|Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[19]~input_o\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~14_combout\,
	combout => \mem|mem_reg[3][3]~134_combout\);

-- Location: LCCOMB_X24_Y25_N2
\mem|mem_reg[3][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][3]~combout\ = (GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & ((\mem|mem_reg[3][3]~134_combout\))) # (!GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & (\mem|mem_reg[3][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[3][3]~combout\,
	datac => \mem|mem_reg[3][3]~134_combout\,
	datad => \mem|mem_reg[3][0]~25clkctrl_outclk\,
	combout => \mem|mem_reg[3][3]~combout\);

-- Location: LCCOMB_X26_Y25_N18
\mem|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux12~5_combout\ = (\mem|Mux12~4_combout\ & (((\mem|mem_reg[3][3]~combout\)) # (!\m_1|outp[0]~7_combout\))) # (!\mem|Mux12~4_combout\ & (\m_1|outp[0]~7_combout\ & (\mem|mem_reg[1][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux12~4_combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \mem|mem_reg[1][3]~combout\,
	datad => \mem|mem_reg[3][3]~combout\,
	combout => \mem|Mux12~5_combout\);

-- Location: LCCOMB_X26_Y25_N8
\mem|mem_reg[8][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[8][3]~combout\ = (GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & (\m_2|outp[3]~10_combout\)) # (!GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & ((\mem|mem_reg[8][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[3]~10_combout\,
	datac => \mem|mem_reg[8][3]~combout\,
	datad => \mem|mem_reg[8][0]~16clkctrl_outclk\,
	combout => \mem|mem_reg[8][3]~combout\);

-- Location: LCCOMB_X26_Y22_N12
\mem|mem_reg[10][3]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][3]~129_combout\ = ((\m_2|outp[3]~10_combout\) # (!\mem|Decoder0~1_combout\)) # (!\memwr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwr~combout\,
	datac => \mem|Decoder0~1_combout\,
	datad => \m_2|outp[3]~10_combout\,
	combout => \mem|mem_reg[10][3]~129_combout\);

-- Location: LCCOMB_X26_Y22_N6
\mem|mem_reg[10][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][3]~combout\ = (GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & ((\mem|mem_reg[10][3]~129_combout\))) # (!GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & (\mem|mem_reg[10][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[10][3]~combout\,
	datab => \mem|mem_reg[10][3]~129_combout\,
	datad => \mem|mem_reg[10][0]~2clkctrl_outclk\,
	combout => \mem|mem_reg[10][3]~combout\);

-- Location: LCCOMB_X26_Y25_N4
\mem|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux12~2_combout\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[1]~5_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~5_combout\ & ((\mem|mem_reg[10][3]~combout\))) # (!\m_1|outp[1]~5_combout\ & (\mem|mem_reg[8][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \mem|mem_reg[8][3]~combout\,
	datac => \m_1|outp[1]~5_combout\,
	datad => \mem|mem_reg[10][3]~combout\,
	combout => \mem|Mux12~2_combout\);

-- Location: LCCOMB_X28_Y24_N12
\mem|mem_reg[9][3]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][3]~128_combout\ = (\m_2|outp[3]~10_combout\) # ((!\memwr~combout\) # (!\mem|Decoder0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[3]~10_combout\,
	datab => \mem|Decoder0~4_combout\,
	datac => \memwr~combout\,
	combout => \mem|mem_reg[9][3]~128_combout\);

-- Location: LCCOMB_X28_Y24_N20
\mem|mem_reg[9][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][3]~combout\ = (GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & ((\mem|mem_reg[9][3]~128_combout\))) # (!GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & (\mem|mem_reg[9][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[9][3]~combout\,
	datac => \mem|mem_reg[9][0]~8clkctrl_outclk\,
	datad => \mem|mem_reg[9][3]~128_combout\,
	combout => \mem|mem_reg[9][3]~combout\);

-- Location: LCCOMB_X30_Y22_N24
\mem|mem_reg[11][3]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][3]~130_combout\ = (\mem|Decoder0~12_combout\ & (\memwr~combout\ & (\input[19]~input_o\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~12_combout\,
	datab => \memwr~combout\,
	datac => \input[19]~input_o\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[11][3]~130_combout\);

-- Location: LCCOMB_X30_Y22_N16
\mem|mem_reg[11][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][3]~combout\ = (GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & ((\mem|mem_reg[11][3]~130_combout\))) # (!GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & (\mem|mem_reg[11][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[11][3]~combout\,
	datac => \mem|mem_reg[11][3]~130_combout\,
	datad => \mem|mem_reg[11][0]~22clkctrl_outclk\,
	combout => \mem|mem_reg[11][3]~combout\);

-- Location: LCCOMB_X26_Y25_N14
\mem|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux12~3_combout\ = (\mem|Mux12~2_combout\ & (((\mem|mem_reg[11][3]~combout\) # (!\m_1|outp[0]~7_combout\)))) # (!\mem|Mux12~2_combout\ & (\mem|mem_reg[9][3]~combout\ & (\m_1|outp[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux12~2_combout\,
	datab => \mem|mem_reg[9][3]~combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \mem|mem_reg[11][3]~combout\,
	combout => \mem|Mux12~3_combout\);

-- Location: LCCOMB_X26_Y25_N12
\mem|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux12~6_combout\ = (\m_1|outp[3]~3_combout\ & (((\mem|Mux12~3_combout\) # (\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~3_combout\ & (\mem|Mux12~5_combout\ & ((!\m_1|outp[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux12~5_combout\,
	datab => \m_1|outp[3]~3_combout\,
	datac => \mem|Mux12~3_combout\,
	datad => \m_1|outp[2]~1_combout\,
	combout => \mem|Mux12~6_combout\);

-- Location: LCCOMB_X29_Y20_N14
\mem|mem_reg[14][3]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][3]~135_combout\ = ((\m_2|outp[3]~10_combout\) # (!\memwr~combout\)) # (!\mem|Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~3_combout\,
	datac => \memwr~combout\,
	datad => \m_2|outp[3]~10_combout\,
	combout => \mem|mem_reg[14][3]~135_combout\);

-- Location: LCCOMB_X29_Y20_N22
\mem|mem_reg[14][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][3]~combout\ = (GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & ((\mem|mem_reg[14][3]~135_combout\))) # (!GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & (\mem|mem_reg[14][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[14][3]~combout\,
	datac => \mem|mem_reg[14][3]~135_combout\,
	datad => \mem|mem_reg[14][0]~6clkctrl_outclk\,
	combout => \mem|mem_reg[14][3]~combout\);

-- Location: LCCOMB_X28_Y25_N12
\mem|mem_reg[12][3]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][3]~137_combout\ = (\input[19]~input_o\ & (\memwr~combout\ & (\m_2|outp[4]~1_combout\ & \mem|Decoder0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[19]~input_o\,
	datab => \memwr~combout\,
	datac => \m_2|outp[4]~1_combout\,
	datad => \mem|Decoder0~11_combout\,
	combout => \mem|mem_reg[12][3]~137_combout\);

-- Location: LCCOMB_X28_Y25_N30
\mem|mem_reg[12][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][3]~combout\ = (GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & ((\mem|mem_reg[12][3]~137_combout\))) # (!GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & (\mem|mem_reg[12][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[12][3]~combout\,
	datac => \mem|mem_reg[12][0]~20clkctrl_outclk\,
	datad => \mem|mem_reg[12][3]~137_combout\,
	combout => \mem|mem_reg[12][3]~combout\);

-- Location: LCCOMB_X28_Y24_N26
\mem|mem_reg[13][3]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][3]~136_combout\ = ((\m_2|outp[3]~10_combout\) # (!\mem|Decoder0~7_combout\)) # (!\memwr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datac => \m_2|outp[3]~10_combout\,
	datad => \mem|Decoder0~7_combout\,
	combout => \mem|mem_reg[13][3]~136_combout\);

-- Location: LCCOMB_X28_Y24_N2
\mem|mem_reg[13][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][3]~combout\ = (GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & ((\mem|mem_reg[13][3]~136_combout\))) # (!GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & (\mem|mem_reg[13][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[13][3]~combout\,
	datac => \mem|mem_reg[13][3]~136_combout\,
	datad => \mem|mem_reg[13][0]~13clkctrl_outclk\,
	combout => \mem|mem_reg[13][3]~combout\);

-- Location: LCCOMB_X27_Y25_N26
\mem|Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux12~7_combout\ = (\m_1|outp[1]~5_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~5_combout\ & ((\m_1|outp[0]~7_combout\ & ((\mem|mem_reg[13][3]~combout\))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[12][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[12][3]~combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \mem|mem_reg[13][3]~combout\,
	combout => \mem|Mux12~7_combout\);

-- Location: LCCOMB_X26_Y23_N12
\mem|mem_reg[15][3]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][3]~138_combout\ = (\m_2|outp[3]~10_combout\) # ((!\mem|Decoder0~15_combout\) # (!\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[3]~10_combout\,
	datab => \memwr~combout\,
	datad => \mem|Decoder0~15_combout\,
	combout => \mem|mem_reg[15][3]~138_combout\);

-- Location: LCCOMB_X26_Y23_N0
\mem|mem_reg[15][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][3]~combout\ = (GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & (\mem|mem_reg[15][3]~138_combout\)) # (!GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & ((\mem|mem_reg[15][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[15][3]~138_combout\,
	datac => \mem|mem_reg[15][0]~27clkctrl_outclk\,
	datad => \mem|mem_reg[15][3]~combout\,
	combout => \mem|mem_reg[15][3]~combout\);

-- Location: LCCOMB_X27_Y25_N24
\mem|Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux12~8_combout\ = (\mem|Mux12~7_combout\ & (((\mem|mem_reg[15][3]~combout\) # (!\m_1|outp[1]~5_combout\)))) # (!\mem|Mux12~7_combout\ & (\mem|mem_reg[14][3]~combout\ & (\m_1|outp[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[14][3]~combout\,
	datab => \mem|Mux12~7_combout\,
	datac => \m_1|outp[1]~5_combout\,
	datad => \mem|mem_reg[15][3]~combout\,
	combout => \mem|Mux12~8_combout\);

-- Location: LCCOMB_X25_Y24_N22
\mem|mem_reg[5][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[5][3]~combout\ = (GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & (\m_2|outp[3]~10_combout\)) # (!GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & ((\mem|mem_reg[5][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[3]~10_combout\,
	datac => \mem|mem_reg[5][3]~combout\,
	datad => \mem|mem_reg[5][0]~9clkctrl_outclk\,
	combout => \mem|mem_reg[5][3]~combout\);

-- Location: LCCOMB_X25_Y24_N2
\mem|mem_reg[4][3]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][3]~127_combout\ = ((\m_2|outp[3]~10_combout\) # (!\mem|Decoder0~8_combout\)) # (!\memwr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datac => \mem|Decoder0~8_combout\,
	datad => \m_2|outp[3]~10_combout\,
	combout => \mem|mem_reg[4][3]~127_combout\);

-- Location: LCCOMB_X25_Y24_N24
\mem|mem_reg[4][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][3]~combout\ = (GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & (\mem|mem_reg[4][3]~127_combout\)) # (!GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & ((\mem|mem_reg[4][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[4][3]~127_combout\,
	datab => \mem|mem_reg[4][3]~combout\,
	datad => \mem|mem_reg[4][0]~15clkctrl_outclk\,
	combout => \mem|mem_reg[4][3]~combout\);

-- Location: LCCOMB_X25_Y24_N20
\mem|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux12~0_combout\ = (\m_1|outp[0]~7_combout\ & ((\mem|mem_reg[5][3]~combout\) # ((\m_1|outp[1]~5_combout\)))) # (!\m_1|outp[0]~7_combout\ & (((!\m_1|outp[1]~5_combout\ & \mem|mem_reg[4][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[5][3]~combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_1|outp[1]~5_combout\,
	datad => \mem|mem_reg[4][3]~combout\,
	combout => \mem|Mux12~0_combout\);

-- Location: LCCOMB_X24_Y24_N22
\mem|mem_reg[7][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[7][3]~combout\ = (GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & (\m_2|outp[3]~10_combout\)) # (!GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & ((\mem|mem_reg[7][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[3]~10_combout\,
	datac => \mem|mem_reg[7][3]~combout\,
	datad => \mem|mem_reg[7][0]~23clkctrl_outclk\,
	combout => \mem|mem_reg[7][3]~combout\);

-- Location: LCCOMB_X25_Y24_N0
\mem|mem_reg[6][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[6][3]~combout\ = (GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & (\m_2|outp[3]~10_combout\)) # (!GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & ((\mem|mem_reg[6][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[3]~10_combout\,
	datac => \mem|mem_reg[6][0]~0clkctrl_outclk\,
	datad => \mem|mem_reg[6][3]~combout\,
	combout => \mem|mem_reg[6][3]~combout\);

-- Location: LCCOMB_X25_Y24_N14
\mem|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux12~1_combout\ = (\mem|Mux12~0_combout\ & ((\mem|mem_reg[7][3]~combout\) # ((!\m_1|outp[1]~5_combout\)))) # (!\mem|Mux12~0_combout\ & (((\m_1|outp[1]~5_combout\ & \mem|mem_reg[6][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux12~0_combout\,
	datab => \mem|mem_reg[7][3]~combout\,
	datac => \m_1|outp[1]~5_combout\,
	datad => \mem|mem_reg[6][3]~combout\,
	combout => \mem|Mux12~1_combout\);

-- Location: LCCOMB_X26_Y25_N30
\mem|Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux12~9_combout\ = (\mem|Mux12~6_combout\ & ((\mem|Mux12~8_combout\) # ((!\m_1|outp[2]~1_combout\)))) # (!\mem|Mux12~6_combout\ & (((\mem|Mux12~1_combout\ & \m_1|outp[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux12~6_combout\,
	datab => \mem|Mux12~8_combout\,
	datac => \mem|Mux12~1_combout\,
	datad => \m_1|outp[2]~1_combout\,
	combout => \mem|Mux12~9_combout\);

-- Location: LCCOMB_X26_Y25_N16
\mem|do[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|do\(3) = (GLOBAL(\mem|do[15]~0clkctrl_outclk\) & (\mem|Mux12~9_combout\)) # (!GLOBAL(\mem|do[15]~0clkctrl_outclk\) & ((\mem|do\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux12~9_combout\,
	datab => \mem|do\(3),
	datad => \mem|do[15]~0clkctrl_outclk\,
	combout => \mem|do\(3));

-- Location: LCCOMB_X26_Y25_N22
\ir_1|r_1|dout[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_1|r_1|dout\(3) = (\irwr~combout\ & ((\mem|do\(3)))) # (!\irwr~combout\ & (\ir_1|r_1|dout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(3),
	datac => \irwr~combout\,
	datad => \mem|do\(3),
	combout => \ir_1|r_1|dout\(3));

-- Location: LCCOMB_X24_Y22_N14
\priorityin[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[3]~13_combout\ = (\Equal0~4_combout\ & ((state(0) & ((\ir_1|r_1|dout\(3)))) # (!state(0) & (\priorityin[3]~12_combout\)))) # (!\Equal0~4_combout\ & (\priorityin[3]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \priorityin[3]~12_combout\,
	datac => state(0),
	datad => \ir_1|r_1|dout\(3),
	combout => \priorityin[3]~13_combout\);

-- Location: LCCOMB_X23_Y22_N2
\priorityin[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- priorityin(3) = (\priorityin[1]~3_combout\ & ((priorityin(3)))) # (!\priorityin[1]~3_combout\ & (\priorityin[3]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \priorityin[3]~13_combout\,
	datac => priorityin(3),
	datad => \priorityin[1]~3_combout\,
	combout => priorityin(3));

-- Location: LCCOMB_X23_Y22_N20
\Equal35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal35~3_combout\ = (priorityin(3)) # ((priorityin(1)) # ((priorityin(2)) # (priorityin(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => priorityin(3),
	datab => priorityin(1),
	datac => priorityin(2),
	datad => priorityin(0),
	combout => \Equal35~3_combout\);

-- Location: FF_X23_Y22_N21
\p_1|outp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal35~3_combout\,
	ena => \Equal35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_1|outp\(2));

-- Location: LCCOMB_X23_Y19_N10
\priorityin[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[1]~6_combout\ = (priorityin(1) & ((\p_1|outp\(2)) # ((\p_1|outp\(1)) # (!\p_1|outp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_1|outp\(2),
	datab => \p_1|outp\(0),
	datac => \p_1|outp\(1),
	datad => priorityin(1),
	combout => \priorityin[1]~6_combout\);

-- Location: LCCOMB_X23_Y19_N18
\priorityin[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \priorityin[1]~7_combout\ = (state(0) & ((\Equal0~4_combout\ & ((\ir_1|r_1|dout\(1)))) # (!\Equal0~4_combout\ & (\priorityin[1]~6_combout\)))) # (!state(0) & (((\priorityin[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Equal0~4_combout\,
	datac => \priorityin[1]~6_combout\,
	datad => \ir_1|r_1|dout\(1),
	combout => \priorityin[1]~7_combout\);

-- Location: LCCOMB_X23_Y22_N14
\priorityin[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- priorityin(1) = (\priorityin[1]~3_combout\ & ((priorityin(1)))) # (!\priorityin[1]~3_combout\ & (\priorityin[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \priorityin[1]~7_combout\,
	datac => priorityin(1),
	datad => \priorityin[1]~3_combout\,
	combout => priorityin(1));

-- Location: LCCOMB_X23_Y19_N4
\p_1|outp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_1|outp~0_combout\ = (!priorityin(3) & (!priorityin(2) & ((priorityin(4)) # (priorityin(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => priorityin(4),
	datab => priorityin(3),
	datac => priorityin(2),
	datad => priorityin(5),
	combout => \p_1|outp~0_combout\);

-- Location: LCCOMB_X23_Y22_N6
\p_1|outp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_1|outp~1_combout\ = (priorityin(1)) # ((\p_1|outp~0_combout\) # (priorityin(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => priorityin(1),
	datac => \p_1|outp~0_combout\,
	datad => priorityin(0),
	combout => \p_1|outp~1_combout\);

-- Location: FF_X23_Y22_N7
\p_1|outp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p_1|outp~1_combout\,
	ena => \Equal35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_1|outp\(1));

-- Location: LCCOMB_X25_Y20_N14
\m_8|outp[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_8|outp[1]~9_combout\ = (alusrcb(2) & (alusrcb(1) & ((\p_1|outp\(1)) # (!alusrcb(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_1|outp\(1),
	datab => alusrcb(2),
	datac => alusrcb(1),
	datad => alusrcb(0),
	combout => \m_8|outp[1]~9_combout\);

-- Location: LCCOMB_X25_Y20_N26
\m_8|outp[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_8|outp[1]~14_combout\ = (\m_8|outp[1]~9_combout\) # ((alusrcb(2) & (!alusrcb(1) & \ir_1|r_1|dout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrcb(2),
	datab => \m_8|outp[1]~9_combout\,
	datac => alusrcb(1),
	datad => \ir_1|r_1|dout\(1),
	combout => \m_8|outp[1]~14_combout\);

-- Location: LCCOMB_X25_Y20_N24
\alu_1|temp_out[1]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[1]~69_combout\ = (!aluop(0) & (aluop(1) & ((!\m_7|outp[1]~2_combout\) # (!\m_8|outp[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[1]~14_combout\,
	datab => \m_7|outp[1]~2_combout\,
	datac => aluop(0),
	datad => aluop(1),
	combout => \alu_1|temp_out[1]~69_combout\);

-- Location: LCCOMB_X21_Y20_N28
\alu_1|opr2|s2|xor_i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s2|xor_i~0_combout\ = \m_7|outp[1]~2_combout\ $ (((\m_8|outp[1]~9_combout\) # ((\ir_1|r_1|dout\(1) & \m_8|outp[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[1]~9_combout\,
	datab => \ir_1|r_1|dout\(1),
	datac => \m_8|outp[0]~7_combout\,
	datad => \m_7|outp[1]~2_combout\,
	combout => \alu_1|opr2|s2|xor_i~0_combout\);

-- Location: LCCOMB_X21_Y20_N30
\alu_1|temp_out[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[1]~42_combout\ = \alu_1|opr2|s2|xor_i~0_combout\ $ (((\m_8|outp[0]~13_combout\ & (aluop(0) $ (\m_7|outp[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aluop(0),
	datab => \m_8|outp[0]~13_combout\,
	datac => \m_7|outp[0]~1_combout\,
	datad => \alu_1|opr2|s2|xor_i~0_combout\,
	combout => \alu_1|temp_out[1]~42_combout\);

-- Location: LCCOMB_X25_Y19_N18
\alu_1|temp_out[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[1]~43_combout\ = (\alu_1|temp_out[1]~69_combout\) # ((!aluop(1) & \alu_1|temp_out[1]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[1]~69_combout\,
	datab => aluop(1),
	datad => \alu_1|temp_out[1]~42_combout\,
	combout => \alu_1|temp_out[1]~43_combout\);

-- Location: LCCOMB_X25_Y19_N24
\t1|dout[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|dout\(1) = (\alu_en~combout\ & (\alu_1|temp_out[1]~43_combout\)) # (!\alu_en~combout\ & ((\t1|dout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_1|temp_out[1]~43_combout\,
	datac => \t1|dout\(1),
	datad => \alu_en~combout\,
	combout => \t1|dout\(1));

-- Location: LCCOMB_X25_Y19_N16
\m_9|outp[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_9|outp[1]~2_combout\ = (\pcsrc~combout\ & (\t1|dout\(1))) # (!\pcsrc~combout\ & ((\alu_1|temp_out[1]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcsrc~combout\,
	datab => \t1|dout\(1),
	datad => \alu_1|temp_out[1]~43_combout\,
	combout => \m_9|outp[1]~2_combout\);

-- Location: LCCOMB_X25_Y19_N8
\pc|dout[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|dout\(1) = (\pcwr~combout\ & ((\m_9|outp[1]~2_combout\))) # (!\pcwr~combout\ & (\pc|dout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(1),
	datac => \m_9|outp[1]~2_combout\,
	datad => \pcwr~combout\,
	combout => \pc|dout\(1));

-- Location: LCCOMB_X25_Y19_N12
\m_1|outp[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_1|outp[1]~4_combout\ = (!iord(1) & ((iord(0) & ((\t1|dout\(1)))) # (!iord(0) & (\pc|dout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => iord(0),
	datab => iord(1),
	datac => \pc|dout\(1),
	datad => \t1|dout\(1),
	combout => \m_1|outp[1]~4_combout\);

-- Location: LCCOMB_X25_Y19_N30
\m_1|outp[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_1|outp[1]~5_combout\ = (\m_1|outp[1]~4_combout\) # ((\input[1]~input_o\ & (iord(1) & !iord(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[1]~input_o\,
	datab => iord(1),
	datac => iord(0),
	datad => \m_1|outp[1]~4_combout\,
	combout => \m_1|outp[1]~5_combout\);

-- Location: LCCOMB_X26_Y23_N30
\mem|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~15_combout\ = (\m_1|outp[0]~7_combout\ & (\m_1|outp[1]~5_combout\ & (\m_1|outp[3]~3_combout\ & \m_1|outp[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \m_1|outp[2]~1_combout\,
	combout => \mem|Decoder0~15_combout\);

-- Location: LCCOMB_X26_Y23_N18
\mem|mem_reg[15][0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][0]~27_combout\ = (\meminit~combout\) # ((\mem|Decoder0~15_combout\ & \memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \meminit~combout\,
	datac => \mem|Decoder0~15_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[15][0]~27_combout\);

-- Location: CLKCTRL_G14
\mem|mem_reg[15][0]~27clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|mem_reg[15][0]~27clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|mem_reg[15][0]~27clkctrl_outclk\);

-- Location: IOIBUF_X53_Y17_N1
\input[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(21),
	o => \input[21]~input_o\);

-- Location: LCCOMB_X28_Y23_N26
\m_2|outp[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2|outp[5]~5_combout\ = (dcon(1) & (\input[21]~input_o\ & !dcon(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dcon(1),
	datab => \input[21]~input_o\,
	datac => dcon(0),
	combout => \m_2|outp[5]~5_combout\);

-- Location: LCCOMB_X26_Y23_N14
\mem|mem_reg[15][5]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][5]~77_combout\ = (\m_2|outp[5]~5_combout\) # ((!\mem|Decoder0~15_combout\) # (!\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[5]~5_combout\,
	datab => \memwr~combout\,
	datad => \mem|Decoder0~15_combout\,
	combout => \mem|mem_reg[15][5]~77_combout\);

-- Location: LCCOMB_X26_Y23_N16
\mem|mem_reg[15][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][5]~combout\ = (GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & ((\mem|mem_reg[15][5]~77_combout\))) # (!GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & (\mem|mem_reg[15][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[15][5]~combout\,
	datac => \mem|mem_reg[15][0]~27clkctrl_outclk\,
	datad => \mem|mem_reg[15][5]~77_combout\,
	combout => \mem|mem_reg[15][5]~combout\);

-- Location: LCCOMB_X28_Y24_N24
\mem|mem_reg[14][5]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][5]~75_combout\ = (\memwr~combout\ & (\input[21]~input_o\ & (\mem|Decoder0~3_combout\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datab => \input[21]~input_o\,
	datac => \mem|Decoder0~3_combout\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[14][5]~75_combout\);

-- Location: LCCOMB_X28_Y24_N0
\mem|mem_reg[14][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][5]~combout\ = (GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & ((\mem|mem_reg[14][5]~75_combout\))) # (!GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & (\mem|mem_reg[14][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[14][5]~combout\,
	datac => \mem|mem_reg[14][5]~75_combout\,
	datad => \mem|mem_reg[14][0]~6clkctrl_outclk\,
	combout => \mem|mem_reg[14][5]~combout\);

-- Location: LCCOMB_X28_Y25_N18
\mem|mem_reg[12][5]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][5]~76_combout\ = (\input[21]~input_o\ & (\memwr~combout\ & (\m_2|outp[4]~1_combout\ & \mem|Decoder0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[21]~input_o\,
	datab => \memwr~combout\,
	datac => \m_2|outp[4]~1_combout\,
	datad => \mem|Decoder0~11_combout\,
	combout => \mem|mem_reg[12][5]~76_combout\);

-- Location: LCCOMB_X28_Y25_N20
\mem|mem_reg[12][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][5]~combout\ = (GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & (\mem|mem_reg[12][5]~76_combout\)) # (!GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & ((\mem|mem_reg[12][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[12][5]~76_combout\,
	datab => \mem|mem_reg[12][5]~combout\,
	datad => \mem|mem_reg[12][0]~20clkctrl_outclk\,
	combout => \mem|mem_reg[12][5]~combout\);

-- Location: LCCOMB_X27_Y25_N16
\mem|Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux10~7_combout\ = (\m_1|outp[1]~5_combout\ & ((\mem|mem_reg[14][5]~combout\) # ((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~5_combout\ & (((!\m_1|outp[0]~7_combout\ & \mem|mem_reg[12][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[14][5]~combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \mem|mem_reg[12][5]~combout\,
	combout => \mem|Mux10~7_combout\);

-- Location: LCCOMB_X29_Y24_N24
\mem|mem_reg[13][5]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][5]~74_combout\ = (\m_2|outp[5]~5_combout\) # ((!\memwr~combout\) # (!\mem|Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[5]~5_combout\,
	datac => \mem|Decoder0~7_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[13][5]~74_combout\);

-- Location: LCCOMB_X29_Y24_N6
\mem|mem_reg[13][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][5]~combout\ = (GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & ((\mem|mem_reg[13][5]~74_combout\))) # (!GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & (\mem|mem_reg[13][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[13][0]~13clkctrl_outclk\,
	datac => \mem|mem_reg[13][5]~combout\,
	datad => \mem|mem_reg[13][5]~74_combout\,
	combout => \mem|mem_reg[13][5]~combout\);

-- Location: LCCOMB_X27_Y25_N2
\mem|Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux10~8_combout\ = (\m_1|outp[0]~7_combout\ & ((\mem|Mux10~7_combout\ & (\mem|mem_reg[15][5]~combout\)) # (!\mem|Mux10~7_combout\ & ((\mem|mem_reg[13][5]~combout\))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|Mux10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \mem|mem_reg[15][5]~combout\,
	datac => \mem|Mux10~7_combout\,
	datad => \mem|mem_reg[13][5]~combout\,
	combout => \mem|Mux10~8_combout\);

-- Location: LCCOMB_X27_Y25_N22
\mem|mem_reg[9][5]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][5]~67_combout\ = (\m_2|outp[4]~1_combout\ & (\input[21]~input_o\ & (\memwr~combout\ & \mem|Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[21]~input_o\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~4_combout\,
	combout => \mem|mem_reg[9][5]~67_combout\);

-- Location: LCCOMB_X27_Y25_N12
\mem|mem_reg[9][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][5]~combout\ = (GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & ((\mem|mem_reg[9][5]~67_combout\))) # (!GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & (\mem|mem_reg[9][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[9][5]~combout\,
	datac => \mem|mem_reg[9][5]~67_combout\,
	datad => \mem|mem_reg[9][0]~8clkctrl_outclk\,
	combout => \mem|mem_reg[9][5]~combout\);

-- Location: LCCOMB_X26_Y25_N10
\mem|mem_reg[8][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[8][5]~combout\ = (GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & ((\m_2|outp[5]~5_combout\))) # (!GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & (\mem|mem_reg[8][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[8][5]~combout\,
	datac => \m_2|outp[5]~5_combout\,
	datad => \mem|mem_reg[8][0]~16clkctrl_outclk\,
	combout => \mem|mem_reg[8][5]~combout\);

-- Location: LCCOMB_X27_Y25_N20
\mem|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux10~0_combout\ = (\m_1|outp[1]~5_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~5_combout\ & ((\m_1|outp[0]~7_combout\ & (\mem|mem_reg[9][5]~combout\)) # (!\m_1|outp[0]~7_combout\ & ((\mem|mem_reg[8][5]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[9][5]~combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \mem|mem_reg[8][5]~combout\,
	combout => \mem|Mux10~0_combout\);

-- Location: LCCOMB_X29_Y25_N24
\mem|mem_reg[10][5]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][5]~66_combout\ = ((\m_2|outp[5]~5_combout\) # (!\mem|Decoder0~1_combout\)) # (!\memwr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwr~combout\,
	datac => \m_2|outp[5]~5_combout\,
	datad => \mem|Decoder0~1_combout\,
	combout => \mem|mem_reg[10][5]~66_combout\);

-- Location: LCCOMB_X29_Y25_N8
\mem|mem_reg[10][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][5]~combout\ = (GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & (\mem|mem_reg[10][5]~66_combout\)) # (!GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & ((\mem|mem_reg[10][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[10][5]~66_combout\,
	datac => \mem|mem_reg[10][0]~2clkctrl_outclk\,
	datad => \mem|mem_reg[10][5]~combout\,
	combout => \mem|mem_reg[10][5]~combout\);

-- Location: LCCOMB_X28_Y25_N24
\mem|mem_reg[11][5]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][5]~68_combout\ = (\input[21]~input_o\ & (\memwr~combout\ & (\m_2|outp[4]~1_combout\ & \mem|Decoder0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[21]~input_o\,
	datab => \memwr~combout\,
	datac => \m_2|outp[4]~1_combout\,
	datad => \mem|Decoder0~12_combout\,
	combout => \mem|mem_reg[11][5]~68_combout\);

-- Location: LCCOMB_X28_Y25_N26
\mem|mem_reg[11][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][5]~combout\ = (GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & ((\mem|mem_reg[11][5]~68_combout\))) # (!GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & (\mem|mem_reg[11][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[11][5]~combout\,
	datac => \mem|mem_reg[11][5]~68_combout\,
	datad => \mem|mem_reg[11][0]~22clkctrl_outclk\,
	combout => \mem|mem_reg[11][5]~combout\);

-- Location: LCCOMB_X27_Y25_N14
\mem|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux10~1_combout\ = (\m_1|outp[1]~5_combout\ & ((\mem|Mux10~0_combout\ & ((\mem|mem_reg[11][5]~combout\))) # (!\mem|Mux10~0_combout\ & (\mem|mem_reg[10][5]~combout\)))) # (!\m_1|outp[1]~5_combout\ & (\mem|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \mem|Mux10~0_combout\,
	datac => \mem|mem_reg[10][5]~combout\,
	datad => \mem|mem_reg[11][5]~combout\,
	combout => \mem|Mux10~1_combout\);

-- Location: LCCOMB_X27_Y25_N30
\mem|mem_reg[5][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[5][5]~combout\ = (GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & (\m_2|outp[5]~5_combout\)) # (!GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & ((\mem|mem_reg[5][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[5]~5_combout\,
	datac => \mem|mem_reg[5][5]~combout\,
	datad => \mem|mem_reg[5][0]~9clkctrl_outclk\,
	combout => \mem|mem_reg[5][5]~combout\);

-- Location: LCCOMB_X24_Y25_N22
\mem|mem_reg[4][5]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][5]~69_combout\ = (\m_2|outp[4]~1_combout\ & (\input[21]~input_o\ & (\mem|Decoder0~8_combout\ & \memwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[21]~input_o\,
	datac => \mem|Decoder0~8_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[4][5]~69_combout\);

-- Location: LCCOMB_X24_Y25_N16
\mem|mem_reg[4][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][5]~combout\ = (GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & ((\mem|mem_reg[4][5]~69_combout\))) # (!GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & (\mem|mem_reg[4][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[4][5]~combout\,
	datac => \mem|mem_reg[4][5]~69_combout\,
	datad => \mem|mem_reg[4][0]~15clkctrl_outclk\,
	combout => \mem|mem_reg[4][5]~combout\);

-- Location: LCCOMB_X28_Y23_N20
\mem|mem_reg[6][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[6][5]~combout\ = (GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & ((\m_2|outp[5]~5_combout\))) # (!GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & (\mem|mem_reg[6][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[6][5]~combout\,
	datac => \m_2|outp[5]~5_combout\,
	datad => \mem|mem_reg[6][0]~0clkctrl_outclk\,
	combout => \mem|mem_reg[6][5]~combout\);

-- Location: LCCOMB_X27_Y25_N4
\mem|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux10~2_combout\ = (\m_1|outp[1]~5_combout\ & (((\m_1|outp[0]~7_combout\) # (\mem|mem_reg[6][5]~combout\)))) # (!\m_1|outp[1]~5_combout\ & (\mem|mem_reg[4][5]~combout\ & (!\m_1|outp[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[4][5]~combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \mem|mem_reg[6][5]~combout\,
	combout => \mem|Mux10~2_combout\);

-- Location: LCCOMB_X28_Y23_N30
\mem|mem_reg[7][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[7][5]~combout\ = (GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & ((\m_2|outp[5]~5_combout\))) # (!GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & (\mem|mem_reg[7][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[7][5]~combout\,
	datac => \m_2|outp[5]~5_combout\,
	datad => \mem|mem_reg[7][0]~23clkctrl_outclk\,
	combout => \mem|mem_reg[7][5]~combout\);

-- Location: LCCOMB_X27_Y25_N10
\mem|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux10~3_combout\ = (\mem|Mux10~2_combout\ & (((\mem|mem_reg[7][5]~combout\) # (!\m_1|outp[0]~7_combout\)))) # (!\mem|Mux10~2_combout\ & (\mem|mem_reg[5][5]~combout\ & (\m_1|outp[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[5][5]~combout\,
	datab => \mem|Mux10~2_combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \mem|mem_reg[7][5]~combout\,
	combout => \mem|Mux10~3_combout\);

-- Location: LCCOMB_X26_Y23_N6
\mem|mem_reg[0][5]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][5]~72_combout\ = (\m_2|outp[5]~5_combout\) # ((!\mem|Decoder0~10_combout\) # (!\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[5]~5_combout\,
	datab => \memwr~combout\,
	datac => \mem|Decoder0~10_combout\,
	combout => \mem|mem_reg[0][5]~72_combout\);

-- Location: LCCOMB_X26_Y23_N22
\mem|mem_reg[0][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][5]~combout\ = (GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & ((\mem|mem_reg[0][5]~72_combout\))) # (!GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & (\mem|mem_reg[0][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[0][5]~combout\,
	datac => \mem|mem_reg[0][5]~72_combout\,
	datad => \mem|mem_reg[0][0]~18clkctrl_outclk\,
	combout => \mem|mem_reg[0][5]~combout\);

-- Location: LCCOMB_X26_Y23_N28
\mem|mem_reg[1][5]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][5]~71_combout\ = (\m_2|outp[4]~1_combout\ & (\input[21]~input_o\ & (\mem|Decoder0~6_combout\ & \memwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[21]~input_o\,
	datac => \mem|Decoder0~6_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[1][5]~71_combout\);

-- Location: LCCOMB_X26_Y23_N24
\mem|mem_reg[1][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][5]~combout\ = (GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & ((\mem|mem_reg[1][5]~71_combout\))) # (!GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & (\mem|mem_reg[1][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[1][5]~combout\,
	datac => \mem|mem_reg[1][0]~11clkctrl_outclk\,
	datad => \mem|mem_reg[1][5]~71_combout\,
	combout => \mem|mem_reg[1][5]~combout\);

-- Location: LCCOMB_X26_Y23_N4
\mem|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux10~4_combout\ = (\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~5_combout\) # ((\mem|mem_reg[1][5]~combout\)))) # (!\m_1|outp[0]~7_combout\ & (!\m_1|outp[1]~5_combout\ & (\mem|mem_reg[0][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \mem|mem_reg[0][5]~combout\,
	datad => \mem|mem_reg[1][5]~combout\,
	combout => \mem|Mux10~4_combout\);

-- Location: LCCOMB_X28_Y22_N10
\mem|mem_reg[2][5]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][5]~70_combout\ = (\memwr~combout\ & (\m_2|outp[4]~1_combout\ & (\mem|Decoder0~2_combout\ & \input[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \mem|Decoder0~2_combout\,
	datad => \input[21]~input_o\,
	combout => \mem|mem_reg[2][5]~70_combout\);

-- Location: LCCOMB_X28_Y22_N12
\mem|mem_reg[2][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][5]~combout\ = (GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & ((\mem|mem_reg[2][5]~70_combout\))) # (!GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & (\mem|mem_reg[2][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[2][5]~combout\,
	datac => \mem|mem_reg[2][5]~70_combout\,
	datad => \mem|mem_reg[2][0]~4clkctrl_outclk\,
	combout => \mem|mem_reg[2][5]~combout\);

-- Location: LCCOMB_X24_Y25_N8
\mem|mem_reg[3][5]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][5]~73_combout\ = (\input[21]~input_o\ & (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & \mem|Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[21]~input_o\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~14_combout\,
	combout => \mem|mem_reg[3][5]~73_combout\);

-- Location: LCCOMB_X24_Y25_N18
\mem|mem_reg[3][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][5]~combout\ = (GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & (\mem|mem_reg[3][5]~73_combout\)) # (!GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & ((\mem|mem_reg[3][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[3][5]~73_combout\,
	datab => \mem|mem_reg[3][5]~combout\,
	datad => \mem|mem_reg[3][0]~25clkctrl_outclk\,
	combout => \mem|mem_reg[3][5]~combout\);

-- Location: LCCOMB_X27_Y25_N0
\mem|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux10~5_combout\ = (\mem|Mux10~4_combout\ & (((\mem|mem_reg[3][5]~combout\)) # (!\m_1|outp[1]~5_combout\))) # (!\mem|Mux10~4_combout\ & (\m_1|outp[1]~5_combout\ & (\mem|mem_reg[2][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux10~4_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \mem|mem_reg[2][5]~combout\,
	datad => \mem|mem_reg[3][5]~combout\,
	combout => \mem|Mux10~5_combout\);

-- Location: LCCOMB_X27_Y25_N18
\mem|Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux10~6_combout\ = (\m_1|outp[3]~3_combout\ & (((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~3_combout\ & ((\m_1|outp[2]~1_combout\ & (\mem|Mux10~3_combout\)) # (!\m_1|outp[2]~1_combout\ & ((\mem|Mux10~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux10~3_combout\,
	datab => \mem|Mux10~5_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \m_1|outp[2]~1_combout\,
	combout => \mem|Mux10~6_combout\);

-- Location: LCCOMB_X27_Y25_N8
\mem|Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux10~9_combout\ = (\m_1|outp[3]~3_combout\ & ((\mem|Mux10~6_combout\ & (\mem|Mux10~8_combout\)) # (!\mem|Mux10~6_combout\ & ((\mem|Mux10~1_combout\))))) # (!\m_1|outp[3]~3_combout\ & (((\mem|Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux10~8_combout\,
	datab => \mem|Mux10~1_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \mem|Mux10~6_combout\,
	combout => \mem|Mux10~9_combout\);

-- Location: LCCOMB_X27_Y25_N6
\mem|do[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|do\(5) = (GLOBAL(\mem|do[15]~0clkctrl_outclk\) & ((\mem|Mux10~9_combout\))) # (!GLOBAL(\mem|do[15]~0clkctrl_outclk\) & (\mem|do\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|do\(5),
	datab => \mem|Mux10~9_combout\,
	datac => \mem|do[15]~0clkctrl_outclk\,
	combout => \mem|do\(5));

-- Location: LCCOMB_X27_Y25_N28
\ir_1|r_1|dout[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_1|r_1|dout\(5) = (\irwr~combout\ & (\mem|do\(5))) # (!\irwr~combout\ & ((\ir_1|r_1|dout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|do\(5),
	datac => \irwr~combout\,
	datad => \ir_1|r_1|dout\(5),
	combout => \ir_1|r_1|dout\(5));

-- Location: LCCOMB_X24_Y21_N6
\m_8|outp[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_8|outp[15]~10_combout\ = (alusrcb(2) & (!alusrcb(1) & (\ir_1|r_1|dout\(5) & !alusrcb(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrcb(2),
	datab => alusrcb(1),
	datac => \ir_1|r_1|dout\(5),
	datad => alusrcb(0),
	combout => \m_8|outp[15]~10_combout\);

-- Location: LCCOMB_X24_Y20_N10
\alu_1|temp_out[15]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[15]~44_combout\ = (!aluop(1) & !aluop(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => aluop(1),
	datad => aluop(0),
	combout => \alu_1|temp_out[15]~44_combout\);

-- Location: LCCOMB_X24_Y20_N24
\alu_1|temp_out[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[0]~38_combout\ = (aluop(1) & !aluop(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aluop(1),
	datad => aluop(0),
	combout => \alu_1|temp_out[0]~38_combout\);

-- Location: LCCOMB_X25_Y21_N26
\m_7|outp[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_7|outp[3]~3_combout\ = (!alusrca(0) & ((alusrca(1) & ((\ir_1|r_1|dout\(3)))) # (!alusrca(1) & (\pc|dout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(3),
	datab => alusrca(1),
	datac => \ir_1|r_1|dout\(3),
	datad => alusrca(0),
	combout => \m_7|outp[3]~3_combout\);

-- Location: LCCOMB_X25_Y21_N16
\alu_1|opr1|a4|cout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr1|a4|cout~5_combout\ = (\m_7|outp[3]~3_combout\ & (alusrcb(2) & (!alusrcb(1) & \ir_1|r_1|dout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[3]~3_combout\,
	datab => alusrcb(2),
	datac => alusrcb(1),
	datad => \ir_1|r_1|dout\(3),
	combout => \alu_1|opr1|a4|cout~5_combout\);

-- Location: LCCOMB_X25_Y21_N30
\m_8|outp[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_8|outp[4]~11_combout\ = (!alusrcb(1) & (alusrcb(2) & \ir_1|r_1|dout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrcb(1),
	datab => alusrcb(2),
	datac => \ir_1|r_1|dout\(4),
	combout => \m_8|outp[4]~11_combout\);

-- Location: LCCOMB_X25_Y21_N28
\alu_1|opr1|a4|cout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr1|a4|cout~6_combout\ = (\m_7|outp[3]~3_combout\) # ((alusrcb(2) & (!alusrcb(1) & \ir_1|r_1|dout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[3]~3_combout\,
	datab => alusrcb(2),
	datac => alusrcb(1),
	datad => \ir_1|r_1|dout\(3),
	combout => \alu_1|opr1|a4|cout~6_combout\);

-- Location: LCCOMB_X24_Y21_N28
\alu_1|opr1|a4|cout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr1|a4|cout~4_combout\ = (\alu_1|opr1|a4|cout~6_combout\ & ((\m_8|outp[2]~12_combout\ & ((\m_7|outp[2]~0_combout\) # (\alu_1|opr1|a2|cout~0_combout\))) # (!\m_8|outp[2]~12_combout\ & (\m_7|outp[2]~0_combout\ & \alu_1|opr1|a2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[2]~12_combout\,
	datab => \m_7|outp[2]~0_combout\,
	datac => \alu_1|opr1|a2|cout~0_combout\,
	datad => \alu_1|opr1|a4|cout~6_combout\,
	combout => \alu_1|opr1|a4|cout~4_combout\);

-- Location: LCCOMB_X25_Y21_N2
\alu_1|opr1|a5|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr1|a5|sum~combout\ = \m_7|outp[4]~15_combout\ $ (\m_8|outp[4]~11_combout\ $ (((\alu_1|opr1|a4|cout~4_combout\) # (\alu_1|opr1|a4|cout~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr1|a4|cout~4_combout\,
	datab => \m_7|outp[4]~15_combout\,
	datac => \m_8|outp[4]~11_combout\,
	datad => \alu_1|opr1|a4|cout~5_combout\,
	combout => \alu_1|opr1|a5|sum~combout\);

-- Location: LCCOMB_X25_Y21_N6
\alu_1|opr2|s4|xor_i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s4|xor_i~2_combout\ = \m_7|outp[3]~3_combout\ $ (((\ir_1|r_1|dout\(3) & (!alusrcb(1) & alusrcb(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(3),
	datab => alusrcb(1),
	datac => \m_7|outp[3]~3_combout\,
	datad => alusrcb(2),
	combout => \alu_1|opr2|s4|xor_i~2_combout\);

-- Location: LCCOMB_X24_Y20_N4
\alu_1|opr2|s4|bout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s4|bout~2_combout\ = (!\alu_1|opr2|s4|xor_i~2_combout\ & ((\m_7|outp[2]~0_combout\ & (\alu_1|opr2|s2|bout~combout\ & \m_8|outp[2]~12_combout\)) # (!\m_7|outp[2]~0_combout\ & ((\alu_1|opr2|s2|bout~combout\) # (\m_8|outp[2]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[2]~0_combout\,
	datab => \alu_1|opr2|s2|bout~combout\,
	datac => \m_8|outp[2]~12_combout\,
	datad => \alu_1|opr2|s4|xor_i~2_combout\,
	combout => \alu_1|opr2|s4|bout~2_combout\);

-- Location: LCCOMB_X25_Y21_N20
\alu_1|opr2|s4|bout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s4|bout~3_combout\ = (!alusrcb(1) & (alusrcb(2) & (!\m_7|outp[3]~3_combout\ & \ir_1|r_1|dout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrcb(1),
	datab => alusrcb(2),
	datac => \m_7|outp[3]~3_combout\,
	datad => \ir_1|r_1|dout\(3),
	combout => \alu_1|opr2|s4|bout~3_combout\);

-- Location: LCCOMB_X25_Y21_N24
\alu_1|opr2|s5|diff\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s5|diff~combout\ = \m_7|outp[4]~15_combout\ $ (\m_8|outp[4]~11_combout\ $ (((\alu_1|opr2|s4|bout~2_combout\) # (\alu_1|opr2|s4|bout~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr2|s4|bout~2_combout\,
	datab => \m_7|outp[4]~15_combout\,
	datac => \alu_1|opr2|s4|bout~3_combout\,
	datad => \m_8|outp[4]~11_combout\,
	combout => \alu_1|opr2|s5|diff~combout\);

-- Location: LCCOMB_X24_Y18_N24
\alu_1|temp_out[4]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[4]~61_combout\ = (!aluop(1) & ((aluop(0) & ((\alu_1|opr2|s5|diff~combout\))) # (!aluop(0) & (\alu_1|opr1|a5|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr1|a5|sum~combout\,
	datab => aluop(0),
	datac => \alu_1|opr2|s5|diff~combout\,
	datad => aluop(1),
	combout => \alu_1|temp_out[4]~61_combout\);

-- Location: LCCOMB_X24_Y18_N18
\alu_1|temp_out[4]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[4]~62_combout\ = (\alu_1|temp_out[4]~61_combout\) # ((\alu_1|temp_out[0]~38_combout\ & ((!\m_7|outp[4]~15_combout\) # (!\m_8|outp[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[4]~61_combout\,
	datab => \m_8|outp[4]~11_combout\,
	datac => \alu_1|temp_out[0]~38_combout\,
	datad => \m_7|outp[4]~15_combout\,
	combout => \alu_1|temp_out[4]~62_combout\);

-- Location: CLKCTRL_G0
\alu_en~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \alu_en~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \alu_en~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y18_N14
\t1|dout[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|dout\(4) = (GLOBAL(\alu_en~clkctrl_outclk\) & ((\alu_1|temp_out[4]~62_combout\))) # (!GLOBAL(\alu_en~clkctrl_outclk\) & (\t1|dout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|dout\(4),
	datac => \alu_1|temp_out[4]~62_combout\,
	datad => \alu_en~clkctrl_outclk\,
	combout => \t1|dout\(4));

-- Location: LCCOMB_X26_Y18_N18
\m_9|outp[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_9|outp[4]~15_combout\ = (\pcsrc~combout\ & ((\t1|dout\(4)))) # (!\pcsrc~combout\ & (\alu_1|temp_out[4]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[4]~62_combout\,
	datab => \pcsrc~combout\,
	datad => \t1|dout\(4),
	combout => \m_9|outp[4]~15_combout\);

-- Location: CLKCTRL_G3
\pcwr~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pcwr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pcwr~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y18_N28
\pc|dout[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|dout\(4) = (GLOBAL(\pcwr~clkctrl_outclk\) & (\m_9|outp[4]~15_combout\)) # (!GLOBAL(\pcwr~clkctrl_outclk\) & ((\pc|dout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_9|outp[4]~15_combout\,
	datac => \pcwr~clkctrl_outclk\,
	datad => \pc|dout\(4),
	combout => \pc|dout\(4));

-- Location: LCCOMB_X26_Y18_N16
\m_7|outp[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_7|outp[4]~15_combout\ = (!alusrca(0) & ((alusrca(1) & (\ir_1|r_1|dout\(4))) # (!alusrca(1) & ((\pc|dout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(1),
	datab => \ir_1|r_1|dout\(4),
	datac => alusrca(0),
	datad => \pc|dout\(4),
	combout => \m_7|outp[4]~15_combout\);

-- Location: LCCOMB_X24_Y21_N14
\alu_1|opr1|a6|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr1|a6|cout~0_combout\ = (\m_8|outp[4]~11_combout\ & ((\alu_1|opr1|a4|cout~5_combout\) # ((\m_7|outp[4]~15_combout\) # (\alu_1|opr1|a4|cout~4_combout\)))) # (!\m_8|outp[4]~11_combout\ & (\m_7|outp[4]~15_combout\ & ((\alu_1|opr1|a4|cout~5_combout\) 
-- # (\alu_1|opr1|a4|cout~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr1|a4|cout~5_combout\,
	datab => \m_8|outp[4]~11_combout\,
	datac => \m_7|outp[4]~15_combout\,
	datad => \alu_1|opr1|a4|cout~4_combout\,
	combout => \alu_1|opr1|a6|cout~0_combout\);

-- Location: LCCOMB_X24_Y20_N30
\alu_1|opr2|s5|bout\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s5|bout~combout\ = (\m_7|outp[4]~15_combout\ & (\m_8|outp[4]~11_combout\ & ((\alu_1|opr2|s4|bout~2_combout\) # (\alu_1|opr2|s4|bout~3_combout\)))) # (!\m_7|outp[4]~15_combout\ & ((\m_8|outp[4]~11_combout\) # ((\alu_1|opr2|s4|bout~2_combout\) # 
-- (\alu_1|opr2|s4|bout~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[4]~15_combout\,
	datab => \m_8|outp[4]~11_combout\,
	datac => \alu_1|opr2|s4|bout~2_combout\,
	datad => \alu_1|opr2|s4|bout~3_combout\,
	combout => \alu_1|opr2|s5|bout~combout\);

-- Location: LCCOMB_X24_Y18_N12
\alu_1|temp_out[5]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[5]~59_combout\ = (aluop(0) & (\alu_1|opr2|s5|bout~combout\)) # (!aluop(0) & ((\alu_1|opr1|a6|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_1|opr2|s5|bout~combout\,
	datac => aluop(0),
	datad => \alu_1|opr1|a6|cout~0_combout\,
	combout => \alu_1|temp_out[5]~59_combout\);

-- Location: LCCOMB_X21_Y18_N30
\alu_1|temp_out[5]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[5]~60_combout\ = (\alu_1|temp_out[0]~38_combout\ & (\ir_1|r_1|dout\(5) & (\m_8|outp[0]~7_combout\ & \m_7|outp[5]~14_combout\))) # (!\alu_1|temp_out[0]~38_combout\ & (\m_7|outp[5]~14_combout\ $ (((\ir_1|r_1|dout\(5) & 
-- \m_8|outp[0]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(5),
	datab => \m_8|outp[0]~7_combout\,
	datac => \alu_1|temp_out[0]~38_combout\,
	datad => \m_7|outp[5]~14_combout\,
	combout => \alu_1|temp_out[5]~60_combout\);

-- Location: LCCOMB_X24_Y18_N30
\alu_1|temp_out[5]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[5]~74_combout\ = (aluop(1) & (!aluop(0) & ((!\alu_1|temp_out[5]~60_combout\)))) # (!aluop(1) & ((\alu_1|temp_out[5]~59_combout\ $ (\alu_1|temp_out[5]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => aluop(0),
	datac => \alu_1|temp_out[5]~59_combout\,
	datad => \alu_1|temp_out[5]~60_combout\,
	combout => \alu_1|temp_out[5]~74_combout\);

-- Location: LCCOMB_X21_Y18_N12
\t1|dout[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|dout\(5) = (GLOBAL(\alu_en~clkctrl_outclk\) & (\alu_1|temp_out[5]~74_combout\)) # (!GLOBAL(\alu_en~clkctrl_outclk\) & ((\t1|dout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[5]~74_combout\,
	datac => \alu_en~clkctrl_outclk\,
	datad => \t1|dout\(5),
	combout => \t1|dout\(5));

-- Location: LCCOMB_X21_Y18_N28
\m_9|outp[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_9|outp[5]~14_combout\ = (\pcsrc~combout\ & (\t1|dout\(5))) # (!\pcsrc~combout\ & ((\alu_1|temp_out[5]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|dout\(5),
	datac => \pcsrc~combout\,
	datad => \alu_1|temp_out[5]~74_combout\,
	combout => \m_9|outp[5]~14_combout\);

-- Location: LCCOMB_X21_Y18_N2
\pc|dout[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|dout\(5) = (GLOBAL(\pcwr~clkctrl_outclk\) & (\m_9|outp[5]~14_combout\)) # (!GLOBAL(\pcwr~clkctrl_outclk\) & ((\pc|dout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_9|outp[5]~14_combout\,
	datac => \pc|dout\(5),
	datad => \pcwr~clkctrl_outclk\,
	combout => \pc|dout\(5));

-- Location: LCCOMB_X21_Y18_N16
\m_7|outp[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_7|outp[5]~14_combout\ = (!alusrca(0) & ((alusrca(1) & (\ir_1|r_1|dout\(5))) # (!alusrca(1) & ((\pc|dout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(0),
	datab => alusrca(1),
	datac => \ir_1|r_1|dout\(5),
	datad => \pc|dout\(5),
	combout => \m_7|outp[5]~14_combout\);

-- Location: LCCOMB_X24_Y21_N4
\alu_1|opr1|a6|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr1|a6|cout~1_combout\ = (\alu_1|opr1|a6|cout~0_combout\ & ((\m_7|outp[5]~14_combout\) # ((\m_8|outp[0]~7_combout\ & \ir_1|r_1|dout\(5))))) # (!\alu_1|opr1|a6|cout~0_combout\ & (\m_8|outp[0]~7_combout\ & (\ir_1|r_1|dout\(5) & 
-- \m_7|outp[5]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[0]~7_combout\,
	datab => \ir_1|r_1|dout\(5),
	datac => \alu_1|opr1|a6|cout~0_combout\,
	datad => \m_7|outp[5]~14_combout\,
	combout => \alu_1|opr1|a6|cout~1_combout\);

-- Location: LCCOMB_X24_Y20_N28
\alu_1|opr2|s6|bout\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s6|bout~combout\ = (\m_7|outp[5]~14_combout\ & (\m_8|outp[0]~7_combout\ & (\alu_1|opr2|s5|bout~combout\ & \ir_1|r_1|dout\(5)))) # (!\m_7|outp[5]~14_combout\ & ((\alu_1|opr2|s5|bout~combout\) # ((\m_8|outp[0]~7_combout\ & \ir_1|r_1|dout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[0]~7_combout\,
	datab => \m_7|outp[5]~14_combout\,
	datac => \alu_1|opr2|s5|bout~combout\,
	datad => \ir_1|r_1|dout\(5),
	combout => \alu_1|opr2|s6|bout~combout\);

-- Location: LCCOMB_X24_Y18_N14
\alu_1|temp_out[6]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[6]~82_combout\ = (aluop(1) & (((!aluop(0))))) # (!aluop(1) & ((aluop(0) & ((\alu_1|opr2|s6|bout~combout\))) # (!aluop(0) & (\alu_1|opr1|a6|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr1|a6|cout~1_combout\,
	datab => aluop(1),
	datac => aluop(0),
	datad => \alu_1|opr2|s6|bout~combout\,
	combout => \alu_1|temp_out[6]~82_combout\);

-- Location: LCCOMB_X24_Y18_N8
\alu_1|temp_out[6]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[6]~83_combout\ = (aluop(1) & (\alu_1|temp_out[6]~82_combout\ & ((!\m_7|outp[6]~13_combout\) # (!\m_8|outp[15]~10_combout\)))) # (!aluop(1) & (\m_8|outp[15]~10_combout\ $ (\alu_1|temp_out[6]~82_combout\ $ (\m_7|outp[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[15]~10_combout\,
	datab => aluop(1),
	datac => \alu_1|temp_out[6]~82_combout\,
	datad => \m_7|outp[6]~13_combout\,
	combout => \alu_1|temp_out[6]~83_combout\);

-- Location: LCCOMB_X25_Y18_N22
\t1|dout[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|dout\(6) = (GLOBAL(\alu_en~clkctrl_outclk\) & (\alu_1|temp_out[6]~83_combout\)) # (!GLOBAL(\alu_en~clkctrl_outclk\) & ((\t1|dout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[6]~83_combout\,
	datac => \t1|dout\(6),
	datad => \alu_en~clkctrl_outclk\,
	combout => \t1|dout\(6));

-- Location: LCCOMB_X25_Y18_N20
\m_9|outp[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_9|outp[6]~13_combout\ = (\pcsrc~combout\ & ((\t1|dout\(6)))) # (!\pcsrc~combout\ & (\alu_1|temp_out[6]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[6]~83_combout\,
	datab => \t1|dout\(6),
	datac => \pcsrc~combout\,
	combout => \m_9|outp[6]~13_combout\);

-- Location: LCCOMB_X25_Y18_N28
\pc|dout[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|dout\(6) = (GLOBAL(\pcwr~clkctrl_outclk\) & (\m_9|outp[6]~13_combout\)) # (!GLOBAL(\pcwr~clkctrl_outclk\) & ((\pc|dout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_9|outp[6]~13_combout\,
	datab => \pc|dout\(6),
	datad => \pcwr~clkctrl_outclk\,
	combout => \pc|dout\(6));

-- Location: LCCOMB_X25_Y18_N4
\m_7|outp[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_7|outp[6]~13_combout\ = (!alusrca(0) & (!alusrca(1) & \pc|dout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => alusrca(0),
	datac => alusrca(1),
	datad => \pc|dout\(6),
	combout => \m_7|outp[6]~13_combout\);

-- Location: LCCOMB_X24_Y18_N20
\alu_1|opr1|a8|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr1|a8|sum~combout\ = \m_7|outp[7]~12_combout\ $ (((\m_7|outp[6]~13_combout\ & (!\m_8|outp[15]~10_combout\ & \alu_1|opr1|a6|cout~1_combout\)) # (!\m_7|outp[6]~13_combout\ & (\m_8|outp[15]~10_combout\ & !\alu_1|opr1|a6|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[6]~13_combout\,
	datab => \m_7|outp[7]~12_combout\,
	datac => \m_8|outp[15]~10_combout\,
	datad => \alu_1|opr1|a6|cout~1_combout\,
	combout => \alu_1|opr1|a8|sum~combout\);

-- Location: LCCOMB_X24_Y20_N6
\alu_1|opr2|s8|diff\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s8|diff~combout\ = \m_7|outp[7]~12_combout\ $ (((\m_8|outp[15]~10_combout\ & (!\alu_1|opr2|s6|bout~combout\ & \m_7|outp[6]~13_combout\)) # (!\m_8|outp[15]~10_combout\ & (\alu_1|opr2|s6|bout~combout\ & !\m_7|outp[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[7]~12_combout\,
	datab => \m_8|outp[15]~10_combout\,
	datac => \alu_1|opr2|s6|bout~combout\,
	datad => \m_7|outp[6]~13_combout\,
	combout => \alu_1|opr2|s8|diff~combout\);

-- Location: LCCOMB_X24_Y18_N16
\alu_1|temp_out[7]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[7]~63_combout\ = (!aluop(1) & ((aluop(0) & ((\alu_1|opr2|s8|diff~combout\))) # (!aluop(0) & (\alu_1|opr1|a8|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr1|a8|sum~combout\,
	datab => aluop(1),
	datac => aluop(0),
	datad => \alu_1|opr2|s8|diff~combout\,
	combout => \alu_1|temp_out[7]~63_combout\);

-- Location: LCCOMB_X24_Y18_N4
\alu_1|temp_out[7]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[7]~64_combout\ = (\alu_1|temp_out[7]~63_combout\) # ((\alu_1|temp_out[0]~38_combout\ & ((!\m_7|outp[7]~12_combout\) # (!\m_8|outp[15]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[15]~10_combout\,
	datab => \alu_1|temp_out[0]~38_combout\,
	datac => \alu_1|temp_out[7]~63_combout\,
	datad => \m_7|outp[7]~12_combout\,
	combout => \alu_1|temp_out[7]~64_combout\);

-- Location: LCCOMB_X25_Y18_N0
\t1|dout[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|dout\(7) = (GLOBAL(\alu_en~clkctrl_outclk\) & ((\alu_1|temp_out[7]~64_combout\))) # (!GLOBAL(\alu_en~clkctrl_outclk\) & (\t1|dout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|dout\(7),
	datac => \alu_1|temp_out[7]~64_combout\,
	datad => \alu_en~clkctrl_outclk\,
	combout => \t1|dout\(7));

-- Location: LCCOMB_X25_Y18_N10
\m_9|outp[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_9|outp[7]~12_combout\ = (\pcsrc~combout\ & ((\t1|dout\(7)))) # (!\pcsrc~combout\ & (\alu_1|temp_out[7]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcsrc~combout\,
	datac => \alu_1|temp_out[7]~64_combout\,
	datad => \t1|dout\(7),
	combout => \m_9|outp[7]~12_combout\);

-- Location: LCCOMB_X25_Y18_N14
\pc|dout[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|dout\(7) = (GLOBAL(\pcwr~clkctrl_outclk\) & (\m_9|outp[7]~12_combout\)) # (!GLOBAL(\pcwr~clkctrl_outclk\) & ((\pc|dout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_9|outp[7]~12_combout\,
	datac => \pc|dout\(7),
	datad => \pcwr~clkctrl_outclk\,
	combout => \pc|dout\(7));

-- Location: LCCOMB_X25_Y18_N2
\m_7|outp[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_7|outp[7]~12_combout\ = (!alusrca(0) & (\pc|dout\(7) & !alusrca(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => alusrca(0),
	datac => \pc|dout\(7),
	datad => alusrca(1),
	combout => \m_7|outp[7]~12_combout\);

-- Location: LCCOMB_X24_Y20_N26
\alu_1|opr2|s8|bout\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s8|bout~combout\ = (\m_7|outp[7]~12_combout\ & (\m_8|outp[15]~10_combout\ & ((\alu_1|opr2|s6|bout~combout\) # (!\m_7|outp[6]~13_combout\)))) # (!\m_7|outp[7]~12_combout\ & ((\m_8|outp[15]~10_combout\) # ((!\m_7|outp[6]~13_combout\ & 
-- \alu_1|opr2|s6|bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[7]~12_combout\,
	datab => \m_7|outp[6]~13_combout\,
	datac => \alu_1|opr2|s6|bout~combout\,
	datad => \m_8|outp[15]~10_combout\,
	combout => \alu_1|opr2|s8|bout~combout\);

-- Location: LCCOMB_X24_Y21_N26
\alu_1|opr1|a8|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr1|a8|cout~0_combout\ = (\m_7|outp[6]~13_combout\ & ((\m_8|outp[15]~10_combout\) # ((\m_7|outp[7]~12_combout\ & \alu_1|opr1|a6|cout~1_combout\)))) # (!\m_7|outp[6]~13_combout\ & (\m_8|outp[15]~10_combout\ & ((\m_7|outp[7]~12_combout\) # 
-- (\alu_1|opr1|a6|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[6]~13_combout\,
	datab => \m_7|outp[7]~12_combout\,
	datac => \alu_1|opr1|a6|cout~1_combout\,
	datad => \m_8|outp[15]~10_combout\,
	combout => \alu_1|opr1|a8|cout~0_combout\);

-- Location: LCCOMB_X24_Y19_N12
\alu_1|temp_out[8]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[8]~84_combout\ = (aluop(1) & (((!aluop(0))))) # (!aluop(1) & ((aluop(0) & (\alu_1|opr2|s8|bout~combout\)) # (!aluop(0) & ((\alu_1|opr1|a8|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr2|s8|bout~combout\,
	datab => aluop(1),
	datac => \alu_1|opr1|a8|cout~0_combout\,
	datad => aluop(0),
	combout => \alu_1|temp_out[8]~84_combout\);

-- Location: LCCOMB_X24_Y19_N30
\alu_1|temp_out[8]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[8]~85_combout\ = (aluop(1) & (\alu_1|temp_out[8]~84_combout\ & ((!\m_8|outp[15]~10_combout\) # (!\m_7|outp[8]~11_combout\)))) # (!aluop(1) & (\alu_1|temp_out[8]~84_combout\ $ (\m_7|outp[8]~11_combout\ $ (\m_8|outp[15]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => \alu_1|temp_out[8]~84_combout\,
	datac => \m_7|outp[8]~11_combout\,
	datad => \m_8|outp[15]~10_combout\,
	combout => \alu_1|temp_out[8]~85_combout\);

-- Location: LCCOMB_X24_Y19_N14
\t1|dout[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|dout\(8) = (GLOBAL(\alu_en~clkctrl_outclk\) & (\alu_1|temp_out[8]~85_combout\)) # (!GLOBAL(\alu_en~clkctrl_outclk\) & ((\t1|dout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_1|temp_out[8]~85_combout\,
	datac => \t1|dout\(8),
	datad => \alu_en~clkctrl_outclk\,
	combout => \t1|dout\(8));

-- Location: LCCOMB_X24_Y19_N18
\m_9|outp[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_9|outp[8]~11_combout\ = (\pcsrc~combout\ & ((\t1|dout\(8)))) # (!\pcsrc~combout\ & (\alu_1|temp_out[8]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_1|temp_out[8]~85_combout\,
	datac => \t1|dout\(8),
	datad => \pcsrc~combout\,
	combout => \m_9|outp[8]~11_combout\);

-- Location: LCCOMB_X24_Y19_N26
\pc|dout[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|dout\(8) = (GLOBAL(\pcwr~clkctrl_outclk\) & (\m_9|outp[8]~11_combout\)) # (!GLOBAL(\pcwr~clkctrl_outclk\) & ((\pc|dout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_9|outp[8]~11_combout\,
	datac => \pc|dout\(8),
	datad => \pcwr~clkctrl_outclk\,
	combout => \pc|dout\(8));

-- Location: LCCOMB_X24_Y19_N20
\m_7|outp[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_7|outp[8]~11_combout\ = (!alusrca(1) & (\pc|dout\(8) & !alusrca(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => alusrca(1),
	datac => \pc|dout\(8),
	datad => alusrca(0),
	combout => \m_7|outp[8]~11_combout\);

-- Location: LCCOMB_X24_Y19_N10
\alu_1|opr2|s10|diff\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s10|diff~combout\ = \m_7|outp[9]~10_combout\ $ (((\m_7|outp[8]~11_combout\ & (\m_8|outp[15]~10_combout\ & !\alu_1|opr2|s8|bout~combout\)) # (!\m_7|outp[8]~11_combout\ & (!\m_8|outp[15]~10_combout\ & \alu_1|opr2|s8|bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[8]~11_combout\,
	datab => \m_8|outp[15]~10_combout\,
	datac => \m_7|outp[9]~10_combout\,
	datad => \alu_1|opr2|s8|bout~combout\,
	combout => \alu_1|opr2|s10|diff~combout\);

-- Location: LCCOMB_X24_Y21_N18
\alu_1|opr1|a10|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr1|a10|sum~combout\ = \m_7|outp[9]~10_combout\ $ (((\alu_1|opr1|a8|cout~0_combout\ & (\m_7|outp[8]~11_combout\ & !\m_8|outp[15]~10_combout\)) # (!\alu_1|opr1|a8|cout~0_combout\ & (!\m_7|outp[8]~11_combout\ & \m_8|outp[15]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr1|a8|cout~0_combout\,
	datab => \m_7|outp[8]~11_combout\,
	datac => \m_7|outp[9]~10_combout\,
	datad => \m_8|outp[15]~10_combout\,
	combout => \alu_1|opr1|a10|sum~combout\);

-- Location: LCCOMB_X24_Y19_N16
\alu_1|temp_out[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[9]~52_combout\ = (!aluop(1) & ((aluop(0) & (\alu_1|opr2|s10|diff~combout\)) # (!aluop(0) & ((\alu_1|opr1|a10|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => \alu_1|opr2|s10|diff~combout\,
	datac => aluop(0),
	datad => \alu_1|opr1|a10|sum~combout\,
	combout => \alu_1|temp_out[9]~52_combout\);

-- Location: LCCOMB_X24_Y19_N2
\alu_1|temp_out[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[9]~53_combout\ = (\alu_1|temp_out[9]~52_combout\) # ((\alu_1|temp_out[0]~38_combout\ & ((!\m_7|outp[9]~10_combout\) # (!\m_8|outp[15]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[0]~38_combout\,
	datab => \m_8|outp[15]~10_combout\,
	datac => \alu_1|temp_out[9]~52_combout\,
	datad => \m_7|outp[9]~10_combout\,
	combout => \alu_1|temp_out[9]~53_combout\);

-- Location: LCCOMB_X24_Y19_N8
\t1|dout[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|dout\(9) = (GLOBAL(\alu_en~clkctrl_outclk\) & (\alu_1|temp_out[9]~53_combout\)) # (!GLOBAL(\alu_en~clkctrl_outclk\) & ((\t1|dout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_1|temp_out[9]~53_combout\,
	datac => \t1|dout\(9),
	datad => \alu_en~clkctrl_outclk\,
	combout => \t1|dout\(9));

-- Location: LCCOMB_X24_Y19_N28
\m_9|outp[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_9|outp[9]~10_combout\ = (\pcsrc~combout\ & ((\t1|dout\(9)))) # (!\pcsrc~combout\ & (\alu_1|temp_out[9]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pcsrc~combout\,
	datac => \alu_1|temp_out[9]~53_combout\,
	datad => \t1|dout\(9),
	combout => \m_9|outp[9]~10_combout\);

-- Location: LCCOMB_X24_Y19_N24
\pc|dout[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|dout\(9) = (GLOBAL(\pcwr~clkctrl_outclk\) & (\m_9|outp[9]~10_combout\)) # (!GLOBAL(\pcwr~clkctrl_outclk\) & ((\pc|dout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_9|outp[9]~10_combout\,
	datab => \pc|dout\(9),
	datad => \pcwr~clkctrl_outclk\,
	combout => \pc|dout\(9));

-- Location: LCCOMB_X24_Y19_N22
\m_7|outp[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_7|outp[9]~10_combout\ = (!alusrca(0) & (!alusrca(1) & \pc|dout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(0),
	datac => alusrca(1),
	datad => \pc|dout\(9),
	combout => \m_7|outp[9]~10_combout\);

-- Location: LCCOMB_X24_Y21_N8
\alu_1|opr1|a10|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr1|a10|cout~0_combout\ = (\m_8|outp[15]~10_combout\ & ((\m_7|outp[9]~10_combout\) # ((\alu_1|opr1|a8|cout~0_combout\) # (\m_7|outp[8]~11_combout\)))) # (!\m_8|outp[15]~10_combout\ & (\m_7|outp[9]~10_combout\ & (\alu_1|opr1|a8|cout~0_combout\ & 
-- \m_7|outp[8]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[15]~10_combout\,
	datab => \m_7|outp[9]~10_combout\,
	datac => \alu_1|opr1|a8|cout~0_combout\,
	datad => \m_7|outp[8]~11_combout\,
	combout => \alu_1|opr1|a10|cout~0_combout\);

-- Location: LCCOMB_X23_Y18_N2
\alu_1|temp_out[10]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[10]~56_combout\ = (\alu_1|temp_out[15]~44_combout\ & (\m_8|outp[15]~10_combout\ $ (\alu_1|opr1|a10|cout~0_combout\ $ (\m_7|outp[10]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[15]~10_combout\,
	datab => \alu_1|temp_out[15]~44_combout\,
	datac => \alu_1|opr1|a10|cout~0_combout\,
	datad => \m_7|outp[10]~9_combout\,
	combout => \alu_1|temp_out[10]~56_combout\);

-- Location: LCCOMB_X23_Y18_N24
\alu_1|temp_out[10]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[10]~57_combout\ = (\alu_1|temp_out[10]~56_combout\) # ((\alu_1|temp_out[0]~38_combout\ & ((!\m_7|outp[10]~9_combout\) # (!\m_8|outp[15]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[15]~10_combout\,
	datab => \m_7|outp[10]~9_combout\,
	datac => \alu_1|temp_out[10]~56_combout\,
	datad => \alu_1|temp_out[0]~38_combout\,
	combout => \alu_1|temp_out[10]~57_combout\);

-- Location: LCCOMB_X24_Y18_N2
\alu_1|temp_out[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[15]~46_combout\ = (aluop(0) & !aluop(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => aluop(0),
	datad => aluop(1),
	combout => \alu_1|temp_out[15]~46_combout\);

-- Location: LCCOMB_X24_Y20_N8
\alu_1|opr2|s10|bout\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s10|bout~combout\ = (\m_7|outp[9]~10_combout\ & (\m_8|outp[15]~10_combout\ & ((\alu_1|opr2|s8|bout~combout\) # (!\m_7|outp[8]~11_combout\)))) # (!\m_7|outp[9]~10_combout\ & ((\m_8|outp[15]~10_combout\) # ((!\m_7|outp[8]~11_combout\ & 
-- \alu_1|opr2|s8|bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[9]~10_combout\,
	datab => \m_8|outp[15]~10_combout\,
	datac => \m_7|outp[8]~11_combout\,
	datad => \alu_1|opr2|s8|bout~combout\,
	combout => \alu_1|opr2|s10|bout~combout\);

-- Location: LCCOMB_X23_Y18_N12
\alu_1|temp_out[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[10]~55_combout\ = (\alu_1|temp_out[15]~46_combout\ & (\m_8|outp[15]~10_combout\ $ (\alu_1|opr2|s10|bout~combout\ $ (\m_7|outp[10]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[15]~10_combout\,
	datab => \alu_1|temp_out[15]~46_combout\,
	datac => \alu_1|opr2|s10|bout~combout\,
	datad => \m_7|outp[10]~9_combout\,
	combout => \alu_1|temp_out[10]~55_combout\);

-- Location: LCCOMB_X23_Y18_N6
\alu_1|temp_out[10]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[10]~58_combout\ = (\alu_1|temp_out[10]~55_combout\) # (\alu_1|temp_out[10]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[10]~55_combout\,
	datad => \alu_1|temp_out[10]~57_combout\,
	combout => \alu_1|temp_out[10]~58_combout\);

-- Location: LCCOMB_X23_Y18_N26
\t1|dout[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|dout\(10) = (GLOBAL(\alu_en~clkctrl_outclk\) & (\alu_1|temp_out[10]~58_combout\)) # (!GLOBAL(\alu_en~clkctrl_outclk\) & ((\t1|dout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[10]~58_combout\,
	datac => \alu_en~clkctrl_outclk\,
	datad => \t1|dout\(10),
	combout => \t1|dout\(10));

-- Location: LCCOMB_X23_Y18_N10
\m_9|outp[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_9|outp[10]~9_combout\ = (\pcsrc~combout\ & (((\t1|dout\(10))))) # (!\pcsrc~combout\ & ((\alu_1|temp_out[10]~57_combout\) # ((\alu_1|temp_out[10]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[10]~57_combout\,
	datab => \alu_1|temp_out[10]~55_combout\,
	datac => \pcsrc~combout\,
	datad => \t1|dout\(10),
	combout => \m_9|outp[10]~9_combout\);

-- Location: LCCOMB_X23_Y18_N14
\pc|dout[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|dout\(10) = (GLOBAL(\pcwr~clkctrl_outclk\) & (\m_9|outp[10]~9_combout\)) # (!GLOBAL(\pcwr~clkctrl_outclk\) & ((\pc|dout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_9|outp[10]~9_combout\,
	datac => \pc|dout\(10),
	datad => \pcwr~clkctrl_outclk\,
	combout => \pc|dout\(10));

-- Location: LCCOMB_X23_Y18_N30
\m_7|outp[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_7|outp[10]~9_combout\ = (!alusrca(1) & (!alusrca(0) & \pc|dout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(1),
	datab => alusrca(0),
	datac => \pc|dout\(10),
	combout => \m_7|outp[10]~9_combout\);

-- Location: LCCOMB_X24_Y20_N20
\alu_1|opr2|s12|diff\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s12|diff~combout\ = \m_7|outp[11]~8_combout\ $ (((\m_7|outp[10]~9_combout\ & (!\alu_1|opr2|s10|bout~combout\ & \m_8|outp[15]~10_combout\)) # (!\m_7|outp[10]~9_combout\ & (\alu_1|opr2|s10|bout~combout\ & !\m_8|outp[15]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[10]~9_combout\,
	datab => \alu_1|opr2|s10|bout~combout\,
	datac => \m_8|outp[15]~10_combout\,
	datad => \m_7|outp[11]~8_combout\,
	combout => \alu_1|opr2|s12|diff~combout\);

-- Location: LCCOMB_X24_Y20_N12
\alu_1|temp_out[11]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[11]~72_combout\ = (!aluop(1) & (\alu_1|opr2|s12|diff~combout\ & aluop(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => \alu_1|opr2|s12|diff~combout\,
	datac => aluop(0),
	combout => \alu_1|temp_out[11]~72_combout\);

-- Location: LCCOMB_X24_Y20_N18
\alu_1|temp_out[11]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[11]~73_combout\ = (!aluop(0) & (aluop(1) & ((!\m_7|outp[11]~8_combout\) # (!\m_8|outp[15]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aluop(0),
	datab => \m_8|outp[15]~10_combout\,
	datac => aluop(1),
	datad => \m_7|outp[11]~8_combout\,
	combout => \alu_1|temp_out[11]~73_combout\);

-- Location: LCCOMB_X24_Y20_N14
\alu_1|opr1|a12|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr1|a12|sum~combout\ = \m_7|outp[11]~8_combout\ $ (((\m_8|outp[15]~10_combout\ & (!\alu_1|opr1|a10|cout~0_combout\ & !\m_7|outp[10]~9_combout\)) # (!\m_8|outp[15]~10_combout\ & (\alu_1|opr1|a10|cout~0_combout\ & \m_7|outp[10]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[11]~8_combout\,
	datab => \m_8|outp[15]~10_combout\,
	datac => \alu_1|opr1|a10|cout~0_combout\,
	datad => \m_7|outp[10]~9_combout\,
	combout => \alu_1|opr1|a12|sum~combout\);

-- Location: LCCOMB_X24_Y20_N16
\alu_1|temp_out[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[11]~54_combout\ = (\alu_1|temp_out[11]~72_combout\) # ((\alu_1|temp_out[11]~73_combout\) # ((\alu_1|temp_out[15]~44_combout\ & \alu_1|opr1|a12|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[11]~72_combout\,
	datab => \alu_1|temp_out[11]~73_combout\,
	datac => \alu_1|temp_out[15]~44_combout\,
	datad => \alu_1|opr1|a12|sum~combout\,
	combout => \alu_1|temp_out[11]~54_combout\);

-- Location: LCCOMB_X25_Y18_N30
\t1|dout[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|dout\(11) = (GLOBAL(\alu_en~clkctrl_outclk\) & (\alu_1|temp_out[11]~54_combout\)) # (!GLOBAL(\alu_en~clkctrl_outclk\) & ((\t1|dout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_1|temp_out[11]~54_combout\,
	datac => \t1|dout\(11),
	datad => \alu_en~clkctrl_outclk\,
	combout => \t1|dout\(11));

-- Location: LCCOMB_X25_Y18_N24
\m_9|outp[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_9|outp[11]~8_combout\ = (\pcsrc~combout\ & ((\t1|dout\(11)))) # (!\pcsrc~combout\ & (\alu_1|temp_out[11]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_1|temp_out[11]~54_combout\,
	datac => \pcsrc~combout\,
	datad => \t1|dout\(11),
	combout => \m_9|outp[11]~8_combout\);

-- Location: LCCOMB_X25_Y18_N12
\pc|dout[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|dout\(11) = (GLOBAL(\pcwr~clkctrl_outclk\) & ((\m_9|outp[11]~8_combout\))) # (!GLOBAL(\pcwr~clkctrl_outclk\) & (\pc|dout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(11),
	datac => \m_9|outp[11]~8_combout\,
	datad => \pcwr~clkctrl_outclk\,
	combout => \pc|dout\(11));

-- Location: LCCOMB_X25_Y18_N16
\m_7|outp[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_7|outp[11]~8_combout\ = (!alusrca(0) & (!alusrca(1) & \pc|dout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(0),
	datab => alusrca(1),
	datad => \pc|dout\(11),
	combout => \m_7|outp[11]~8_combout\);

-- Location: LCCOMB_X24_Y21_N22
\alu_1|opr1|a12|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr1|a12|cout~0_combout\ = (\m_8|outp[15]~10_combout\ & ((\m_7|outp[11]~8_combout\) # ((\alu_1|opr1|a10|cout~0_combout\) # (\m_7|outp[10]~9_combout\)))) # (!\m_8|outp[15]~10_combout\ & (\m_7|outp[11]~8_combout\ & (\alu_1|opr1|a10|cout~0_combout\ & 
-- \m_7|outp[10]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[15]~10_combout\,
	datab => \m_7|outp[11]~8_combout\,
	datac => \alu_1|opr1|a10|cout~0_combout\,
	datad => \m_7|outp[10]~9_combout\,
	combout => \alu_1|opr1|a12|cout~0_combout\);

-- Location: LCCOMB_X23_Y18_N18
\alu_1|temp_out[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[12]~49_combout\ = (\alu_1|temp_out[15]~44_combout\ & (\m_7|outp[12]~7_combout\ $ (\alu_1|opr1|a12|cout~0_combout\ $ (\m_8|outp[15]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[12]~7_combout\,
	datab => \alu_1|opr1|a12|cout~0_combout\,
	datac => \alu_1|temp_out[15]~44_combout\,
	datad => \m_8|outp[15]~10_combout\,
	combout => \alu_1|temp_out[12]~49_combout\);

-- Location: LCCOMB_X23_Y18_N28
\alu_1|temp_out[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[12]~50_combout\ = (\alu_1|temp_out[12]~49_combout\) # ((\alu_1|temp_out[0]~38_combout\ & ((!\m_7|outp[12]~7_combout\) # (!\m_8|outp[15]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[15]~10_combout\,
	datab => \alu_1|temp_out[12]~49_combout\,
	datac => \alu_1|temp_out[0]~38_combout\,
	datad => \m_7|outp[12]~7_combout\,
	combout => \alu_1|temp_out[12]~50_combout\);

-- Location: LCCOMB_X24_Y20_N2
\alu_1|opr2|s12|bout\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s12|bout~combout\ = (\m_7|outp[11]~8_combout\ & (\m_8|outp[15]~10_combout\ & ((\alu_1|opr2|s10|bout~combout\) # (!\m_7|outp[10]~9_combout\)))) # (!\m_7|outp[11]~8_combout\ & ((\m_8|outp[15]~10_combout\) # ((\alu_1|opr2|s10|bout~combout\ & 
-- !\m_7|outp[10]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[11]~8_combout\,
	datab => \m_8|outp[15]~10_combout\,
	datac => \alu_1|opr2|s10|bout~combout\,
	datad => \m_7|outp[10]~9_combout\,
	combout => \alu_1|opr2|s12|bout~combout\);

-- Location: LCCOMB_X23_Y18_N16
\alu_1|temp_out[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[12]~48_combout\ = (\alu_1|temp_out[15]~46_combout\ & (\m_8|outp[15]~10_combout\ $ (\alu_1|opr2|s12|bout~combout\ $ (\m_7|outp[12]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[15]~10_combout\,
	datab => \alu_1|opr2|s12|bout~combout\,
	datac => \alu_1|temp_out[15]~46_combout\,
	datad => \m_7|outp[12]~7_combout\,
	combout => \alu_1|temp_out[12]~48_combout\);

-- Location: LCCOMB_X23_Y18_N22
\alu_1|temp_out[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[12]~51_combout\ = (\alu_1|temp_out[12]~48_combout\) # (\alu_1|temp_out[12]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_1|temp_out[12]~48_combout\,
	datad => \alu_1|temp_out[12]~50_combout\,
	combout => \alu_1|temp_out[12]~51_combout\);

-- Location: LCCOMB_X23_Y18_N0
\t1|dout[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|dout\(12) = (GLOBAL(\alu_en~clkctrl_outclk\) & (\alu_1|temp_out[12]~51_combout\)) # (!GLOBAL(\alu_en~clkctrl_outclk\) & ((\t1|dout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[12]~51_combout\,
	datac => \alu_en~clkctrl_outclk\,
	datad => \t1|dout\(12),
	combout => \t1|dout\(12));

-- Location: LCCOMB_X23_Y18_N4
\m_9|outp[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_9|outp[12]~7_combout\ = (\pcsrc~combout\ & (((\t1|dout\(12))))) # (!\pcsrc~combout\ & ((\alu_1|temp_out[12]~50_combout\) # ((\alu_1|temp_out[12]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcsrc~combout\,
	datab => \alu_1|temp_out[12]~50_combout\,
	datac => \alu_1|temp_out[12]~48_combout\,
	datad => \t1|dout\(12),
	combout => \m_9|outp[12]~7_combout\);

-- Location: LCCOMB_X23_Y18_N8
\pc|dout[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|dout\(12) = (GLOBAL(\pcwr~clkctrl_outclk\) & ((\m_9|outp[12]~7_combout\))) # (!GLOBAL(\pcwr~clkctrl_outclk\) & (\pc|dout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(12),
	datac => \m_9|outp[12]~7_combout\,
	datad => \pcwr~clkctrl_outclk\,
	combout => \pc|dout\(12));

-- Location: LCCOMB_X23_Y18_N20
\m_7|outp[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_7|outp[12]~7_combout\ = (!alusrca(1) & (!alusrca(0) & \pc|dout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(1),
	datab => alusrca(0),
	datac => \pc|dout\(12),
	combout => \m_7|outp[12]~7_combout\);

-- Location: LCCOMB_X23_Y17_N24
\alu_1|temp_out[13]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[13]~80_combout\ = (\m_8|outp[15]~10_combout\ & (!\alu_1|opr1|a12|cout~0_combout\ & (!\m_7|outp[12]~7_combout\ & !aluop(1)))) # (!\m_8|outp[15]~10_combout\ & ((aluop(1)) # ((\alu_1|opr1|a12|cout~0_combout\ & \m_7|outp[12]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr1|a12|cout~0_combout\,
	datab => \m_7|outp[12]~7_combout\,
	datac => \m_8|outp[15]~10_combout\,
	datad => aluop(1),
	combout => \alu_1|temp_out[13]~80_combout\);

-- Location: LCCOMB_X23_Y17_N30
\alu_1|temp_out[13]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[13]~81_combout\ = (!aluop(0) & ((aluop(1) & ((\alu_1|temp_out[13]~80_combout\) # (!\m_7|outp[13]~6_combout\))) # (!aluop(1) & (\alu_1|temp_out[13]~80_combout\ $ (\m_7|outp[13]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => \alu_1|temp_out[13]~80_combout\,
	datac => aluop(0),
	datad => \m_7|outp[13]~6_combout\,
	combout => \alu_1|temp_out[13]~81_combout\);

-- Location: LCCOMB_X23_Y17_N6
\alu_1|opr2|s14|diff\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s14|diff~combout\ = \m_7|outp[13]~6_combout\ $ (((\alu_1|opr2|s12|bout~combout\ & (!\m_8|outp[15]~10_combout\ & !\m_7|outp[12]~7_combout\)) # (!\alu_1|opr2|s12|bout~combout\ & (\m_8|outp[15]~10_combout\ & \m_7|outp[12]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr2|s12|bout~combout\,
	datab => \m_7|outp[13]~6_combout\,
	datac => \m_8|outp[15]~10_combout\,
	datad => \m_7|outp[12]~7_combout\,
	combout => \alu_1|opr2|s14|diff~combout\);

-- Location: LCCOMB_X23_Y17_N20
\alu_1|temp_out[13]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[13]~77_combout\ = (\alu_1|opr2|s14|diff~combout\ & (!aluop(1) & aluop(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr2|s14|diff~combout\,
	datac => aluop(1),
	datad => aluop(0),
	combout => \alu_1|temp_out[13]~77_combout\);

-- Location: LCCOMB_X23_Y17_N26
\alu_1|temp_out[13]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[13]~79_combout\ = (\alu_1|temp_out[13]~81_combout\) # ((aluop(0) & (\alu_1|opr2|s14|diff~combout\ & !aluop(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aluop(0),
	datab => \alu_1|opr2|s14|diff~combout\,
	datac => \alu_1|temp_out[13]~81_combout\,
	datad => aluop(1),
	combout => \alu_1|temp_out[13]~79_combout\);

-- Location: LCCOMB_X23_Y17_N22
\t1|dout[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|dout\(13) = (GLOBAL(\alu_en~clkctrl_outclk\) & (\alu_1|temp_out[13]~79_combout\)) # (!GLOBAL(\alu_en~clkctrl_outclk\) & ((\t1|dout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[13]~79_combout\,
	datac => \t1|dout\(13),
	datad => \alu_en~clkctrl_outclk\,
	combout => \t1|dout\(13));

-- Location: LCCOMB_X23_Y17_N16
\m_9|outp[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_9|outp[13]~6_combout\ = (\pcsrc~combout\ & (((\t1|dout\(13))))) # (!\pcsrc~combout\ & ((\alu_1|temp_out[13]~81_combout\) # ((\alu_1|temp_out[13]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[13]~81_combout\,
	datab => \alu_1|temp_out[13]~77_combout\,
	datac => \pcsrc~combout\,
	datad => \t1|dout\(13),
	combout => \m_9|outp[13]~6_combout\);

-- Location: LCCOMB_X23_Y17_N18
\pc|dout[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|dout\(13) = (GLOBAL(\pcwr~clkctrl_outclk\) & ((\m_9|outp[13]~6_combout\))) # (!GLOBAL(\pcwr~clkctrl_outclk\) & (\pc|dout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(13),
	datac => \m_9|outp[13]~6_combout\,
	datad => \pcwr~clkctrl_outclk\,
	combout => \pc|dout\(13));

-- Location: LCCOMB_X23_Y20_N18
\m_7|outp[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_7|outp[13]~6_combout\ = (!alusrca(1) & (!alusrca(0) & \pc|dout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(1),
	datac => alusrca(0),
	datad => \pc|dout\(13),
	combout => \m_7|outp[13]~6_combout\);

-- Location: LCCOMB_X24_Y21_N20
\alu_1|opr1|a14|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr1|a14|cout~0_combout\ = (\m_7|outp[12]~7_combout\ & ((\m_8|outp[15]~10_combout\) # ((\alu_1|opr1|a12|cout~0_combout\ & \m_7|outp[13]~6_combout\)))) # (!\m_7|outp[12]~7_combout\ & (\m_8|outp[15]~10_combout\ & ((\alu_1|opr1|a12|cout~0_combout\) # 
-- (\m_7|outp[13]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[12]~7_combout\,
	datab => \m_8|outp[15]~10_combout\,
	datac => \alu_1|opr1|a12|cout~0_combout\,
	datad => \m_7|outp[13]~6_combout\,
	combout => \alu_1|opr1|a14|cout~0_combout\);

-- Location: LCCOMB_X23_Y17_N14
\alu_1|temp_out[14]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[14]~76_combout\ = (aluop(1) & (!aluop(0) & ((!\m_7|outp[14]~5_combout\) # (!\m_8|outp[15]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => \m_8|outp[15]~10_combout\,
	datac => aluop(0),
	datad => \m_7|outp[14]~5_combout\,
	combout => \alu_1|temp_out[14]~76_combout\);

-- Location: LCCOMB_X23_Y20_N20
\alu_1|opr2|s15|xor_i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s15|xor_i~2_combout\ = \m_8|outp[15]~10_combout\ $ (((!alusrca(0) & (!alusrca(1) & \pc|dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(0),
	datab => alusrca(1),
	datac => \pc|dout\(14),
	datad => \m_8|outp[15]~10_combout\,
	combout => \alu_1|opr2|s15|xor_i~2_combout\);

-- Location: LCCOMB_X23_Y17_N8
\alu_1|temp_out[14]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[14]~65_combout\ = (\alu_1|temp_out[14]~76_combout\) # ((\alu_1|temp_out[15]~44_combout\ & (\alu_1|opr2|s15|xor_i~2_combout\ $ (\alu_1|opr1|a14|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[15]~44_combout\,
	datab => \alu_1|temp_out[14]~76_combout\,
	datac => \alu_1|opr2|s15|xor_i~2_combout\,
	datad => \alu_1|opr1|a14|cout~0_combout\,
	combout => \alu_1|temp_out[14]~65_combout\);

-- Location: LCCOMB_X24_Y17_N26
\alu_1|opr2|s14|bout\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s14|bout~combout\ = (\m_7|outp[13]~6_combout\ & (\m_8|outp[15]~10_combout\ & ((\alu_1|opr2|s12|bout~combout\) # (!\m_7|outp[12]~7_combout\)))) # (!\m_7|outp[13]~6_combout\ & ((\m_8|outp[15]~10_combout\) # ((\alu_1|opr2|s12|bout~combout\ & 
-- !\m_7|outp[12]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[13]~6_combout\,
	datab => \m_8|outp[15]~10_combout\,
	datac => \alu_1|opr2|s12|bout~combout\,
	datad => \m_7|outp[12]~7_combout\,
	combout => \alu_1|opr2|s14|bout~combout\);

-- Location: LCCOMB_X23_Y17_N10
\alu_1|temp_out[14]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[14]~66_combout\ = (\alu_1|temp_out[14]~65_combout\) # ((\alu_1|temp_out[15]~46_combout\ & (\alu_1|opr2|s14|bout~combout\ $ (\alu_1|opr2|s15|xor_i~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[15]~46_combout\,
	datab => \alu_1|opr2|s14|bout~combout\,
	datac => \alu_1|temp_out[14]~65_combout\,
	datad => \alu_1|opr2|s15|xor_i~2_combout\,
	combout => \alu_1|temp_out[14]~66_combout\);

-- Location: LCCOMB_X23_Y17_N4
\t1|dout[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|dout\(14) = (GLOBAL(\alu_en~clkctrl_outclk\) & (\alu_1|temp_out[14]~66_combout\)) # (!GLOBAL(\alu_en~clkctrl_outclk\) & ((\t1|dout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[14]~66_combout\,
	datac => \t1|dout\(14),
	datad => \alu_en~clkctrl_outclk\,
	combout => \t1|dout\(14));

-- Location: LCCOMB_X23_Y17_N28
\alu_1|temp_out[14]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[14]~75_combout\ = (!aluop(1) & (aluop(0) & (\alu_1|opr2|s15|xor_i~2_combout\ $ (\alu_1|opr2|s14|bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr2|s15|xor_i~2_combout\,
	datab => \alu_1|opr2|s14|bout~combout\,
	datac => aluop(1),
	datad => aluop(0),
	combout => \alu_1|temp_out[14]~75_combout\);

-- Location: LCCOMB_X23_Y17_N2
\m_9|outp[14]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_9|outp[14]~5_combout\ = (\pcsrc~combout\ & (((\t1|dout\(14))))) # (!\pcsrc~combout\ & ((\alu_1|temp_out[14]~65_combout\) # ((\alu_1|temp_out[14]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcsrc~combout\,
	datab => \alu_1|temp_out[14]~65_combout\,
	datac => \t1|dout\(14),
	datad => \alu_1|temp_out[14]~75_combout\,
	combout => \m_9|outp[14]~5_combout\);

-- Location: LCCOMB_X23_Y17_N12
\pc|dout[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|dout\(14) = (GLOBAL(\pcwr~clkctrl_outclk\) & ((\m_9|outp[14]~5_combout\))) # (!GLOBAL(\pcwr~clkctrl_outclk\) & (\pc|dout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(14),
	datac => \m_9|outp[14]~5_combout\,
	datad => \pcwr~clkctrl_outclk\,
	combout => \pc|dout\(14));

-- Location: LCCOMB_X23_Y20_N28
\m_7|outp[14]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_7|outp[14]~5_combout\ = (!alusrca(1) & (!alusrca(0) & \pc|dout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(1),
	datac => alusrca(0),
	datad => \pc|dout\(14),
	combout => \m_7|outp[14]~5_combout\);

-- Location: LCCOMB_X24_Y17_N22
\alu_1|opr1|a15|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr1|a15|cout~0_combout\ = (\m_8|outp[15]~10_combout\ & ((\alu_1|opr1|a14|cout~0_combout\) # (\m_7|outp[14]~5_combout\))) # (!\m_8|outp[15]~10_combout\ & (\alu_1|opr1|a14|cout~0_combout\ & \m_7|outp[14]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[15]~10_combout\,
	datac => \alu_1|opr1|a14|cout~0_combout\,
	datad => \m_7|outp[14]~5_combout\,
	combout => \alu_1|opr1|a15|cout~0_combout\);

-- Location: LCCOMB_X24_Y17_N14
\alu_1|opr2|s16|xor_i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s16|xor_i~2_combout\ = \m_8|outp[15]~10_combout\ $ (((!alusrca(0) & (!alusrca(1) & \pc|dout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(0),
	datab => \m_8|outp[15]~10_combout\,
	datac => alusrca(1),
	datad => \pc|dout\(15),
	combout => \alu_1|opr2|s16|xor_i~2_combout\);

-- Location: LCCOMB_X24_Y17_N4
\alu_1|opr2|s15|bout\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s15|bout~combout\ = (\m_7|outp[14]~5_combout\ & (\m_8|outp[15]~10_combout\ & \alu_1|opr2|s14|bout~combout\)) # (!\m_7|outp[14]~5_combout\ & ((\m_8|outp[15]~10_combout\) # (\alu_1|opr2|s14|bout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[14]~5_combout\,
	datac => \m_8|outp[15]~10_combout\,
	datad => \alu_1|opr2|s14|bout~combout\,
	combout => \alu_1|opr2|s15|bout~combout\);

-- Location: LCCOMB_X24_Y17_N20
\alu_1|temp_out[15]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[15]~71_combout\ = (!aluop(0) & (aluop(1) & ((!\m_8|outp[15]~10_combout\) # (!\m_7|outp[15]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aluop(0),
	datab => aluop(1),
	datac => \m_7|outp[15]~4_combout\,
	datad => \m_8|outp[15]~10_combout\,
	combout => \alu_1|temp_out[15]~71_combout\);

-- Location: LCCOMB_X24_Y17_N24
\alu_1|temp_out[15]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[15]~45_combout\ = (\alu_1|temp_out[15]~71_combout\) # ((\alu_1|temp_out[15]~44_combout\ & (\alu_1|opr2|s16|xor_i~2_combout\ $ (\alu_1|opr1|a15|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr2|s16|xor_i~2_combout\,
	datab => \alu_1|temp_out[15]~44_combout\,
	datac => \alu_1|temp_out[15]~71_combout\,
	datad => \alu_1|opr1|a15|cout~0_combout\,
	combout => \alu_1|temp_out[15]~45_combout\);

-- Location: LCCOMB_X24_Y17_N18
\alu_1|temp_out[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[15]~47_combout\ = (\alu_1|temp_out[15]~45_combout\) # ((\alu_1|temp_out[15]~46_combout\ & (\alu_1|opr2|s16|xor_i~2_combout\ $ (\alu_1|opr2|s15|bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr2|s16|xor_i~2_combout\,
	datab => \alu_1|temp_out[15]~46_combout\,
	datac => \alu_1|opr2|s15|bout~combout\,
	datad => \alu_1|temp_out[15]~45_combout\,
	combout => \alu_1|temp_out[15]~47_combout\);

-- Location: LCCOMB_X24_Y17_N2
\t1|dout[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|dout\(15) = (GLOBAL(\alu_en~clkctrl_outclk\) & (\alu_1|temp_out[15]~47_combout\)) # (!GLOBAL(\alu_en~clkctrl_outclk\) & ((\t1|dout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[15]~47_combout\,
	datab => \t1|dout\(15),
	datad => \alu_en~clkctrl_outclk\,
	combout => \t1|dout\(15));

-- Location: LCCOMB_X24_Y17_N28
\alu_1|temp_out[15]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[15]~78_combout\ = (aluop(0) & (!aluop(1) & (\alu_1|opr2|s16|xor_i~2_combout\ $ (\alu_1|opr2|s15|bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr2|s16|xor_i~2_combout\,
	datab => aluop(0),
	datac => aluop(1),
	datad => \alu_1|opr2|s15|bout~combout\,
	combout => \alu_1|temp_out[15]~78_combout\);

-- Location: LCCOMB_X24_Y17_N30
\m_9|outp[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_9|outp[15]~4_combout\ = (\pcsrc~combout\ & (\t1|dout\(15))) # (!\pcsrc~combout\ & (((\alu_1|temp_out[15]~45_combout\) # (\alu_1|temp_out[15]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|dout\(15),
	datab => \alu_1|temp_out[15]~45_combout\,
	datac => \pcsrc~combout\,
	datad => \alu_1|temp_out[15]~78_combout\,
	combout => \m_9|outp[15]~4_combout\);

-- Location: LCCOMB_X24_Y17_N16
\pc|dout[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|dout\(15) = (GLOBAL(\pcwr~clkctrl_outclk\) & (\m_9|outp[15]~4_combout\)) # (!GLOBAL(\pcwr~clkctrl_outclk\) & ((\pc|dout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_9|outp[15]~4_combout\,
	datac => \pcwr~clkctrl_outclk\,
	datad => \pc|dout\(15),
	combout => \pc|dout\(15));

-- Location: LCCOMB_X24_Y17_N12
\m_7|outp[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_7|outp[15]~4_combout\ = (\pc|dout\(15) & (!alusrca(1) & !alusrca(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(15),
	datac => alusrca(1),
	datad => alusrca(0),
	combout => \m_7|outp[15]~4_combout\);

-- Location: LCCOMB_X24_Y17_N8
\alu_1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|cout~0_combout\ = (\alu_1|opr1|a15|cout~0_combout\ & ((\m_7|outp[15]~4_combout\ & (!aluop(0))) # (!\m_7|outp[15]~4_combout\ & ((\m_8|outp[15]~10_combout\))))) # (!\alu_1|opr1|a15|cout~0_combout\ & (\m_8|outp[15]~10_combout\ & (aluop(0) $ 
-- (\m_7|outp[15]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aluop(0),
	datab => \alu_1|opr1|a15|cout~0_combout\,
	datac => \m_7|outp[15]~4_combout\,
	datad => \m_8|outp[15]~10_combout\,
	combout => \alu_1|cout~0_combout\);

-- Location: LCCOMB_X24_Y17_N10
\alu_1|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|cout~1_combout\ = (aluop(0) & (\m_8|outp[15]~10_combout\ $ (!\m_7|outp[15]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_8|outp[15]~10_combout\,
	datac => aluop(0),
	datad => \m_7|outp[15]~4_combout\,
	combout => \alu_1|cout~1_combout\);

-- Location: LCCOMB_X24_Y17_N0
\alu_1|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|cout~2_combout\ = (!aluop(1) & ((\alu_1|cout~0_combout\) # ((\alu_1|cout~1_combout\ & \alu_1|opr2|s15|bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|cout~0_combout\,
	datab => aluop(1),
	datac => \alu_1|cout~1_combout\,
	datad => \alu_1|opr2|s15|bout~combout\,
	combout => \alu_1|cout~2_combout\);

-- Location: LCCOMB_X24_Y17_N6
\carry_flag|dout\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry_flag|dout~combout\ = (GLOBAL(\alu_en~clkctrl_outclk\) & ((\alu_1|cout~2_combout\))) # (!GLOBAL(\alu_en~clkctrl_outclk\) & (\carry_flag|dout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry_flag|dout~combout\,
	datac => \alu_1|cout~2_combout\,
	datad => \alu_en~clkctrl_outclk\,
	combout => \carry_flag|dout~combout\);

-- Location: LCCOMB_X23_Y19_N28
\alu_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_en~0_combout\ = (\ir_1|r_1|dout\(0) & ((\zero_flag|dout~combout\) # ((\carry_flag|dout~combout\ & \ir_1|r_1|dout\(1))))) # (!\ir_1|r_1|dout\(0) & ((\carry_flag|dout~combout\) # ((!\ir_1|r_1|dout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry_flag|dout~combout\,
	datab => \zero_flag|dout~combout\,
	datac => \ir_1|r_1|dout\(0),
	datad => \ir_1|r_1|dout\(1),
	combout => \alu_en~0_combout\);

-- Location: LCCOMB_X23_Y19_N30
alu_en : cycloneive_lcell_comb
-- Equation(s):
-- \alu_en~combout\ = (\alud~combout\) # (\alu_en~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alud~combout\,
	datad => \alu_en~0_combout\,
	combout => \alu_en~combout\);

-- Location: LCCOMB_X24_Y18_N10
\alu_1|zero_flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|zero_flag~0_combout\ = (\alu_1|temp_out[1]~43_combout\) # ((\alu_1|temp_out[0]~70_combout\) # (\alu_1|temp_out[2]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[1]~43_combout\,
	datab => \alu_1|temp_out[0]~70_combout\,
	datad => \alu_1|temp_out[2]~40_combout\,
	combout => \alu_1|zero_flag~0_combout\);

-- Location: LCCOMB_X25_Y21_N22
\alu_1|opr2|s4|diff\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr2|s4|diff~combout\ = \alu_1|opr2|s4|xor_i~2_combout\ $ (((\m_7|outp[2]~0_combout\ & (\m_8|outp[2]~12_combout\ & \alu_1|opr2|s2|bout~combout\)) # (!\m_7|outp[2]~0_combout\ & ((\m_8|outp[2]~12_combout\) # (\alu_1|opr2|s2|bout~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[2]~0_combout\,
	datab => \alu_1|opr2|s4|xor_i~2_combout\,
	datac => \m_8|outp[2]~12_combout\,
	datad => \alu_1|opr2|s2|bout~combout\,
	combout => \alu_1|opr2|s4|diff~combout\);

-- Location: LCCOMB_X25_Y21_N8
\alu_1|opr1|a4|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|opr1|a4|sum~combout\ = \alu_1|opr2|s4|xor_i~2_combout\ $ (((\m_7|outp[2]~0_combout\ & ((\m_8|outp[2]~12_combout\) # (\alu_1|opr1|a2|cout~0_combout\))) # (!\m_7|outp[2]~0_combout\ & (\m_8|outp[2]~12_combout\ & \alu_1|opr1|a2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[2]~0_combout\,
	datab => \alu_1|opr2|s4|xor_i~2_combout\,
	datac => \m_8|outp[2]~12_combout\,
	datad => \alu_1|opr1|a2|cout~0_combout\,
	combout => \alu_1|opr1|a4|sum~combout\);

-- Location: LCCOMB_X25_Y21_N10
\alu_1|temp_out[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[3]~41_combout\ = (!aluop(1) & ((aluop(0) & (\alu_1|opr2|s4|diff~combout\)) # (!aluop(0) & ((\alu_1|opr1|a4|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => aluop(0),
	datac => \alu_1|opr2|s4|diff~combout\,
	datad => \alu_1|opr1|a4|sum~combout\,
	combout => \alu_1|temp_out[3]~41_combout\);

-- Location: LCCOMB_X25_Y21_N4
\alu_1|temp_out[3]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[3]~68_combout\ = (\alu_1|temp_out[3]~41_combout\) # ((aluop(1) & (!aluop(0) & !\alu_1|opr1|a4|cout~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[3]~41_combout\,
	datab => aluop(1),
	datac => aluop(0),
	datad => \alu_1|opr1|a4|cout~5_combout\,
	combout => \alu_1|temp_out[3]~68_combout\);

-- Location: LCCOMB_X24_Y18_N28
\alu_1|zero_flag~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|zero_flag~1_combout\ = (\alu_1|zero_flag~0_combout\) # ((\alu_1|temp_out[3]~68_combout\) # ((\alu_1|temp_out[5]~74_combout\) # (\alu_1|temp_out[4]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|zero_flag~0_combout\,
	datab => \alu_1|temp_out[3]~68_combout\,
	datac => \alu_1|temp_out[5]~74_combout\,
	datad => \alu_1|temp_out[4]~62_combout\,
	combout => \alu_1|zero_flag~1_combout\);

-- Location: LCCOMB_X24_Y18_N22
\alu_1|zero_flag~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|zero_flag~2_combout\ = (\alu_1|temp_out[8]~85_combout\) # ((\alu_1|temp_out[6]~83_combout\) # ((\alu_1|temp_out[7]~64_combout\) # (\alu_1|zero_flag~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[8]~85_combout\,
	datab => \alu_1|temp_out[6]~83_combout\,
	datac => \alu_1|temp_out[7]~64_combout\,
	datad => \alu_1|zero_flag~1_combout\,
	combout => \alu_1|zero_flag~2_combout\);

-- Location: LCCOMB_X24_Y18_N26
\alu_1|zero_flag~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|zero_flag~3_combout\ = (\alu_1|zero_flag~2_combout\) # ((\alu_1|temp_out[10]~58_combout\) # ((\alu_1|temp_out[9]~53_combout\) # (\alu_1|temp_out[11]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|zero_flag~2_combout\,
	datab => \alu_1|temp_out[10]~58_combout\,
	datac => \alu_1|temp_out[9]~53_combout\,
	datad => \alu_1|temp_out[11]~54_combout\,
	combout => \alu_1|zero_flag~3_combout\);

-- Location: LCCOMB_X23_Y17_N0
\alu_1|zero_flag~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|zero_flag~4_combout\ = (\alu_1|temp_out[13]~81_combout\) # ((\alu_1|temp_out[13]~77_combout\) # ((\alu_1|temp_out[14]~65_combout\) # (\alu_1|temp_out[14]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[13]~81_combout\,
	datab => \alu_1|temp_out[13]~77_combout\,
	datac => \alu_1|temp_out[14]~65_combout\,
	datad => \alu_1|temp_out[14]~75_combout\,
	combout => \alu_1|zero_flag~4_combout\);

-- Location: LCCOMB_X24_Y18_N6
\alu_1|zero_flag~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|zero_flag~5_combout\ = (\alu_1|zero_flag~3_combout\) # ((\alu_1|temp_out[12]~51_combout\) # ((\alu_1|zero_flag~4_combout\) # (\alu_1|temp_out[15]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|zero_flag~3_combout\,
	datab => \alu_1|temp_out[12]~51_combout\,
	datac => \alu_1|zero_flag~4_combout\,
	datad => \alu_1|temp_out[15]~47_combout\,
	combout => \alu_1|zero_flag~5_combout\);

-- Location: LCCOMB_X24_Y18_N0
\zero_flag|dout\ : cycloneive_lcell_comb
-- Equation(s):
-- \zero_flag|dout~combout\ = (\alu_en~combout\ & ((!\alu_1|zero_flag~5_combout\))) # (!\alu_en~combout\ & (\zero_flag|dout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \zero_flag|dout~combout\,
	datac => \alu_en~combout\,
	datad => \alu_1|zero_flag~5_combout\,
	combout => \zero_flag|dout~combout\);

-- Location: LCCOMB_X26_Y19_N10
\pcwr~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcwr~6_combout\ = (\pcwr~4_combout\ & ((state(3) & ((\zero_flag|dout~combout\))) # (!state(3) & (\pcwr~5_combout\)))) # (!\pcwr~4_combout\ & (\zero_flag|dout~combout\ & ((!state(3)) # (!\pcwr~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcwr~5_combout\,
	datab => \pcwr~4_combout\,
	datac => \zero_flag|dout~combout\,
	datad => state(3),
	combout => \pcwr~6_combout\);

-- Location: LCCOMB_X26_Y19_N22
\pcwr~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcwr~10_combout\ = (\pcwr~9_combout\ & ((\pcwr~6_combout\))) # (!\pcwr~9_combout\ & (\pcwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcwr~combout\,
	datac => \pcwr~9_combout\,
	datad => \pcwr~6_combout\,
	combout => \pcwr~10_combout\);

-- Location: LCCOMB_X26_Y19_N14
\comb~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~24_combout\ = (state(2)) # ((!state(4) & (!state(0) & !state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(0),
	datac => state(2),
	datad => state(3),
	combout => \comb~24_combout\);

-- Location: LCCOMB_X26_Y19_N0
\pcwr~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcwr~7_combout\ = (state(4)) # ((state(1) & (state(0))) # (!state(1) & ((state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => state(4),
	datad => state(3),
	combout => \pcwr~7_combout\);

-- Location: LCCOMB_X26_Y19_N4
\comb~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~25_combout\ = (\comb~24_combout\) # (\pcwr~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb~24_combout\,
	datad => \pcwr~7_combout\,
	combout => \comb~25_combout\);

-- Location: LCCOMB_X27_Y19_N12
\next_state[4]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[4]~48_combout\ = (!state(2) & (!state(3) & !state(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(2),
	datac => state(3),
	datad => state(4),
	combout => \next_state[4]~48_combout\);

-- Location: LCCOMB_X26_Y19_N20
\comb~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~26_combout\ = (!state(0) & (\next_state[4]~48_combout\ & !\pcwr~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => \next_state[4]~48_combout\,
	datad => \pcwr~7_combout\,
	combout => \comb~26_combout\);

-- Location: LCCOMB_X26_Y19_N6
pcwr : cycloneive_lcell_comb
-- Equation(s):
-- \pcwr~combout\ = (\comb~25_combout\ & ((\pcwr~10_combout\) # (\comb~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcwr~10_combout\,
	datac => \comb~25_combout\,
	datad => \comb~26_combout\,
	combout => \pcwr~combout\);

-- Location: LCCOMB_X26_Y21_N2
\t1|dout[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|dout\(3) = (\alu_en~combout\ & ((\alu_1|temp_out[3]~68_combout\))) # (!\alu_en~combout\ & (\t1|dout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|dout\(3),
	datac => \alu_1|temp_out[3]~68_combout\,
	datad => \alu_en~combout\,
	combout => \t1|dout\(3));

-- Location: LCCOMB_X25_Y21_N18
\m_9|outp[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_9|outp[3]~1_combout\ = (\pcsrc~combout\ & (\t1|dout\(3))) # (!\pcsrc~combout\ & ((\alu_1|temp_out[3]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcsrc~combout\,
	datac => \t1|dout\(3),
	datad => \alu_1|temp_out[3]~68_combout\,
	combout => \m_9|outp[3]~1_combout\);

-- Location: LCCOMB_X25_Y21_N14
\pc|dout[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|dout\(3) = (\pcwr~combout\ & ((\m_9|outp[3]~1_combout\))) # (!\pcwr~combout\ & (\pc|dout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(3),
	datac => \pcwr~combout\,
	datad => \m_9|outp[3]~1_combout\,
	combout => \pc|dout\(3));

-- Location: LCCOMB_X26_Y21_N12
\m_1|outp[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_1|outp[3]~2_combout\ = (!iord(1) & ((iord(0) & ((\t1|dout\(3)))) # (!iord(0) & (\pc|dout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => iord(0),
	datab => iord(1),
	datac => \pc|dout\(3),
	datad => \t1|dout\(3),
	combout => \m_1|outp[3]~2_combout\);

-- Location: LCCOMB_X26_Y21_N30
\m_1|outp[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_1|outp[3]~3_combout\ = (\m_1|outp[3]~2_combout\) # ((iord(1) & (\input[3]~input_o\ & !iord(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => iord(1),
	datab => \input[3]~input_o\,
	datac => iord(0),
	datad => \m_1|outp[3]~2_combout\,
	combout => \m_1|outp[3]~3_combout\);

-- Location: IOIBUF_X31_Y34_N1
\input[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(16),
	o => \input[16]~input_o\);

-- Location: LCCOMB_X27_Y24_N28
\mem|mem_reg[12][0]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][0]~110_combout\ = (\m_1|outp[3]~3_combout\ & (\input[16]~input_o\ & (\m_2|outp[4]~1_combout\ & \memwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~3_combout\,
	datab => \input[16]~input_o\,
	datac => \m_2|outp[4]~1_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[12][0]~110_combout\);

-- Location: LCCOMB_X27_Y24_N0
\mem|mem_reg[12][0]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][0]~111_combout\ = (\mem|mem_reg[12][0]~110_combout\ & (!\m_1|outp[1]~5_combout\ & (!\m_1|outp[0]~7_combout\ & \m_1|outp[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[12][0]~110_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \m_1|outp[2]~1_combout\,
	combout => \mem|mem_reg[12][0]~111_combout\);

-- Location: LCCOMB_X27_Y24_N22
\mem|mem_reg[12][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][0]~combout\ = (GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & (\mem|mem_reg[12][0]~111_combout\)) # (!GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & ((\mem|mem_reg[12][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[12][0]~111_combout\,
	datac => \mem|mem_reg[12][0]~combout\,
	datad => \mem|mem_reg[12][0]~20clkctrl_outclk\,
	combout => \mem|mem_reg[12][0]~combout\);

-- Location: LCCOMB_X28_Y23_N10
\m_2|outp[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2|outp[0]~8_combout\ = (dcon(1) & (\input[16]~input_o\ & !dcon(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dcon(1),
	datab => \input[16]~input_o\,
	datac => dcon(0),
	combout => \m_2|outp[0]~8_combout\);

-- Location: LCCOMB_X25_Y21_N12
\mem|mem_reg[8][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[8][0]~combout\ = (GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & ((\m_2|outp[0]~8_combout\))) # (!GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & (\mem|mem_reg[8][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[8][0]~combout\,
	datac => \m_2|outp[0]~8_combout\,
	datad => \mem|mem_reg[8][0]~16clkctrl_outclk\,
	combout => \mem|mem_reg[8][0]~combout\);

-- Location: LCCOMB_X25_Y23_N24
\mem|mem_reg[0][0]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][0]~109_combout\ = (\m_2|outp[4]~1_combout\ & (\input[16]~input_o\ & (\memwr~combout\ & \mem|Decoder0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[16]~input_o\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~10_combout\,
	combout => \mem|mem_reg[0][0]~109_combout\);

-- Location: LCCOMB_X25_Y23_N30
\mem|mem_reg[0][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][0]~combout\ = (GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & ((\mem|mem_reg[0][0]~109_combout\))) # (!GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & (\mem|mem_reg[0][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[0][0]~combout\,
	datac => \mem|mem_reg[0][0]~109_combout\,
	datad => \mem|mem_reg[0][0]~18clkctrl_outclk\,
	combout => \mem|mem_reg[0][0]~combout\);

-- Location: LCCOMB_X25_Y23_N2
\mem|mem_reg[4][0]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][0]~108_combout\ = (\m_2|outp[4]~1_combout\ & (\input[16]~input_o\ & (\memwr~combout\ & \mem|Decoder0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[16]~input_o\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~8_combout\,
	combout => \mem|mem_reg[4][0]~108_combout\);

-- Location: LCCOMB_X25_Y23_N8
\mem|mem_reg[4][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][0]~combout\ = (GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & (\mem|mem_reg[4][0]~108_combout\)) # (!GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & ((\mem|mem_reg[4][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[4][0]~108_combout\,
	datac => \mem|mem_reg[4][0]~combout\,
	datad => \mem|mem_reg[4][0]~15clkctrl_outclk\,
	combout => \mem|mem_reg[4][0]~combout\);

-- Location: LCCOMB_X25_Y23_N12
\mem|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux15~4_combout\ = (\m_1|outp[2]~1_combout\ & (((\mem|mem_reg[4][0]~combout\) # (\m_1|outp[3]~3_combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[0][0]~combout\ & ((!\m_1|outp[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[0][0]~combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|mem_reg[4][0]~combout\,
	datad => \m_1|outp[3]~3_combout\,
	combout => \mem|Mux15~4_combout\);

-- Location: LCCOMB_X25_Y23_N16
\mem|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux15~5_combout\ = (\mem|Mux15~4_combout\ & ((\mem|mem_reg[12][0]~combout\) # ((!\m_1|outp[3]~3_combout\)))) # (!\mem|Mux15~4_combout\ & (((\mem|mem_reg[8][0]~combout\ & \m_1|outp[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[12][0]~combout\,
	datab => \mem|mem_reg[8][0]~combout\,
	datac => \mem|Mux15~4_combout\,
	datad => \m_1|outp[3]~3_combout\,
	combout => \mem|Mux15~5_combout\);

-- Location: LCCOMB_X28_Y23_N24
\mem|mem_reg[6][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[6][0]~combout\ = (GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & (\m_2|outp[0]~8_combout\)) # (!GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & ((\mem|mem_reg[6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[0]~8_combout\,
	datab => \mem|mem_reg[6][0]~combout\,
	datad => \mem|mem_reg[6][0]~0clkctrl_outclk\,
	combout => \mem|mem_reg[6][0]~combout\);

-- Location: LCCOMB_X29_Y20_N8
\mem|mem_reg[2][0]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][0]~106_combout\ = ((\m_2|outp[0]~8_combout\) # (!\mem|Decoder0~2_combout\)) # (!\memwr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datac => \mem|Decoder0~2_combout\,
	datad => \m_2|outp[0]~8_combout\,
	combout => \mem|mem_reg[2][0]~106_combout\);

-- Location: LCCOMB_X29_Y20_N16
\mem|mem_reg[2][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][0]~combout\ = (GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & ((\mem|mem_reg[2][0]~106_combout\))) # (!GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & (\mem|mem_reg[2][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[2][0]~combout\,
	datac => \mem|mem_reg[2][0]~106_combout\,
	datad => \mem|mem_reg[2][0]~4clkctrl_outclk\,
	combout => \mem|mem_reg[2][0]~combout\);

-- Location: LCCOMB_X25_Y23_N18
\mem|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux15~2_combout\ = (\m_1|outp[3]~3_combout\ & (((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~3_combout\ & ((\m_1|outp[2]~1_combout\ & (\mem|mem_reg[6][0]~combout\)) # (!\m_1|outp[2]~1_combout\ & ((\mem|mem_reg[2][0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~3_combout\,
	datab => \mem|mem_reg[6][0]~combout\,
	datac => \m_1|outp[2]~1_combout\,
	datad => \mem|mem_reg[2][0]~combout\,
	combout => \mem|Mux15~2_combout\);

-- Location: LCCOMB_X29_Y20_N4
\mem|mem_reg[14][0]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][0]~107_combout\ = ((\m_2|outp[0]~8_combout\) # (!\memwr~combout\)) # (!\mem|Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~3_combout\,
	datac => \memwr~combout\,
	datad => \m_2|outp[0]~8_combout\,
	combout => \mem|mem_reg[14][0]~107_combout\);

-- Location: LCCOMB_X29_Y20_N2
\mem|mem_reg[14][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][0]~combout\ = (GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & ((\mem|mem_reg[14][0]~107_combout\))) # (!GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & (\mem|mem_reg[14][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[14][0]~combout\,
	datac => \mem|mem_reg[14][0]~107_combout\,
	datad => \mem|mem_reg[14][0]~6clkctrl_outclk\,
	combout => \mem|mem_reg[14][0]~combout\);

-- Location: LCCOMB_X29_Y25_N20
\mem|mem_reg[10][0]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][0]~105_combout\ = (\m_2|outp[4]~1_combout\ & (\input[16]~input_o\ & (\memwr~combout\ & \mem|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[16]~input_o\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~1_combout\,
	combout => \mem|mem_reg[10][0]~105_combout\);

-- Location: LCCOMB_X29_Y25_N4
\mem|mem_reg[10][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][0]~combout\ = (GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & (\mem|mem_reg[10][0]~105_combout\)) # (!GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & ((\mem|mem_reg[10][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[10][0]~105_combout\,
	datac => \mem|mem_reg[10][0]~combout\,
	datad => \mem|mem_reg[10][0]~2clkctrl_outclk\,
	combout => \mem|mem_reg[10][0]~combout\);

-- Location: LCCOMB_X25_Y23_N6
\mem|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux15~3_combout\ = (\mem|Mux15~2_combout\ & (((\mem|mem_reg[14][0]~combout\)) # (!\m_1|outp[3]~3_combout\))) # (!\mem|Mux15~2_combout\ & (\m_1|outp[3]~3_combout\ & ((\mem|mem_reg[10][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux15~2_combout\,
	datab => \m_1|outp[3]~3_combout\,
	datac => \mem|mem_reg[14][0]~combout\,
	datad => \mem|mem_reg[10][0]~combout\,
	combout => \mem|Mux15~3_combout\);

-- Location: LCCOMB_X25_Y23_N26
\mem|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux15~6_combout\ = (\m_1|outp[1]~5_combout\ & (((\mem|Mux15~3_combout\) # (\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~5_combout\ & (\mem|Mux15~5_combout\ & ((!\m_1|outp[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux15~5_combout\,
	datab => \mem|Mux15~3_combout\,
	datac => \m_1|outp[1]~5_combout\,
	datad => \m_1|outp[0]~7_combout\,
	combout => \mem|Mux15~6_combout\);

-- Location: LCCOMB_X26_Y24_N14
\mem|mem_reg[9][0]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][0]~102_combout\ = (\m_2|outp[0]~8_combout\) # ((!\mem|Decoder0~4_combout\) # (!\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[0]~8_combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~4_combout\,
	combout => \mem|mem_reg[9][0]~102_combout\);

-- Location: LCCOMB_X26_Y24_N26
\mem|mem_reg[9][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][0]~combout\ = (GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & ((\mem|mem_reg[9][0]~102_combout\))) # (!GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & (\mem|mem_reg[9][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[9][0]~combout\,
	datac => \mem|mem_reg[9][0]~8clkctrl_outclk\,
	datad => \mem|mem_reg[9][0]~102_combout\,
	combout => \mem|mem_reg[9][0]~combout\);

-- Location: LCCOMB_X26_Y24_N12
\mem|mem_reg[1][0]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][0]~103_combout\ = ((\m_2|outp[0]~8_combout\) # (!\memwr~combout\)) # (!\mem|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~6_combout\,
	datac => \m_2|outp[0]~8_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[1][0]~103_combout\);

-- Location: LCCOMB_X26_Y24_N16
\mem|mem_reg[1][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][0]~combout\ = (GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & ((\mem|mem_reg[1][0]~103_combout\))) # (!GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & (\mem|mem_reg[1][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[1][0]~combout\,
	datac => \mem|mem_reg[1][0]~103_combout\,
	datad => \mem|mem_reg[1][0]~11clkctrl_outclk\,
	combout => \mem|mem_reg[1][0]~combout\);

-- Location: LCCOMB_X26_Y24_N30
\mem|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux15~0_combout\ = (\m_1|outp[3]~3_combout\ & ((\mem|mem_reg[9][0]~combout\) # ((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~3_combout\ & (((!\m_1|outp[2]~1_combout\ & \mem|mem_reg[1][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[9][0]~combout\,
	datab => \m_1|outp[3]~3_combout\,
	datac => \m_1|outp[2]~1_combout\,
	datad => \mem|mem_reg[1][0]~combout\,
	combout => \mem|Mux15~0_combout\);

-- Location: LCCOMB_X26_Y24_N8
\mem|mem_reg[5][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[5][0]~combout\ = (GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & (\m_2|outp[0]~8_combout\)) # (!GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & ((\mem|mem_reg[5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[0]~8_combout\,
	datab => \mem|mem_reg[5][0]~combout\,
	datad => \mem|mem_reg[5][0]~9clkctrl_outclk\,
	combout => \mem|mem_reg[5][0]~combout\);

-- Location: LCCOMB_X30_Y24_N8
\mem|mem_reg[13][0]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][0]~104_combout\ = (\m_2|outp[4]~1_combout\ & (\mem|Decoder0~7_combout\ & (\input[16]~input_o\ & \memwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \mem|Decoder0~7_combout\,
	datac => \input[16]~input_o\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[13][0]~104_combout\);

-- Location: LCCOMB_X30_Y24_N18
\mem|mem_reg[13][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][0]~combout\ = (GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & ((\mem|mem_reg[13][0]~104_combout\))) # (!GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & (\mem|mem_reg[13][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[13][0]~combout\,
	datac => \mem|mem_reg[13][0]~104_combout\,
	datad => \mem|mem_reg[13][0]~13clkctrl_outclk\,
	combout => \mem|mem_reg[13][0]~combout\);

-- Location: LCCOMB_X26_Y24_N0
\mem|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux15~1_combout\ = (\m_1|outp[2]~1_combout\ & ((\mem|Mux15~0_combout\ & ((\mem|mem_reg[13][0]~combout\))) # (!\mem|Mux15~0_combout\ & (\mem|mem_reg[5][0]~combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|Mux15~0_combout\,
	datac => \mem|mem_reg[5][0]~combout\,
	datad => \mem|mem_reg[13][0]~combout\,
	combout => \mem|Mux15~1_combout\);

-- Location: LCCOMB_X29_Y23_N26
\mem|mem_reg[3][0]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][0]~113_combout\ = ((\m_2|outp[0]~8_combout\) # (!\mem|Decoder0~14_combout\)) # (!\memwr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwr~combout\,
	datac => \mem|Decoder0~14_combout\,
	datad => \m_2|outp[0]~8_combout\,
	combout => \mem|mem_reg[3][0]~113_combout\);

-- Location: LCCOMB_X29_Y23_N20
\mem|mem_reg[3][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][0]~combout\ = (GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & (\mem|mem_reg[3][0]~113_combout\)) # (!GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & ((\mem|mem_reg[3][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[3][0]~113_combout\,
	datac => \mem|mem_reg[3][0]~25clkctrl_outclk\,
	datad => \mem|mem_reg[3][0]~combout\,
	combout => \mem|mem_reg[3][0]~combout\);

-- Location: LCCOMB_X29_Y23_N28
\mem|mem_reg[11][0]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][0]~112_combout\ = ((\m_2|outp[0]~8_combout\) # (!\mem|Decoder0~12_combout\)) # (!\memwr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwr~combout\,
	datac => \mem|Decoder0~12_combout\,
	datad => \m_2|outp[0]~8_combout\,
	combout => \mem|mem_reg[11][0]~112_combout\);

-- Location: LCCOMB_X29_Y23_N10
\mem|mem_reg[11][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][0]~combout\ = (GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & ((\mem|mem_reg[11][0]~112_combout\))) # (!GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & (\mem|mem_reg[11][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[11][0]~combout\,
	datab => \mem|mem_reg[11][0]~112_combout\,
	datad => \mem|mem_reg[11][0]~22clkctrl_outclk\,
	combout => \mem|mem_reg[11][0]~combout\);

-- Location: LCCOMB_X29_Y23_N22
\mem|Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux15~7_combout\ = (\m_1|outp[2]~1_combout\ & (((\m_1|outp[3]~3_combout\)))) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~3_combout\ & ((\mem|mem_reg[11][0]~combout\))) # (!\m_1|outp[3]~3_combout\ & (\mem|mem_reg[3][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|mem_reg[3][0]~combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \mem|mem_reg[11][0]~combout\,
	combout => \mem|Mux15~7_combout\);

-- Location: LCCOMB_X29_Y23_N8
\mem|mem_reg[7][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[7][0]~combout\ = (GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & (\m_2|outp[0]~8_combout\)) # (!GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & ((\mem|mem_reg[7][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[0]~8_combout\,
	datac => \mem|mem_reg[7][0]~combout\,
	datad => \mem|mem_reg[7][0]~23clkctrl_outclk\,
	combout => \mem|mem_reg[7][0]~combout\);

-- Location: LCCOMB_X26_Y26_N24
\mem|mem_reg[15][0]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][0]~114_combout\ = (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & (\input[16]~input_o\ & \mem|Decoder0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \memwr~combout\,
	datac => \input[16]~input_o\,
	datad => \mem|Decoder0~15_combout\,
	combout => \mem|mem_reg[15][0]~114_combout\);

-- Location: LCCOMB_X26_Y26_N0
\mem|mem_reg[15][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][0]~combout\ = (GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & (\mem|mem_reg[15][0]~114_combout\)) # (!GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & ((\mem|mem_reg[15][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[15][0]~114_combout\,
	datab => \mem|mem_reg[15][0]~combout\,
	datad => \mem|mem_reg[15][0]~27clkctrl_outclk\,
	combout => \mem|mem_reg[15][0]~combout\);

-- Location: LCCOMB_X29_Y23_N16
\mem|Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux15~8_combout\ = (\mem|Mux15~7_combout\ & (((\mem|mem_reg[15][0]~combout\) # (!\m_1|outp[2]~1_combout\)))) # (!\mem|Mux15~7_combout\ & (\mem|mem_reg[7][0]~combout\ & (\m_1|outp[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux15~7_combout\,
	datab => \mem|mem_reg[7][0]~combout\,
	datac => \m_1|outp[2]~1_combout\,
	datad => \mem|mem_reg[15][0]~combout\,
	combout => \mem|Mux15~8_combout\);

-- Location: LCCOMB_X25_Y23_N0
\mem|Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux15~9_combout\ = (\mem|Mux15~6_combout\ & (((\mem|Mux15~8_combout\) # (!\m_1|outp[0]~7_combout\)))) # (!\mem|Mux15~6_combout\ & (\mem|Mux15~1_combout\ & ((\m_1|outp[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux15~6_combout\,
	datab => \mem|Mux15~1_combout\,
	datac => \mem|Mux15~8_combout\,
	datad => \m_1|outp[0]~7_combout\,
	combout => \mem|Mux15~9_combout\);

-- Location: LCCOMB_X25_Y23_N20
\mem|do[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|do\(0) = (GLOBAL(\mem|do[15]~0clkctrl_outclk\) & (\mem|Mux15~9_combout\)) # (!GLOBAL(\mem|do[15]~0clkctrl_outclk\) & ((\mem|do\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux15~9_combout\,
	datac => \mem|do[15]~0clkctrl_outclk\,
	datad => \mem|do\(0),
	combout => \mem|do\(0));

-- Location: LCCOMB_X25_Y23_N28
\ir_1|r_1|dout[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_1|r_1|dout\(0) = (\irwr~combout\ & ((\mem|do\(0)))) # (!\irwr~combout\ & (\ir_1|r_1|dout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_1|r_1|dout\(0),
	datac => \irwr~combout\,
	datad => \mem|do\(0),
	combout => \ir_1|r_1|dout\(0));

-- Location: LCCOMB_X25_Y20_N22
\m_8|outp[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_8|outp[0]~8_combout\ = (alusrcb(2) & (alusrcb(1) & ((\p_1|outp\(0)) # (!alusrcb(0))))) # (!alusrcb(2) & (alusrcb(1) $ ((alusrcb(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrcb(2),
	datab => alusrcb(1),
	datac => alusrcb(0),
	datad => \p_1|outp\(0),
	combout => \m_8|outp[0]~8_combout\);

-- Location: LCCOMB_X25_Y20_N18
\m_8|outp[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_8|outp[0]~13_combout\ = (\m_8|outp[0]~8_combout\) # ((alusrcb(2) & (\ir_1|r_1|dout\(0) & !alusrcb(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => alusrcb(2),
	datab => \ir_1|r_1|dout\(0),
	datac => \m_8|outp[0]~8_combout\,
	datad => alusrcb(1),
	combout => \m_8|outp[0]~13_combout\);

-- Location: LCCOMB_X25_Y20_N10
\alu_1|temp_out[0]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_1|temp_out[0]~70_combout\ = (aluop(1) & (!aluop(0) & ((!\m_7|outp[0]~1_combout\) # (!\m_8|outp[0]~13_combout\)))) # (!aluop(1) & (\m_8|outp[0]~13_combout\ $ ((\m_7|outp[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[0]~13_combout\,
	datab => \m_7|outp[0]~1_combout\,
	datac => aluop(0),
	datad => aluop(1),
	combout => \alu_1|temp_out[0]~70_combout\);

-- Location: LCCOMB_X25_Y19_N0
\t1|dout[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|dout\(0) = (\alu_en~combout\ & (\alu_1|temp_out[0]~70_combout\)) # (!\alu_en~combout\ & ((\t1|dout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[0]~70_combout\,
	datab => \t1|dout\(0),
	datad => \alu_en~combout\,
	combout => \t1|dout\(0));

-- Location: LCCOMB_X26_Y19_N18
\m_9|outp[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_9|outp[0]~3_combout\ = (\pcsrc~combout\ & (\t1|dout\(0))) # (!\pcsrc~combout\ & ((\alu_1|temp_out[0]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|dout\(0),
	datac => \alu_1|temp_out[0]~70_combout\,
	datad => \pcsrc~combout\,
	combout => \m_9|outp[0]~3_combout\);

-- Location: LCCOMB_X25_Y19_N22
\pc|dout[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|dout\(0) = (\pcwr~combout\ & (\m_9|outp[0]~3_combout\)) # (!\pcwr~combout\ & ((\pc|dout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_9|outp[0]~3_combout\,
	datac => \pc|dout\(0),
	datad => \pcwr~combout\,
	combout => \pc|dout\(0));

-- Location: LCCOMB_X25_Y19_N6
\m_1|outp[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_1|outp[0]~6_combout\ = (!iord(1) & ((iord(0) & ((\t1|dout\(0)))) # (!iord(0) & (\pc|dout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => iord(0),
	datab => iord(1),
	datac => \pc|dout\(0),
	datad => \t1|dout\(0),
	combout => \m_1|outp[0]~6_combout\);

-- Location: LCCOMB_X25_Y19_N10
\m_1|outp[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_1|outp[0]~7_combout\ = (\m_1|outp[0]~6_combout\) # ((\input[0]~input_o\ & (iord(1) & !iord(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datab => iord(1),
	datac => iord(0),
	datad => \m_1|outp[0]~6_combout\,
	combout => \m_1|outp[0]~7_combout\);

-- Location: LCCOMB_X26_Y21_N16
\mem|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~5_combout\ = (\m_1|outp[0]~7_combout\ & (\m_1|outp[2]~1_combout\ & (!\m_1|outp[1]~5_combout\ & !\m_1|outp[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_1|outp[1]~5_combout\,
	datad => \m_1|outp[3]~3_combout\,
	combout => \mem|Decoder0~5_combout\);

-- Location: LCCOMB_X26_Y21_N18
\mem|mem_reg[5][0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[5][0]~9_combout\ = (\memwr~combout\ & \mem|Decoder0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memwr~combout\,
	datad => \mem|Decoder0~5_combout\,
	combout => \mem|mem_reg[5][0]~9_combout\);

-- Location: CLKCTRL_G9
\mem|mem_reg[5][0]~9clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|mem_reg[5][0]~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|mem_reg[5][0]~9clkctrl_outclk\);

-- Location: LCCOMB_X31_Y23_N24
\mem|mem_reg[5][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[5][12]~combout\ = (GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & (\m_2|outp[12]~3_combout\)) # (!GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & ((\mem|mem_reg[5][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[12]~3_combout\,
	datab => \mem|mem_reg[5][12]~combout\,
	datad => \mem|mem_reg[5][0]~9clkctrl_outclk\,
	combout => \mem|mem_reg[5][12]~combout\);

-- Location: LCCOMB_X31_Y23_N2
\mem|mem_reg[6][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[6][12]~combout\ = (GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & (\m_2|outp[12]~3_combout\)) # (!GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & ((\mem|mem_reg[6][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[12]~3_combout\,
	datac => \mem|mem_reg[6][12]~combout\,
	datad => \mem|mem_reg[6][0]~0clkctrl_outclk\,
	combout => \mem|mem_reg[6][12]~combout\);

-- Location: LCCOMB_X24_Y25_N4
\mem|mem_reg[4][12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][12]~43_combout\ = (\input[28]~input_o\ & (\m_2|outp[4]~1_combout\ & (\mem|Decoder0~8_combout\ & \memwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[28]~input_o\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \mem|Decoder0~8_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[4][12]~43_combout\);

-- Location: LCCOMB_X24_Y25_N26
\mem|mem_reg[4][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][12]~combout\ = (GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & ((\mem|mem_reg[4][12]~43_combout\))) # (!GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & (\mem|mem_reg[4][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[4][12]~combout\,
	datab => \mem|mem_reg[4][12]~43_combout\,
	datad => \mem|mem_reg[4][0]~15clkctrl_outclk\,
	combout => \mem|mem_reg[4][12]~combout\);

-- Location: LCCOMB_X30_Y21_N0
\mem|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~2_combout\ = (\m_1|outp[1]~5_combout\ & ((\m_1|outp[0]~7_combout\) # ((\mem|mem_reg[6][12]~combout\)))) # (!\m_1|outp[1]~5_combout\ & (!\m_1|outp[0]~7_combout\ & ((\mem|mem_reg[4][12]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \mem|mem_reg[6][12]~combout\,
	datad => \mem|mem_reg[4][12]~combout\,
	combout => \mem|Mux3~2_combout\);

-- Location: LCCOMB_X31_Y23_N28
\mem|mem_reg[7][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[7][12]~combout\ = (GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & (\m_2|outp[12]~3_combout\)) # (!GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & ((\mem|mem_reg[7][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[12]~3_combout\,
	datac => \mem|mem_reg[7][0]~23clkctrl_outclk\,
	datad => \mem|mem_reg[7][12]~combout\,
	combout => \mem|mem_reg[7][12]~combout\);

-- Location: LCCOMB_X30_Y21_N30
\mem|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~3_combout\ = (\m_1|outp[0]~7_combout\ & ((\mem|Mux3~2_combout\ & ((\mem|mem_reg[7][12]~combout\))) # (!\mem|Mux3~2_combout\ & (\mem|mem_reg[5][12]~combout\)))) # (!\m_1|outp[0]~7_combout\ & (((\mem|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[5][12]~combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \mem|Mux3~2_combout\,
	datad => \mem|mem_reg[7][12]~combout\,
	combout => \mem|Mux3~3_combout\);

-- Location: LCCOMB_X30_Y19_N16
\mem|mem_reg[3][12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][12]~48_combout\ = (\input[28]~input_o\ & (\memwr~combout\ & (!\m_1|outp[3]~3_combout\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[28]~input_o\,
	datab => \memwr~combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[3][12]~48_combout\);

-- Location: LCCOMB_X30_Y19_N4
\mem|mem_reg[3][12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][12]~49_combout\ = (!\m_1|outp[2]~1_combout\ & (\m_1|outp[1]~5_combout\ & (\mem|mem_reg[3][12]~48_combout\ & \m_1|outp[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \mem|mem_reg[3][12]~48_combout\,
	datad => \m_1|outp[0]~7_combout\,
	combout => \mem|mem_reg[3][12]~49_combout\);

-- Location: LCCOMB_X30_Y19_N26
\mem|mem_reg[3][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][12]~combout\ = (GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & ((\mem|mem_reg[3][12]~49_combout\))) # (!GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & (\mem|mem_reg[3][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[3][12]~combout\,
	datac => \mem|mem_reg[3][12]~49_combout\,
	datad => \mem|mem_reg[3][0]~25clkctrl_outclk\,
	combout => \mem|mem_reg[3][12]~combout\);

-- Location: LCCOMB_X30_Y21_N28
\mem|mem_reg[0][12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][12]~46_combout\ = (\m_2|outp[12]~3_combout\) # ((\m_1|outp[1]~5_combout\) # (!\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[12]~3_combout\,
	datac => \memwr~combout\,
	datad => \m_1|outp[1]~5_combout\,
	combout => \mem|mem_reg[0][12]~46_combout\);

-- Location: LCCOMB_X30_Y21_N22
\mem|mem_reg[0][12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][12]~47_combout\ = (\m_1|outp[2]~1_combout\) # ((\m_1|outp[0]~7_combout\) # ((\m_1|outp[3]~3_combout\) # (\mem|mem_reg[0][12]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \mem|mem_reg[0][12]~46_combout\,
	combout => \mem|mem_reg[0][12]~47_combout\);

-- Location: LCCOMB_X30_Y21_N24
\mem|mem_reg[0][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][12]~combout\ = (GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & ((\mem|mem_reg[0][12]~47_combout\))) # (!GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & (\mem|mem_reg[0][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[0][12]~combout\,
	datac => \mem|mem_reg[0][12]~47_combout\,
	datad => \mem|mem_reg[0][0]~18clkctrl_outclk\,
	combout => \mem|mem_reg[0][12]~combout\);

-- Location: LCCOMB_X25_Y22_N6
\mem|mem_reg[1][12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][12]~45_combout\ = (\m_2|outp[12]~3_combout\) # ((!\mem|Decoder0~6_combout\) # (!\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[12]~3_combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~6_combout\,
	combout => \mem|mem_reg[1][12]~45_combout\);

-- Location: LCCOMB_X25_Y22_N2
\mem|mem_reg[1][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][12]~combout\ = (GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & ((\mem|mem_reg[1][12]~45_combout\))) # (!GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & (\mem|mem_reg[1][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[1][12]~combout\,
	datac => \mem|mem_reg[1][12]~45_combout\,
	datad => \mem|mem_reg[1][0]~11clkctrl_outclk\,
	combout => \mem|mem_reg[1][12]~combout\);

-- Location: LCCOMB_X30_Y21_N20
\mem|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~4_combout\ = (\m_1|outp[1]~5_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~5_combout\ & ((\m_1|outp[0]~7_combout\ & ((\mem|mem_reg[1][12]~combout\))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[0][12]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \mem|mem_reg[0][12]~combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \mem|mem_reg[1][12]~combout\,
	combout => \mem|Mux3~4_combout\);

-- Location: LCCOMB_X29_Y19_N28
\mem|mem_reg[2][12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][12]~44_combout\ = (\m_2|outp[12]~3_combout\) # ((!\memwr~combout\) # (!\mem|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[12]~3_combout\,
	datac => \mem|Decoder0~2_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[2][12]~44_combout\);

-- Location: LCCOMB_X29_Y19_N26
\mem|mem_reg[2][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][12]~combout\ = (GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & ((\mem|mem_reg[2][12]~44_combout\))) # (!GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & (\mem|mem_reg[2][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[2][12]~combout\,
	datac => \mem|mem_reg[2][12]~44_combout\,
	datad => \mem|mem_reg[2][0]~4clkctrl_outclk\,
	combout => \mem|mem_reg[2][12]~combout\);

-- Location: LCCOMB_X30_Y21_N18
\mem|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~5_combout\ = (\mem|Mux3~4_combout\ & ((\mem|mem_reg[3][12]~combout\) # ((!\m_1|outp[1]~5_combout\)))) # (!\mem|Mux3~4_combout\ & (((\mem|mem_reg[2][12]~combout\ & \m_1|outp[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[3][12]~combout\,
	datab => \mem|Mux3~4_combout\,
	datac => \mem|mem_reg[2][12]~combout\,
	datad => \m_1|outp[1]~5_combout\,
	combout => \mem|Mux3~5_combout\);

-- Location: LCCOMB_X30_Y21_N12
\mem|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~6_combout\ = (\m_1|outp[2]~1_combout\ & ((\mem|Mux3~3_combout\) # ((\m_1|outp[3]~3_combout\)))) # (!\m_1|outp[2]~1_combout\ & (((!\m_1|outp[3]~3_combout\ & \mem|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux3~3_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \mem|Mux3~5_combout\,
	combout => \mem|Mux3~6_combout\);

-- Location: LCCOMB_X29_Y19_N12
\mem|mem_reg[12][12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][12]~52_combout\ = (\m_2|outp[12]~3_combout\) # ((!\memwr~combout\) # (!\mem|Decoder0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[12]~3_combout\,
	datac => \mem|Decoder0~11_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[12][12]~52_combout\);

-- Location: LCCOMB_X29_Y19_N14
\mem|mem_reg[12][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][12]~combout\ = (GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & ((\mem|mem_reg[12][12]~52_combout\))) # (!GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & (\mem|mem_reg[12][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[12][12]~combout\,
	datac => \mem|mem_reg[12][12]~52_combout\,
	datad => \mem|mem_reg[12][0]~20clkctrl_outclk\,
	combout => \mem|mem_reg[12][12]~combout\);

-- Location: LCCOMB_X30_Y24_N22
\mem|mem_reg[14][12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][12]~51_combout\ = (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & (\mem|Decoder0~3_combout\ & \input[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \memwr~combout\,
	datac => \mem|Decoder0~3_combout\,
	datad => \input[28]~input_o\,
	combout => \mem|mem_reg[14][12]~51_combout\);

-- Location: LCCOMB_X30_Y24_N16
\mem|mem_reg[14][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][12]~combout\ = (GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & (\mem|mem_reg[14][12]~51_combout\)) # (!GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & ((\mem|mem_reg[14][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[14][12]~51_combout\,
	datab => \mem|mem_reg[14][12]~combout\,
	datad => \mem|mem_reg[14][0]~6clkctrl_outclk\,
	combout => \mem|mem_reg[14][12]~combout\);

-- Location: LCCOMB_X30_Y21_N10
\mem|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~7_combout\ = (\m_1|outp[1]~5_combout\ & ((\m_1|outp[0]~7_combout\) # ((\mem|mem_reg[14][12]~combout\)))) # (!\m_1|outp[1]~5_combout\ & (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[12][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \mem|mem_reg[12][12]~combout\,
	datad => \mem|mem_reg[14][12]~combout\,
	combout => \mem|Mux3~7_combout\);

-- Location: LCCOMB_X30_Y19_N14
\mem|mem_reg[13][12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][12]~50_combout\ = (\m_2|outp[4]~1_combout\ & (\input[28]~input_o\ & (\mem|Decoder0~7_combout\ & \memwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[28]~input_o\,
	datac => \mem|Decoder0~7_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[13][12]~50_combout\);

-- Location: LCCOMB_X30_Y19_N8
\mem|mem_reg[13][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][12]~combout\ = (GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & (\mem|mem_reg[13][12]~50_combout\)) # (!GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & ((\mem|mem_reg[13][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[13][12]~50_combout\,
	datac => \mem|mem_reg[13][12]~combout\,
	datad => \mem|mem_reg[13][0]~13clkctrl_outclk\,
	combout => \mem|mem_reg[13][12]~combout\);

-- Location: LCCOMB_X26_Y26_N10
\mem|mem_reg[15][12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][12]~53_combout\ = (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & (\input[28]~input_o\ & \mem|Decoder0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \memwr~combout\,
	datac => \input[28]~input_o\,
	datad => \mem|Decoder0~15_combout\,
	combout => \mem|mem_reg[15][12]~53_combout\);

-- Location: LCCOMB_X26_Y26_N18
\mem|mem_reg[15][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][12]~combout\ = (GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & (\mem|mem_reg[15][12]~53_combout\)) # (!GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & ((\mem|mem_reg[15][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[15][12]~53_combout\,
	datab => \mem|mem_reg[15][12]~combout\,
	datad => \mem|mem_reg[15][0]~27clkctrl_outclk\,
	combout => \mem|mem_reg[15][12]~combout\);

-- Location: LCCOMB_X30_Y21_N4
\mem|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~8_combout\ = (\mem|Mux3~7_combout\ & (((\mem|mem_reg[15][12]~combout\) # (!\m_1|outp[0]~7_combout\)))) # (!\mem|Mux3~7_combout\ & (\mem|mem_reg[13][12]~combout\ & (\m_1|outp[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux3~7_combout\,
	datab => \mem|mem_reg[13][12]~combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \mem|mem_reg[15][12]~combout\,
	combout => \mem|Mux3~8_combout\);

-- Location: LCCOMB_X30_Y21_N26
\mem|mem_reg[8][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[8][12]~combout\ = (GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & (\m_2|outp[12]~3_combout\)) # (!GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & ((\mem|mem_reg[8][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[12]~3_combout\,
	datab => \mem|mem_reg[8][0]~16clkctrl_outclk\,
	datac => \mem|mem_reg[8][12]~combout\,
	combout => \mem|mem_reg[8][12]~combout\);

-- Location: LCCOMB_X25_Y25_N28
\mem|mem_reg[9][12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][12]~41_combout\ = (\m_2|outp[4]~1_combout\ & (\input[28]~input_o\ & (\memwr~combout\ & \mem|Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[28]~input_o\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~4_combout\,
	combout => \mem|mem_reg[9][12]~41_combout\);

-- Location: LCCOMB_X25_Y25_N6
\mem|mem_reg[9][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][12]~combout\ = (GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & ((\mem|mem_reg[9][12]~41_combout\))) # (!GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & (\mem|mem_reg[9][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[9][12]~combout\,
	datab => \mem|mem_reg[9][12]~41_combout\,
	datad => \mem|mem_reg[9][0]~8clkctrl_outclk\,
	combout => \mem|mem_reg[9][12]~combout\);

-- Location: LCCOMB_X30_Y21_N8
\mem|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~0_combout\ = (\m_1|outp[1]~5_combout\ & (\m_1|outp[0]~7_combout\)) # (!\m_1|outp[1]~5_combout\ & ((\m_1|outp[0]~7_combout\ & ((\mem|mem_reg[9][12]~combout\))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[8][12]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~5_combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \mem|mem_reg[8][12]~combout\,
	datad => \mem|mem_reg[9][12]~combout\,
	combout => \mem|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y22_N30
\mem|mem_reg[10][12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][12]~40_combout\ = (\m_2|outp[12]~3_combout\) # ((!\memwr~combout\) # (!\mem|Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[12]~3_combout\,
	datac => \mem|Decoder0~1_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[10][12]~40_combout\);

-- Location: LCCOMB_X26_Y22_N8
\mem|mem_reg[10][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][12]~combout\ = (GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & ((\mem|mem_reg[10][12]~40_combout\))) # (!GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & (\mem|mem_reg[10][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[10][12]~combout\,
	datac => \mem|mem_reg[10][0]~2clkctrl_outclk\,
	datad => \mem|mem_reg[10][12]~40_combout\,
	combout => \mem|mem_reg[10][12]~combout\);

-- Location: LCCOMB_X29_Y23_N24
\mem|mem_reg[11][12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][12]~42_combout\ = (\m_2|outp[12]~3_combout\) # ((!\memwr~combout\) # (!\mem|Decoder0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[12]~3_combout\,
	datac => \mem|Decoder0~12_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[11][12]~42_combout\);

-- Location: LCCOMB_X29_Y23_N12
\mem|mem_reg[11][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][12]~combout\ = (GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & (\mem|mem_reg[11][12]~42_combout\)) # (!GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & ((\mem|mem_reg[11][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[11][12]~42_combout\,
	datac => \mem|mem_reg[11][0]~22clkctrl_outclk\,
	datad => \mem|mem_reg[11][12]~combout\,
	combout => \mem|mem_reg[11][12]~combout\);

-- Location: LCCOMB_X30_Y21_N6
\mem|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~1_combout\ = (\mem|Mux3~0_combout\ & (((\mem|mem_reg[11][12]~combout\)) # (!\m_1|outp[1]~5_combout\))) # (!\mem|Mux3~0_combout\ & (\m_1|outp[1]~5_combout\ & (\mem|mem_reg[10][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux3~0_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \mem|mem_reg[10][12]~combout\,
	datad => \mem|mem_reg[11][12]~combout\,
	combout => \mem|Mux3~1_combout\);

-- Location: LCCOMB_X30_Y21_N14
\mem|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~9_combout\ = (\mem|Mux3~6_combout\ & ((\mem|Mux3~8_combout\) # ((!\m_1|outp[3]~3_combout\)))) # (!\mem|Mux3~6_combout\ & (((\m_1|outp[3]~3_combout\ & \mem|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux3~6_combout\,
	datab => \mem|Mux3~8_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \mem|Mux3~1_combout\,
	combout => \mem|Mux3~9_combout\);

-- Location: LCCOMB_X30_Y21_N16
\mem|do[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|do\(12) = (GLOBAL(\mem|do[15]~0clkctrl_outclk\) & (\mem|Mux3~9_combout\)) # (!GLOBAL(\mem|do[15]~0clkctrl_outclk\) & ((\mem|do\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Mux3~9_combout\,
	datac => \mem|do[15]~0clkctrl_outclk\,
	datad => \mem|do\(12),
	combout => \mem|do\(12));

-- Location: LCCOMB_X28_Y21_N6
\ir_1|r_1|dout[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_1|r_1|dout\(12) = (\irwr~combout\ & ((\mem|do\(12)))) # (!\irwr~combout\ & (\ir_1|r_1|dout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(12),
	datab => \irwr~combout\,
	datad => \mem|do\(12),
	combout => \ir_1|r_1|dout\(12));

-- Location: IOIBUF_X53_Y17_N8
\input[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(31),
	o => \input[31]~input_o\);

-- Location: LCCOMB_X26_Y24_N20
\mem|mem_reg[9][15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][15]~54_combout\ = (\input[31]~input_o\ & (\memwr~combout\ & (\mem|Decoder0~4_combout\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[31]~input_o\,
	datab => \memwr~combout\,
	datac => \mem|Decoder0~4_combout\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[9][15]~54_combout\);

-- Location: LCCOMB_X26_Y24_N22
\mem|mem_reg[9][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][15]~combout\ = (GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & ((\mem|mem_reg[9][15]~54_combout\))) # (!GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & (\mem|mem_reg[9][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[9][15]~combout\,
	datac => \mem|mem_reg[9][0]~8clkctrl_outclk\,
	datad => \mem|mem_reg[9][15]~54_combout\,
	combout => \mem|mem_reg[9][15]~combout\);

-- Location: LCCOMB_X26_Y24_N24
\mem|mem_reg[1][15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][15]~55_combout\ = (\mem|Decoder0~6_combout\ & (\input[31]~input_o\ & (\memwr~combout\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~6_combout\,
	datab => \input[31]~input_o\,
	datac => \memwr~combout\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[1][15]~55_combout\);

-- Location: LCCOMB_X26_Y24_N4
\mem|mem_reg[1][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][15]~combout\ = (GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & ((\mem|mem_reg[1][15]~55_combout\))) # (!GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & (\mem|mem_reg[1][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[1][0]~11clkctrl_outclk\,
	datac => \mem|mem_reg[1][15]~combout\,
	datad => \mem|mem_reg[1][15]~55_combout\,
	combout => \mem|mem_reg[1][15]~combout\);

-- Location: LCCOMB_X26_Y24_N18
\mem|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~0_combout\ = (\m_1|outp[2]~1_combout\ & (((\m_1|outp[3]~3_combout\)))) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~3_combout\ & (\mem|mem_reg[9][15]~combout\)) # (!\m_1|outp[3]~3_combout\ & ((\mem|mem_reg[1][15]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[9][15]~combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|mem_reg[1][15]~combout\,
	datad => \m_1|outp[3]~3_combout\,
	combout => \mem|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y23_N0
\m_2|outp[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2|outp[15]~4_combout\ = (!dcon(0) & (dcon(1) & \input[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dcon(0),
	datac => dcon(1),
	datad => \input[31]~input_o\,
	combout => \m_2|outp[15]~4_combout\);

-- Location: LCCOMB_X25_Y24_N16
\mem|mem_reg[5][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[5][15]~combout\ = (GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & ((\m_2|outp[15]~4_combout\))) # (!GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & (\mem|mem_reg[5][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[5][15]~combout\,
	datac => \m_2|outp[15]~4_combout\,
	datad => \mem|mem_reg[5][0]~9clkctrl_outclk\,
	combout => \mem|mem_reg[5][15]~combout\);

-- Location: LCCOMB_X29_Y24_N26
\mem|mem_reg[13][15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][15]~56_combout\ = (\memwr~combout\ & (\input[31]~input_o\ & (\mem|Decoder0~7_combout\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datab => \input[31]~input_o\,
	datac => \mem|Decoder0~7_combout\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[13][15]~56_combout\);

-- Location: LCCOMB_X29_Y24_N4
\mem|mem_reg[13][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][15]~combout\ = (GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & ((\mem|mem_reg[13][15]~56_combout\))) # (!GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & (\mem|mem_reg[13][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[13][15]~combout\,
	datac => \mem|mem_reg[13][15]~56_combout\,
	datad => \mem|mem_reg[13][0]~13clkctrl_outclk\,
	combout => \mem|mem_reg[13][15]~combout\);

-- Location: LCCOMB_X26_Y24_N6
\mem|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~1_combout\ = (\mem|Mux0~0_combout\ & (((\mem|mem_reg[13][15]~combout\)) # (!\m_1|outp[2]~1_combout\))) # (!\mem|Mux0~0_combout\ & (\m_1|outp[2]~1_combout\ & (\mem|mem_reg[5][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux0~0_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|mem_reg[5][15]~combout\,
	datad => \mem|mem_reg[13][15]~combout\,
	combout => \mem|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y22_N18
\mem|mem_reg[2][15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][15]~58_combout\ = (\m_2|outp[4]~1_combout\ & (\input[31]~input_o\ & (\mem|Decoder0~2_combout\ & \memwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[31]~input_o\,
	datac => \mem|Decoder0~2_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[2][15]~58_combout\);

-- Location: LCCOMB_X28_Y22_N0
\mem|mem_reg[2][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][15]~combout\ = (GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & ((\mem|mem_reg[2][15]~58_combout\))) # (!GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & (\mem|mem_reg[2][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[2][15]~combout\,
	datac => \mem|mem_reg[2][15]~58_combout\,
	datad => \mem|mem_reg[2][0]~4clkctrl_outclk\,
	combout => \mem|mem_reg[2][15]~combout\);

-- Location: LCCOMB_X25_Y24_N6
\mem|mem_reg[6][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[6][15]~combout\ = (GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & (\m_2|outp[15]~4_combout\)) # (!GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & ((\mem|mem_reg[6][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[15]~4_combout\,
	datac => \mem|mem_reg[6][0]~0clkctrl_outclk\,
	datad => \mem|mem_reg[6][15]~combout\,
	combout => \mem|mem_reg[6][15]~combout\);

-- Location: LCCOMB_X27_Y22_N10
\mem|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~2_combout\ = (\m_1|outp[3]~3_combout\ & (\m_1|outp[2]~1_combout\)) # (!\m_1|outp[3]~3_combout\ & ((\m_1|outp[2]~1_combout\ & ((\mem|mem_reg[6][15]~combout\))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[2][15]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~3_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|mem_reg[2][15]~combout\,
	datad => \mem|mem_reg[6][15]~combout\,
	combout => \mem|Mux0~2_combout\);

-- Location: LCCOMB_X30_Y24_N24
\mem|mem_reg[14][15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][15]~59_combout\ = (\input[31]~input_o\ & (\memwr~combout\ & (\m_2|outp[4]~1_combout\ & \mem|Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[31]~input_o\,
	datab => \memwr~combout\,
	datac => \m_2|outp[4]~1_combout\,
	datad => \mem|Decoder0~3_combout\,
	combout => \mem|mem_reg[14][15]~59_combout\);

-- Location: LCCOMB_X30_Y24_N14
\mem|mem_reg[14][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][15]~combout\ = (GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & ((\mem|mem_reg[14][15]~59_combout\))) # (!GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & (\mem|mem_reg[14][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[14][15]~combout\,
	datac => \mem|mem_reg[14][15]~59_combout\,
	datad => \mem|mem_reg[14][0]~6clkctrl_outclk\,
	combout => \mem|mem_reg[14][15]~combout\);

-- Location: LCCOMB_X29_Y25_N0
\mem|mem_reg[10][15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][15]~57_combout\ = (\memwr~combout\ & (\m_2|outp[4]~1_combout\ & (\input[31]~input_o\ & \mem|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \input[31]~input_o\,
	datad => \mem|Decoder0~1_combout\,
	combout => \mem|mem_reg[10][15]~57_combout\);

-- Location: LCCOMB_X29_Y25_N16
\mem|mem_reg[10][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][15]~combout\ = (GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & (\mem|mem_reg[10][15]~57_combout\)) # (!GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & ((\mem|mem_reg[10][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[10][15]~57_combout\,
	datab => \mem|mem_reg[10][15]~combout\,
	datad => \mem|mem_reg[10][0]~2clkctrl_outclk\,
	combout => \mem|mem_reg[10][15]~combout\);

-- Location: LCCOMB_X27_Y22_N18
\mem|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~3_combout\ = (\mem|Mux0~2_combout\ & ((\mem|mem_reg[14][15]~combout\) # ((!\m_1|outp[3]~3_combout\)))) # (!\mem|Mux0~2_combout\ & (((\m_1|outp[3]~3_combout\ & \mem|mem_reg[10][15]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux0~2_combout\,
	datab => \mem|mem_reg[14][15]~combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \mem|mem_reg[10][15]~combout\,
	combout => \mem|Mux0~3_combout\);

-- Location: LCCOMB_X30_Y20_N26
\mem|mem_reg[8][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[8][15]~combout\ = (GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & (\m_2|outp[15]~4_combout\)) # (!GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & ((\mem|mem_reg[8][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[15]~4_combout\,
	datac => \mem|mem_reg[8][15]~combout\,
	datad => \mem|mem_reg[8][0]~16clkctrl_outclk\,
	combout => \mem|mem_reg[8][15]~combout\);

-- Location: LCCOMB_X27_Y22_N2
\mem|mem_reg[0][15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][15]~61_combout\ = (\mem|Decoder0~10_combout\ & (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & \input[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~10_combout\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \memwr~combout\,
	datad => \input[31]~input_o\,
	combout => \mem|mem_reg[0][15]~61_combout\);

-- Location: LCCOMB_X27_Y22_N16
\mem|mem_reg[0][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][15]~combout\ = (GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & ((\mem|mem_reg[0][15]~61_combout\))) # (!GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & (\mem|mem_reg[0][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[0][15]~combout\,
	datac => \mem|mem_reg[0][0]~18clkctrl_outclk\,
	datad => \mem|mem_reg[0][15]~61_combout\,
	combout => \mem|mem_reg[0][15]~combout\);

-- Location: LCCOMB_X24_Y25_N6
\mem|mem_reg[4][15]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][15]~60_combout\ = (\input[31]~input_o\ & (\m_2|outp[4]~1_combout\ & (\mem|Decoder0~8_combout\ & \memwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[31]~input_o\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \mem|Decoder0~8_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[4][15]~60_combout\);

-- Location: LCCOMB_X24_Y25_N12
\mem|mem_reg[4][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][15]~combout\ = (GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & ((\mem|mem_reg[4][15]~60_combout\))) # (!GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & (\mem|mem_reg[4][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[4][15]~combout\,
	datac => \mem|mem_reg[4][15]~60_combout\,
	datad => \mem|mem_reg[4][0]~15clkctrl_outclk\,
	combout => \mem|mem_reg[4][15]~combout\);

-- Location: LCCOMB_X27_Y22_N28
\mem|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~4_combout\ = (\m_1|outp[3]~3_combout\ & (((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~3_combout\ & ((\m_1|outp[2]~1_combout\ & ((\mem|mem_reg[4][15]~combout\))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[0][15]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~3_combout\,
	datab => \mem|mem_reg[0][15]~combout\,
	datac => \mem|mem_reg[4][15]~combout\,
	datad => \m_1|outp[2]~1_combout\,
	combout => \mem|Mux0~4_combout\);

-- Location: LCCOMB_X29_Y25_N2
\mem|mem_reg[12][15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][15]~62_combout\ = (\input[31]~input_o\ & (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & \mem|Decoder0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[31]~input_o\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~11_combout\,
	combout => \mem|mem_reg[12][15]~62_combout\);

-- Location: LCCOMB_X29_Y25_N26
\mem|mem_reg[12][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][15]~combout\ = (GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & ((\mem|mem_reg[12][15]~62_combout\))) # (!GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & (\mem|mem_reg[12][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[12][15]~combout\,
	datac => \mem|mem_reg[12][0]~20clkctrl_outclk\,
	datad => \mem|mem_reg[12][15]~62_combout\,
	combout => \mem|mem_reg[12][15]~combout\);

-- Location: LCCOMB_X27_Y22_N12
\mem|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~5_combout\ = (\mem|Mux0~4_combout\ & (((\mem|mem_reg[12][15]~combout\) # (!\m_1|outp[3]~3_combout\)))) # (!\mem|Mux0~4_combout\ & (\mem|mem_reg[8][15]~combout\ & (\m_1|outp[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[8][15]~combout\,
	datab => \mem|Mux0~4_combout\,
	datac => \m_1|outp[3]~3_combout\,
	datad => \mem|mem_reg[12][15]~combout\,
	combout => \mem|Mux0~5_combout\);

-- Location: LCCOMB_X27_Y22_N14
\mem|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~6_combout\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[1]~5_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~5_combout\ & (\mem|Mux0~3_combout\)) # (!\m_1|outp[1]~5_combout\ & ((\mem|Mux0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \mem|Mux0~3_combout\,
	datac => \m_1|outp[1]~5_combout\,
	datad => \mem|Mux0~5_combout\,
	combout => \mem|Mux0~6_combout\);

-- Location: LCCOMB_X27_Y19_N4
\mem|mem_reg[7][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[7][15]~combout\ = (GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & (\m_2|outp[15]~4_combout\)) # (!GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & ((\mem|mem_reg[7][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[15]~4_combout\,
	datac => \mem|mem_reg[7][15]~combout\,
	datad => \mem|mem_reg[7][0]~23clkctrl_outclk\,
	combout => \mem|mem_reg[7][15]~combout\);

-- Location: LCCOMB_X28_Y22_N16
\mem|mem_reg[11][15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][15]~63_combout\ = (\m_2|outp[4]~1_combout\ & (\input[31]~input_o\ & (\mem|Decoder0~12_combout\ & \memwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[31]~input_o\,
	datac => \mem|Decoder0~12_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[11][15]~63_combout\);

-- Location: LCCOMB_X28_Y22_N30
\mem|mem_reg[11][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][15]~combout\ = (GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & ((\mem|mem_reg[11][15]~63_combout\))) # (!GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & (\mem|mem_reg[11][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[11][15]~combout\,
	datac => \mem|mem_reg[11][0]~22clkctrl_outclk\,
	datad => \mem|mem_reg[11][15]~63_combout\,
	combout => \mem|mem_reg[11][15]~combout\);

-- Location: LCCOMB_X24_Y25_N20
\mem|mem_reg[3][15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][15]~64_combout\ = (\input[31]~input_o\ & (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & \mem|Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[31]~input_o\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~14_combout\,
	combout => \mem|mem_reg[3][15]~64_combout\);

-- Location: LCCOMB_X24_Y25_N14
\mem|mem_reg[3][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][15]~combout\ = (GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & (\mem|mem_reg[3][15]~64_combout\)) # (!GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & ((\mem|mem_reg[3][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[3][15]~64_combout\,
	datac => \mem|mem_reg[3][15]~combout\,
	datad => \mem|mem_reg[3][0]~25clkctrl_outclk\,
	combout => \mem|mem_reg[3][15]~combout\);

-- Location: LCCOMB_X27_Y22_N20
\mem|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~7_combout\ = (\m_1|outp[3]~3_combout\ & ((\m_1|outp[2]~1_combout\) # ((\mem|mem_reg[11][15]~combout\)))) # (!\m_1|outp[3]~3_combout\ & (!\m_1|outp[2]~1_combout\ & ((\mem|mem_reg[3][15]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~3_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|mem_reg[11][15]~combout\,
	datad => \mem|mem_reg[3][15]~combout\,
	combout => \mem|Mux0~7_combout\);

-- Location: LCCOMB_X26_Y26_N28
\mem|mem_reg[15][15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][15]~65_combout\ = (\m_2|outp[4]~1_combout\ & (\input[31]~input_o\ & (\memwr~combout\ & \mem|Decoder0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[31]~input_o\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~15_combout\,
	combout => \mem|mem_reg[15][15]~65_combout\);

-- Location: LCCOMB_X26_Y26_N4
\mem|mem_reg[15][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][15]~combout\ = (GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & (\mem|mem_reg[15][15]~65_combout\)) # (!GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & ((\mem|mem_reg[15][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[15][15]~65_combout\,
	datac => \mem|mem_reg[15][15]~combout\,
	datad => \mem|mem_reg[15][0]~27clkctrl_outclk\,
	combout => \mem|mem_reg[15][15]~combout\);

-- Location: LCCOMB_X27_Y22_N0
\mem|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~8_combout\ = (\mem|Mux0~7_combout\ & (((\mem|mem_reg[15][15]~combout\) # (!\m_1|outp[2]~1_combout\)))) # (!\mem|Mux0~7_combout\ & (\mem|mem_reg[7][15]~combout\ & (\m_1|outp[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[7][15]~combout\,
	datab => \mem|Mux0~7_combout\,
	datac => \m_1|outp[2]~1_combout\,
	datad => \mem|mem_reg[15][15]~combout\,
	combout => \mem|Mux0~8_combout\);

-- Location: LCCOMB_X27_Y22_N8
\mem|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~9_combout\ = (\mem|Mux0~6_combout\ & (((\mem|Mux0~8_combout\) # (!\m_1|outp[0]~7_combout\)))) # (!\mem|Mux0~6_combout\ & (\mem|Mux0~1_combout\ & ((\m_1|outp[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux0~1_combout\,
	datab => \mem|Mux0~6_combout\,
	datac => \mem|Mux0~8_combout\,
	datad => \m_1|outp[0]~7_combout\,
	combout => \mem|Mux0~9_combout\);

-- Location: LCCOMB_X27_Y22_N24
\mem|do[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|do\(15) = (GLOBAL(\mem|do[15]~0clkctrl_outclk\) & (\mem|Mux0~9_combout\)) # (!GLOBAL(\mem|do[15]~0clkctrl_outclk\) & ((\mem|do\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux0~9_combout\,
	datac => \mem|do[15]~0clkctrl_outclk\,
	datad => \mem|do\(15),
	combout => \mem|do\(15));

-- Location: LCCOMB_X27_Y22_N4
\ir_1|r_1|dout[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_1|r_1|dout\(15) = (\irwr~combout\ & ((\mem|do\(15)))) # (!\irwr~combout\ & (\ir_1|r_1|dout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_1|r_1|dout\(15),
	datac => \irwr~combout\,
	datad => \mem|do\(15),
	combout => \ir_1|r_1|dout\(15));

-- Location: IOIBUF_X25_Y34_N8
\input[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(30),
	o => \input[30]~input_o\);

-- Location: LCCOMB_X28_Y23_N14
\m_2|outp[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2|outp[14]~2_combout\ = (dcon(1) & (\input[30]~input_o\ & !dcon(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dcon(1),
	datab => \input[30]~input_o\,
	datac => dcon(0),
	combout => \m_2|outp[14]~2_combout\);

-- Location: LCCOMB_X29_Y21_N18
\mem|mem_reg[12][14]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][14]~38_combout\ = ((\m_2|outp[14]~2_combout\) # (!\memwr~combout\)) # (!\mem|Decoder0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~11_combout\,
	datab => \memwr~combout\,
	datad => \m_2|outp[14]~2_combout\,
	combout => \mem|mem_reg[12][14]~38_combout\);

-- Location: LCCOMB_X29_Y21_N4
\mem|mem_reg[12][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][14]~combout\ = (GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & (\mem|mem_reg[12][14]~38_combout\)) # (!GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & ((\mem|mem_reg[12][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[12][14]~38_combout\,
	datac => \mem|mem_reg[12][14]~combout\,
	datad => \mem|mem_reg[12][0]~20clkctrl_outclk\,
	combout => \mem|mem_reg[12][14]~combout\);

-- Location: LCCOMB_X29_Y24_N0
\mem|mem_reg[13][14]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][14]~37_combout\ = (\memwr~combout\ & (\input[30]~input_o\ & (\mem|Decoder0~7_combout\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datab => \input[30]~input_o\,
	datac => \mem|Decoder0~7_combout\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[13][14]~37_combout\);

-- Location: LCCOMB_X29_Y24_N22
\mem|mem_reg[13][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][14]~combout\ = (GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & ((\mem|mem_reg[13][14]~37_combout\))) # (!GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & (\mem|mem_reg[13][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[13][14]~combout\,
	datac => \mem|mem_reg[13][14]~37_combout\,
	datad => \mem|mem_reg[13][0]~13clkctrl_outclk\,
	combout => \mem|mem_reg[13][14]~combout\);

-- Location: LCCOMB_X29_Y21_N10
\mem|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~7_combout\ = (\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~5_combout\) # ((\mem|mem_reg[13][14]~combout\)))) # (!\m_1|outp[0]~7_combout\ & (!\m_1|outp[1]~5_combout\ & (\mem|mem_reg[12][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \mem|mem_reg[12][14]~combout\,
	datad => \mem|mem_reg[13][14]~combout\,
	combout => \mem|Mux1~7_combout\);

-- Location: LCCOMB_X30_Y24_N28
\mem|mem_reg[14][14]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][14]~36_combout\ = (\input[30]~input_o\ & (\memwr~combout\ & (\m_2|outp[4]~1_combout\ & \mem|Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[30]~input_o\,
	datab => \memwr~combout\,
	datac => \m_2|outp[4]~1_combout\,
	datad => \mem|Decoder0~3_combout\,
	combout => \mem|mem_reg[14][14]~36_combout\);

-- Location: LCCOMB_X30_Y24_N26
\mem|mem_reg[14][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][14]~combout\ = (GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & (\mem|mem_reg[14][14]~36_combout\)) # (!GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & ((\mem|mem_reg[14][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[14][14]~36_combout\,
	datac => \mem|mem_reg[14][14]~combout\,
	datad => \mem|mem_reg[14][0]~6clkctrl_outclk\,
	combout => \mem|mem_reg[14][14]~combout\);

-- Location: LCCOMB_X26_Y26_N20
\mem|mem_reg[15][14]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][14]~39_combout\ = (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & (\input[30]~input_o\ & \mem|Decoder0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \memwr~combout\,
	datac => \input[30]~input_o\,
	datad => \mem|Decoder0~15_combout\,
	combout => \mem|mem_reg[15][14]~39_combout\);

-- Location: LCCOMB_X26_Y26_N16
\mem|mem_reg[15][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][14]~combout\ = (GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & (\mem|mem_reg[15][14]~39_combout\)) # (!GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & ((\mem|mem_reg[15][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[15][14]~39_combout\,
	datac => \mem|mem_reg[15][0]~27clkctrl_outclk\,
	datad => \mem|mem_reg[15][14]~combout\,
	combout => \mem|mem_reg[15][14]~combout\);

-- Location: LCCOMB_X29_Y21_N22
\mem|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~8_combout\ = (\mem|Mux1~7_combout\ & (((\mem|mem_reg[15][14]~combout\)) # (!\m_1|outp[1]~5_combout\))) # (!\mem|Mux1~7_combout\ & (\m_1|outp[1]~5_combout\ & (\mem|mem_reg[14][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux1~7_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \mem|mem_reg[14][14]~combout\,
	datad => \mem|mem_reg[15][14]~combout\,
	combout => \mem|Mux1~8_combout\);

-- Location: LCCOMB_X30_Y20_N4
\mem|mem_reg[5][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[5][14]~combout\ = (GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & (\m_2|outp[14]~2_combout\)) # (!GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & ((\mem|mem_reg[5][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[14]~2_combout\,
	datac => \mem|mem_reg[5][14]~combout\,
	datad => \mem|mem_reg[5][0]~9clkctrl_outclk\,
	combout => \mem|mem_reg[5][14]~combout\);

-- Location: LCCOMB_X25_Y22_N24
\mem|mem_reg[4][14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][14]~28_combout\ = (\m_2|outp[4]~1_combout\ & (\mem|Decoder0~8_combout\ & (\memwr~combout\ & \input[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \mem|Decoder0~8_combout\,
	datac => \memwr~combout\,
	datad => \input[30]~input_o\,
	combout => \mem|mem_reg[4][14]~28_combout\);

-- Location: LCCOMB_X25_Y22_N28
\mem|mem_reg[4][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][14]~combout\ = (GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & (\mem|mem_reg[4][14]~28_combout\)) # (!GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & ((\mem|mem_reg[4][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[4][14]~28_combout\,
	datac => \mem|mem_reg[4][0]~15clkctrl_outclk\,
	datad => \mem|mem_reg[4][14]~combout\,
	combout => \mem|mem_reg[4][14]~combout\);

-- Location: LCCOMB_X29_Y21_N16
\mem|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~0_combout\ = (\m_1|outp[1]~5_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~5_combout\ & ((\m_1|outp[0]~7_combout\ & (\mem|mem_reg[5][14]~combout\)) # (!\m_1|outp[0]~7_combout\ & ((\mem|mem_reg[4][14]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[5][14]~combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \mem|mem_reg[4][14]~combout\,
	datad => \m_1|outp[0]~7_combout\,
	combout => \mem|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y21_N26
\mem|mem_reg[7][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[7][14]~combout\ = (GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & (\m_2|outp[14]~2_combout\)) # (!GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & ((\mem|mem_reg[7][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[14]~2_combout\,
	datac => \mem|mem_reg[7][14]~combout\,
	datad => \mem|mem_reg[7][0]~23clkctrl_outclk\,
	combout => \mem|mem_reg[7][14]~combout\);

-- Location: LCCOMB_X30_Y23_N4
\mem|mem_reg[6][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[6][14]~combout\ = (GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & (\m_2|outp[14]~2_combout\)) # (!GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & ((\mem|mem_reg[6][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[14]~2_combout\,
	datac => \mem|mem_reg[6][14]~combout\,
	datad => \mem|mem_reg[6][0]~0clkctrl_outclk\,
	combout => \mem|mem_reg[6][14]~combout\);

-- Location: LCCOMB_X29_Y21_N2
\mem|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~1_combout\ = (\mem|Mux1~0_combout\ & (((\mem|mem_reg[7][14]~combout\)) # (!\m_1|outp[1]~5_combout\))) # (!\mem|Mux1~0_combout\ & (\m_1|outp[1]~5_combout\ & ((\mem|mem_reg[6][14]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux1~0_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \mem|mem_reg[7][14]~combout\,
	datad => \mem|mem_reg[6][14]~combout\,
	combout => \mem|Mux1~1_combout\);

-- Location: LCCOMB_X30_Y22_N28
\mem|mem_reg[11][14]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][14]~31_combout\ = (\m_2|outp[14]~2_combout\) # ((!\memwr~combout\) # (!\mem|Decoder0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[14]~2_combout\,
	datac => \mem|Decoder0~12_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[11][14]~31_combout\);

-- Location: LCCOMB_X30_Y22_N2
\mem|mem_reg[11][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][14]~combout\ = (GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & ((\mem|mem_reg[11][14]~31_combout\))) # (!GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & (\mem|mem_reg[11][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[11][0]~22clkctrl_outclk\,
	datab => \mem|mem_reg[11][14]~combout\,
	datad => \mem|mem_reg[11][14]~31_combout\,
	combout => \mem|mem_reg[11][14]~combout\);

-- Location: LCCOMB_X29_Y21_N6
\mem|mem_reg[8][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[8][14]~combout\ = (GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & (\m_2|outp[14]~2_combout\)) # (!GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & ((\mem|mem_reg[8][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[14]~2_combout\,
	datac => \mem|mem_reg[8][0]~16clkctrl_outclk\,
	datad => \mem|mem_reg[8][14]~combout\,
	combout => \mem|mem_reg[8][14]~combout\);

-- Location: LCCOMB_X29_Y25_N22
\mem|mem_reg[10][14]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][14]~30_combout\ = (\input[30]~input_o\ & (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & \mem|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[30]~input_o\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~1_combout\,
	combout => \mem|mem_reg[10][14]~30_combout\);

-- Location: LCCOMB_X29_Y25_N18
\mem|mem_reg[10][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][14]~combout\ = (GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & ((\mem|mem_reg[10][14]~30_combout\))) # (!GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & (\mem|mem_reg[10][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[10][14]~combout\,
	datac => \mem|mem_reg[10][14]~30_combout\,
	datad => \mem|mem_reg[10][0]~2clkctrl_outclk\,
	combout => \mem|mem_reg[10][14]~combout\);

-- Location: LCCOMB_X29_Y21_N8
\mem|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~2_combout\ = (\m_1|outp[1]~5_combout\ & (((\m_1|outp[0]~7_combout\) # (\mem|mem_reg[10][14]~combout\)))) # (!\m_1|outp[1]~5_combout\ & (\mem|mem_reg[8][14]~combout\ & (!\m_1|outp[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[8][14]~combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \mem|mem_reg[10][14]~combout\,
	combout => \mem|Mux1~2_combout\);

-- Location: LCCOMB_X25_Y25_N18
\mem|mem_reg[9][14]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][14]~29_combout\ = (\m_2|outp[4]~1_combout\ & (\input[30]~input_o\ & (\memwr~combout\ & \mem|Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[30]~input_o\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~4_combout\,
	combout => \mem|mem_reg[9][14]~29_combout\);

-- Location: LCCOMB_X25_Y25_N4
\mem|mem_reg[9][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][14]~combout\ = (GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & (\mem|mem_reg[9][14]~29_combout\)) # (!GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & ((\mem|mem_reg[9][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[9][14]~29_combout\,
	datac => \mem|mem_reg[9][14]~combout\,
	datad => \mem|mem_reg[9][0]~8clkctrl_outclk\,
	combout => \mem|mem_reg[9][14]~combout\);

-- Location: LCCOMB_X29_Y21_N24
\mem|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~3_combout\ = (\mem|Mux1~2_combout\ & ((\mem|mem_reg[11][14]~combout\) # ((!\m_1|outp[0]~7_combout\)))) # (!\mem|Mux1~2_combout\ & (((\m_1|outp[0]~7_combout\ & \mem|mem_reg[9][14]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[11][14]~combout\,
	datab => \mem|Mux1~2_combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \mem|mem_reg[9][14]~combout\,
	combout => \mem|Mux1~3_combout\);

-- Location: LCCOMB_X28_Y22_N20
\mem|mem_reg[0][14]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][14]~34_combout\ = (\memwr~combout\ & (\mem|Decoder0~10_combout\ & (\input[30]~input_o\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~combout\,
	datab => \mem|Decoder0~10_combout\,
	datac => \input[30]~input_o\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[0][14]~34_combout\);

-- Location: LCCOMB_X28_Y22_N14
\mem|mem_reg[0][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][14]~combout\ = (GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & ((\mem|mem_reg[0][14]~34_combout\))) # (!GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & (\mem|mem_reg[0][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[0][14]~combout\,
	datac => \mem|mem_reg[0][0]~18clkctrl_outclk\,
	datad => \mem|mem_reg[0][14]~34_combout\,
	combout => \mem|mem_reg[0][14]~combout\);

-- Location: LCCOMB_X28_Y22_N26
\mem|mem_reg[2][14]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][14]~33_combout\ = (\m_2|outp[4]~1_combout\ & (\input[30]~input_o\ & (\mem|Decoder0~2_combout\ & \memwr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[30]~input_o\,
	datac => \mem|Decoder0~2_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[2][14]~33_combout\);

-- Location: LCCOMB_X28_Y22_N8
\mem|mem_reg[2][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][14]~combout\ = (GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & ((\mem|mem_reg[2][14]~33_combout\))) # (!GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & (\mem|mem_reg[2][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[2][14]~combout\,
	datac => \mem|mem_reg[2][14]~33_combout\,
	datad => \mem|mem_reg[2][0]~4clkctrl_outclk\,
	combout => \mem|mem_reg[2][14]~combout\);

-- Location: LCCOMB_X28_Y22_N2
\mem|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~4_combout\ = (\m_1|outp[0]~7_combout\ & (\m_1|outp[1]~5_combout\)) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~5_combout\ & ((\mem|mem_reg[2][14]~combout\))) # (!\m_1|outp[1]~5_combout\ & (\mem|mem_reg[0][14]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \mem|mem_reg[0][14]~combout\,
	datad => \mem|mem_reg[2][14]~combout\,
	combout => \mem|Mux1~4_combout\);

-- Location: LCCOMB_X25_Y22_N16
\mem|mem_reg[1][14]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][14]~32_combout\ = (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & (\input[30]~input_o\ & \mem|Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \memwr~combout\,
	datac => \input[30]~input_o\,
	datad => \mem|Decoder0~6_combout\,
	combout => \mem|mem_reg[1][14]~32_combout\);

-- Location: LCCOMB_X25_Y22_N10
\mem|mem_reg[1][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][14]~combout\ = (GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & ((\mem|mem_reg[1][14]~32_combout\))) # (!GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & (\mem|mem_reg[1][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[1][14]~combout\,
	datac => \mem|mem_reg[1][14]~32_combout\,
	datad => \mem|mem_reg[1][0]~11clkctrl_outclk\,
	combout => \mem|mem_reg[1][14]~combout\);

-- Location: LCCOMB_X27_Y18_N0
\mem|mem_reg[3][14]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][14]~35_combout\ = (\m_2|outp[14]~2_combout\) # ((!\memwr~combout\) # (!\mem|Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[14]~2_combout\,
	datac => \mem|Decoder0~14_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[3][14]~35_combout\);

-- Location: LCCOMB_X27_Y18_N14
\mem|mem_reg[3][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][14]~combout\ = (GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & ((\mem|mem_reg[3][14]~35_combout\))) # (!GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & (\mem|mem_reg[3][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[3][14]~combout\,
	datac => \mem|mem_reg[3][14]~35_combout\,
	datad => \mem|mem_reg[3][0]~25clkctrl_outclk\,
	combout => \mem|mem_reg[3][14]~combout\);

-- Location: LCCOMB_X28_Y22_N28
\mem|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~5_combout\ = (\m_1|outp[0]~7_combout\ & ((\mem|Mux1~4_combout\ & ((\mem|mem_reg[3][14]~combout\))) # (!\mem|Mux1~4_combout\ & (\mem|mem_reg[1][14]~combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \mem|Mux1~4_combout\,
	datac => \mem|mem_reg[1][14]~combout\,
	datad => \mem|mem_reg[3][14]~combout\,
	combout => \mem|Mux1~5_combout\);

-- Location: LCCOMB_X29_Y21_N20
\mem|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~6_combout\ = (\m_1|outp[3]~3_combout\ & ((\m_1|outp[2]~1_combout\) # ((\mem|Mux1~3_combout\)))) # (!\m_1|outp[3]~3_combout\ & (!\m_1|outp[2]~1_combout\ & ((\mem|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~3_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|Mux1~3_combout\,
	datad => \mem|Mux1~5_combout\,
	combout => \mem|Mux1~6_combout\);

-- Location: LCCOMB_X29_Y21_N14
\mem|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~9_combout\ = (\m_1|outp[2]~1_combout\ & ((\mem|Mux1~6_combout\ & (\mem|Mux1~8_combout\)) # (!\mem|Mux1~6_combout\ & ((\mem|Mux1~1_combout\))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux1~8_combout\,
	datab => \mem|Mux1~1_combout\,
	datac => \m_1|outp[2]~1_combout\,
	datad => \mem|Mux1~6_combout\,
	combout => \mem|Mux1~9_combout\);

-- Location: LCCOMB_X28_Y21_N20
\mem|do[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|do\(14) = (GLOBAL(\mem|do[15]~0clkctrl_outclk\) & ((\mem|Mux1~9_combout\))) # (!GLOBAL(\mem|do[15]~0clkctrl_outclk\) & (\mem|do\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|do\(14),
	datac => \mem|Mux1~9_combout\,
	datad => \mem|do[15]~0clkctrl_outclk\,
	combout => \mem|do\(14));

-- Location: LCCOMB_X28_Y21_N2
\ir_1|r_1|dout[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_1|r_1|dout\(14) = (\irwr~combout\ & ((\mem|do\(14)))) # (!\irwr~combout\ & (\ir_1|r_1|dout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irwr~combout\,
	datac => \ir_1|r_1|dout\(14),
	datad => \mem|do\(14),
	combout => \ir_1|r_1|dout\(14));

-- Location: IOIBUF_X25_Y34_N1
\input[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(29),
	o => \input[29]~input_o\);

-- Location: LCCOMB_X29_Y22_N16
\m_2|outp[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2|outp[13]~0_combout\ = (!dcon(0) & (dcon(1) & \input[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dcon(0),
	datab => dcon(1),
	datad => \input[29]~input_o\,
	combout => \m_2|outp[13]~0_combout\);

-- Location: LCCOMB_X24_Y22_N24
\mem|mem_reg[2][13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][13]~3_combout\ = ((\m_2|outp[13]~0_combout\) # (!\memwr~combout\)) # (!\mem|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~2_combout\,
	datab => \m_2|outp[13]~0_combout\,
	datac => \memwr~combout\,
	combout => \mem|mem_reg[2][13]~3_combout\);

-- Location: LCCOMB_X24_Y22_N6
\mem|mem_reg[2][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[2][13]~combout\ = (GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & (\mem|mem_reg[2][13]~3_combout\)) # (!GLOBAL(\mem|mem_reg[2][0]~4clkctrl_outclk\) & ((\mem|mem_reg[2][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[2][13]~3_combout\,
	datac => \mem|mem_reg[2][13]~combout\,
	datad => \mem|mem_reg[2][0]~4clkctrl_outclk\,
	combout => \mem|mem_reg[2][13]~combout\);

-- Location: LCCOMB_X29_Y25_N28
\mem|mem_reg[10][13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][13]~1_combout\ = (\input[29]~input_o\ & (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & \mem|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[29]~input_o\,
	datab => \m_2|outp[4]~1_combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~1_combout\,
	combout => \mem|mem_reg[10][13]~1_combout\);

-- Location: LCCOMB_X29_Y25_N12
\mem|mem_reg[10][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[10][13]~combout\ = (GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & ((\mem|mem_reg[10][13]~1_combout\))) # (!GLOBAL(\mem|mem_reg[10][0]~2clkctrl_outclk\) & (\mem|mem_reg[10][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[10][13]~combout\,
	datac => \mem|mem_reg[10][13]~1_combout\,
	datad => \mem|mem_reg[10][0]~2clkctrl_outclk\,
	combout => \mem|mem_reg[10][13]~combout\);

-- Location: LCCOMB_X26_Y21_N26
\mem|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~0_combout\ = (\m_1|outp[3]~3_combout\ & ((\m_1|outp[2]~1_combout\) # ((\mem|mem_reg[10][13]~combout\)))) # (!\m_1|outp[3]~3_combout\ & (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[2][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~3_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|mem_reg[2][13]~combout\,
	datad => \mem|mem_reg[10][13]~combout\,
	combout => \mem|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y23_N2
\mem|mem_reg[6][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[6][13]~combout\ = (GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & ((\m_2|outp[13]~0_combout\))) # (!GLOBAL(\mem|mem_reg[6][0]~0clkctrl_outclk\) & (\mem|mem_reg[6][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[6][13]~combout\,
	datac => \m_2|outp[13]~0_combout\,
	datad => \mem|mem_reg[6][0]~0clkctrl_outclk\,
	combout => \mem|mem_reg[6][13]~combout\);

-- Location: LCCOMB_X29_Y20_N18
\mem|mem_reg[14][13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][13]~5_combout\ = ((\m_2|outp[13]~0_combout\) # (!\memwr~combout\)) # (!\mem|Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~3_combout\,
	datac => \m_2|outp[13]~0_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[14][13]~5_combout\);

-- Location: LCCOMB_X29_Y20_N24
\mem|mem_reg[14][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[14][13]~combout\ = (GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & (\mem|mem_reg[14][13]~5_combout\)) # (!GLOBAL(\mem|mem_reg[14][0]~6clkctrl_outclk\) & ((\mem|mem_reg[14][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[14][13]~5_combout\,
	datac => \mem|mem_reg[14][13]~combout\,
	datad => \mem|mem_reg[14][0]~6clkctrl_outclk\,
	combout => \mem|mem_reg[14][13]~combout\);

-- Location: LCCOMB_X26_Y21_N10
\mem|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~1_combout\ = (\mem|Mux2~0_combout\ & (((\mem|mem_reg[14][13]~combout\)) # (!\m_1|outp[2]~1_combout\))) # (!\mem|Mux2~0_combout\ & (\m_1|outp[2]~1_combout\ & (\mem|mem_reg[6][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux2~0_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|mem_reg[6][13]~combout\,
	datad => \mem|mem_reg[14][13]~combout\,
	combout => \mem|Mux2~1_combout\);

-- Location: LCCOMB_X26_Y21_N28
\mem|mem_reg[3][13]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][13]~24_combout\ = (\input[29]~input_o\ & (\mem|Decoder0~14_combout\ & (\memwr~combout\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[29]~input_o\,
	datab => \mem|Decoder0~14_combout\,
	datac => \memwr~combout\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[3][13]~24_combout\);

-- Location: LCCOMB_X26_Y21_N8
\mem|mem_reg[3][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[3][13]~combout\ = (GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & ((\mem|mem_reg[3][13]~24_combout\))) # (!GLOBAL(\mem|mem_reg[3][0]~25clkctrl_outclk\) & (\mem|mem_reg[3][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[3][13]~combout\,
	datac => \mem|mem_reg[3][0]~25clkctrl_outclk\,
	datad => \mem|mem_reg[3][13]~24_combout\,
	combout => \mem|mem_reg[3][13]~combout\);

-- Location: LCCOMB_X26_Y21_N24
\mem|mem_reg[7][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[7][13]~combout\ = (GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & (\m_2|outp[13]~0_combout\)) # (!GLOBAL(\mem|mem_reg[7][0]~23clkctrl_outclk\) & ((\mem|mem_reg[7][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[13]~0_combout\,
	datac => \mem|mem_reg[7][0]~23clkctrl_outclk\,
	datad => \mem|mem_reg[7][13]~combout\,
	combout => \mem|mem_reg[7][13]~combout\);

-- Location: LCCOMB_X26_Y21_N22
\mem|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~7_combout\ = (\m_1|outp[3]~3_combout\ & (\m_1|outp[2]~1_combout\)) # (!\m_1|outp[3]~3_combout\ & ((\m_1|outp[2]~1_combout\ & ((\mem|mem_reg[7][13]~combout\))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[3][13]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~3_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|mem_reg[3][13]~combout\,
	datad => \mem|mem_reg[7][13]~combout\,
	combout => \mem|Mux2~7_combout\);

-- Location: LCCOMB_X26_Y23_N20
\mem|mem_reg[15][13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][13]~26_combout\ = ((\m_2|outp[13]~0_combout\) # (!\mem|Decoder0~15_combout\)) # (!\memwr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwr~combout\,
	datac => \m_2|outp[13]~0_combout\,
	datad => \mem|Decoder0~15_combout\,
	combout => \mem|mem_reg[15][13]~26_combout\);

-- Location: LCCOMB_X26_Y23_N2
\mem|mem_reg[15][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[15][13]~combout\ = (GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & (\mem|mem_reg[15][13]~26_combout\)) # (!GLOBAL(\mem|mem_reg[15][0]~27clkctrl_outclk\) & ((\mem|mem_reg[15][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[15][0]~27clkctrl_outclk\,
	datac => \mem|mem_reg[15][13]~26_combout\,
	datad => \mem|mem_reg[15][13]~combout\,
	combout => \mem|mem_reg[15][13]~combout\);

-- Location: LCCOMB_X29_Y21_N28
\mem|mem_reg[11][13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][13]~21_combout\ = (\m_2|outp[4]~1_combout\ & (\memwr~combout\ & (\input[29]~input_o\ & \mem|Decoder0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \memwr~combout\,
	datac => \input[29]~input_o\,
	datad => \mem|Decoder0~12_combout\,
	combout => \mem|mem_reg[11][13]~21_combout\);

-- Location: LCCOMB_X26_Y21_N14
\mem|mem_reg[11][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[11][13]~combout\ = (GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & (\mem|mem_reg[11][13]~21_combout\)) # (!GLOBAL(\mem|mem_reg[11][0]~22clkctrl_outclk\) & ((\mem|mem_reg[11][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[11][13]~21_combout\,
	datac => \mem|mem_reg[11][13]~combout\,
	datad => \mem|mem_reg[11][0]~22clkctrl_outclk\,
	combout => \mem|mem_reg[11][13]~combout\);

-- Location: LCCOMB_X26_Y21_N20
\mem|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~8_combout\ = (\mem|Mux2~7_combout\ & ((\mem|mem_reg[15][13]~combout\) # ((!\m_1|outp[3]~3_combout\)))) # (!\mem|Mux2~7_combout\ & (((\mem|mem_reg[11][13]~combout\ & \m_1|outp[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux2~7_combout\,
	datab => \mem|mem_reg[15][13]~combout\,
	datac => \mem|mem_reg[11][13]~combout\,
	datad => \m_1|outp[3]~3_combout\,
	combout => \mem|Mux2~8_combout\);

-- Location: LCCOMB_X25_Y23_N10
\mem|mem_reg[4][13]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][13]~14_combout\ = (\m_2|outp[4]~1_combout\ & (\input[29]~input_o\ & (\memwr~combout\ & \mem|Decoder0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[29]~input_o\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~8_combout\,
	combout => \mem|mem_reg[4][13]~14_combout\);

-- Location: LCCOMB_X25_Y23_N14
\mem|mem_reg[4][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[4][13]~combout\ = (GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & (\mem|mem_reg[4][13]~14_combout\)) # (!GLOBAL(\mem|mem_reg[4][0]~15clkctrl_outclk\) & ((\mem|mem_reg[4][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[4][13]~14_combout\,
	datab => \mem|mem_reg[4][13]~combout\,
	datad => \mem|mem_reg[4][0]~15clkctrl_outclk\,
	combout => \mem|mem_reg[4][13]~combout\);

-- Location: LCCOMB_X28_Y21_N10
\mem|mem_reg[8][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[8][13]~combout\ = (GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & (\m_2|outp[13]~0_combout\)) # (!GLOBAL(\mem|mem_reg[8][0]~16clkctrl_outclk\) & ((\mem|mem_reg[8][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[13]~0_combout\,
	datac => \mem|mem_reg[8][0]~16clkctrl_outclk\,
	datad => \mem|mem_reg[8][13]~combout\,
	combout => \mem|mem_reg[8][13]~combout\);

-- Location: LCCOMB_X30_Y22_N30
\mem|mem_reg[0][13]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][13]~17_combout\ = (\m_2|outp[13]~0_combout\) # ((!\mem|Decoder0~10_combout\) # (!\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[13]~0_combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~10_combout\,
	combout => \mem|mem_reg[0][13]~17_combout\);

-- Location: LCCOMB_X30_Y22_N12
\mem|mem_reg[0][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[0][13]~combout\ = (GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & ((\mem|mem_reg[0][13]~17_combout\))) # (!GLOBAL(\mem|mem_reg[0][0]~18clkctrl_outclk\) & (\mem|mem_reg[0][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[0][13]~combout\,
	datac => \mem|mem_reg[0][0]~18clkctrl_outclk\,
	datad => \mem|mem_reg[0][13]~17_combout\,
	combout => \mem|mem_reg[0][13]~combout\);

-- Location: LCCOMB_X28_Y21_N26
\mem|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~4_combout\ = (\m_1|outp[3]~3_combout\ & ((\m_1|outp[2]~1_combout\) # ((\mem|mem_reg[8][13]~combout\)))) # (!\m_1|outp[3]~3_combout\ & (!\m_1|outp[2]~1_combout\ & ((\mem|mem_reg[0][13]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~3_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|mem_reg[8][13]~combout\,
	datad => \mem|mem_reg[0][13]~combout\,
	combout => \mem|Mux2~4_combout\);

-- Location: LCCOMB_X28_Y19_N10
\mem|mem_reg[12][13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][13]~19_combout\ = (\input[29]~input_o\ & (\memwr~combout\ & (\mem|Decoder0~11_combout\ & \m_2|outp[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[29]~input_o\,
	datab => \memwr~combout\,
	datac => \mem|Decoder0~11_combout\,
	datad => \m_2|outp[4]~1_combout\,
	combout => \mem|mem_reg[12][13]~19_combout\);

-- Location: LCCOMB_X28_Y19_N22
\mem|mem_reg[12][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[12][13]~combout\ = (GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & (\mem|mem_reg[12][13]~19_combout\)) # (!GLOBAL(\mem|mem_reg[12][0]~20clkctrl_outclk\) & ((\mem|mem_reg[12][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[12][13]~19_combout\,
	datac => \mem|mem_reg[12][13]~combout\,
	datad => \mem|mem_reg[12][0]~20clkctrl_outclk\,
	combout => \mem|mem_reg[12][13]~combout\);

-- Location: LCCOMB_X28_Y21_N14
\mem|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~5_combout\ = (\m_1|outp[2]~1_combout\ & ((\mem|Mux2~4_combout\ & ((\mem|mem_reg[12][13]~combout\))) # (!\mem|Mux2~4_combout\ & (\mem|mem_reg[4][13]~combout\)))) # (!\m_1|outp[2]~1_combout\ & (((\mem|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[4][13]~combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|Mux2~4_combout\,
	datad => \mem|mem_reg[12][13]~combout\,
	combout => \mem|Mux2~5_combout\);

-- Location: LCCOMB_X25_Y25_N12
\mem|mem_reg[9][13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][13]~7_combout\ = (\m_2|outp[4]~1_combout\ & (\input[29]~input_o\ & (\memwr~combout\ & \mem|Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[4]~1_combout\,
	datab => \input[29]~input_o\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~4_combout\,
	combout => \mem|mem_reg[9][13]~7_combout\);

-- Location: LCCOMB_X25_Y25_N26
\mem|mem_reg[9][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[9][13]~combout\ = (GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & (\mem|mem_reg[9][13]~7_combout\)) # (!GLOBAL(\mem|mem_reg[9][0]~8clkctrl_outclk\) & ((\mem|mem_reg[9][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[9][13]~7_combout\,
	datac => \mem|mem_reg[9][13]~combout\,
	datad => \mem|mem_reg[9][0]~8clkctrl_outclk\,
	combout => \mem|mem_reg[9][13]~combout\);

-- Location: LCCOMB_X28_Y21_N16
\mem|mem_reg[5][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[5][13]~combout\ = (GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & (\m_2|outp[13]~0_combout\)) # (!GLOBAL(\mem|mem_reg[5][0]~9clkctrl_outclk\) & ((\mem|mem_reg[5][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2|outp[13]~0_combout\,
	datac => \mem|mem_reg[5][0]~9clkctrl_outclk\,
	datad => \mem|mem_reg[5][13]~combout\,
	combout => \mem|mem_reg[5][13]~combout\);

-- Location: LCCOMB_X24_Y22_N28
\mem|mem_reg[1][13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][13]~10_combout\ = (\m_2|outp[13]~0_combout\) # ((!\mem|Decoder0~6_combout\) # (!\memwr~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_2|outp[13]~0_combout\,
	datac => \memwr~combout\,
	datad => \mem|Decoder0~6_combout\,
	combout => \mem|mem_reg[1][13]~10_combout\);

-- Location: LCCOMB_X24_Y22_N30
\mem|mem_reg[1][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[1][13]~combout\ = (GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & ((\mem|mem_reg[1][13]~10_combout\))) # (!GLOBAL(\mem|mem_reg[1][0]~11clkctrl_outclk\) & (\mem|mem_reg[1][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[1][13]~combout\,
	datab => \mem|mem_reg[1][13]~10_combout\,
	datad => \mem|mem_reg[1][0]~11clkctrl_outclk\,
	combout => \mem|mem_reg[1][13]~combout\);

-- Location: LCCOMB_X28_Y21_N18
\mem|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~2_combout\ = (\m_1|outp[2]~1_combout\ & ((\mem|mem_reg[5][13]~combout\) # ((\m_1|outp[3]~3_combout\)))) # (!\m_1|outp[2]~1_combout\ & (((\mem|mem_reg[1][13]~combout\ & !\m_1|outp[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|mem_reg[5][13]~combout\,
	datac => \mem|mem_reg[1][13]~combout\,
	datad => \m_1|outp[3]~3_combout\,
	combout => \mem|Mux2~2_combout\);

-- Location: LCCOMB_X30_Y22_N0
\mem|mem_reg[13][13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][13]~12_combout\ = ((\m_2|outp[13]~0_combout\) # (!\memwr~combout\)) # (!\mem|Decoder0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~7_combout\,
	datac => \m_2|outp[13]~0_combout\,
	datad => \memwr~combout\,
	combout => \mem|mem_reg[13][13]~12_combout\);

-- Location: LCCOMB_X30_Y22_N14
\mem|mem_reg[13][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|mem_reg[13][13]~combout\ = (GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & ((\mem|mem_reg[13][13]~12_combout\))) # (!GLOBAL(\mem|mem_reg[13][0]~13clkctrl_outclk\) & (\mem|mem_reg[13][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|mem_reg[13][13]~combout\,
	datac => \mem|mem_reg[13][0]~13clkctrl_outclk\,
	datad => \mem|mem_reg[13][13]~12_combout\,
	combout => \mem|mem_reg[13][13]~combout\);

-- Location: LCCOMB_X28_Y21_N12
\mem|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~3_combout\ = (\m_1|outp[3]~3_combout\ & ((\mem|Mux2~2_combout\ & ((\mem|mem_reg[13][13]~combout\))) # (!\mem|Mux2~2_combout\ & (\mem|mem_reg[9][13]~combout\)))) # (!\m_1|outp[3]~3_combout\ & (((\mem|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|mem_reg[9][13]~combout\,
	datab => \m_1|outp[3]~3_combout\,
	datac => \mem|Mux2~2_combout\,
	datad => \mem|mem_reg[13][13]~combout\,
	combout => \mem|Mux2~3_combout\);

-- Location: LCCOMB_X28_Y21_N4
\mem|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~6_combout\ = (\m_1|outp[0]~7_combout\ & (((\mem|Mux2~3_combout\) # (\m_1|outp[1]~5_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|Mux2~5_combout\ & ((!\m_1|outp[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux2~5_combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \mem|Mux2~3_combout\,
	datad => \m_1|outp[1]~5_combout\,
	combout => \mem|Mux2~6_combout\);

-- Location: LCCOMB_X28_Y21_N22
\mem|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~9_combout\ = (\m_1|outp[1]~5_combout\ & ((\mem|Mux2~6_combout\ & ((\mem|Mux2~8_combout\))) # (!\mem|Mux2~6_combout\ & (\mem|Mux2~1_combout\)))) # (!\m_1|outp[1]~5_combout\ & (((\mem|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux2~1_combout\,
	datab => \m_1|outp[1]~5_combout\,
	datac => \mem|Mux2~8_combout\,
	datad => \mem|Mux2~6_combout\,
	combout => \mem|Mux2~9_combout\);

-- Location: LCCOMB_X28_Y21_N28
\mem|do[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|do\(13) = (GLOBAL(\mem|do[15]~0clkctrl_outclk\) & ((\mem|Mux2~9_combout\))) # (!GLOBAL(\mem|do[15]~0clkctrl_outclk\) & (\mem|do\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|do\(13),
	datab => \mem|Mux2~9_combout\,
	datad => \mem|do[15]~0clkctrl_outclk\,
	combout => \mem|do\(13));

-- Location: LCCOMB_X28_Y21_N0
\ir_1|r_1|dout[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_1|r_1|dout\(13) = (\irwr~combout\ & ((\mem|do\(13)))) # (!\irwr~combout\ & (\ir_1|r_1|dout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irwr~combout\,
	datac => \ir_1|r_1|dout\(13),
	datad => \mem|do\(13),
	combout => \ir_1|r_1|dout\(13));

-- Location: LCCOMB_X27_Y21_N8
\next_state~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~55_combout\ = (\ir_1|r_1|dout\(12) & (!\ir_1|r_1|dout\(14) & (\ir_1|r_1|dout\(15) $ (\ir_1|r_1|dout\(13))))) # (!\ir_1|r_1|dout\(12) & (\ir_1|r_1|dout\(15) & ((!\ir_1|r_1|dout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(12),
	datab => \ir_1|r_1|dout\(15),
	datac => \ir_1|r_1|dout\(14),
	datad => \ir_1|r_1|dout\(13),
	combout => \next_state~55_combout\);

-- Location: LCCOMB_X27_Y21_N18
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\ir_1|r_1|dout\(13) & !\ir_1|r_1|dout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir_1|r_1|dout\(13),
	datad => \ir_1|r_1|dout\(14),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X27_Y21_N14
\next_state[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[3]~42_combout\ = (\next_state~55_combout\ & ((\ir_1|r_1|dout\(15)) # ((!\ir_1|r_1|dout\(12)) # (!\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~55_combout\,
	datab => \ir_1|r_1|dout\(15),
	datac => \Equal3~0_combout\,
	datad => \ir_1|r_1|dout\(12),
	combout => \next_state[3]~42_combout\);

-- Location: LCCOMB_X27_Y21_N16
\next_state[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[2]~38_combout\ = (state(1) & (!state(4) & !state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(1),
	datac => state(4),
	datad => state(0),
	combout => \next_state[2]~38_combout\);

-- Location: LCCOMB_X28_Y21_N8
\next_state~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~39_combout\ = (!\ir_1|r_1|dout\(15) & (!\ir_1|r_1|dout\(14) & !\ir_1|r_1|dout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_1|r_1|dout\(15),
	datac => \ir_1|r_1|dout\(14),
	datad => \ir_1|r_1|dout\(12),
	combout => \next_state~39_combout\);

-- Location: LCCOMB_X27_Y21_N12
\next_state[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[3]~43_combout\ = (\next_state[2]~38_combout\ & ((state(3)) # ((\next_state[3]~42_combout\) # (\next_state~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \next_state[3]~42_combout\,
	datac => \next_state[2]~38_combout\,
	datad => \next_state~39_combout\,
	combout => \next_state[3]~43_combout\);

-- Location: LCCOMB_X27_Y21_N4
\next_state[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[3]~44_combout\ = (state(0) & (state(1) $ (!state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datad => state(2),
	combout => \next_state[3]~44_combout\);

-- Location: LCCOMB_X27_Y21_N2
\next_state[3]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[3]~45_combout\ = (\next_state[3]~44_combout\ & (((!state(3) & \Equal35~2_combout\)) # (!state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(4),
	datac => \next_state[3]~44_combout\,
	datad => \Equal35~2_combout\,
	combout => \next_state[3]~45_combout\);

-- Location: LCCOMB_X27_Y21_N24
\next_state[3]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[3]~46_combout\ = (state(3) & ((\next_state[3]~43_combout\) # ((\next_state[3]~45_combout\ & !state(2))))) # (!state(3) & ((state(2) & ((\next_state[3]~45_combout\))) # (!state(2) & (\next_state[3]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \next_state[3]~43_combout\,
	datac => \next_state[3]~45_combout\,
	datad => state(2),
	combout => \next_state[3]~46_combout\);

-- Location: LCCOMB_X27_Y21_N0
\next_state[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- next_state(3) = (!\next_state[4]~41_combout\ & ((\next_state[4]~30_combout\ & (\next_state[3]~46_combout\)) # (!\next_state[4]~30_combout\ & ((next_state(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state[3]~46_combout\,
	datab => next_state(3),
	datac => \next_state[4]~30_combout\,
	datad => \next_state[4]~41_combout\,
	combout => next_state(3));

-- Location: FF_X27_Y20_N5
\state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => next_state(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(3));

-- Location: LCCOMB_X27_Y21_N26
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (state(3) & (state(1) & (!state(4) & state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(1),
	datac => state(4),
	datad => state(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X27_Y21_N6
\next_state[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[4]~23_combout\ = (\Equal0~0_combout\ & (\ir_1|r_1|dout\(15) & ((\Equal3~0_combout\)))) # (!\Equal0~0_combout\ & (((\Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(15),
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal3~0_combout\,
	combout => \next_state[4]~23_combout\);

-- Location: LCCOMB_X27_Y21_N28
\next_state[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[4]~24_combout\ = (state(0) & ((\Equal0~1_combout\) # ((\Equal0~0_combout\ & \next_state[4]~23_combout\)))) # (!state(0) & ((\Equal0~0_combout\) # ((\next_state[4]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => state(0),
	datad => \next_state[4]~23_combout\,
	combout => \next_state[4]~24_combout\);

-- Location: LCCOMB_X27_Y21_N22
\next_state[4]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[4]~58_combout\ = (\next_state[4]~24_combout\) # ((state(3) & (!state(2) & !state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(2),
	datac => state(4),
	datad => \next_state[4]~24_combout\,
	combout => \next_state[4]~58_combout\);

-- Location: LCCOMB_X26_Y20_N20
\aluop[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluop[1]~15_combout\ = (state(1)) # ((state(2) & ((state(4)) # (!state(0)))) # (!state(2) & ((!state(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => state(1),
	datad => state(4),
	combout => \aluop[1]~15_combout\);

-- Location: LCCOMB_X26_Y20_N0
\aluop[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluop[1]~16_combout\ = (\aluop[1]~15_combout\) # ((!state(1) & (state(2) $ (state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(3),
	datac => state(1),
	datad => \aluop[1]~15_combout\,
	combout => \aluop[1]~16_combout\);

-- Location: LCCOMB_X26_Y20_N10
\next_state[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[4]~28_combout\ = (state(0) & ((\Equal0~2_combout\))) # (!state(0) & (\Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \next_state[4]~28_combout\);

-- Location: LCCOMB_X27_Y22_N30
\next_state[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[4]~27_combout\ = (!\ir_1|r_1|dout\(15) & (\ir_1|r_1|dout\(14) & (state(0) $ (\ir_1|r_1|dout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \ir_1|r_1|dout\(15),
	datac => \ir_1|r_1|dout\(14),
	datad => \ir_1|r_1|dout\(13),
	combout => \next_state[4]~27_combout\);

-- Location: LCCOMB_X27_Y19_N16
\next_state[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[4]~25_combout\ = (state(3) & ((state(0)) # (state(1)))) # (!state(3) & (state(0) & state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datac => state(0),
	datad => state(1),
	combout => \next_state[4]~25_combout\);

-- Location: LCCOMB_X27_Y19_N0
\next_state[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[4]~26_combout\ = (state(4) & (state(3) $ (((state(2)) # (\next_state[4]~25_combout\))))) # (!state(4) & (((state(2) & !\next_state[4]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(2),
	datac => state(4),
	datad => \next_state[4]~25_combout\,
	combout => \next_state[4]~26_combout\);

-- Location: LCCOMB_X27_Y21_N10
\next_state[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[4]~29_combout\ = (\aluop[1]~16_combout\ & ((\next_state[4]~28_combout\ & (!\next_state[4]~27_combout\)) # (!\next_state[4]~28_combout\ & ((!\next_state[4]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluop[1]~16_combout\,
	datab => \next_state[4]~28_combout\,
	datac => \next_state[4]~27_combout\,
	datad => \next_state[4]~26_combout\,
	combout => \next_state[4]~29_combout\);

-- Location: LCCOMB_X27_Y21_N30
\next_state[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[4]~30_combout\ = (\next_state[4]~58_combout\) # ((!\next_state[4]~29_combout\ & ((!\Equal0~0_combout\) # (!state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Equal0~0_combout\,
	datac => \next_state[4]~58_combout\,
	datad => \next_state[4]~29_combout\,
	combout => \next_state[4]~30_combout\);

-- Location: LCCOMB_X28_Y19_N12
\next_state[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[0]~11_combout\ = (!\ir_1|r_1|dout\(15) & (\ir_1|r_1|dout\(13) & (\ir_1|r_1|dout\(14) & !\ir_1|r_1|dout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(15),
	datab => \ir_1|r_1|dout\(13),
	datac => \ir_1|r_1|dout\(14),
	datad => \ir_1|r_1|dout\(12),
	combout => \next_state[0]~11_combout\);

-- Location: LCCOMB_X28_Y21_N24
\next_state[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[2]~10_combout\ = (\ir_1|r_1|dout\(12) & (!\ir_1|r_1|dout\(14) & ((!\ir_1|r_1|dout\(15)) # (!\ir_1|r_1|dout\(13))))) # (!\ir_1|r_1|dout\(12) & (!\ir_1|r_1|dout\(13) & ((\ir_1|r_1|dout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(12),
	datab => \ir_1|r_1|dout\(13),
	datac => \ir_1|r_1|dout\(14),
	datad => \ir_1|r_1|dout\(15),
	combout => \next_state[2]~10_combout\);

-- Location: LCCOMB_X27_Y20_N22
\next_state[2]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[2]~56_combout\ = (state(4) & (((state(2))) # (!\next_state[0]~11_combout\))) # (!state(4) & (((\next_state[2]~10_combout\ & !state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => \next_state[0]~11_combout\,
	datac => \next_state[2]~10_combout\,
	datad => state(2),
	combout => \next_state[2]~56_combout\);

-- Location: LCCOMB_X27_Y20_N14
\next_state[2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[2]~57_combout\ = (state(1) & ((state(0) & ((!state(2)))) # (!state(0) & (\next_state[2]~56_combout\)))) # (!state(1) & (state(2) & ((\next_state[2]~56_combout\) # (!state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state[2]~56_combout\,
	datab => state(2),
	datac => state(0),
	datad => state(1),
	combout => \next_state[2]~57_combout\);

-- Location: LCCOMB_X27_Y20_N16
\next_state[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[2]~40_combout\ = (state(3) & (((state(2) & \next_state[2]~38_combout\)))) # (!state(3) & (\next_state[2]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state[2]~57_combout\,
	datab => state(3),
	datac => state(2),
	datad => \next_state[2]~38_combout\,
	combout => \next_state[2]~40_combout\);

-- Location: LCCOMB_X27_Y20_N18
\next_state[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- next_state(2) = (!\next_state[4]~41_combout\ & ((\next_state[4]~30_combout\ & (\next_state[2]~40_combout\)) # (!\next_state[4]~30_combout\ & ((next_state(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state[4]~30_combout\,
	datab => \next_state[2]~40_combout\,
	datac => \next_state[4]~41_combout\,
	datad => next_state(2),
	combout => next_state(2));

-- Location: FF_X27_Y20_N1
\state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => next_state(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(2));

-- Location: LCCOMB_X27_Y20_N4
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!state(2) & (!state(1) & (!state(3) & !state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(1),
	datac => state(3),
	datad => state(4),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X27_Y20_N12
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (state(0) & \Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => \Equal0~4_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X28_Y20_N14
\next_state[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[1]~33_combout\ = (state(3) & (((state(4)) # (state(0))))) # (!state(3) & ((state(2)) # ((!state(4) & state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(3),
	datac => state(4),
	datad => state(0),
	combout => \next_state[1]~33_combout\);

-- Location: LCCOMB_X28_Y20_N24
\next_state[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[1]~34_combout\ = (state(4) & (((state(0))))) # (!state(4) & ((state(0) & (state(2))) # (!state(0) & ((state(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(4),
	datac => state(3),
	datad => state(0),
	combout => \next_state[1]~34_combout\);

-- Location: LCCOMB_X28_Y20_N6
\next_state[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[1]~36_combout\ = (state(4) & (((!\next_state[1]~33_combout\)))) # (!state(4) & ((state(1) & (\next_state[1]~33_combout\)) # (!state(1) & ((\next_state[1]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(4),
	datac => \next_state[1]~33_combout\,
	datad => \next_state[1]~34_combout\,
	combout => \next_state[1]~36_combout\);

-- Location: LCCOMB_X28_Y20_N30
\next_state[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[1]~35_combout\ = (state(1) & ((\next_state[1]~33_combout\ & (state(4) & \next_state[1]~34_combout\)) # (!\next_state[1]~33_combout\ & ((!\next_state[1]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(4),
	datac => \next_state[1]~33_combout\,
	datad => \next_state[1]~34_combout\,
	combout => \next_state[1]~35_combout\);

-- Location: LCCOMB_X28_Y21_N30
\next_state[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[1]~31_combout\ = (\ir_1|r_1|dout\(14) & ((\ir_1|r_1|dout\(15)))) # (!\ir_1|r_1|dout\(14) & (\ir_1|r_1|dout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_1|r_1|dout\(14),
	datac => \ir_1|r_1|dout\(13),
	datad => \ir_1|r_1|dout\(15),
	combout => \next_state[1]~31_combout\);

-- Location: LCCOMB_X28_Y20_N2
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (state(2) & (!state(3) & (state(4) & state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(3),
	datac => state(4),
	datad => state(1),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X28_Y20_N18
\next_state[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[1]~32_combout\ = (state(0) & ((\Equal0~7_combout\))) # (!state(0) & (\next_state[1]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datac => \next_state[1]~31_combout\,
	datad => \Equal0~7_combout\,
	combout => \next_state[1]~32_combout\);

-- Location: LCCOMB_X28_Y20_N0
\next_state[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[1]~37_combout\ = (\next_state[1]~36_combout\ & (\next_state[1]~35_combout\ & (\next_state[0]~11_combout\))) # (!\next_state[1]~36_combout\ & (((!\next_state[1]~32_combout\)) # (!\next_state[1]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state[1]~36_combout\,
	datab => \next_state[1]~35_combout\,
	datac => \next_state[0]~11_combout\,
	datad => \next_state[1]~32_combout\,
	combout => \next_state[1]~37_combout\);

-- Location: LCCOMB_X27_Y21_N20
\next_state[1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[1]~59_combout\ = (\next_state[4]~30_combout\ & ((\next_state[1]~37_combout\))) # (!\next_state[4]~30_combout\ & (next_state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => next_state(1),
	datac => \next_state[4]~30_combout\,
	datad => \next_state[1]~37_combout\,
	combout => \next_state[1]~59_combout\);

-- Location: LCCOMB_X27_Y20_N6
\next_state[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- next_state(1) = (!\Equal0~5_combout\ & ((\Equal0~6_combout\) # (\next_state[1]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datac => \next_state[1]~59_combout\,
	datad => \Equal0~5_combout\,
	combout => next_state(1));

-- Location: FF_X27_Y20_N3
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => next_state(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: LCCOMB_X27_Y19_N8
\next_state[4]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[4]~49_combout\ = (\ir_1|r_1|dout\(13) & (!\ir_1|r_1|dout\(15) & (!state(0) & \ir_1|r_1|dout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(13),
	datab => \ir_1|r_1|dout\(15),
	datac => state(0),
	datad => \ir_1|r_1|dout\(14),
	combout => \next_state[4]~49_combout\);

-- Location: LCCOMB_X27_Y19_N10
\next_state[4]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[4]~47_combout\ = (state(1) & (state(0) & (state(3) & state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => state(3),
	datad => state(2),
	combout => \next_state[4]~47_combout\);

-- Location: LCCOMB_X27_Y19_N20
\next_state[4]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[4]~50_combout\ = (\next_state[4]~47_combout\) # ((\next_state[4]~48_combout\ & ((\next_state[4]~49_combout\) # (!state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => \next_state[4]~49_combout\,
	datac => \next_state[4]~47_combout\,
	datad => \next_state[4]~48_combout\,
	combout => \next_state[4]~50_combout\);

-- Location: LCCOMB_X27_Y19_N14
\next_state[4]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[4]~51_combout\ = (state(2) & (((\Equal35~2_combout\) # (!state(0))) # (!state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(0),
	datad => \Equal35~2_combout\,
	combout => \next_state[4]~51_combout\);

-- Location: LCCOMB_X27_Y19_N30
\next_state[4]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[4]~52_combout\ = (state(3)) # ((state(1) & !state(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datac => state(3),
	datad => state(2),
	combout => \next_state[4]~52_combout\);

-- Location: LCCOMB_X27_Y19_N24
\next_state[4]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[4]~53_combout\ = (\next_state[4]~50_combout\) # ((state(4) & ((\next_state[4]~51_combout\) # (\next_state[4]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state[4]~50_combout\,
	datab => \next_state[4]~51_combout\,
	datac => \next_state[4]~52_combout\,
	datad => state(4),
	combout => \next_state[4]~53_combout\);

-- Location: LCCOMB_X27_Y19_N26
\next_state[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- next_state(4) = (!\next_state[4]~41_combout\ & ((\next_state[4]~30_combout\ & (\next_state[4]~53_combout\)) # (!\next_state[4]~30_combout\ & ((next_state(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state[4]~53_combout\,
	datab => \next_state[4]~41_combout\,
	datac => \next_state[4]~30_combout\,
	datad => next_state(4),
	combout => next_state(4));

-- Location: FF_X27_Y20_N21
\state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => next_state(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(4));

-- Location: LCCOMB_X28_Y19_N20
\next_state[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[0]~20_combout\ = (\ir_1|r_1|dout\(14) & ((state(3)) # ((!state(2) & \ir_1|r_1|dout\(15))))) # (!\ir_1|r_1|dout\(14) & (((!\ir_1|r_1|dout\(15) & state(3))) # (!state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(14),
	datab => state(2),
	datac => \ir_1|r_1|dout\(15),
	datad => state(3),
	combout => \next_state[0]~20_combout\);

-- Location: LCCOMB_X28_Y19_N14
\next_state[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[0]~19_combout\ = (\ir_1|r_1|dout\(12) & ((state(3)) # ((!state(2))))) # (!\ir_1|r_1|dout\(12) & (\ir_1|r_1|dout\(13) & ((state(3)) # (!state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(12),
	datab => state(3),
	datac => \ir_1|r_1|dout\(13),
	datad => state(2),
	combout => \next_state[0]~19_combout\);

-- Location: LCCOMB_X27_Y19_N2
\next_state[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[0]~18_combout\ = (!state(3) & (state(4) & ((!\Equal35~2_combout\) # (!state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(2),
	datac => state(4),
	datad => \Equal35~2_combout\,
	combout => \next_state[0]~18_combout\);

-- Location: LCCOMB_X28_Y19_N6
\next_state[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[0]~21_combout\ = (\next_state[0]~18_combout\) # ((!state(4) & ((\next_state[0]~20_combout\) # (\next_state[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => \next_state[0]~20_combout\,
	datac => \next_state[0]~19_combout\,
	datad => \next_state[0]~18_combout\,
	combout => \next_state[0]~21_combout\);

-- Location: LCCOMB_X28_Y19_N28
\next_state[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[0]~12_combout\ = (!state(3) & ((state(2)) # ((state(4) & \next_state[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(3),
	datac => \next_state[0]~11_combout\,
	datad => state(2),
	combout => \next_state[0]~12_combout\);

-- Location: LCCOMB_X28_Y19_N18
\next_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~13_combout\ = (\ir_1|r_1|dout\(14) & ((\ir_1|r_1|dout\(13) & ((\ir_1|r_1|dout\(15)))) # (!\ir_1|r_1|dout\(13) & ((\ir_1|r_1|dout\(12)) # (!\ir_1|r_1|dout\(15)))))) # (!\ir_1|r_1|dout\(14) & ((\ir_1|r_1|dout\(13)) # ((\ir_1|r_1|dout\(12) & 
-- !\ir_1|r_1|dout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(14),
	datab => \ir_1|r_1|dout\(12),
	datac => \ir_1|r_1|dout\(13),
	datad => \ir_1|r_1|dout\(15),
	combout => \next_state~13_combout\);

-- Location: LCCOMB_X28_Y19_N4
\next_state[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[0]~14_combout\ = (\next_state[0]~12_combout\) # ((!state(4) & ((state(3)) # (\next_state~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(3),
	datac => \next_state[0]~12_combout\,
	datad => \next_state~13_combout\,
	combout => \next_state[0]~14_combout\);

-- Location: LCCOMB_X28_Y19_N30
\next_state[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[0]~15_combout\ = (state(3) & (!state(4))) # (!state(3) & ((state(4)) # (state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(3),
	datac => state(4),
	datad => state(2),
	combout => \next_state[0]~15_combout\);

-- Location: IOIBUF_X29_Y0_N1
\extmeminit~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_extmeminit,
	o => \extmeminit~input_o\);

-- Location: LCCOMB_X28_Y19_N24
\next_state[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[0]~16_combout\ = (state(3) & (((!state(4))))) # (!state(3) & (!state(2) & ((state(4)) # (!\extmeminit~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extmeminit~input_o\,
	datab => state(2),
	datac => state(4),
	datad => state(3),
	combout => \next_state[0]~16_combout\);

-- Location: LCCOMB_X28_Y19_N26
\next_state[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[0]~17_combout\ = (state(0) & ((state(1)) # ((\next_state[0]~15_combout\)))) # (!state(0) & (!state(1) & ((\next_state[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datac => \next_state[0]~15_combout\,
	datad => \next_state[0]~16_combout\,
	combout => \next_state[0]~17_combout\);

-- Location: LCCOMB_X28_Y19_N8
\next_state[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[0]~22_combout\ = (\next_state[0]~17_combout\ & ((\next_state[0]~21_combout\) # ((!state(1))))) # (!\next_state[0]~17_combout\ & (((\next_state[0]~14_combout\ & state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state[0]~21_combout\,
	datab => \next_state[0]~14_combout\,
	datac => \next_state[0]~17_combout\,
	datad => state(1),
	combout => \next_state[0]~22_combout\);

-- Location: LCCOMB_X28_Y19_N0
\next_state[0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state[0]~54_combout\ = (\Equal0~4_combout\) # (\next_state[4]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datad => \next_state[4]~30_combout\,
	combout => \next_state[0]~54_combout\);

-- Location: LCCOMB_X28_Y19_N16
\next_state[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- next_state(0) = (\next_state[0]~54_combout\ & ((\next_state[0]~22_combout\))) # (!\next_state[0]~54_combout\ & (next_state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => next_state(0),
	datac => \next_state[0]~22_combout\,
	datad => \next_state[0]~54_combout\,
	combout => next_state(0));

-- Location: IOIBUF_X14_Y0_N8
\input[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\input[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\input[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: IOIBUF_X51_Y34_N1
\input[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\input[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(8),
	o => \input[8]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\input[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(9),
	o => \input[9]~input_o\);

-- Location: IOIBUF_X9_Y34_N8
\input[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(10),
	o => \input[10]~input_o\);

-- Location: IOIBUF_X7_Y34_N1
\input[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(11),
	o => \input[11]~input_o\);

-- Location: IOIBUF_X53_Y9_N15
\input[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(12),
	o => \input[12]~input_o\);

-- Location: IOIBUF_X53_Y20_N22
\input[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(13),
	o => \input[13]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\input[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(14),
	o => \input[14]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\input[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(15),
	o => \input[15]~input_o\);

-- Location: IOIBUF_X43_Y0_N22
\input[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(27),
	o => \input[27]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\input[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(26),
	o => \input[26]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\input[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(25),
	o => \input[25]~input_o\);

-- Location: IOIBUF_X53_Y9_N8
\input[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(24),
	o => \input[24]~input_o\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_output(8) <= \output[8]~output_o\;

ww_output(9) <= \output[9]~output_o\;
END structure;


