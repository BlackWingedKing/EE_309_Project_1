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

-- DATE "11/04/2018 23:32:27"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	iitb_risc IS
    PORT (
	clk : IN std_logic;
	extmeminit : IN std_logic;
	input : IN std_logic_vector(31 DOWNTO 0);
	output : OUT std_logic_vector(9 DOWNTO 0)
	);
END iitb_risc;

-- Design Ports Information


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
SIGNAL \mem|mem_reg[10][13]~regout\ : std_logic;
SIGNAL \mem|mem_reg[12][13]~regout\ : std_logic;
SIGNAL \mem|mem_reg[3][13]~regout\ : std_logic;
SIGNAL \mem|mem_reg[5][13]~regout\ : std_logic;
SIGNAL \mem|mem_reg[2][13]~regout\ : std_logic;
SIGNAL \mem|mem_reg[4][13]~regout\ : std_logic;
SIGNAL \mem|mem_reg[11][13]~regout\ : std_logic;
SIGNAL \mem|mem_reg[13][13]~regout\ : std_logic;
SIGNAL \mem|mem_reg[12][14]~regout\ : std_logic;
SIGNAL \mem|mem_reg[9][14]~regout\ : std_logic;
SIGNAL \mem|mem_reg[3][14]~regout\ : std_logic;
SIGNAL \mem|mem_reg[6][14]~regout\ : std_logic;
SIGNAL \mem|mem_reg[4][14]~regout\ : std_logic;
SIGNAL \mem|mem_reg[1][14]~regout\ : std_logic;
SIGNAL \mem|mem_reg[11][14]~regout\ : std_logic;
SIGNAL \mem|mem_reg[14][14]~regout\ : std_logic;
SIGNAL \mem|mem_reg[9][15]~regout\ : std_logic;
SIGNAL \mem|mem_reg[10][15]~regout\ : std_logic;
SIGNAL \mem|mem_reg[5][15]~regout\ : std_logic;
SIGNAL \mem|mem_reg[6][15]~regout\ : std_logic;
SIGNAL \mem|mem_reg[1][15]~regout\ : std_logic;
SIGNAL \mem|mem_reg[2][15]~regout\ : std_logic;
SIGNAL \mem|mem_reg[14][15]~regout\ : std_logic;
SIGNAL \mem|mem_reg[13][15]~regout\ : std_logic;
SIGNAL \mem|mem_reg[6][12]~regout\ : std_logic;
SIGNAL \mem|mem_reg[5][12]~regout\ : std_logic;
SIGNAL \mem|mem_reg[9][12]~regout\ : std_logic;
SIGNAL \mem|mem_reg[10][12]~regout\ : std_logic;
SIGNAL \mem|mem_reg[1][12]~regout\ : std_logic;
SIGNAL \mem|mem_reg[2][12]~regout\ : std_logic;
SIGNAL \mem|mem_reg[14][12]~regout\ : std_logic;
SIGNAL \mem|mem_reg[13][12]~regout\ : std_logic;
SIGNAL \mem|mem_reg[5][6]~regout\ : std_logic;
SIGNAL \mem|mem_reg[9][6]~regout\ : std_logic;
SIGNAL \mem|mem_reg[10][6]~regout\ : std_logic;
SIGNAL \mem|mem_reg[6][6]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][6]~regout\ : std_logic;
SIGNAL \mem|mem_reg[4][6]~regout\ : std_logic;
SIGNAL \mem|mem_reg[7][6]~regout\ : std_logic;
SIGNAL \mem|mem_reg[11][6]~regout\ : std_logic;
SIGNAL \mem|mem_reg[6][7]~regout\ : std_logic;
SIGNAL \mem|mem_reg[5][7]~regout\ : std_logic;
SIGNAL \mem|mem_reg[9][7]~regout\ : std_logic;
SIGNAL \mem|mem_reg[10][7]~regout\ : std_logic;
SIGNAL \mem|mem_reg[1][7]~regout\ : std_logic;
SIGNAL \mem|mem_reg[2][7]~regout\ : std_logic;
SIGNAL \mem|mem_reg[14][7]~regout\ : std_logic;
SIGNAL \mem|mem_reg[13][7]~regout\ : std_logic;
SIGNAL \mem|mem_reg[6][1]~regout\ : std_logic;
SIGNAL \mem|mem_reg[10][1]~regout\ : std_logic;
SIGNAL \mem|mem_reg[5][1]~regout\ : std_logic;
SIGNAL \mem|mem_reg[9][1]~regout\ : std_logic;
SIGNAL \mem|mem_reg[4][1]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][1]~regout\ : std_logic;
SIGNAL \mem|mem_reg[7][1]~regout\ : std_logic;
SIGNAL \mem|mem_reg[11][1]~regout\ : std_logic;
SIGNAL \mem|mem_reg[10][0]~regout\ : std_logic;
SIGNAL \mem|mem_reg[9][0]~regout\ : std_logic;
SIGNAL \mem|mem_reg[5][0]~regout\ : std_logic;
SIGNAL \mem|mem_reg[6][0]~regout\ : std_logic;
SIGNAL \mem|mem_reg[2][0]~regout\ : std_logic;
SIGNAL \mem|mem_reg[1][0]~regout\ : std_logic;
SIGNAL \mem|mem_reg[13][0]~regout\ : std_logic;
SIGNAL \mem|mem_reg[14][0]~regout\ : std_logic;
SIGNAL \mem|mem_reg[5][2]~regout\ : std_logic;
SIGNAL \mem|mem_reg[9][2]~regout\ : std_logic;
SIGNAL \mem|mem_reg[6][2]~regout\ : std_logic;
SIGNAL \mem|mem_reg[10][2]~regout\ : std_logic;
SIGNAL \mem|mem_reg[4][2]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][2]~regout\ : std_logic;
SIGNAL \mem|mem_reg[7][2]~regout\ : std_logic;
SIGNAL \mem|mem_reg[11][2]~regout\ : std_logic;
SIGNAL \mem|mem_reg[6][3]~regout\ : std_logic;
SIGNAL \mem|mem_reg[5][3]~regout\ : std_logic;
SIGNAL \mem|mem_reg[9][3]~regout\ : std_logic;
SIGNAL \mem|mem_reg[10][3]~regout\ : std_logic;
SIGNAL \mem|mem_reg[1][3]~regout\ : std_logic;
SIGNAL \mem|mem_reg[2][3]~regout\ : std_logic;
SIGNAL \mem|mem_reg[14][3]~regout\ : std_logic;
SIGNAL \mem|mem_reg[13][3]~regout\ : std_logic;
SIGNAL \mem|mem_reg[6][4]~regout\ : std_logic;
SIGNAL \mem|mem_reg[10][4]~regout\ : std_logic;
SIGNAL \mem|mem_reg[9][4]~regout\ : std_logic;
SIGNAL \mem|mem_reg[5][4]~regout\ : std_logic;
SIGNAL \mem|mem_reg[4][4]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][4]~regout\ : std_logic;
SIGNAL \mem|mem_reg[11][4]~regout\ : std_logic;
SIGNAL \mem|mem_reg[7][4]~regout\ : std_logic;
SIGNAL \mem|mem_reg[10][5]~regout\ : std_logic;
SIGNAL \mem|mem_reg[9][5]~regout\ : std_logic;
SIGNAL \mem|mem_reg[5][5]~regout\ : std_logic;
SIGNAL \mem|mem_reg[6][5]~regout\ : std_logic;
SIGNAL \mem|mem_reg[2][5]~regout\ : std_logic;
SIGNAL \mem|mem_reg[1][5]~regout\ : std_logic;
SIGNAL \mem|mem_reg[13][5]~regout\ : std_logic;
SIGNAL \mem|mem_reg[14][5]~regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \next_state~8\ : std_logic;
SIGNAL \memrd~1_combout\ : std_logic;
SIGNAL \memrd~0_combout\ : std_logic;
SIGNAL \memwr~10\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \memrd~2_combout\ : std_logic;
SIGNAL \memrd~regout\ : std_logic;
SIGNAL \dcon[0]~2_combout\ : std_logic;
SIGNAL \dcon[0]~5_combout\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \dcon~3_combout\ : std_logic;
SIGNAL \alud~3_combout\ : std_logic;
SIGNAL \pcwr~2_combout\ : std_logic;
SIGNAL \pcwr~3_combout\ : std_logic;
SIGNAL \pcwr~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \aluop[1]~0_combout\ : std_logic;
SIGNAL \aluop[1]~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \iord~15_combout\ : std_logic;
SIGNAL \iord~14_combout\ : std_logic;
SIGNAL \iord~8\ : std_logic;
SIGNAL \iord~9_combout\ : std_logic;
SIGNAL \iord~3_combout\ : std_logic;
SIGNAL \iord~4_combout\ : std_logic;
SIGNAL \iord~13_combout\ : std_logic;
SIGNAL \memwr~11_combout\ : std_logic;
SIGNAL \iord~7_combout\ : std_logic;
SIGNAL \iord~10_combout\ : std_logic;
SIGNAL \alusrca[1]~5_combout\ : std_logic;
SIGNAL \memwr~6_combout\ : std_logic;
SIGNAL \memwr~7_combout\ : std_logic;
SIGNAL \memwr~12_combout\ : std_logic;
SIGNAL \memwr~13_combout\ : std_logic;
SIGNAL \memwr~regout\ : std_logic;
SIGNAL \pcsrc~1_combout\ : std_logic;
SIGNAL \pcsrc~0_combout\ : std_logic;
SIGNAL \pcsrc~regout\ : std_logic;
SIGNAL \alusrcb~1_combout\ : std_logic;
SIGNAL \alusrcb~0_combout\ : std_logic;
SIGNAL \m_2|outp[0]~7\ : std_logic;
SIGNAL \mem|Decoder0~12_combout\ : std_logic;
SIGNAL \mem|Decoder0~13_combout\ : std_logic;
SIGNAL \m_2|outp[2]~8\ : std_logic;
SIGNAL \mem|Decoder0~14_combout\ : std_logic;
SIGNAL \mem|Decoder0~23_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][2]~regout\ : std_logic;
SIGNAL \mem|Decoder0~11_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][2]~regout\ : std_logic;
SIGNAL \mem|Decoder0~15_combout\ : std_logic;
SIGNAL \mem|do~95\ : std_logic;
SIGNAL \mem|do~96\ : std_logic;
SIGNAL \mem|Decoder0~8_combout\ : std_logic;
SIGNAL \mem|Decoder0~20_combout\ : std_logic;
SIGNAL \mem|mem_reg[13][2]~regout\ : std_logic;
SIGNAL \mem|mem_reg[1][2]~regout\ : std_logic;
SIGNAL \mem|Decoder0~9_combout\ : std_logic;
SIGNAL \mem|do~88\ : std_logic;
SIGNAL \mem|Decoder0~22_combout\ : std_logic;
SIGNAL \mem|do~89\ : std_logic;
SIGNAL \mem|Decoder0~0_combout\ : std_logic;
SIGNAL \mem|Decoder0~1_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][2]~regout\ : std_logic;
SIGNAL \mem|Decoder0~4_combout\ : std_logic;
SIGNAL \mem|Decoder0~18_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][2]~regout\ : std_logic;
SIGNAL \mem|Decoder0~16_combout\ : std_logic;
SIGNAL \mem|do~92\ : std_logic;
SIGNAL \mem|do~93\ : std_logic;
SIGNAL \mem|Decoder0~6_combout\ : std_logic;
SIGNAL \mem|Decoder0~7_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][2]~regout\ : std_logic;
SIGNAL \mem|mem_reg[2][2]~regout\ : std_logic;
SIGNAL \mem|Decoder0~19_combout\ : std_logic;
SIGNAL \mem|do~90\ : std_logic;
SIGNAL \mem|Decoder0~3_combout\ : std_logic;
SIGNAL \mem|do~91\ : std_logic;
SIGNAL \mem|do~94_combout\ : std_logic;
SIGNAL \mem|do~97_combout\ : std_logic;
SIGNAL \m_2|outp[3]~9\ : std_logic;
SIGNAL \mem|mem_reg[7][3]~regout\ : std_logic;
SIGNAL \mem|mem_reg[4][3]~regout\ : std_logic;
SIGNAL \mem|do~99\ : std_logic;
SIGNAL \mem|do~100\ : std_logic;
SIGNAL \mem|mem_reg[15][3]~regout\ : std_logic;
SIGNAL \mem|mem_reg[12][3]~regout\ : std_logic;
SIGNAL \mem|do~106\ : std_logic;
SIGNAL \mem|do~107\ : std_logic;
SIGNAL \mem|mem_reg[3][3]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][3]~regout\ : std_logic;
SIGNAL \mem|do~103\ : std_logic;
SIGNAL \mem|do~104\ : std_logic;
SIGNAL \mem|mem_reg[11][3]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][3]~regout\ : std_logic;
SIGNAL \mem|do~101\ : std_logic;
SIGNAL \mem|do~102\ : std_logic;
SIGNAL \mem|do~105_combout\ : std_logic;
SIGNAL \mem|do~108_combout\ : std_logic;
SIGNAL \priorityin~8_combout\ : std_logic;
SIGNAL \priorityin[1]~2_combout\ : std_logic;
SIGNAL \priorityin[1]~3_combout\ : std_logic;
SIGNAL \priorityin~6_combout\ : std_logic;
SIGNAL \priorityin~16_combout\ : std_logic;
SIGNAL \priorityin~0_combout\ : std_logic;
SIGNAL \m_2|outp[6]~4\ : std_logic;
SIGNAL \mem|mem_reg[15][6]~regout\ : std_logic;
SIGNAL \mem|mem_reg[3][6]~regout\ : std_logic;
SIGNAL \mem|do~51\ : std_logic;
SIGNAL \mem|do~52\ : std_logic;
SIGNAL \mem|mem_reg[13][6]~regout\ : std_logic;
SIGNAL \mem|mem_reg[1][6]~regout\ : std_logic;
SIGNAL \mem|do~44\ : std_logic;
SIGNAL \mem|do~45\ : std_logic;
SIGNAL \mem|mem_reg[12][6]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][6]~regout\ : std_logic;
SIGNAL \mem|do~48\ : std_logic;
SIGNAL \mem|do~49\ : std_logic;
SIGNAL \mem|mem_reg[14][6]~regout\ : std_logic;
SIGNAL \mem|mem_reg[2][6]~regout\ : std_logic;
SIGNAL \mem|do~46\ : std_logic;
SIGNAL \mem|do~47\ : std_logic;
SIGNAL \mem|do~50_combout\ : std_logic;
SIGNAL \mem|do~53_combout\ : std_logic;
SIGNAL \priorityin~14_combout\ : std_logic;
SIGNAL \m_2|outp[4]~10\ : std_logic;
SIGNAL \mem|mem_reg[15][4]~regout\ : std_logic;
SIGNAL \mem|mem_reg[3][4]~regout\ : std_logic;
SIGNAL \mem|do~117\ : std_logic;
SIGNAL \mem|do~118\ : std_logic;
SIGNAL \mem|mem_reg[14][4]~regout\ : std_logic;
SIGNAL \mem|mem_reg[2][4]~regout\ : std_logic;
SIGNAL \mem|do~110\ : std_logic;
SIGNAL \mem|do~111\ : std_logic;
SIGNAL \mem|mem_reg[12][4]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][4]~regout\ : std_logic;
SIGNAL \mem|do~114\ : std_logic;
SIGNAL \mem|do~115\ : std_logic;
SIGNAL \mem|mem_reg[1][4]~regout\ : std_logic;
SIGNAL \mem|do~112\ : std_logic;
SIGNAL \mem|mem_reg[13][4]~regout\ : std_logic;
SIGNAL \mem|do~113\ : std_logic;
SIGNAL \mem|do~116_combout\ : std_logic;
SIGNAL \mem|do~119_combout\ : std_logic;
SIGNAL \p_1|outp~0_combout\ : std_logic;
SIGNAL \priorityin~4_combout\ : std_logic;
SIGNAL \m_2|outp[7]~5\ : std_logic;
SIGNAL \mem|mem_reg[15][7]~regout\ : std_logic;
SIGNAL \mem|mem_reg[12][7]~regout\ : std_logic;
SIGNAL \mem|do~62\ : std_logic;
SIGNAL \mem|do~63\ : std_logic;
SIGNAL \mem|mem_reg[7][7]~regout\ : std_logic;
SIGNAL \mem|mem_reg[4][7]~regout\ : std_logic;
SIGNAL \mem|do~55\ : std_logic;
SIGNAL \mem|do~56\ : std_logic;
SIGNAL \mem|mem_reg[3][7]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][7]~regout\ : std_logic;
SIGNAL \mem|do~59\ : std_logic;
SIGNAL \mem|do~60\ : std_logic;
SIGNAL \mem|mem_reg[11][7]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][7]~regout\ : std_logic;
SIGNAL \mem|do~57\ : std_logic;
SIGNAL \mem|do~58\ : std_logic;
SIGNAL \mem|do~61_combout\ : std_logic;
SIGNAL \mem|do~64_combout\ : std_logic;
SIGNAL \Equal34~1_combout\ : std_logic;
SIGNAL \Equal34~2_combout\ : std_logic;
SIGNAL \priorityin~12_combout\ : std_logic;
SIGNAL \p_1|outp~2_combout\ : std_logic;
SIGNAL \priorityin~10_combout\ : std_logic;
SIGNAL \Equal34~0_combout\ : std_logic;
SIGNAL \m_8|outp[2]~0_combout\ : std_logic;
SIGNAL \m_8|outp[2]~1_combout\ : std_logic;
SIGNAL \alu_1|temp_out[2]~111_combout\ : std_logic;
SIGNAL \m_7|outp[0]~2_combout\ : std_logic;
SIGNAL \m_7|outp[1]~3_combout\ : std_logic;
SIGNAL \alu_1|opr2|s2|bout~combout\ : std_logic;
SIGNAL \m_7|Equal1~0_combout\ : std_logic;
SIGNAL \m_8|outp[0]~3_combout\ : std_logic;
SIGNAL \alu_1|temp_out[0]~76_combout\ : std_logic;
SIGNAL \m_7|outp~1_combout\ : std_logic;
SIGNAL \alu_1|opr1|a2|cout~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[2]~77_combout\ : std_logic;
SIGNAL \alu_1|temp_out[2]~78_combout\ : std_logic;
SIGNAL \alud~0_combout\ : std_logic;
SIGNAL \alud~1_combout\ : std_logic;
SIGNAL \alud~regout\ : std_logic;
SIGNAL \m_9|outp[15]~15_combout\ : std_logic;
SIGNAL \m_7|outp~18_combout\ : std_logic;
SIGNAL \alu_1|temp_out[14]~110_combout\ : std_logic;
SIGNAL \m_8|outp[6]~9_combout\ : std_logic;
SIGNAL \alu_1|opr2|s15|xor_i~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[13]~121_combout\ : std_logic;
SIGNAL \alu_1|temp_out[12]~122_combout\ : std_logic;
SIGNAL \alu_1|temp_out[11]~113_combout\ : std_logic;
SIGNAL \alu_1|temp_out[10]~119_combout\ : std_logic;
SIGNAL \alu_1|temp_out[8]~114_combout\ : std_logic;
SIGNAL \alu_1|temp_out[7]~117_combout\ : std_logic;
SIGNAL \alu_1|opr2|s8|xor_i~4_combout\ : std_logic;
SIGNAL \alu_1|temp_out[6]~118_combout\ : std_logic;
SIGNAL \alu_1|temp_out[5]~115_combout\ : std_logic;
SIGNAL \m_8|outp[4]~8_combout\ : std_logic;
SIGNAL \alu_1|temp_out[4]~116_combout\ : std_logic;
SIGNAL \m_8|outp[3]~7_combout\ : std_logic;
SIGNAL \m_7|outp~4_combout\ : std_logic;
SIGNAL \m_7|outp~0_combout\ : std_logic;
SIGNAL \alu_1|opr1|a3|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr1|a4|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s3|bout~combout\ : std_logic;
SIGNAL \alu_1|opr2|s4|bout~combout\ : std_logic;
SIGNAL \alu_1|temp_out[4]~96_combout\ : std_logic;
SIGNAL \alu_1|temp_out[4]~97_combout\ : std_logic;
SIGNAL \m_9|outp[4]~13_combout\ : std_logic;
SIGNAL \m_7|outp~14_combout\ : std_logic;
SIGNAL \alu_1|opr2|s5|bout~combout\ : std_logic;
SIGNAL \alu_1|opr1|a5|cout~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[5]~94_combout\ : std_logic;
SIGNAL \alu_1|temp_out[5]~95_combout\ : std_logic;
SIGNAL \m_9|outp[5]~12_combout\ : std_logic;
SIGNAL \m_7|outp~13_combout\ : std_logic;
SIGNAL \alu_1|opr1|a6|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s6|bout~combout\ : std_logic;
SIGNAL \alu_1|temp_out[6]~100_combout\ : std_logic;
SIGNAL \alu_1|temp_out[6]~101_combout\ : std_logic;
SIGNAL \m_9|outp[6]~11_combout\ : std_logic;
SIGNAL \m_7|outp~12_combout\ : std_logic;
SIGNAL \alu_1|opr1|a7|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s7|bout~combout\ : std_logic;
SIGNAL \alu_1|temp_out[7]~98_combout\ : std_logic;
SIGNAL \alu_1|temp_out[7]~99_combout\ : std_logic;
SIGNAL \m_9|outp[7]~10_combout\ : std_logic;
SIGNAL \m_7|outp~11_combout\ : std_logic;
SIGNAL \alu_1|opr1|a8|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s8|bout~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s8|bout~1_combout\ : std_logic;
SIGNAL \alu_1|temp_out[8]~92_combout\ : std_logic;
SIGNAL \alu_1|temp_out[8]~93_combout\ : std_logic;
SIGNAL \m_9|outp[8]~9_combout\ : std_logic;
SIGNAL \alu_1|temp_out[9]~120_combout\ : std_logic;
SIGNAL \alu_1|opr2|s10|xor_i~4_combout\ : std_logic;
SIGNAL \m_7|outp~10_combout\ : std_logic;
SIGNAL \alu_1|opr1|a9|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s9|bout~combout\ : std_logic;
SIGNAL \alu_1|temp_out[9]~104_combout\ : std_logic;
SIGNAL \alu_1|temp_out[9]~105_combout\ : std_logic;
SIGNAL \m_9|outp[9]~8_combout\ : std_logic;
SIGNAL \alu_1|opr2|s10|bout~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s10|bout~1_combout\ : std_logic;
SIGNAL \m_7|outp~9_combout\ : std_logic;
SIGNAL \alu_1|opr1|a10|cout~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[10]~102_combout\ : std_logic;
SIGNAL \alu_1|temp_out[10]~103_combout\ : std_logic;
SIGNAL \m_9|outp[10]~7_combout\ : std_logic;
SIGNAL \m_7|outp~8_combout\ : std_logic;
SIGNAL \alu_1|opr2|s11|bout~combout\ : std_logic;
SIGNAL \alu_1|opr1|a11|cout~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[11]~90_combout\ : std_logic;
SIGNAL \alu_1|temp_out[11]~91_combout\ : std_logic;
SIGNAL \m_9|outp[11]~6_combout\ : std_logic;
SIGNAL \m_7|outp~7_combout\ : std_logic;
SIGNAL \alu_1|opr2|s12|bout~combout\ : std_logic;
SIGNAL \alu_1|opr1|a12|cout~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[12]~108_combout\ : std_logic;
SIGNAL \alu_1|temp_out[12]~109_combout\ : std_logic;
SIGNAL \m_9|outp[12]~5_combout\ : std_logic;
SIGNAL \m_7|outp~6_combout\ : std_logic;
SIGNAL \alu_1|opr2|s13|bout~combout\ : std_logic;
SIGNAL \alu_1|opr1|a13|cout~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[13]~106_combout\ : std_logic;
SIGNAL \alu_1|temp_out[13]~107_combout\ : std_logic;
SIGNAL \m_9|outp[13]~4_combout\ : std_logic;
SIGNAL \m_7|outp~5_combout\ : std_logic;
SIGNAL \alu_1|opr1|a14|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s14|bout~combout\ : std_logic;
SIGNAL \alu_1|temp_out[14]~84_combout\ : std_logic;
SIGNAL \alu_1|temp_out[14]~85_combout\ : std_logic;
SIGNAL \m_9|outp[14]~14_combout\ : std_logic;
SIGNAL \m_7|outp~15_combout\ : std_logic;
SIGNAL \alu_1|opr1|a15|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr1|a16|cout~0_combout\ : std_logic;
SIGNAL \m_7|outp[15]~17_combout\ : std_logic;
SIGNAL \m_7|outp[14]~16_combout\ : std_logic;
SIGNAL \alu_1|cout~0_combout\ : std_logic;
SIGNAL \carry_flag|dout~regout\ : std_logic;
SIGNAL \alu_en~0_combout\ : std_logic;
SIGNAL \alu_en~combout\ : std_logic;
SIGNAL \m_9|outp[2]~0_combout\ : std_logic;
SIGNAL \m_1|outp[2]~0_combout\ : std_logic;
SIGNAL \m_1|outp[2]~1_combout\ : std_logic;
SIGNAL \mem|Decoder0~10_combout\ : std_logic;
SIGNAL \mem|Decoder0~21_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][0]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][0]~regout\ : std_logic;
SIGNAL \mem|do~77\ : std_logic;
SIGNAL \mem|do~78\ : std_logic;
SIGNAL \mem|mem_reg[15][0]~regout\ : std_logic;
SIGNAL \mem|mem_reg[12][0]~regout\ : std_logic;
SIGNAL \mem|do~84\ : std_logic;
SIGNAL \mem|do~85\ : std_logic;
SIGNAL \mem|mem_reg[3][0]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][0]~regout\ : std_logic;
SIGNAL \mem|do~81\ : std_logic;
SIGNAL \mem|do~82\ : std_logic;
SIGNAL \mem|mem_reg[7][0]~regout\ : std_logic;
SIGNAL \mem|mem_reg[4][0]~regout\ : std_logic;
SIGNAL \mem|do~79\ : std_logic;
SIGNAL \mem|do~80\ : std_logic;
SIGNAL \mem|do~83_combout\ : std_logic;
SIGNAL \mem|do~86_combout\ : std_logic;
SIGNAL \m_8|outp[0]~2_combout\ : std_logic;
SIGNAL \m_8|outp[0]~6_combout\ : std_logic;
SIGNAL \alu_1|temp_out[0]~83_combout\ : std_logic;
SIGNAL \m_9|outp[0]~3_combout\ : std_logic;
SIGNAL \m_1|outp[0]~6_combout\ : std_logic;
SIGNAL \m_1|outp[0]~7_combout\ : std_logic;
SIGNAL \mem|Decoder0~2_combout\ : std_logic;
SIGNAL \mem|Decoder0~17_combout\ : std_logic;
SIGNAL \m_2|outp[1]~6\ : std_logic;
SIGNAL \mem|mem_reg[15][1]~regout\ : std_logic;
SIGNAL \mem|mem_reg[3][1]~regout\ : std_logic;
SIGNAL \mem|do~73\ : std_logic;
SIGNAL \mem|do~74\ : std_logic;
SIGNAL \mem|mem_reg[14][1]~regout\ : std_logic;
SIGNAL \mem|mem_reg[2][1]~regout\ : std_logic;
SIGNAL \mem|do~66\ : std_logic;
SIGNAL \mem|do~67\ : std_logic;
SIGNAL \mem|mem_reg[13][1]~regout\ : std_logic;
SIGNAL \mem|mem_reg[1][1]~regout\ : std_logic;
SIGNAL \mem|do~68\ : std_logic;
SIGNAL \mem|do~69\ : std_logic;
SIGNAL \mem|mem_reg[12][1]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][1]~regout\ : std_logic;
SIGNAL \mem|do~70\ : std_logic;
SIGNAL \mem|do~71\ : std_logic;
SIGNAL \mem|do~72_combout\ : std_logic;
SIGNAL \mem|do~75_combout\ : std_logic;
SIGNAL \m_8|outp[1]~4_combout\ : std_logic;
SIGNAL \m_8|outp[1]~5_combout\ : std_logic;
SIGNAL \alu_1|temp_out[1]~79_combout\ : std_logic;
SIGNAL \alu_1|temp_out[1]~80_combout\ : std_logic;
SIGNAL \m_9|outp[1]~1_combout\ : std_logic;
SIGNAL \m_1|outp[1]~2_combout\ : std_logic;
SIGNAL \m_1|outp[1]~3_combout\ : std_logic;
SIGNAL \m_2|outp[5]~11\ : std_logic;
SIGNAL \mem|mem_reg[15][5]~regout\ : std_logic;
SIGNAL \mem|mem_reg[12][5]~regout\ : std_logic;
SIGNAL \mem|do~128\ : std_logic;
SIGNAL \mem|do~129\ : std_logic;
SIGNAL \mem|mem_reg[11][5]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][5]~regout\ : std_logic;
SIGNAL \mem|do~121\ : std_logic;
SIGNAL \mem|do~122\ : std_logic;
SIGNAL \mem|mem_reg[3][5]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][5]~regout\ : std_logic;
SIGNAL \mem|do~125\ : std_logic;
SIGNAL \mem|do~126\ : std_logic;
SIGNAL \mem|mem_reg[7][5]~regout\ : std_logic;
SIGNAL \mem|mem_reg[4][5]~regout\ : std_logic;
SIGNAL \mem|do~123\ : std_logic;
SIGNAL \mem|do~124\ : std_logic;
SIGNAL \mem|do~127_combout\ : std_logic;
SIGNAL \mem|do~130_combout\ : std_logic;
SIGNAL \m_8|outp[6]~10_combout\ : std_logic;
SIGNAL \alu_1|temp_out[15]~86_combout\ : std_logic;
SIGNAL \alu_1|temp_out[15]~88_combout\ : std_logic;
SIGNAL \alu_1|temp_out[15]~87_combout\ : std_logic;
SIGNAL \alu_1|temp_out[15]~89_combout\ : std_logic;
SIGNAL \alu_1|zero_flag~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[3]~112_combout\ : std_logic;
SIGNAL \alu_1|temp_out[3]~81_combout\ : std_logic;
SIGNAL \alu_1|temp_out[3]~82_combout\ : std_logic;
SIGNAL \alu_1|zero_flag~1_combout\ : std_logic;
SIGNAL \alu_1|zero_flag~2_combout\ : std_logic;
SIGNAL \alu_1|zero_flag~3_combout\ : std_logic;
SIGNAL \alu_1|zero_flag~4_combout\ : std_logic;
SIGNAL \zero_flag|dout~regout\ : std_logic;
SIGNAL \pcwr~1_combout\ : std_logic;
SIGNAL \pcwr~regout\ : std_logic;
SIGNAL \m_9|outp[3]~2_combout\ : std_logic;
SIGNAL \m_1|outp[3]~4_combout\ : std_logic;
SIGNAL \m_1|outp[3]~5_combout\ : std_logic;
SIGNAL \mem|Decoder0~5_combout\ : std_logic;
SIGNAL \m_2|outp[15]~2\ : std_logic;
SIGNAL \mem|mem_reg[15][15]~regout\ : std_logic;
SIGNAL \mem|mem_reg[12][15]~regout\ : std_logic;
SIGNAL \mem|do~29\ : std_logic;
SIGNAL \mem|do~30\ : std_logic;
SIGNAL \mem|mem_reg[11][15]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][15]~regout\ : std_logic;
SIGNAL \mem|do~22\ : std_logic;
SIGNAL \mem|do~23\ : std_logic;
SIGNAL \mem|mem_reg[3][15]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][15]~regout\ : std_logic;
SIGNAL \mem|do~26\ : std_logic;
SIGNAL \mem|do~27\ : std_logic;
SIGNAL \mem|mem_reg[7][15]~regout\ : std_logic;
SIGNAL \mem|mem_reg[4][15]~regout\ : std_logic;
SIGNAL \mem|do~24\ : std_logic;
SIGNAL \mem|do~25\ : std_logic;
SIGNAL \mem|do~28_combout\ : std_logic;
SIGNAL \mem|do~31_combout\ : std_logic;
SIGNAL \m_2|outp[14]~1\ : std_logic;
SIGNAL \mem|mem_reg[13][14]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][14]~regout\ : std_logic;
SIGNAL \mem|do~11\ : std_logic;
SIGNAL \mem|do~12\ : std_logic;
SIGNAL \mem|mem_reg[15][14]~regout\ : std_logic;
SIGNAL \mem|mem_reg[10][14]~regout\ : std_logic;
SIGNAL \mem|do~18\ : std_logic;
SIGNAL \mem|do~19\ : std_logic;
SIGNAL \mem|mem_reg[7][14]~regout\ : std_logic;
SIGNAL \mem|mem_reg[2][14]~regout\ : std_logic;
SIGNAL \mem|do~13\ : std_logic;
SIGNAL \mem|do~14\ : std_logic;
SIGNAL \mem|mem_reg[5][14]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][14]~regout\ : std_logic;
SIGNAL \mem|do~15\ : std_logic;
SIGNAL \mem|do~16\ : std_logic;
SIGNAL \mem|do~17_combout\ : std_logic;
SIGNAL \mem|do~20_combout\ : std_logic;
SIGNAL \next_state~44_combout\ : std_logic;
SIGNAL \next_state~45_combout\ : std_logic;
SIGNAL \next_state~35_combout\ : std_logic;
SIGNAL \next_state~42_combout\ : std_logic;
SIGNAL \next_state~36_combout\ : std_logic;
SIGNAL \next_state~37_combout\ : std_logic;
SIGNAL \next_state~38_combout\ : std_logic;
SIGNAL \m_2|outp[12]~3\ : std_logic;
SIGNAL \mem|mem_reg[15][12]~regout\ : std_logic;
SIGNAL \mem|mem_reg[12][12]~regout\ : std_logic;
SIGNAL \mem|do~40\ : std_logic;
SIGNAL \mem|do~41\ : std_logic;
SIGNAL \mem|mem_reg[7][12]~regout\ : std_logic;
SIGNAL \mem|mem_reg[4][12]~regout\ : std_logic;
SIGNAL \mem|do~33\ : std_logic;
SIGNAL \mem|do~34\ : std_logic;
SIGNAL \mem|mem_reg[11][12]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][12]~regout\ : std_logic;
SIGNAL \mem|do~35\ : std_logic;
SIGNAL \mem|do~36\ : std_logic;
SIGNAL \mem|mem_reg[3][12]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][12]~regout\ : std_logic;
SIGNAL \mem|do~37\ : std_logic;
SIGNAL \mem|do~38\ : std_logic;
SIGNAL \mem|do~39_combout\ : std_logic;
SIGNAL \mem|do~42_combout\ : std_logic;
SIGNAL \next_state~39_combout\ : std_logic;
SIGNAL \next_state~40_combout\ : std_logic;
SIGNAL \next_state~41_combout\ : std_logic;
SIGNAL \next_state~43_combout\ : std_logic;
SIGNAL \next_state~24_combout\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \Equal24~0_combout\ : std_logic;
SIGNAL \next_state[1]~20_combout\ : std_logic;
SIGNAL \next_state[1]~21_combout\ : std_logic;
SIGNAL \next_state~32_combout\ : std_logic;
SIGNAL \next_state~33_combout\ : std_logic;
SIGNAL \next_state~11_combout\ : std_logic;
SIGNAL \next_state[1]~28_combout\ : std_logic;
SIGNAL \next_state[1]~29_combout\ : std_logic;
SIGNAL \next_state~7_combout\ : std_logic;
SIGNAL \next_state[1]~27_combout\ : std_logic;
SIGNAL \next_state[1]~30_combout\ : std_logic;
SIGNAL \Equal24~1_combout\ : std_logic;
SIGNAL \next_state[1]~25_combout\ : std_logic;
SIGNAL \next_state[1]~26_combout\ : std_logic;
SIGNAL \next_state[1]~31_combout\ : std_logic;
SIGNAL \next_state~23_combout\ : std_logic;
SIGNAL \next_state~19_combout\ : std_logic;
SIGNAL \next_state~22_combout\ : std_logic;
SIGNAL \irwr~regout\ : std_logic;
SIGNAL \m_2|outp[13]~0\ : std_logic;
SIGNAL \mem|mem_reg[15][13]~regout\ : std_logic;
SIGNAL \mem|mem_reg[9][13]~regout\ : std_logic;
SIGNAL \mem|do~7\ : std_logic;
SIGNAL \mem|do~8\ : std_logic;
SIGNAL \mem|mem_reg[14][13]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][13]~regout\ : std_logic;
SIGNAL \mem|do~0\ : std_logic;
SIGNAL \mem|do~1\ : std_logic;
SIGNAL \mem|mem_reg[6][13]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][13]~regout\ : std_logic;
SIGNAL \mem|do~4\ : std_logic;
SIGNAL \mem|do~5\ : std_logic;
SIGNAL \mem|mem_reg[7][13]~regout\ : std_logic;
SIGNAL \mem|mem_reg[1][13]~regout\ : std_logic;
SIGNAL \mem|do~2\ : std_logic;
SIGNAL \mem|do~3\ : std_logic;
SIGNAL \mem|do~6_combout\ : std_logic;
SIGNAL \mem|do~9_combout\ : std_logic;
SIGNAL \next_state~47_combout\ : std_logic;
SIGNAL \next_state~55_combout\ : std_logic;
SIGNAL \next_state~56_combout\ : std_logic;
SIGNAL \next_state~53_combout\ : std_logic;
SIGNAL \next_state~48_combout\ : std_logic;
SIGNAL \next_state~49\ : std_logic;
SIGNAL \next_state~50_combout\ : std_logic;
SIGNAL \next_state~51_combout\ : std_logic;
SIGNAL \next_state~52_combout\ : std_logic;
SIGNAL \next_state~54_combout\ : std_logic;
SIGNAL \next_state~6_combout\ : std_logic;
SIGNAL \next_state~0_combout\ : std_logic;
SIGNAL \next_state~1\ : std_logic;
SIGNAL \next_state~2_combout\ : std_logic;
SIGNAL \next_state~3_combout\ : std_logic;
SIGNAL \next_state~4_combout\ : std_logic;
SIGNAL \next_state~5_combout\ : std_logic;
SIGNAL \next_state~15_combout\ : std_logic;
SIGNAL \next_state~16_combout\ : std_logic;
SIGNAL \extmeminit~combout\ : std_logic;
SIGNAL \next_state~12_combout\ : std_logic;
SIGNAL \next_state~13_combout\ : std_logic;
SIGNAL \next_state~14_combout\ : std_logic;
SIGNAL \next_state~9_combout\ : std_logic;
SIGNAL \next_state~10_combout\ : std_logic;
SIGNAL \next_state~17_combout\ : std_logic;
SIGNAL \output[0]~reg0_regout\ : std_logic;
SIGNAL \output[1]~reg0_regout\ : std_logic;
SIGNAL \output[2]~reg0_regout\ : std_logic;
SIGNAL \output[3]~reg0_regout\ : std_logic;
SIGNAL \output[4]~reg0_regout\ : std_logic;
SIGNAL \output[5]~reg0_regout\ : std_logic;
SIGNAL \output[6]~reg0_regout\ : std_logic;
SIGNAL \output[7]~reg0_regout\ : std_logic;
SIGNAL \output[8]~reg0_regout\ : std_logic;
SIGNAL \output[9]~reg0_regout\ : std_logic;
SIGNAL \pc|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \t1|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL aluop : std_logic_vector(1 DOWNTO 0);
SIGNAL \ir_1|r_1|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL next_state : std_logic_vector(4 DOWNTO 0);
SIGNAL priorityin : std_logic_vector(7 DOWNTO 0);
SIGNAL iord : std_logic_vector(1 DOWNTO 0);
SIGNAL \mem|do\ : std_logic_vector(15 DOWNTO 0);
SIGNAL state : std_logic_vector(4 DOWNTO 0);
SIGNAL \input~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \p_1|outp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL dcon : std_logic_vector(1 DOWNTO 0);
SIGNAL alusrcb : std_logic_vector(2 DOWNTO 0);
SIGNAL alusrca : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_extmeminit <= extmeminit;
ww_input <= input;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X13_Y8_N9
\state[0]\ : maxv_lcell
-- Equation(s):
-- \next_state~8\ = (((state[0] & state(1))))
-- state(0) = DFFEAS(\next_state~8\, GLOBAL(\clk~combout\), VCC, , , next_state(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => next_state(0),
	datad => state(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~8\,
	regout => state(0));

-- Location: LC_X11_Y7_N8
\memrd~1\ : maxv_lcell
-- Equation(s):
-- \memrd~1_combout\ = (state(0) & (((\memrd~regout\)))) # (!state(0) & (state(2) & (!state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(1),
	datac => \memrd~regout\,
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memrd~1_combout\);

-- Location: LC_X11_Y7_N1
\memrd~0\ : maxv_lcell
-- Equation(s):
-- \memrd~0_combout\ = ((state(3) & ((!state(0)))) # (!state(3) & (state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => state(3),
	datac => state(4),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memrd~0_combout\);

-- Location: LC_X8_Y5_N3
\state[2]\ : maxv_lcell
-- Equation(s):
-- \memwr~10\ = (!state(4) & (((!state[2] & !state(3)))))
-- state(2) = DFFEAS(\memwr~10\, GLOBAL(\clk~combout\), VCC, , , next_state(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(4),
	datac => next_state(2),
	datad => state(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memwr~10\,
	regout => state(2));

-- Location: LC_X12_Y3_N0
\Equal0~0\ : maxv_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (state(0) & (!state(1) & ((\memwr~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datad => \memwr~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X11_Y7_N6
\memrd~2\ : maxv_lcell
-- Equation(s):
-- \memrd~2_combout\ = (state(2) & (\memrd~regout\ & ((state(1)) # (!state(0))))) # (!state(2) & ((\memrd~regout\) # ((state(1) & state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(1),
	datac => \memrd~regout\,
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memrd~2_combout\);

-- Location: LC_X11_Y7_N7
memrd : maxv_lcell
-- Equation(s):
-- \memrd~regout\ = DFFEAS((\Equal0~0_combout\) # ((\memrd~0_combout\ & ((\memrd~2_combout\))) # (!\memrd~0_combout\ & (\memrd~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memrd~1_combout\,
	datab => \memrd~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \memrd~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memrd~regout\);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(31),
	combout => \input~combout\(31));

-- Location: LC_X8_Y5_N9
\dcon[0]~2\ : maxv_lcell
-- Equation(s):
-- \dcon[0]~2_combout\ = (state(1) & (((state(0)) # (!state(4))) # (!state(2)))) # (!state(1) & ((state(4)) # ((state(2) & !state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dff2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(0),
	datac => state(1),
	datad => state(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dcon[0]~2_combout\);

-- Location: LC_X8_Y5_N6
\dcon[0]~5\ : maxv_lcell
-- Equation(s):
-- \dcon[0]~5_combout\ = ((!\dcon[0]~2_combout\ & ((!state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dcon[0]~2_combout\,
	datad => state(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dcon[0]~5_combout\);

-- Location: LC_X8_Y5_N1
\dcon[1]\ : maxv_lcell
-- Equation(s):
-- \Equal0~2\ = ((!state(0) & (!state(1) & \memwr~10\)))
-- dcon(1) = DFFEAS(\Equal0~2\, GLOBAL(\clk~combout\), VCC, , \dcon[0]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => state(0),
	datac => state(1),
	datad => \memwr~10\,
	aclr => GND,
	ena => \dcon[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => dcon(1));

-- Location: LC_X6_Y4_N4
\dcon~3\ : maxv_lcell
-- Equation(s):
-- \dcon~3_combout\ = (((state(0) & !state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => state(0),
	datad => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dcon~3_combout\);

-- Location: LC_X8_Y5_N2
\dcon[0]\ : maxv_lcell
-- Equation(s):
-- dcon(0) = DFFEAS((!\Equal0~2\ & ((state(4)) # ((state(3)) # (!\dcon~3_combout\)))), GLOBAL(\clk~combout\), VCC, , \dcon[0]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3323",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(4),
	datab => \Equal0~2\,
	datac => \dcon~3_combout\,
	datad => state(3),
	aclr => GND,
	ena => \dcon[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dcon(0));

-- Location: LC_X10_Y4_N8
\alud~3\ : maxv_lcell
-- Equation(s):
-- \alud~3_combout\ = (!state(0) & (((!state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datac => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alud~3_combout\);

-- Location: LC_X10_Y4_N9
\pcwr~2\ : maxv_lcell
-- Equation(s):
-- \pcwr~2_combout\ = (state(3) & (!state(4) & (state(2) & \alud~3_combout\))) # (!state(3) & (((!state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(4),
	datac => state(2),
	datad => \alud~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pcwr~2_combout\);

-- Location: LC_X10_Y4_N3
\pcwr~3\ : maxv_lcell
-- Equation(s):
-- \pcwr~3_combout\ = (!state(3) & ((state(4)) # ((state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5454",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(4),
	datac => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pcwr~3_combout\);

-- Location: LC_X10_Y4_N7
\pcwr~0\ : maxv_lcell
-- Equation(s):
-- \pcwr~0_combout\ = (state(4) $ ((state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => state(4),
	datac => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pcwr~0_combout\);

-- Location: LC_X7_Y7_N9
\~GND\ : maxv_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

-- Location: LC_X11_Y7_N3
\Equal0~3\ : maxv_lcell
-- Equation(s):
-- \Equal0~3_combout\ = ((state(1) & ((!state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => state(1),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X11_Y7_N9
\aluop[1]~0\ : maxv_lcell
-- Equation(s):
-- \aluop[1]~0_combout\ = (state(3) & (state(0) $ (((!state(2) & !state(1)))))) # (!state(3) & (state(2) & ((!state(0)) # (!state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca26",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(3),
	datac => state(1),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \aluop[1]~0_combout\);

-- Location: LC_X11_Y7_N4
\aluop[1]~1\ : maxv_lcell
-- Equation(s):
-- \aluop[1]~1_combout\ = (!\aluop[1]~0_combout\ & (((\Equal0~3_combout\ & !state(3))) # (!state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0323",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \aluop[1]~0_combout\,
	datac => state(4),
	datad => state(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \aluop[1]~1_combout\);

-- Location: LC_X11_Y7_N5
\aluop[1]\ : maxv_lcell
-- Equation(s):
-- aluop(1) = DFFEAS((!state(2) & (((state(3))))), GLOBAL(\clk~combout\), VCC, , \aluop[1]~1_combout\, \~GND~combout\, , state(4), state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(2),
	datac => \~GND~combout\,
	datad => state(3),
	aclr => GND,
	sclr => state(4),
	sload => state(1),
	ena => \aluop[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => aluop(1));

-- Location: LC_X8_Y5_N4
\Equal0~1\ : maxv_lcell
-- Equation(s):
-- \Equal0~1_combout\ = ((!state(0) & (state(1) & \memwr~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => state(1),
	datad => \memwr~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X8_Y5_N7
\iord~15\ : maxv_lcell
-- Equation(s):
-- \iord~15_combout\ = (!state(2) & (!state(0) & (!state(1) & state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(0),
	datac => state(1),
	datad => state(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \iord~15_combout\);

-- Location: LC_X12_Y7_N5
\iord~14\ : maxv_lcell
-- Equation(s):
-- \iord~14_combout\ = (((!state(2) & !state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => state(2),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \iord~14_combout\);

-- Location: LC_X12_Y7_N6
\state[3]\ : maxv_lcell
-- Equation(s):
-- \iord~8\ = (state(4) & (((state[3]) # (!\iord~14_combout\)))) # (!state(4) & (!\next_state~8\ & (!state[3])))
-- state(3) = DFFEAS(\iord~8\, GLOBAL(\clk~combout\), VCC, , , next_state(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a1ab",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(4),
	datab => \next_state~8\,
	datac => next_state(3),
	datad => \iord~14_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \iord~8\,
	regout => state(3));

-- Location: LC_X8_Y5_N8
\iord~9\ : maxv_lcell
-- Equation(s):
-- \iord~9_combout\ = (!\Equal0~1_combout\ & (\iord~8\ & ((\iord~15_combout\) # (!state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => state(3),
	datac => \iord~15_combout\,
	datad => \iord~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \iord~9_combout\);

-- Location: LC_X8_Y4_N9
\iord~3\ : maxv_lcell
-- Equation(s):
-- \iord~3_combout\ = (state(4) & (state(1) & (state(2) $ (state(0))))) # (!state(4) & (state(2) & ((!state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4822",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(4),
	datac => state(0),
	datad => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \iord~3_combout\);

-- Location: LC_X8_Y4_N6
\iord~4\ : maxv_lcell
-- Equation(s):
-- \iord~4_combout\ = (state(4) & ((state(2) & ((state(1)) # (!state(0)))) # (!state(2) & (state(0))))) # (!state(4) & (((!state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c87b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(4),
	datac => state(0),
	datad => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \iord~4_combout\);

-- Location: LC_X8_Y4_N7
\iord~13\ : maxv_lcell
-- Equation(s):
-- \iord~13_combout\ = (!state(3) & ((iord(0) & ((\iord~4_combout\))) # (!iord(0) & (\iord~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \iord~3_combout\,
	datac => \iord~4_combout\,
	datad => iord(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \iord~13_combout\);

-- Location: LC_X8_Y4_N8
\memwr~11\ : maxv_lcell
-- Equation(s):
-- \memwr~11_combout\ = (!state(3) & (!state(4) & (!state(2) & !state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(4),
	datac => state(2),
	datad => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memwr~11_combout\);

-- Location: LC_X8_Y4_N0
\iord[0]\ : maxv_lcell
-- Equation(s):
-- iord(0) = DFFEAS((!\memwr~11_combout\ & ((\iord~13_combout\) # ((!\iord~9_combout\ & iord(0))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \iord~9_combout\,
	datab => iord(0),
	datac => \iord~13_combout\,
	datad => \memwr~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => iord(0));

-- Location: LC_X8_Y4_N4
\iord~7\ : maxv_lcell
-- Equation(s):
-- \iord~7_combout\ = (state(2) & ((state(0) & ((!state(1)))) # (!state(0) & ((state(1)) # (!state(4)))))) # (!state(2) & (state(4) & (state(0) & state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4aa2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(4),
	datac => state(0),
	datad => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \iord~7_combout\);

-- Location: LC_X8_Y4_N1
\iord~10\ : maxv_lcell
-- Equation(s):
-- \iord~10_combout\ = (((!state(3) & !\iord~7_combout\)) # (!\iord~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datac => \iord~7_combout\,
	datad => \iord~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \iord~10_combout\);

-- Location: LC_X8_Y4_N2
\iord[1]\ : maxv_lcell
-- Equation(s):
-- iord(1) = DFFEAS((\memwr~11_combout\ & (((!state(0))))) # (!\memwr~11_combout\ & (iord(1) & ((\iord~10_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4e0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memwr~11_combout\,
	datab => iord(1),
	datac => state(0),
	datad => \iord~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => iord(1));

-- Location: LC_X11_Y7_N2
\alusrca[1]~5\ : maxv_lcell
-- Equation(s):
-- \alusrca[1]~5_combout\ = (!\aluop[1]~0_combout\ & (((!state(0) & !state(3))) # (!state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "001f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(3),
	datac => state(4),
	datad => \aluop[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alusrca[1]~5_combout\);

-- Location: LC_X8_Y6_N3
\alusrcb[2]\ : maxv_lcell
-- Equation(s):
-- alusrcb(2) = DFFEAS((!state(3) & ((state(2)) # ((\Equal0~3_combout\)))), GLOBAL(\clk~combout\), VCC, , \alusrca[1]~5_combout\, VCC, , , state(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3322",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(2),
	datab => state(3),
	datac => VCC,
	datad => \Equal0~3_combout\,
	aclr => GND,
	sload => state(4),
	ena => \alusrca[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => alusrcb(2));

-- Location: LC_X8_Y6_N9
\alusrcb[1]\ : maxv_lcell
-- Equation(s):
-- alusrcb(1) = DFFEAS((state(2) & (state(3) & (state(1) & !state(0)))), GLOBAL(\clk~combout\), VCC, , \alusrca[1]~5_combout\, state(1), , , state(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(2),
	datab => state(3),
	datac => state(1),
	datad => state(0),
	aclr => GND,
	sload => state(4),
	ena => \alusrca[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => alusrcb(1));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(17),
	combout => \input~combout\(17));

-- Location: LC_X12_Y9_N4
\memwr~6\ : maxv_lcell
-- Equation(s):
-- \memwr~6_combout\ = (state(1)) # ((state(2)) # ((state(3)) # (!state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(3),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memwr~6_combout\);

-- Location: LC_X12_Y9_N9
\memwr~7\ : maxv_lcell
-- Equation(s):
-- \memwr~7_combout\ = (state(1)) # ((state(2)) # ((state(0)) # (!state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(3),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memwr~7_combout\);

-- Location: LC_X12_Y9_N2
\memwr~12\ : maxv_lcell
-- Equation(s):
-- \memwr~12_combout\ = (!state(3) & ((state(1) & (state(2) & !state(0))) # (!state(1) & (state(2) $ (!state(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0409",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(3),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memwr~12_combout\);

-- Location: LC_X12_Y9_N6
\memwr~13\ : maxv_lcell
-- Equation(s):
-- \memwr~13_combout\ = (\memwr~regout\ & (((state(4))))) # (!\memwr~regout\ & (\memwr~12_combout\ & (state(4) $ (!state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~regout\,
	datab => \memwr~12_combout\,
	datac => state(4),
	datad => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memwr~13_combout\);

-- Location: LC_X12_Y9_N7
memwr : maxv_lcell
-- Equation(s):
-- \memwr~regout\ = DFFEAS((\memwr~regout\ & ((\memwr~13_combout\ & ((\memwr~7_combout\))) # (!\memwr~13_combout\ & (\memwr~6_combout\)))) # (!\memwr~regout\ & (((\memwr~13_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memwr~6_combout\,
	datab => \memwr~7_combout\,
	datac => \memwr~regout\,
	datad => \memwr~13_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memwr~regout\);

-- Location: LC_X10_Y4_N1
\pcsrc~1\ : maxv_lcell
-- Equation(s):
-- \pcsrc~1_combout\ = (state(4) & (\pcsrc~regout\ & ((state(3)) # (state(0))))) # (!state(4) & (state(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(4),
	datac => state(0),
	datad => \pcsrc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pcsrc~1_combout\);

-- Location: LC_X10_Y4_N5
\pcsrc~0\ : maxv_lcell
-- Equation(s):
-- \pcsrc~0_combout\ = (state(2)) # ((state(1) & (\pcsrc~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => \pcsrc~regout\,
	datac => state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pcsrc~0_combout\);

-- Location: LC_X10_Y4_N2
pcsrc : maxv_lcell
-- Equation(s):
-- \pcsrc~regout\ = DFFEAS((\pcsrc~1_combout\ & ((\pcsrc~regout\) # ((\alud~3_combout\ & \pcsrc~0_combout\)))) # (!\pcsrc~1_combout\ & (((\pcsrc~0_combout\ & \pcsrc~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \alud~3_combout\,
	datab => \pcsrc~1_combout\,
	datac => \pcsrc~0_combout\,
	datad => \pcsrc~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pcsrc~regout\);

-- Location: LC_X8_Y5_N0
\alusrcb~1\ : maxv_lcell
-- Equation(s):
-- \alusrcb~1_combout\ = (state(2) & (((!state(0) & state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => state(0),
	datad => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alusrcb~1_combout\);

-- Location: LC_X10_Y4_N4
\alusrcb~0\ : maxv_lcell
-- Equation(s):
-- \alusrcb~0_combout\ = (!state(2) & (state(1) $ ((state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1212",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alusrcb~0_combout\);

-- Location: LC_X8_Y6_N1
\alusrcb[0]\ : maxv_lcell
-- Equation(s):
-- alusrcb(0) = DFFEAS(((state(3) & (\alusrcb~1_combout\)) # (!state(3) & ((\alusrcb~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \alusrca[1]~5_combout\, VCC, , , state(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \alusrcb~1_combout\,
	datab => \alusrcb~0_combout\,
	datac => VCC,
	datad => state(3),
	aclr => GND,
	sload => state(4),
	ena => \alusrca[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => alusrcb(0));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(16),
	combout => \input~combout\(16));

-- Location: LC_X5_Y8_N4
\mem|mem_reg[8][0]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[0]~7\ = ((\input~combout\(16) & (!dcon(0) & dcon(1))))
-- \mem|mem_reg[8][0]~regout\ = DFFEAS(\m_2|outp[0]~7\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \input~combout\(16),
	datac => dcon(0),
	datad => dcon(1),
	aclr => GND,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[0]~7\,
	regout => \mem|mem_reg[8][0]~regout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(18),
	combout => \input~combout\(18));

-- Location: LC_X6_Y7_N6
\mem|Decoder0~12\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~12_combout\ = (\memwr~regout\ & (!\m_1|outp[2]~1_combout\ & (\m_1|outp[0]~7_combout\ & !\m_1|outp[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \m_1|outp[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~12_combout\);

-- Location: LC_X6_Y10_N7
\mem|Decoder0~13\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~13_combout\ = (!\m_1|outp[3]~5_combout\ & (((\mem|Decoder0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~5_combout\,
	datad => \mem|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~13_combout\);

-- Location: LC_X7_Y10_N7
\mem|mem_reg[1][2]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[2]~8\ = (dcon(1) & (\input~combout\(18) & ((!dcon(0)))))
-- \mem|mem_reg[1][2]~regout\ = DFFEAS(\m_2|outp[2]~8\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~13_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dcon(1),
	datab => \input~combout\(18),
	datad => dcon(0),
	aclr => GND,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[2]~8\,
	regout => \mem|mem_reg[1][2]~regout\);

-- Location: LC_X4_Y7_N6
\mem|Decoder0~14\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~14_combout\ = (\memwr~regout\ & (\m_1|outp[1]~3_combout\ & (\m_1|outp[2]~1_combout\ & \m_1|outp[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_1|outp[2]~1_combout\,
	datad => \m_1|outp[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~14_combout\);

-- Location: LC_X3_Y7_N1
\mem|Decoder0~23\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~23_combout\ = ((\m_1|outp[3]~5_combout\ & (\mem|Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \m_1|outp[3]~5_combout\,
	datac => \mem|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~23_combout\);

-- Location: LC_X2_Y7_N5
\mem|mem_reg[15][2]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[15][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~23_combout\, \m_2|outp[2]~8\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[2]~8\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[15][2]~regout\);

-- Location: LC_X5_Y7_N5
\mem|Decoder0~11\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~11_combout\ = (((!\m_1|outp[3]~5_combout\ & \mem|Decoder0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \m_1|outp[3]~5_combout\,
	datad => \mem|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~11_combout\);

-- Location: LC_X3_Y9_N2
\mem|mem_reg[3][2]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[3][2]~regout\ = DFFEAS((((\m_2|outp[2]~8\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~11_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[2]~8\,
	aclr => GND,
	ena => \mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[3][2]~regout\);

-- Location: LC_X8_Y7_N8
\mem|Decoder0~15\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~15_combout\ = (((!\m_1|outp[3]~5_combout\ & \mem|Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \m_1|outp[3]~5_combout\,
	datad => \mem|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~15_combout\);

-- Location: LC_X3_Y6_N1
\mem|mem_reg[7][2]\ : maxv_lcell
-- Equation(s):
-- \mem|do~95\ = (\m_1|outp[2]~1_combout\ & (((S1_mem_reg[7][2]) # (\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[3][2]~regout\ & ((!\m_1|outp[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[3][2]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[2]~8\,
	datad => \m_1|outp[3]~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~95\,
	regout => \mem|mem_reg[7][2]~regout\);

-- Location: LC_X3_Y6_N7
\mem|mem_reg[11][2]\ : maxv_lcell
-- Equation(s):
-- \mem|do~96\ = (\m_1|outp[3]~5_combout\ & ((\mem|do~95\ & (\mem|mem_reg[15][2]~regout\)) # (!\mem|do~95\ & ((S1_mem_reg[11][2]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|do~95\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[3]~5_combout\,
	datab => \mem|mem_reg[15][2]~regout\,
	datac => \m_2|outp[2]~8\,
	datad => \mem|do~95\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~96\,
	regout => \mem|mem_reg[11][2]~regout\);

-- Location: LC_X6_Y7_N8
\mem|Decoder0~8\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~8_combout\ = (\memwr~regout\ & (!\m_1|outp[1]~3_combout\ & (\m_1|outp[0]~7_combout\ & \m_1|outp[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \m_1|outp[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~8_combout\);

-- Location: LC_X6_Y7_N9
\mem|Decoder0~20\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~20_combout\ = (((\m_1|outp[3]~5_combout\ & \mem|Decoder0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \m_1|outp[3]~5_combout\,
	datad => \mem|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~20_combout\);

-- Location: LC_X2_Y7_N9
\mem|mem_reg[13][2]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[13][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~20_combout\, \m_2|outp[2]~8\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[2]~8\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[13][2]~regout\);

-- Location: LC_X6_Y7_N1
\mem|Decoder0~9\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~9_combout\ = (((!\m_1|outp[3]~5_combout\ & \mem|Decoder0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \m_1|outp[3]~5_combout\,
	datad => \mem|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~9_combout\);

-- Location: LC_X6_Y7_N7
\mem|mem_reg[5][2]\ : maxv_lcell
-- Equation(s):
-- \mem|do~88\ = (\m_1|outp[2]~1_combout\ & (((S1_mem_reg[5][2]) # (\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[1][2]~regout\ & ((!\m_1|outp[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[1][2]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[2]~8\,
	datad => \m_1|outp[3]~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~88\,
	regout => \mem|mem_reg[5][2]~regout\);

-- Location: LC_X7_Y7_N7
\mem|Decoder0~22\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~22_combout\ = (((\mem|Decoder0~12_combout\ & \m_1|outp[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \mem|Decoder0~12_combout\,
	datad => \m_1|outp[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~22_combout\);

-- Location: LC_X7_Y7_N4
\mem|mem_reg[9][2]\ : maxv_lcell
-- Equation(s):
-- \mem|do~89\ = (\m_1|outp[3]~5_combout\ & ((\mem|do~88\ & (\mem|mem_reg[13][2]~regout\)) # (!\mem|do~88\ & ((S1_mem_reg[9][2]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|do~88\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[13][2]~regout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \m_2|outp[2]~8\,
	datad => \mem|do~88\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~89\,
	regout => \mem|mem_reg[9][2]~regout\);

-- Location: LC_X7_Y5_N7
\mem|Decoder0~0\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~0_combout\ = (\memwr~regout\ & (\m_1|outp[2]~1_combout\ & (!\m_1|outp[0]~7_combout\ & !\m_1|outp[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \m_1|outp[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~0_combout\);

-- Location: LC_X7_Y5_N0
\mem|Decoder0~1\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~1_combout\ = (((\mem|Decoder0~0_combout\ & \m_1|outp[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \mem|Decoder0~0_combout\,
	datad => \m_1|outp[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~1_combout\);

-- Location: LC_X7_Y5_N3
\mem|mem_reg[12][2]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[12][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~1_combout\, \m_2|outp[2]~8\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[2]~8\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[12][2]~regout\);

-- Location: LC_X6_Y10_N4
\mem|Decoder0~4\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~4_combout\ = (\memwr~regout\ & (!\m_1|outp[0]~7_combout\ & (!\m_1|outp[1]~3_combout\ & !\m_1|outp[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_1|outp[1]~3_combout\,
	datad => \m_1|outp[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~4_combout\);

-- Location: LC_X5_Y10_N4
\mem|Decoder0~18\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~18_combout\ = (((!\m_1|outp[3]~5_combout\ & \mem|Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \m_1|outp[3]~5_combout\,
	datad => \mem|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~18_combout\);

-- Location: LC_X4_Y10_N6
\mem|mem_reg[0][2]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[0][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~18_combout\, \m_2|outp[2]~8\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[2]~8\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[0][2]~regout\);

-- Location: LC_X7_Y5_N8
\mem|Decoder0~16\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~16_combout\ = (((!\m_1|outp[3]~5_combout\ & \mem|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \m_1|outp[3]~5_combout\,
	datad => \mem|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~16_combout\);

-- Location: LC_X4_Y5_N1
\mem|mem_reg[4][2]\ : maxv_lcell
-- Equation(s):
-- \mem|do~92\ = (\m_1|outp[2]~1_combout\ & (((S1_mem_reg[4][2]) # (\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[0][2]~regout\ & ((!\m_1|outp[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|mem_reg[0][2]~regout\,
	datac => \m_2|outp[2]~8\,
	datad => \m_1|outp[3]~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~92\,
	regout => \mem|mem_reg[4][2]~regout\);

-- Location: LC_X4_Y5_N0
\mem|mem_reg[8][2]\ : maxv_lcell
-- Equation(s):
-- \mem|do~93\ = (\m_1|outp[3]~5_combout\ & ((\mem|do~92\ & (\mem|mem_reg[12][2]~regout\)) # (!\mem|do~92\ & ((S1_mem_reg[8][2]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|do~92\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[12][2]~regout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \m_2|outp[2]~8\,
	datad => \mem|do~92\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~93\,
	regout => \mem|mem_reg[8][2]~regout\);

-- Location: LC_X4_Y8_N9
\mem|Decoder0~6\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~6_combout\ = (\m_1|outp[2]~1_combout\ & (\memwr~regout\ & (\m_1|outp[1]~3_combout\ & !\m_1|outp[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \memwr~regout\,
	datac => \m_1|outp[1]~3_combout\,
	datad => \m_1|outp[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~6_combout\);

-- Location: LC_X4_Y8_N0
\mem|Decoder0~7\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~7_combout\ = ((\m_1|outp[3]~5_combout\ & ((\mem|Decoder0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \m_1|outp[3]~5_combout\,
	datad => \mem|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~7_combout\);

-- Location: LC_X4_Y8_N4
\mem|mem_reg[14][2]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[14][2]~regout\ = DFFEAS((((\m_2|outp[2]~8\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[2]~8\,
	aclr => GND,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[14][2]~regout\);

-- Location: LC_X3_Y9_N5
\mem|mem_reg[2][2]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[2][2]~regout\ = DFFEAS((((\m_2|outp[2]~8\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[2]~8\,
	aclr => GND,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[2][2]~regout\);

-- Location: LC_X4_Y8_N5
\mem|Decoder0~19\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~19_combout\ = ((!\m_1|outp[3]~5_combout\ & ((\mem|Decoder0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \m_1|outp[3]~5_combout\,
	datad => \mem|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~19_combout\);

-- Location: LC_X4_Y8_N3
\mem|mem_reg[6][2]\ : maxv_lcell
-- Equation(s):
-- \mem|do~90\ = (\m_1|outp[2]~1_combout\ & (((S1_mem_reg[6][2]) # (\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[2][2]~regout\ & ((!\m_1|outp[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|mem_reg[2][2]~regout\,
	datac => \m_2|outp[2]~8\,
	datad => \m_1|outp[3]~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~90\,
	regout => \mem|mem_reg[6][2]~regout\);

-- Location: LC_X6_Y9_N2
\mem|Decoder0~3\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~3_combout\ = (((\m_1|outp[3]~5_combout\ & \mem|Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \m_1|outp[3]~5_combout\,
	datad => \mem|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~3_combout\);

-- Location: LC_X4_Y6_N9
\mem|mem_reg[10][2]\ : maxv_lcell
-- Equation(s):
-- \mem|do~91\ = (\m_1|outp[3]~5_combout\ & ((\mem|do~90\ & (\mem|mem_reg[14][2]~regout\)) # (!\mem|do~90\ & ((S1_mem_reg[10][2]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|do~90\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[3]~5_combout\,
	datab => \mem|mem_reg[14][2]~regout\,
	datac => \m_2|outp[2]~8\,
	datad => \mem|do~90\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~91\,
	regout => \mem|mem_reg[10][2]~regout\);

-- Location: LC_X4_Y6_N0
\mem|do~94\ : maxv_lcell
-- Equation(s):
-- \mem|do~94_combout\ = (\m_1|outp[0]~7_combout\ & (\m_1|outp[1]~3_combout\)) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\ & ((\mem|do~91\))) # (!\m_1|outp[1]~3_combout\ & (\mem|do~93\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \mem|do~93\,
	datad => \mem|do~91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~94_combout\);

-- Location: LC_X4_Y6_N1
\mem|do~97\ : maxv_lcell
-- Equation(s):
-- \mem|do~97_combout\ = (\m_1|outp[0]~7_combout\ & ((\mem|do~94_combout\ & (\mem|do~96\)) # (!\mem|do~94_combout\ & ((\mem|do~89\))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|do~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \mem|do~96\,
	datac => \mem|do~89\,
	datad => \mem|do~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~97_combout\);

-- Location: LC_X4_Y6_N2
\mem|do[2]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(2) = DFFEAS((((\mem|do~97_combout\)) # (!\memrd~regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \memrd~regout\,
	datad => \mem|do~97_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(2));

-- Location: LC_X4_Y6_N4
\ir_1|r_1|dout[2]\ : maxv_lcell
-- Equation(s):
-- \ir_1|r_1|dout\(2) = ((GLOBAL(\irwr~regout\) & ((\mem|do\(2)))) # (!GLOBAL(\irwr~regout\) & (\ir_1|r_1|dout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(2),
	datac => \irwr~regout\,
	datad => \mem|do\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ir_1|r_1|dout\(2));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(19),
	combout => \input~combout\(19));

-- Location: LC_X7_Y9_N4
\mem|mem_reg[4][3]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[3]~9\ = (\input~combout\(19) & (((dcon(1) & !dcon(0)))))
-- \mem|mem_reg[4][3]~regout\ = DFFEAS(\m_2|outp[3]~9\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \input~combout\(19),
	datac => dcon(1),
	datad => dcon(0),
	aclr => GND,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[3]~9\,
	regout => \mem|mem_reg[4][3]~regout\);

-- Location: LC_X9_Y7_N4
\mem|mem_reg[7][3]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[7][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~15_combout\, \m_2|outp[3]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[3]~9\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[7][3]~regout\);

-- Location: LC_X6_Y7_N2
\mem|mem_reg[6][3]\ : maxv_lcell
-- Equation(s):
-- \mem|do~99\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[6][3]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[4][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[4][3]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[3]~9\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~99\,
	regout => \mem|mem_reg[6][3]~regout\);

-- Location: LC_X6_Y7_N3
\mem|mem_reg[5][3]\ : maxv_lcell
-- Equation(s):
-- \mem|do~100\ = (\m_1|outp[0]~7_combout\ & ((\mem|do~99\ & (\mem|mem_reg[7][3]~regout\)) # (!\mem|do~99\ & ((S1_mem_reg[5][3]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|do~99\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[7][3]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[3]~9\,
	datad => \mem|do~99\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~100\,
	regout => \mem|mem_reg[5][3]~regout\);

-- Location: LC_X3_Y7_N6
\mem|mem_reg[15][3]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[15][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~23_combout\, \m_2|outp[3]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[3]~9\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[15][3]~regout\);

-- Location: LC_X7_Y5_N1
\mem|mem_reg[12][3]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[12][3]~regout\ = DFFEAS((((\m_2|outp[3]~9\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[3]~9\,
	aclr => GND,
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[12][3]~regout\);

-- Location: LC_X5_Y10_N2
\mem|mem_reg[14][3]\ : maxv_lcell
-- Equation(s):
-- \mem|do~106\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[14][3]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[12][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[12][3]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[3]~9\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~106\,
	regout => \mem|mem_reg[14][3]~regout\);

-- Location: LC_X5_Y10_N3
\mem|mem_reg[13][3]\ : maxv_lcell
-- Equation(s):
-- \mem|do~107\ = (\m_1|outp[0]~7_combout\ & ((\mem|do~106\ & (\mem|mem_reg[15][3]~regout\)) # (!\mem|do~106\ & ((S1_mem_reg[13][3]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|do~106\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[15][3]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[3]~9\,
	datad => \mem|do~106\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~107\,
	regout => \mem|mem_reg[13][3]~regout\);

-- Location: LC_X5_Y7_N9
\mem|mem_reg[3][3]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[3][3]~regout\ = DFFEAS((((\m_2|outp[3]~9\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~11_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[3]~9\,
	aclr => GND,
	ena => \mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[3][3]~regout\);

-- Location: LC_X4_Y10_N0
\mem|mem_reg[0][3]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[0][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~18_combout\, \m_2|outp[3]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[3]~9\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[0][3]~regout\);

-- Location: LC_X3_Y10_N4
\mem|mem_reg[1][3]\ : maxv_lcell
-- Equation(s):
-- \mem|do~103\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[1][3]) # (\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[0][3]~regout\ & ((!\m_1|outp[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[0][3]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[3]~9\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~103\,
	regout => \mem|mem_reg[1][3]~regout\);

-- Location: LC_X3_Y10_N5
\mem|mem_reg[2][3]\ : maxv_lcell
-- Equation(s):
-- \mem|do~104\ = (\m_1|outp[1]~3_combout\ & ((\mem|do~103\ & (\mem|mem_reg[3][3]~regout\)) # (!\mem|do~103\ & ((S1_mem_reg[2][3]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|do~103\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[3][3]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[3]~9\,
	datad => \mem|do~103\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~104\,
	regout => \mem|mem_reg[2][3]~regout\);

-- Location: LC_X5_Y7_N8
\mem|mem_reg[11][3]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[11][3]~regout\ = DFFEAS((((\m_2|outp[3]~9\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~21_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[3]~9\,
	aclr => GND,
	ena => \mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[11][3]~regout\);

-- Location: LC_X5_Y8_N3
\mem|mem_reg[8][3]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[8][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~5_combout\, \m_2|outp[3]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[3]~9\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[8][3]~regout\);

-- Location: LC_X5_Y9_N8
\mem|mem_reg[9][3]\ : maxv_lcell
-- Equation(s):
-- \mem|do~101\ = (\m_1|outp[1]~3_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & ((\m_1|outp[0]~7_combout\ & ((S1_mem_reg[9][3]))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[8][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[8][3]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[3]~9\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~101\,
	regout => \mem|mem_reg[9][3]~regout\);

-- Location: LC_X4_Y6_N5
\mem|mem_reg[10][3]\ : maxv_lcell
-- Equation(s):
-- \mem|do~102\ = (\m_1|outp[1]~3_combout\ & ((\mem|do~101\ & (\mem|mem_reg[11][3]~regout\)) # (!\mem|do~101\ & ((S1_mem_reg[10][3]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|do~101\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[11][3]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[3]~9\,
	datad => \mem|do~101\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~102\,
	regout => \mem|mem_reg[10][3]~regout\);

-- Location: LC_X4_Y6_N6
\mem|do~105\ : maxv_lcell
-- Equation(s):
-- \mem|do~105_combout\ = (\m_1|outp[2]~1_combout\ & (\m_1|outp[3]~5_combout\)) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~5_combout\ & ((\mem|do~102\))) # (!\m_1|outp[3]~5_combout\ & (\mem|do~104\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \mem|do~104\,
	datad => \mem|do~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~105_combout\);

-- Location: LC_X4_Y6_N7
\mem|do~108\ : maxv_lcell
-- Equation(s):
-- \mem|do~108_combout\ = (\m_1|outp[2]~1_combout\ & ((\mem|do~105_combout\ & ((\mem|do~107\))) # (!\mem|do~105_combout\ & (\mem|do~100\)))) # (!\m_1|outp[2]~1_combout\ & (((\mem|do~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|do~100\,
	datac => \mem|do~107\,
	datad => \mem|do~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~108_combout\);

-- Location: LC_X4_Y6_N8
\mem|do[3]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(3) = DFFEAS((((\mem|do~108_combout\)) # (!\memrd~regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \memrd~regout\,
	datad => \mem|do~108_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(3));

-- Location: LC_X4_Y6_N3
\ir_1|r_1|dout[3]\ : maxv_lcell
-- Equation(s):
-- \ir_1|r_1|dout\(3) = ((GLOBAL(\irwr~regout\) & ((\mem|do\(3)))) # (!GLOBAL(\irwr~regout\) & (\ir_1|r_1|dout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(3),
	datac => \irwr~regout\,
	datad => \mem|do\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ir_1|r_1|dout\(3));

-- Location: LC_X6_Y4_N3
\priorityin~8\ : maxv_lcell
-- Equation(s):
-- \priorityin~8_combout\ = (\p_1|outp\(1)) # ((\p_1|outp\(0)) # ((\p_1|outp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_1|outp\(1),
	datab => \p_1|outp\(0),
	datad => \p_1|outp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin~8_combout\);

-- Location: LC_X6_Y5_N4
\priorityin[1]~2\ : maxv_lcell
-- Equation(s):
-- \priorityin[1]~2_combout\ = (state(3)) # ((state(4) & ((!state(1)) # (!state(2)))) # (!state(4) & ((state(2)) # (state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7fe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(2),
	datac => state(3),
	datad => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin[1]~2_combout\);

-- Location: LC_X6_Y5_N5
\priorityin[1]~3\ : maxv_lcell
-- Equation(s):
-- \priorityin[1]~3_combout\ = (((!\priorityin[1]~2_combout\ & state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \priorityin[1]~2_combout\,
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin[1]~3_combout\);

-- Location: LC_X6_Y6_N0
\priorityin[0]\ : maxv_lcell
-- Equation(s):
-- priorityin(0) = DFFEAS((\Equal0~0_combout\ & (((\ir_1|r_1|dout\(0))))) # (!\Equal0~0_combout\ & (\priorityin~8_combout\ & (priorityin(0)))), GLOBAL(\clk~combout\), VCC, , \priorityin[1]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \priorityin~8_combout\,
	datab => priorityin(0),
	datac => \ir_1|r_1|dout\(0),
	datad => \Equal0~0_combout\,
	aclr => GND,
	ena => \priorityin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => priorityin(0));

-- Location: LC_X6_Y4_N6
\priorityin~6\ : maxv_lcell
-- Equation(s):
-- \priorityin~6_combout\ = (\p_1|outp\(1)) # (((\p_1|outp\(2))) # (!\p_1|outp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_1|outp\(1),
	datab => \p_1|outp\(0),
	datad => \p_1|outp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin~6_combout\);

-- Location: LC_X6_Y6_N7
\priorityin[1]\ : maxv_lcell
-- Equation(s):
-- priorityin(1) = DFFEAS((\Equal0~0_combout\ & (\ir_1|r_1|dout\(1))) # (!\Equal0~0_combout\ & (((priorityin(1) & \priorityin~6_combout\)))), GLOBAL(\clk~combout\), VCC, , \priorityin[1]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~0_combout\,
	datab => \ir_1|r_1|dout\(1),
	datac => priorityin(1),
	datad => \priorityin~6_combout\,
	aclr => GND,
	ena => \priorityin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => priorityin(1));

-- Location: LC_X6_Y4_N9
\priorityin~16\ : maxv_lcell
-- Equation(s):
-- \priorityin~16_combout\ = (priorityin(5) & ((\p_1|outp\(1)) # ((!\p_1|outp\(2)) # (!\p_1|outp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_1|outp\(1),
	datab => priorityin(5),
	datac => \p_1|outp\(0),
	datad => \p_1|outp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin~16_combout\);

-- Location: LC_X6_Y4_N2
\priorityin[5]\ : maxv_lcell
-- Equation(s):
-- priorityin(5) = DFFEAS((\dcon~3_combout\ & ((\memwr~10\ & ((\ir_1|r_1|dout\(5)))) # (!\memwr~10\ & (\priorityin~16_combout\)))) # (!\dcon~3_combout\ & (\priorityin~16_combout\)), GLOBAL(\clk~combout\), VCC, , \priorityin[1]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec4c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \dcon~3_combout\,
	datab => \priorityin~16_combout\,
	datac => \memwr~10\,
	datad => \ir_1|r_1|dout\(5),
	aclr => GND,
	ena => \priorityin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => priorityin(5));

-- Location: LC_X6_Y4_N7
\priorityin~0\ : maxv_lcell
-- Equation(s):
-- \priorityin~0_combout\ = ((\p_1|outp\(0)) # ((!\p_1|outp\(2)))) # (!\p_1|outp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_1|outp\(1),
	datab => \p_1|outp\(0),
	datad => \p_1|outp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin~0_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(22),
	combout => \input~combout\(22));

-- Location: LC_X7_Y10_N4
\mem|mem_reg[1][6]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[6]~4\ = ((\input~combout\(22) & (dcon(1) & !dcon(0))))
-- \mem|mem_reg[1][6]~regout\ = DFFEAS(\m_2|outp[6]~4\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~13_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \input~combout\(22),
	datac => dcon(1),
	datad => dcon(0),
	aclr => GND,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[6]~4\,
	regout => \mem|mem_reg[1][6]~regout\);

-- Location: LC_X3_Y7_N0
\mem|mem_reg[15][6]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[15][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~23_combout\, \m_2|outp[6]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[6]~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[15][6]~regout\);

-- Location: LC_X3_Y9_N6
\mem|mem_reg[3][6]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[3][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~11_combout\, \m_2|outp[6]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[6]~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[3][6]~regout\);

-- Location: LC_X3_Y6_N4
\mem|mem_reg[7][6]\ : maxv_lcell
-- Equation(s):
-- \mem|do~51\ = (\m_1|outp[2]~1_combout\ & (((S1_mem_reg[7][6]) # (\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[3][6]~regout\ & ((!\m_1|outp[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|mem_reg[3][6]~regout\,
	datac => \m_2|outp[6]~4\,
	datad => \m_1|outp[3]~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~51\,
	regout => \mem|mem_reg[7][6]~regout\);

-- Location: LC_X3_Y6_N5
\mem|mem_reg[11][6]\ : maxv_lcell
-- Equation(s):
-- \mem|do~52\ = (\m_1|outp[3]~5_combout\ & ((\mem|do~51\ & (\mem|mem_reg[15][6]~regout\)) # (!\mem|do~51\ & ((S1_mem_reg[11][6]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|do~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[3]~5_combout\,
	datab => \mem|mem_reg[15][6]~regout\,
	datac => \m_2|outp[6]~4\,
	datad => \mem|do~51\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~52\,
	regout => \mem|mem_reg[11][6]~regout\);

-- Location: LC_X2_Y7_N1
\mem|mem_reg[13][6]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[13][6]~regout\ = DFFEAS((((\m_2|outp[6]~4\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~20_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[6]~4\,
	aclr => GND,
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[13][6]~regout\);

-- Location: LC_X6_Y7_N4
\mem|mem_reg[5][6]\ : maxv_lcell
-- Equation(s):
-- \mem|do~44\ = (\m_1|outp[3]~5_combout\ & (((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~5_combout\ & ((\m_1|outp[2]~1_combout\ & ((S1_mem_reg[5][6]))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[1][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[1][6]~regout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \m_2|outp[6]~4\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~44\,
	regout => \mem|mem_reg[5][6]~regout\);

-- Location: LC_X7_Y7_N3
\mem|mem_reg[9][6]\ : maxv_lcell
-- Equation(s):
-- \mem|do~45\ = (\m_1|outp[3]~5_combout\ & ((\mem|do~44\ & (\mem|mem_reg[13][6]~regout\)) # (!\mem|do~44\ & ((S1_mem_reg[9][6]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|do~44\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[13][6]~regout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \m_2|outp[6]~4\,
	datad => \mem|do~44\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~45\,
	regout => \mem|mem_reg[9][6]~regout\);

-- Location: LC_X7_Y5_N2
\mem|mem_reg[12][6]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[12][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~1_combout\, \m_2|outp[6]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[6]~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[12][6]~regout\);

-- Location: LC_X4_Y10_N8
\mem|mem_reg[0][6]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[0][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~18_combout\, \m_2|outp[6]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[6]~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[0][6]~regout\);

-- Location: LC_X4_Y5_N8
\mem|mem_reg[8][6]\ : maxv_lcell
-- Equation(s):
-- \mem|do~48\ = (\m_1|outp[2]~1_combout\ & (((\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~5_combout\ & ((S1_mem_reg[8][6]))) # (!\m_1|outp[3]~5_combout\ & (\mem|mem_reg[0][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|mem_reg[0][6]~regout\,
	datac => \m_2|outp[6]~4\,
	datad => \m_1|outp[3]~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~48\,
	regout => \mem|mem_reg[8][6]~regout\);

-- Location: LC_X4_Y5_N9
\mem|mem_reg[4][6]\ : maxv_lcell
-- Equation(s):
-- \mem|do~49\ = (\m_1|outp[2]~1_combout\ & ((\mem|do~48\ & (\mem|mem_reg[12][6]~regout\)) # (!\mem|do~48\ & ((S1_mem_reg[4][6]))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|do~48\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|mem_reg[12][6]~regout\,
	datac => \m_2|outp[6]~4\,
	datad => \mem|do~48\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~49\,
	regout => \mem|mem_reg[4][6]~regout\);

-- Location: LC_X5_Y5_N2
\mem|mem_reg[14][6]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[14][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~7_combout\, \m_2|outp[6]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[6]~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[14][6]~regout\);

-- Location: LC_X3_Y9_N7
\mem|mem_reg[2][6]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[2][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~17_combout\, \m_2|outp[6]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[6]~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[2][6]~regout\);

-- Location: LC_X4_Y9_N0
\mem|mem_reg[10][6]\ : maxv_lcell
-- Equation(s):
-- \mem|do~46\ = (\m_1|outp[3]~5_combout\ & (((S1_mem_reg[10][6]) # (\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~5_combout\ & (\mem|mem_reg[2][6]~regout\ & ((!\m_1|outp[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[2][6]~regout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \m_2|outp[6]~4\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~46\,
	regout => \mem|mem_reg[10][6]~regout\);

-- Location: LC_X5_Y5_N4
\mem|mem_reg[6][6]\ : maxv_lcell
-- Equation(s):
-- \mem|do~47\ = (\m_1|outp[2]~1_combout\ & ((\mem|do~46\ & (\mem|mem_reg[14][6]~regout\)) # (!\mem|do~46\ & ((S1_mem_reg[6][6]))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|do~46\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[14][6]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[6]~4\,
	datad => \mem|do~46\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~47\,
	regout => \mem|mem_reg[6][6]~regout\);

-- Location: LC_X5_Y5_N5
\mem|do~50\ : maxv_lcell
-- Equation(s):
-- \mem|do~50_combout\ = (\m_1|outp[1]~3_combout\ & ((\m_1|outp[0]~7_combout\) # ((\mem|do~47\)))) # (!\m_1|outp[1]~3_combout\ & (!\m_1|outp[0]~7_combout\ & (\mem|do~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~3_combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \mem|do~49\,
	datad => \mem|do~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~50_combout\);

-- Location: LC_X6_Y5_N8
\mem|do~53\ : maxv_lcell
-- Equation(s):
-- \mem|do~53_combout\ = (\m_1|outp[0]~7_combout\ & ((\mem|do~50_combout\ & (\mem|do~52\)) # (!\mem|do~50_combout\ & ((\mem|do~45\))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|do~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem|do~52\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \mem|do~45\,
	datad => \mem|do~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~53_combout\);

-- Location: LC_X6_Y5_N9
\mem|do[6]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(6) = DFFEAS((((\mem|do~53_combout\) # (!\memrd~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \memrd~regout\,
	datad => \mem|do~53_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(6));

-- Location: LC_X6_Y5_N6
\ir_1|r_1|dout[6]\ : maxv_lcell
-- Equation(s):
-- \ir_1|r_1|dout\(6) = ((GLOBAL(\irwr~regout\) & ((\mem|do\(6)))) # (!GLOBAL(\irwr~regout\) & (\ir_1|r_1|dout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(6),
	datac => \irwr~regout\,
	datad => \mem|do\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ir_1|r_1|dout\(6));

-- Location: LC_X6_Y5_N7
\priorityin[6]\ : maxv_lcell
-- Equation(s):
-- priorityin(6) = DFFEAS((\Equal0~0_combout\ & (((\ir_1|r_1|dout\(6))))) # (!\Equal0~0_combout\ & (\priorityin~0_combout\ & (priorityin(6)))), GLOBAL(\clk~combout\), VCC, , \priorityin[1]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \priorityin~0_combout\,
	datab => \Equal0~0_combout\,
	datac => priorityin(6),
	datad => \ir_1|r_1|dout\(6),
	aclr => GND,
	ena => \priorityin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => priorityin(6));

-- Location: LC_X6_Y4_N5
\priorityin~14\ : maxv_lcell
-- Equation(s):
-- \priorityin~14_combout\ = (\p_1|outp\(1)) # ((\p_1|outp\(0)) # ((!\p_1|outp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_1|outp\(1),
	datab => \p_1|outp\(0),
	datad => \p_1|outp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin~14_combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(20),
	combout => \input~combout\(20));

-- Location: LC_X3_Y9_N8
\mem|mem_reg[2][4]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[4]~10\ = (\input~combout\(20) & (((dcon(1) & !dcon(0)))))
-- \mem|mem_reg[2][4]~regout\ = DFFEAS(\m_2|outp[4]~10\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \input~combout\(20),
	datac => dcon(1),
	datad => dcon(0),
	aclr => GND,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[4]~10\,
	regout => \mem|mem_reg[2][4]~regout\);

-- Location: LC_X3_Y7_N2
\mem|mem_reg[15][4]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[15][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~23_combout\, \m_2|outp[4]~10\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[4]~10\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[15][4]~regout\);

-- Location: LC_X5_Y7_N6
\mem|mem_reg[3][4]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[3][4]~regout\ = DFFEAS((((\m_2|outp[4]~10\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~11_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[4]~10\,
	aclr => GND,
	ena => \mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[3][4]~regout\);

-- Location: LC_X3_Y6_N8
\mem|mem_reg[11][4]\ : maxv_lcell
-- Equation(s):
-- \mem|do~117\ = (\m_1|outp[2]~1_combout\ & (((\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~5_combout\ & ((S1_mem_reg[11][4]))) # (!\m_1|outp[3]~5_combout\ & (\mem|mem_reg[3][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[3][4]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[4]~10\,
	datad => \m_1|outp[3]~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~117\,
	regout => \mem|mem_reg[11][4]~regout\);

-- Location: LC_X3_Y6_N0
\mem|mem_reg[7][4]\ : maxv_lcell
-- Equation(s):
-- \mem|do~118\ = (\m_1|outp[2]~1_combout\ & ((\mem|do~117\ & (\mem|mem_reg[15][4]~regout\)) # (!\mem|do~117\ & ((S1_mem_reg[7][4]))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|do~117\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|mem_reg[15][4]~regout\,
	datac => \m_2|outp[4]~10\,
	datad => \mem|do~117\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~118\,
	regout => \mem|mem_reg[7][4]~regout\);

-- Location: LC_X4_Y8_N2
\mem|mem_reg[14][4]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[14][4]~regout\ = DFFEAS((((\m_2|outp[4]~10\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[4]~10\,
	aclr => GND,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[14][4]~regout\);

-- Location: LC_X3_Y8_N4
\mem|mem_reg[6][4]\ : maxv_lcell
-- Equation(s):
-- \mem|do~110\ = (\m_1|outp[3]~5_combout\ & (((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~5_combout\ & ((\m_1|outp[2]~1_combout\ & ((S1_mem_reg[6][4]))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[2][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[3]~5_combout\,
	datab => \mem|mem_reg[2][4]~regout\,
	datac => \m_2|outp[4]~10\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~110\,
	regout => \mem|mem_reg[6][4]~regout\);

-- Location: LC_X3_Y8_N5
\mem|mem_reg[10][4]\ : maxv_lcell
-- Equation(s):
-- \mem|do~111\ = (\m_1|outp[3]~5_combout\ & ((\mem|do~110\ & (\mem|mem_reg[14][4]~regout\)) # (!\mem|do~110\ & ((S1_mem_reg[10][4]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|do~110\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[3]~5_combout\,
	datab => \mem|mem_reg[14][4]~regout\,
	datac => \m_2|outp[4]~10\,
	datad => \mem|do~110\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~111\,
	regout => \mem|mem_reg[10][4]~regout\);

-- Location: LC_X8_Y9_N8
\mem|mem_reg[12][4]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[12][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~1_combout\, \m_2|outp[4]~10\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[4]~10\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[12][4]~regout\);

-- Location: LC_X4_Y10_N5
\mem|mem_reg[0][4]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[0][4]~regout\ = DFFEAS((((\m_2|outp[4]~10\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~18_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[4]~10\,
	aclr => GND,
	ena => \mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[0][4]~regout\);

-- Location: LC_X4_Y7_N1
\mem|mem_reg[4][4]\ : maxv_lcell
-- Equation(s):
-- \mem|do~114\ = (\m_1|outp[3]~5_combout\ & (((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~5_combout\ & ((\m_1|outp[2]~1_combout\ & ((S1_mem_reg[4][4]))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[0][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[3]~5_combout\,
	datab => \mem|mem_reg[0][4]~regout\,
	datac => \m_2|outp[4]~10\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~114\,
	regout => \mem|mem_reg[4][4]~regout\);

-- Location: LC_X4_Y7_N9
\mem|mem_reg[8][4]\ : maxv_lcell
-- Equation(s):
-- \mem|do~115\ = (\m_1|outp[3]~5_combout\ & ((\mem|do~114\ & (\mem|mem_reg[12][4]~regout\)) # (!\mem|do~114\ & ((S1_mem_reg[8][4]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|do~114\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[3]~5_combout\,
	datab => \mem|mem_reg[12][4]~regout\,
	datac => \m_2|outp[4]~10\,
	datad => \mem|do~114\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~115\,
	regout => \mem|mem_reg[8][4]~regout\);

-- Location: LC_X7_Y7_N8
\mem|mem_reg[1][4]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[1][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~13_combout\, \m_2|outp[4]~10\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[4]~10\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[1][4]~regout\);

-- Location: LC_X7_Y7_N1
\mem|mem_reg[9][4]\ : maxv_lcell
-- Equation(s):
-- \mem|do~112\ = (\m_1|outp[3]~5_combout\ & (((S1_mem_reg[9][4]) # (\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~5_combout\ & (\mem|mem_reg[1][4]~regout\ & ((!\m_1|outp[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[1][4]~regout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \m_2|outp[4]~10\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~112\,
	regout => \mem|mem_reg[9][4]~regout\);

-- Location: LC_X5_Y10_N8
\mem|mem_reg[13][4]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[13][4]~regout\ = DFFEAS((((\m_2|outp[4]~10\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~20_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[4]~10\,
	aclr => GND,
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[13][4]~regout\);

-- Location: LC_X8_Y7_N3
\mem|mem_reg[5][4]\ : maxv_lcell
-- Equation(s):
-- \mem|do~113\ = (\mem|do~112\ & ((\mem|mem_reg[13][4]~regout\) # ((!\m_1|outp[2]~1_combout\)))) # (!\mem|do~112\ & (((S1_mem_reg[5][4] & \m_1|outp[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|do~112\,
	datab => \mem|mem_reg[13][4]~regout\,
	datac => \m_2|outp[4]~10\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~113\,
	regout => \mem|mem_reg[5][4]~regout\);

-- Location: LC_X8_Y7_N0
\mem|do~116\ : maxv_lcell
-- Equation(s):
-- \mem|do~116_combout\ = (\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\) # ((\mem|do~113\)))) # (!\m_1|outp[0]~7_combout\ & (!\m_1|outp[1]~3_combout\ & (\mem|do~115\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \mem|do~115\,
	datad => \mem|do~113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~116_combout\);

-- Location: LC_X8_Y7_N1
\mem|do~119\ : maxv_lcell
-- Equation(s):
-- \mem|do~119_combout\ = (\m_1|outp[1]~3_combout\ & ((\mem|do~116_combout\ & (\mem|do~118\)) # (!\mem|do~116_combout\ & ((\mem|do~111\))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|do~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~3_combout\,
	datab => \mem|do~118\,
	datac => \mem|do~111\,
	datad => \mem|do~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~119_combout\);

-- Location: LC_X8_Y7_N2
\mem|do[4]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(4) = DFFEAS((((\mem|do~119_combout\))) # (!\memrd~regout\), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memrd~regout\,
	datad => \mem|do~119_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(4));

-- Location: LC_X8_Y7_N7
\ir_1|r_1|dout[4]\ : maxv_lcell
-- Equation(s):
-- \ir_1|r_1|dout\(4) = ((GLOBAL(\irwr~regout\) & ((\mem|do\(4)))) # (!GLOBAL(\irwr~regout\) & (\ir_1|r_1|dout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir_1|r_1|dout\(4),
	datac => \irwr~regout\,
	datad => \mem|do\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ir_1|r_1|dout\(4));

-- Location: LC_X6_Y5_N3
\priorityin[4]\ : maxv_lcell
-- Equation(s):
-- priorityin(4) = DFFEAS((\Equal0~0_combout\ & (((\ir_1|r_1|dout\(4))))) # (!\Equal0~0_combout\ & (priorityin(4) & (\priorityin~14_combout\))), GLOBAL(\clk~combout\), VCC, , \priorityin[1]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => priorityin(4),
	datab => \priorityin~14_combout\,
	datac => \ir_1|r_1|dout\(4),
	datad => \Equal0~0_combout\,
	aclr => GND,
	ena => \priorityin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => priorityin(4));

-- Location: LC_X6_Y5_N2
\p_1|outp~0\ : maxv_lcell
-- Equation(s):
-- \p_1|outp~0_combout\ = (!priorityin(3) & ((priorityin(4)) # ((!priorityin(5) & priorityin(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5510",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => priorityin(3),
	datab => priorityin(5),
	datac => priorityin(6),
	datad => priorityin(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \p_1|outp~0_combout\);

-- Location: LC_X6_Y4_N0
\priorityin~4\ : maxv_lcell
-- Equation(s):
-- \priorityin~4_combout\ = (((!\p_1|outp\(2))) # (!\p_1|outp\(0))) # (!\p_1|outp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_1|outp\(1),
	datab => \p_1|outp\(0),
	datad => \p_1|outp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin~4_combout\);

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(23),
	combout => \input~combout\(23));

-- Location: LC_X7_Y9_N9
\mem|mem_reg[4][7]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[7]~5\ = (dcon(1) & (((\input~combout\(23) & !dcon(0)))))
-- \mem|mem_reg[4][7]~regout\ = DFFEAS(\m_2|outp[7]~5\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dcon(1),
	datac => \input~combout\(23),
	datad => dcon(0),
	aclr => GND,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[7]~5\,
	regout => \mem|mem_reg[4][7]~regout\);

-- Location: LC_X3_Y7_N9
\mem|mem_reg[15][7]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[15][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~23_combout\, \m_2|outp[7]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[7]~5\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[15][7]~regout\);

-- Location: LC_X8_Y9_N5
\mem|mem_reg[12][7]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[12][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~1_combout\, \m_2|outp[7]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[7]~5\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[12][7]~regout\);

-- Location: LC_X5_Y10_N5
\mem|mem_reg[14][7]\ : maxv_lcell
-- Equation(s):
-- \mem|do~62\ = (\m_1|outp[1]~3_combout\ & (((S1_mem_reg[14][7]) # (\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[12][7]~regout\ & ((!\m_1|outp[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[12][7]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[7]~5\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~62\,
	regout => \mem|mem_reg[14][7]~regout\);

-- Location: LC_X5_Y10_N6
\mem|mem_reg[13][7]\ : maxv_lcell
-- Equation(s):
-- \mem|do~63\ = (\m_1|outp[0]~7_combout\ & ((\mem|do~62\ & (\mem|mem_reg[15][7]~regout\)) # (!\mem|do~62\ & ((S1_mem_reg[13][7]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|do~62\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[0]~7_combout\,
	datab => \mem|mem_reg[15][7]~regout\,
	datac => \m_2|outp[7]~5\,
	datad => \mem|do~62\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~63\,
	regout => \mem|mem_reg[13][7]~regout\);

-- Location: LC_X9_Y7_N9
\mem|mem_reg[7][7]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[7][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~15_combout\, \m_2|outp[7]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[7]~5\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[7][7]~regout\);

-- Location: LC_X7_Y9_N0
\mem|mem_reg[6][7]\ : maxv_lcell
-- Equation(s):
-- \mem|do~55\ = (\m_1|outp[1]~3_combout\ & (((S1_mem_reg[6][7]) # (\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[4][7]~regout\ & ((!\m_1|outp[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[4][7]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[7]~5\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~55\,
	regout => \mem|mem_reg[6][7]~regout\);

-- Location: LC_X7_Y8_N4
\mem|mem_reg[5][7]\ : maxv_lcell
-- Equation(s):
-- \mem|do~56\ = (\mem|do~55\ & ((\mem|mem_reg[7][7]~regout\) # ((!\m_1|outp[0]~7_combout\)))) # (!\mem|do~55\ & (((S1_mem_reg[5][7] & \m_1|outp[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[7][7]~regout\,
	datab => \mem|do~55\,
	datac => \m_2|outp[7]~5\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~56\,
	regout => \mem|mem_reg[5][7]~regout\);

-- Location: LC_X5_Y7_N3
\mem|mem_reg[3][7]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[3][7]~regout\ = DFFEAS((((\m_2|outp[7]~5\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~11_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[7]~5\,
	aclr => GND,
	ena => \mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[3][7]~regout\);

-- Location: LC_X6_Y10_N9
\mem|mem_reg[0][7]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[0][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~18_combout\, \m_2|outp[7]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[7]~5\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[0][7]~regout\);

-- Location: LC_X7_Y10_N1
\mem|mem_reg[1][7]\ : maxv_lcell
-- Equation(s):
-- \mem|do~59\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[1][7]) # (\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[0][7]~regout\ & ((!\m_1|outp[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[0][7]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[7]~5\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~59\,
	regout => \mem|mem_reg[1][7]~regout\);

-- Location: LC_X7_Y10_N2
\mem|mem_reg[2][7]\ : maxv_lcell
-- Equation(s):
-- \mem|do~60\ = (\m_1|outp[1]~3_combout\ & ((\mem|do~59\ & (\mem|mem_reg[3][7]~regout\)) # (!\mem|do~59\ & ((S1_mem_reg[2][7]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|do~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[1]~3_combout\,
	datab => \mem|mem_reg[3][7]~regout\,
	datac => \m_2|outp[7]~5\,
	datad => \mem|do~59\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~60\,
	regout => \mem|mem_reg[2][7]~regout\);

-- Location: LC_X6_Y8_N5
\mem|mem_reg[11][7]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[11][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~21_combout\, \m_2|outp[7]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[7]~5\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[11][7]~regout\);

-- Location: LC_X5_Y8_N7
\mem|mem_reg[8][7]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[8][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~5_combout\, \m_2|outp[7]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[7]~5\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[8][7]~regout\);

-- Location: LC_X5_Y8_N0
\mem|mem_reg[9][7]\ : maxv_lcell
-- Equation(s):
-- \mem|do~57\ = (\m_1|outp[1]~3_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & ((\m_1|outp[0]~7_combout\ & ((S1_mem_reg[9][7]))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[8][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[1]~3_combout\,
	datab => \mem|mem_reg[8][7]~regout\,
	datac => \m_2|outp[7]~5\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~57\,
	regout => \mem|mem_reg[9][7]~regout\);

-- Location: LC_X6_Y8_N0
\mem|mem_reg[10][7]\ : maxv_lcell
-- Equation(s):
-- \mem|do~58\ = (\m_1|outp[1]~3_combout\ & ((\mem|do~57\ & (\mem|mem_reg[11][7]~regout\)) # (!\mem|do~57\ & ((S1_mem_reg[10][7]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|do~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[11][7]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[7]~5\,
	datad => \mem|do~57\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~58\,
	regout => \mem|mem_reg[10][7]~regout\);

-- Location: LC_X7_Y8_N1
\mem|do~61\ : maxv_lcell
-- Equation(s):
-- \mem|do~61_combout\ = (\m_1|outp[2]~1_combout\ & (\m_1|outp[3]~5_combout\)) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~5_combout\ & ((\mem|do~58\))) # (!\m_1|outp[3]~5_combout\ & (\mem|do~60\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \mem|do~60\,
	datad => \mem|do~58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~61_combout\);

-- Location: LC_X7_Y8_N2
\mem|do~64\ : maxv_lcell
-- Equation(s):
-- \mem|do~64_combout\ = (\m_1|outp[2]~1_combout\ & ((\mem|do~61_combout\ & (\mem|do~63\)) # (!\mem|do~61_combout\ & ((\mem|do~56\))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|do~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|do~63\,
	datac => \mem|do~56\,
	datad => \mem|do~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~64_combout\);

-- Location: LC_X7_Y8_N3
\mem|do[7]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(7) = DFFEAS((((\mem|do~64_combout\)) # (!\memrd~regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \memrd~regout\,
	datad => \mem|do~64_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(7));

-- Location: LC_X7_Y8_N9
\ir_1|r_1|dout[7]\ : maxv_lcell
-- Equation(s):
-- \ir_1|r_1|dout\(7) = ((GLOBAL(\irwr~regout\) & ((\mem|do\(7)))) # (!GLOBAL(\irwr~regout\) & (\ir_1|r_1|dout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir_1|r_1|dout\(7),
	datac => \irwr~regout\,
	datad => \mem|do\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ir_1|r_1|dout\(7));

-- Location: LC_X6_Y6_N8
\priorityin[7]\ : maxv_lcell
-- Equation(s):
-- priorityin(7) = DFFEAS((\Equal0~0_combout\ & (((\ir_1|r_1|dout\(7))))) # (!\Equal0~0_combout\ & (priorityin(7) & (\priorityin~4_combout\))), GLOBAL(\clk~combout\), VCC, , \priorityin[1]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~0_combout\,
	datab => priorityin(7),
	datac => \priorityin~4_combout\,
	datad => \ir_1|r_1|dout\(7),
	aclr => GND,
	ena => \priorityin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => priorityin(7));

-- Location: LC_X6_Y5_N0
\Equal34~1\ : maxv_lcell
-- Equation(s):
-- \Equal34~1_combout\ = (((!priorityin(5) & !priorityin(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => priorityin(5),
	datad => priorityin(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal34~1_combout\);

-- Location: LC_X6_Y6_N6
\Equal34~2\ : maxv_lcell
-- Equation(s):
-- \Equal34~2_combout\ = (priorityin(7)) # (((priorityin(6)) # (!\Equal34~0_combout\)) # (!\Equal34~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => priorityin(7),
	datab => \Equal34~1_combout\,
	datac => priorityin(6),
	datad => \Equal34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal34~2_combout\);

-- Location: LC_X6_Y6_N4
\p_1|outp[0]\ : maxv_lcell
-- Equation(s):
-- \p_1|outp\(0) = DFFEAS((priorityin(0)) # ((!priorityin(1) & ((priorityin(2)) # (\p_1|outp~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \Equal34~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfce",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => priorityin(2),
	datab => priorityin(0),
	datac => priorityin(1),
	datad => \p_1|outp~0_combout\,
	aclr => GND,
	ena => \Equal34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p_1|outp\(0));

-- Location: LC_X7_Y6_N2
\priorityin~12\ : maxv_lcell
-- Equation(s):
-- \priorityin~12_combout\ = ((\p_1|outp\(2)) # ((!\p_1|outp\(0)) # (!\p_1|outp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \p_1|outp\(2),
	datac => \p_1|outp\(1),
	datad => \p_1|outp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin~12_combout\);

-- Location: LC_X6_Y6_N2
\priorityin[3]\ : maxv_lcell
-- Equation(s):
-- priorityin(3) = DFFEAS((\Equal0~0_combout\ & (\ir_1|r_1|dout\(3))) # (!\Equal0~0_combout\ & (((priorityin(3) & \priorityin~12_combout\)))), GLOBAL(\clk~combout\), VCC, , \priorityin[1]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ir_1|r_1|dout\(3),
	datab => priorityin(3),
	datac => \priorityin~12_combout\,
	datad => \Equal0~0_combout\,
	aclr => GND,
	ena => \priorityin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => priorityin(3));

-- Location: LC_X6_Y6_N3
\p_1|outp~2\ : maxv_lcell
-- Equation(s):
-- \p_1|outp~2_combout\ = (((!priorityin(2) & !priorityin(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => priorityin(2),
	datad => priorityin(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \p_1|outp~2_combout\);

-- Location: LC_X6_Y6_N9
\p_1|outp[1]\ : maxv_lcell
-- Equation(s):
-- \p_1|outp\(1) = DFFEAS((priorityin(0)) # ((priorityin(1)) # ((\p_1|outp~2_combout\ & !\Equal34~1_combout\))), GLOBAL(\clk~combout\), VCC, , \Equal34~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \p_1|outp~2_combout\,
	datab => priorityin(0),
	datac => priorityin(1),
	datad => \Equal34~1_combout\,
	aclr => GND,
	ena => \Equal34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p_1|outp\(1));

-- Location: LC_X6_Y4_N8
\priorityin~10\ : maxv_lcell
-- Equation(s):
-- \priorityin~10_combout\ = (priorityin(2) & (((\p_1|outp\(0)) # (\p_1|outp\(2))) # (!\p_1|outp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_1|outp\(1),
	datab => priorityin(2),
	datac => \p_1|outp\(0),
	datad => \p_1|outp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin~10_combout\);

-- Location: LC_X6_Y4_N1
\priorityin[2]\ : maxv_lcell
-- Equation(s):
-- priorityin(2) = DFFEAS((\dcon~3_combout\ & ((\memwr~10\ & ((\ir_1|r_1|dout\(2)))) # (!\memwr~10\ & (\priorityin~10_combout\)))) # (!\dcon~3_combout\ & (\priorityin~10_combout\)), GLOBAL(\clk~combout\), VCC, , \priorityin[1]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec4c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \dcon~3_combout\,
	datab => \priorityin~10_combout\,
	datac => \memwr~10\,
	datad => \ir_1|r_1|dout\(2),
	aclr => GND,
	ena => \priorityin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => priorityin(2));

-- Location: LC_X6_Y6_N5
\Equal34~0\ : maxv_lcell
-- Equation(s):
-- \Equal34~0_combout\ = (!priorityin(2) & (!priorityin(0) & (!priorityin(1) & !priorityin(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => priorityin(2),
	datab => priorityin(0),
	datac => priorityin(1),
	datad => priorityin(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal34~0_combout\);

-- Location: LC_X6_Y6_N1
\p_1|outp[2]\ : maxv_lcell
-- Equation(s):
-- \p_1|outp\(2) = DFFEAS((((!\Equal34~0_combout\))), GLOBAL(\clk~combout\), VCC, , \Equal34~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Equal34~0_combout\,
	aclr => GND,
	ena => \Equal34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p_1|outp\(2));

-- Location: LC_X7_Y6_N3
\m_8|outp[2]~0\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[2]~0_combout\ = (((\p_1|outp\(2)) # (!alusrcb(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \p_1|outp\(2),
	datad => alusrcb(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[2]~0_combout\);

-- Location: LC_X7_Y6_N4
\m_8|outp[2]~1\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[2]~1_combout\ = (alusrcb(2) & ((alusrcb(1) & ((\m_8|outp[2]~0_combout\))) # (!alusrcb(1) & (\ir_1|r_1|dout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a820",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrcb(2),
	datab => alusrcb(1),
	datac => \ir_1|r_1|dout\(2),
	datad => \m_8|outp[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[2]~1_combout\);

-- Location: LC_X8_Y6_N2
\alusrca[0]\ : maxv_lcell
-- Equation(s):
-- alusrca(0) = DFFEAS((state(2) & (((state(0)) # (!state(1))) # (!state(3)))) # (!state(2) & (state(3))), GLOBAL(\clk~combout\), VCC, , \alusrca[1]~5_combout\, state(1), , , state(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee6e",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(2),
	datab => state(3),
	datac => state(1),
	datad => state(0),
	aclr => GND,
	sload => state(4),
	ena => \alusrca[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => alusrca(0));

-- Location: LC_X5_Y6_N7
\alusrca[1]\ : maxv_lcell
-- Equation(s):
-- alusrca(1) = DFFEAS((!state(2) & (state(1) & ((state(0))))), GLOBAL(\clk~combout\), VCC, , \alusrca[1]~5_combout\, \~GND~combout\, , state(4), state(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(2),
	datab => state(1),
	datac => \~GND~combout\,
	datad => state(0),
	aclr => GND,
	sclr => state(4),
	sload => state(3),
	ena => \alusrca[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => alusrca(1));

-- Location: LC_X5_Y6_N5
\alu_1|temp_out[2]~111\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[2]~111_combout\ = (!alusrca(0) & ((alusrca(1) & ((\ir_1|r_1|dout\(2)))) # (!alusrca(1) & (\pc|dout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(0),
	datab => alusrca(1),
	datac => \pc|dout\(2),
	datad => \ir_1|r_1|dout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[2]~111_combout\);

-- Location: LC_X8_Y6_N5
\m_7|outp[0]~2\ : maxv_lcell
-- Equation(s):
-- \m_7|outp[0]~2_combout\ = (!alusrca(0) & ((alusrca(1) & (\ir_1|r_1|dout\(0))) # (!alusrca(1) & ((\pc|dout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5140",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(0),
	datab => alusrca(1),
	datac => \ir_1|r_1|dout\(0),
	datad => \pc|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp[0]~2_combout\);

-- Location: LC_X12_Y6_N2
\m_7|outp[1]~3\ : maxv_lcell
-- Equation(s):
-- \m_7|outp[1]~3_combout\ = (!alusrca(0) & ((alusrca(1) & (\ir_1|r_1|dout\(1))) # (!alusrca(1) & ((\pc|dout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(1),
	datab => alusrca(1),
	datac => alusrca(0),
	datad => \pc|dout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp[1]~3_combout\);

-- Location: LC_X12_Y6_N3
\alu_1|opr2|s2|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s2|bout~combout\ = (\m_8|outp[1]~5_combout\ & (((\m_8|outp[0]~6_combout\ & !\m_7|outp[0]~2_combout\)) # (!\m_7|outp[1]~3_combout\))) # (!\m_8|outp[1]~5_combout\ & (\m_8|outp[0]~6_combout\ & (!\m_7|outp[0]~2_combout\ & 
-- !\m_7|outp[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08ae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[1]~5_combout\,
	datab => \m_8|outp[0]~6_combout\,
	datac => \m_7|outp[0]~2_combout\,
	datad => \m_7|outp[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s2|bout~combout\);

-- Location: LC_X10_Y7_N0
\aluop[0]\ : maxv_lcell
-- Equation(s):
-- aluop(0) = DFFEAS((((state(2) & !state(1)))), GLOBAL(\clk~combout\), VCC, , \aluop[1]~1_combout\, , , state(4), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => state(2),
	datad => state(1),
	aclr => GND,
	sclr => state(4),
	ena => \aluop[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => aluop(0));

-- Location: LC_X5_Y6_N9
\m_7|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \m_7|Equal1~0_combout\ = (((alusrca(1) & alusrca(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => alusrca(1),
	datad => alusrca(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|Equal1~0_combout\);

-- Location: LC_X8_Y6_N7
\m_8|outp[0]~3\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[0]~3_combout\ = (((alusrcb(2) & \p_1|outp\(0))) # (!alusrcb(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrcb(0),
	datac => alusrcb(2),
	datad => \p_1|outp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[0]~3_combout\);

-- Location: LC_X8_Y6_N6
\alu_1|temp_out[0]~76\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[0]~76_combout\ = ((alusrcb(1) & ((!\m_8|outp[0]~3_combout\))) # (!alusrcb(1) & (!\m_8|outp[0]~2_combout\))) # (!\m_7|outp[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1dff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[0]~2_combout\,
	datab => alusrcb(1),
	datac => \m_8|outp[0]~3_combout\,
	datad => \m_7|outp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[0]~76_combout\);

-- Location: LC_X9_Y6_N1
\m_7|outp~1\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~1_combout\ = (alusrca(1) & ((alusrca(0) & ((\pc|dout\(1)))) # (!alusrca(0) & (\ir_1|r_1|dout\(1))))) # (!alusrca(1) & (((!alusrca(0) & \pc|dout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cb08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(1),
	datab => alusrca(1),
	datac => alusrca(0),
	datad => \pc|dout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~1_combout\);

-- Location: LC_X9_Y6_N2
\alu_1|opr1|a2|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a2|cout~0_combout\ = (\m_8|outp[1]~5_combout\ & (((!\m_7|Equal1~0_combout\ & \m_7|outp~1_combout\)) # (!\alu_1|temp_out[0]~76_combout\))) # (!\m_8|outp[1]~5_combout\ & (!\m_7|Equal1~0_combout\ & (!\alu_1|temp_out[0]~76_combout\ & 
-- \m_7|outp~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4d0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|Equal1~0_combout\,
	datab => \m_8|outp[1]~5_combout\,
	datac => \alu_1|temp_out[0]~76_combout\,
	datad => \m_7|outp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a2|cout~0_combout\);

-- Location: LC_X13_Y6_N7
\alu_1|temp_out[2]~77\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[2]~77_combout\ = (aluop(1) & (((aluop(0))))) # (!aluop(1) & ((aluop(0) & (\alu_1|opr2|s2|bout~combout\)) # (!aluop(0) & ((\alu_1|opr1|a2|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => \alu_1|opr2|s2|bout~combout\,
	datac => aluop(0),
	datad => \alu_1|opr1|a2|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[2]~77_combout\);

-- Location: LC_X13_Y6_N8
\alu_1|temp_out[2]~78\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[2]~78_combout\ = (aluop(1) & (!\alu_1|temp_out[2]~77_combout\ & ((!\alu_1|temp_out[2]~111_combout\) # (!\m_8|outp[2]~1_combout\)))) # (!aluop(1) & (\m_8|outp[2]~1_combout\ $ (\alu_1|temp_out[2]~111_combout\ $ 
-- (\alu_1|temp_out[2]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "413e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => \m_8|outp[2]~1_combout\,
	datac => \alu_1|temp_out[2]~111_combout\,
	datad => \alu_1|temp_out[2]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[2]~78_combout\);

-- Location: LC_X8_Y4_N3
\alud~0\ : maxv_lcell
-- Equation(s):
-- \alud~0_combout\ = ((state(2)) # (state(0) $ (!state(1)))) # (!state(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fddf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(2),
	datac => state(0),
	datad => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alud~0_combout\);

-- Location: LC_X8_Y4_N5
\alud~1\ : maxv_lcell
-- Equation(s):
-- \alud~1_combout\ = (\alud~0_combout\ & (((state(0)) # (!\memwr~11_combout\)))) # (!\alud~0_combout\ & (state(4) & ((state(0)) # (!\memwr~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alud~0_combout\,
	datab => state(4),
	datac => state(0),
	datad => \memwr~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alud~1_combout\);

-- Location: LC_X12_Y3_N5
alud : maxv_lcell
-- Equation(s):
-- \alud~regout\ = DFFEAS((\Equal0~0_combout\) # ((\alud~regout\ & ((\Equal0~1_combout\) # (\alud~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \alud~regout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \alud~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alud~regout\);

-- Location: LC_X10_Y5_N2
\t1|dout[15]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(15) = ((GLOBAL(\alu_en~combout\) & ((\alu_1|temp_out[15]~89_combout\))) # (!GLOBAL(\alu_en~combout\) & (\t1|dout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_en~combout\,
	datac => \t1|dout\(15),
	datad => \alu_1|temp_out[15]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(15));

-- Location: LC_X10_Y5_N3
\m_9|outp[15]~15\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[15]~15_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(15)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[15]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_1|temp_out[15]~89_combout\,
	datac => \pcsrc~regout\,
	datad => \t1|dout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[15]~15_combout\);

-- Location: LC_X10_Y5_N4
\pc|dout[15]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(15) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[15]~15_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(15),
	datac => \pcwr~regout\,
	datad => \m_9|outp[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(15));

-- Location: LC_X11_Y4_N2
\m_7|outp~18\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~18_combout\ = ((\pc|dout\(15) & (alusrca(1) $ (!alusrca(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrca(1),
	datac => \pc|dout\(15),
	datad => alusrca(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~18_combout\);

-- Location: LC_X10_Y7_N8
\alu_1|temp_out[14]~110\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[14]~110_combout\ = (alusrca(1)) # ((alusrca(0)) # ((!\m_8|outp[6]~10_combout\) # (!\pc|dout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(1),
	datab => alusrca(0),
	datac => \pc|dout\(14),
	datad => \m_8|outp[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[14]~110_combout\);

-- Location: LC_X8_Y10_N0
\m_8|outp[6]~9\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[6]~9_combout\ = (\ir_1|r_1|dout\(5) & (((!alusrcb(1) & alusrcb(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(5),
	datac => alusrcb(1),
	datad => alusrcb(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[6]~9_combout\);

-- Location: LC_X10_Y7_N9
\alu_1|opr2|s15|xor_i~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s15|xor_i~0_combout\ = (\m_7|outp~15_combout\ & (\m_7|Equal1~0_combout\ $ (((alusrcb(0)) # (!\m_8|outp[6]~9_combout\))))) # (!\m_7|outp~15_combout\ & (((!alusrcb(0) & \m_8|outp[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2d22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp~15_combout\,
	datab => \m_7|Equal1~0_combout\,
	datac => alusrcb(0),
	datad => \m_8|outp[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s15|xor_i~0_combout\);

-- Location: LC_X11_Y4_N8
\alu_1|temp_out[13]~121\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[13]~121_combout\ = ((!alusrca(0) & (\pc|dout\(13) & !alusrca(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrca(0),
	datac => \pc|dout\(13),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[13]~121_combout\);

-- Location: LC_X11_Y4_N5
\alu_1|temp_out[12]~122\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[12]~122_combout\ = ((!alusrca(0) & (\pc|dout\(12) & !alusrca(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrca(0),
	datac => \pc|dout\(12),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[12]~122_combout\);

-- Location: LC_X11_Y4_N0
\alu_1|temp_out[11]~113\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[11]~113_combout\ = ((!alusrca(1) & (\pc|dout\(11) & !alusrca(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrca(1),
	datac => \pc|dout\(11),
	datad => alusrca(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[11]~113_combout\);

-- Location: LC_X12_Y5_N6
\alu_1|temp_out[10]~119\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[10]~119_combout\ = ((\pc|dout\(10) & (!alusrca(0) & !alusrca(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(10),
	datac => alusrca(0),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[10]~119_combout\);

-- Location: LC_X12_Y5_N3
\alu_1|temp_out[8]~114\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[8]~114_combout\ = (\pc|dout\(8) & (((!alusrca(0) & !alusrca(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(8),
	datac => alusrca(0),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[8]~114_combout\);

-- Location: LC_X14_Y5_N9
\alu_1|temp_out[7]~117\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[7]~117_combout\ = (alusrca(0)) # (((alusrca(1)) # (!\m_8|outp[6]~10_combout\)) # (!\pc|dout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(0),
	datab => \pc|dout\(7),
	datac => alusrca(1),
	datad => \m_8|outp[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[7]~117_combout\);

-- Location: LC_X14_Y5_N1
\alu_1|opr2|s8|xor_i~4\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s8|xor_i~4_combout\ = \m_8|outp[6]~10_combout\ $ (((!alusrca(0) & (\pc|dout\(7) & !alusrca(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(0),
	datab => \pc|dout\(7),
	datac => alusrca(1),
	datad => \m_8|outp[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s8|xor_i~4_combout\);

-- Location: LC_X14_Y6_N9
\alu_1|temp_out[6]~118\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[6]~118_combout\ = ((\pc|dout\(6) & (!alusrca(1) & !alusrca(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(6),
	datac => alusrca(1),
	datad => alusrca(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[6]~118_combout\);

-- Location: LC_X9_Y10_N5
\alu_1|temp_out[5]~115\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[5]~115_combout\ = (!alusrca(0) & ((alusrca(1) & (\ir_1|r_1|dout\(5))) # (!alusrca(1) & ((\pc|dout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5140",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(0),
	datab => alusrca(1),
	datac => \ir_1|r_1|dout\(5),
	datad => \pc|dout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[5]~115_combout\);

-- Location: LC_X8_Y7_N5
\m_8|outp[4]~8\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[4]~8_combout\ = ((\ir_1|r_1|dout\(4) & (alusrcb(2) & !alusrcb(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir_1|r_1|dout\(4),
	datac => alusrcb(2),
	datad => alusrcb(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[4]~8_combout\);

-- Location: LC_X13_Y7_N2
\alu_1|temp_out[4]~116\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[4]~116_combout\ = (!alusrca(0) & ((alusrca(1) & ((\ir_1|r_1|dout\(4)))) # (!alusrca(1) & (\pc|dout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(4),
	datab => alusrca(1),
	datac => alusrca(0),
	datad => \ir_1|r_1|dout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[4]~116_combout\);

-- Location: LC_X7_Y6_N8
\m_8|outp[3]~7\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[3]~7_combout\ = ((!alusrcb(1) & (alusrcb(2) & \ir_1|r_1|dout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrcb(1),
	datac => alusrcb(2),
	datad => \ir_1|r_1|dout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[3]~7_combout\);

-- Location: LC_X9_Y6_N9
\m_7|outp~4\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~4_combout\ = (alusrca(0) & (((alusrca(1) & \pc|dout\(3))))) # (!alusrca(0) & ((alusrca(1) & (\ir_1|r_1|dout\(3))) # (!alusrca(1) & ((\pc|dout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(3),
	datab => alusrca(0),
	datac => alusrca(1),
	datad => \pc|dout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~4_combout\);

-- Location: LC_X5_Y6_N6
\m_7|outp~0\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~0_combout\ = (alusrca(1) & ((alusrca(0) & ((\pc|dout\(2)))) # (!alusrca(0) & (\ir_1|r_1|dout\(2))))) # (!alusrca(1) & (((\pc|dout\(2) & !alusrca(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(1),
	datab => \ir_1|r_1|dout\(2),
	datac => \pc|dout\(2),
	datad => alusrca(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~0_combout\);

-- Location: LC_X9_Y6_N3
\alu_1|opr1|a3|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a3|cout~0_combout\ = (\m_8|outp[2]~1_combout\ & ((\alu_1|opr1|a2|cout~0_combout\) # ((\m_7|outp~0_combout\ & !\m_7|Equal1~0_combout\)))) # (!\m_8|outp[2]~1_combout\ & (\m_7|outp~0_combout\ & (!\m_7|Equal1~0_combout\ & 
-- \alu_1|opr1|a2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[2]~1_combout\,
	datab => \m_7|outp~0_combout\,
	datac => \m_7|Equal1~0_combout\,
	datad => \alu_1|opr1|a2|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a3|cout~0_combout\);

-- Location: LC_X9_Y6_N4
\alu_1|opr1|a4|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a4|cout~0_combout\ = (\m_8|outp[3]~7_combout\ & ((\alu_1|opr1|a3|cout~0_combout\) # ((\m_7|outp~4_combout\ & !\m_7|Equal1~0_combout\)))) # (!\m_8|outp[3]~7_combout\ & (\m_7|outp~4_combout\ & (!\m_7|Equal1~0_combout\ & 
-- \alu_1|opr1|a3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[3]~7_combout\,
	datab => \m_7|outp~4_combout\,
	datac => \m_7|Equal1~0_combout\,
	datad => \alu_1|opr1|a3|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a4|cout~0_combout\);

-- Location: LC_X12_Y6_N4
\alu_1|opr2|s3|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s3|bout~combout\ = (\m_8|outp[2]~1_combout\ & (((\m_7|Equal1~0_combout\) # (\alu_1|opr2|s2|bout~combout\)) # (!\m_7|outp~0_combout\))) # (!\m_8|outp[2]~1_combout\ & (\alu_1|opr2|s2|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdc4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp~0_combout\,
	datab => \m_8|outp[2]~1_combout\,
	datac => \m_7|Equal1~0_combout\,
	datad => \alu_1|opr2|s2|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s3|bout~combout\);

-- Location: LC_X12_Y6_N5
\alu_1|opr2|s4|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s4|bout~combout\ = (\m_8|outp[3]~7_combout\ & ((\m_7|Equal1~0_combout\) # ((\alu_1|opr2|s3|bout~combout\) # (!\m_7|outp~4_combout\)))) # (!\m_8|outp[3]~7_combout\ & (\alu_1|opr2|s3|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[3]~7_combout\,
	datab => \m_7|Equal1~0_combout\,
	datac => \m_7|outp~4_combout\,
	datad => \alu_1|opr2|s3|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s4|bout~combout\);

-- Location: LC_X13_Y6_N5
\alu_1|temp_out[4]~96\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[4]~96_combout\ = (aluop(1) & (aluop(0))) # (!aluop(1) & ((aluop(0) & ((\alu_1|opr2|s4|bout~combout\))) # (!aluop(0) & (\alu_1|opr1|a4|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => aluop(0),
	datac => \alu_1|opr1|a4|cout~0_combout\,
	datad => \alu_1|opr2|s4|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[4]~96_combout\);

-- Location: LC_X13_Y6_N6
\alu_1|temp_out[4]~97\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[4]~97_combout\ = (aluop(1) & (!\alu_1|temp_out[4]~96_combout\ & ((!\alu_1|temp_out[4]~116_combout\) # (!\m_8|outp[4]~8_combout\)))) # (!aluop(1) & (\m_8|outp[4]~8_combout\ $ (\alu_1|temp_out[4]~116_combout\ $ 
-- (\alu_1|temp_out[4]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "413e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => \m_8|outp[4]~8_combout\,
	datac => \alu_1|temp_out[4]~116_combout\,
	datad => \alu_1|temp_out[4]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[4]~97_combout\);

-- Location: LC_X13_Y7_N4
\t1|dout[4]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(4) = (GLOBAL(\alu_en~combout\) & (((\alu_1|temp_out[4]~97_combout\)))) # (!GLOBAL(\alu_en~combout\) & (\t1|dout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|dout\(4),
	datab => \alu_en~combout\,
	datac => \alu_1|temp_out[4]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(4));

-- Location: LC_X13_Y7_N5
\m_9|outp[4]~13\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[4]~13_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(4)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[4]~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pcsrc~regout\,
	datac => \alu_1|temp_out[4]~97_combout\,
	datad => \t1|dout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[4]~13_combout\);

-- Location: LC_X13_Y7_N6
\pc|dout[4]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(4) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[4]~13_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(4),
	datac => \pcwr~regout\,
	datad => \m_9|outp[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(4));

-- Location: LC_X9_Y7_N5
\m_7|outp~14\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~14_combout\ = (alusrca(0) & (\pc|dout\(4) & ((alusrca(1))))) # (!alusrca(0) & ((alusrca(1) & ((\ir_1|r_1|dout\(4)))) # (!alusrca(1) & (\pc|dout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(4),
	datab => \ir_1|r_1|dout\(4),
	datac => alusrca(0),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~14_combout\);

-- Location: LC_X12_Y6_N6
\alu_1|opr2|s5|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s5|bout~combout\ = (\m_8|outp[4]~8_combout\ & (((\m_7|Equal1~0_combout\) # (\alu_1|opr2|s4|bout~combout\)) # (!\m_7|outp~14_combout\))) # (!\m_8|outp[4]~8_combout\ & (\alu_1|opr2|s4|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdc4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp~14_combout\,
	datab => \m_8|outp[4]~8_combout\,
	datac => \m_7|Equal1~0_combout\,
	datad => \alu_1|opr2|s4|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s5|bout~combout\);

-- Location: LC_X10_Y6_N0
\alu_1|opr1|a5|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a5|cout~0_combout\ = (\m_8|outp[4]~8_combout\ & ((\alu_1|opr1|a4|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~14_combout\)))) # (!\m_8|outp[4]~8_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~14_combout\ & 
-- \alu_1|opr1|a4|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|Equal1~0_combout\,
	datab => \m_7|outp~14_combout\,
	datac => \m_8|outp[4]~8_combout\,
	datad => \alu_1|opr1|a4|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a5|cout~0_combout\);

-- Location: LC_X12_Y6_N9
\alu_1|temp_out[5]~94\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[5]~94_combout\ = (aluop(0) & ((aluop(1)) # ((\alu_1|opr2|s5|bout~combout\)))) # (!aluop(0) & (!aluop(1) & ((\alu_1|opr1|a5|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(0),
	datab => aluop(1),
	datac => \alu_1|opr2|s5|bout~combout\,
	datad => \alu_1|opr1|a5|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[5]~94_combout\);

-- Location: LC_X12_Y6_N0
\alu_1|temp_out[5]~95\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[5]~95_combout\ = (aluop(1) & (!\alu_1|temp_out[5]~94_combout\ & ((!\alu_1|temp_out[5]~115_combout\) # (!\m_8|outp[6]~9_combout\)))) # (!aluop(1) & (\m_8|outp[6]~9_combout\ $ (\alu_1|temp_out[5]~115_combout\ $ 
-- (\alu_1|temp_out[5]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "215e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[6]~9_combout\,
	datab => aluop(1),
	datac => \alu_1|temp_out[5]~115_combout\,
	datad => \alu_1|temp_out[5]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[5]~95_combout\);

-- Location: LC_X13_Y7_N7
\t1|dout[5]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(5) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[5]~95_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_1|temp_out[5]~95_combout\,
	datac => \t1|dout\(5),
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(5));

-- Location: LC_X13_Y7_N8
\m_9|outp[5]~12\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[5]~12_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(5)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[5]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pcsrc~regout\,
	datac => \alu_1|temp_out[5]~95_combout\,
	datad => \t1|dout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[5]~12_combout\);

-- Location: LC_X13_Y7_N9
\pc|dout[5]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(5) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[5]~12_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(5),
	datac => \pcwr~regout\,
	datad => \m_9|outp[5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(5));

-- Location: LC_X9_Y10_N0
\m_7|outp~13\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~13_combout\ = (alusrca(1) & ((alusrca(0) & ((\pc|dout\(5)))) # (!alusrca(0) & (\ir_1|r_1|dout\(5))))) # (!alusrca(1) & (!alusrca(0) & ((\pc|dout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b920",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(1),
	datab => alusrca(0),
	datac => \ir_1|r_1|dout\(5),
	datad => \pc|dout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~13_combout\);

-- Location: LC_X10_Y6_N1
\alu_1|opr1|a6|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a6|cout~0_combout\ = (\m_8|outp[6]~9_combout\ & ((\alu_1|opr1|a5|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~13_combout\)))) # (!\m_8|outp[6]~9_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~13_combout\ & 
-- \alu_1|opr1|a5|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|Equal1~0_combout\,
	datab => \m_7|outp~13_combout\,
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|opr1|a5|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a6|cout~0_combout\);

-- Location: LC_X12_Y6_N7
\alu_1|opr2|s6|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s6|bout~combout\ = (\m_8|outp[6]~9_combout\ & ((\m_7|Equal1~0_combout\) # ((\alu_1|opr2|s5|bout~combout\) # (!\m_7|outp~13_combout\)))) # (!\m_8|outp[6]~9_combout\ & (\alu_1|opr2|s5|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[6]~9_combout\,
	datab => \m_7|Equal1~0_combout\,
	datac => \m_7|outp~13_combout\,
	datad => \alu_1|opr2|s5|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s6|bout~combout\);

-- Location: LC_X13_Y6_N3
\alu_1|temp_out[6]~100\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[6]~100_combout\ = (aluop(1) & (aluop(0))) # (!aluop(1) & ((aluop(0) & ((\alu_1|opr2|s6|bout~combout\))) # (!aluop(0) & (\alu_1|opr1|a6|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => aluop(0),
	datac => \alu_1|opr1|a6|cout~0_combout\,
	datad => \alu_1|opr2|s6|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[6]~100_combout\);

-- Location: LC_X13_Y6_N0
\alu_1|temp_out[6]~101\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[6]~101_combout\ = (aluop(1) & (!\alu_1|temp_out[6]~100_combout\ & ((!\alu_1|temp_out[6]~118_combout\) # (!\m_8|outp[6]~10_combout\)))) # (!aluop(1) & (\m_8|outp[6]~10_combout\ $ (\alu_1|temp_out[6]~118_combout\ $ 
-- (\alu_1|temp_out[6]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "413e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => \m_8|outp[6]~10_combout\,
	datac => \alu_1|temp_out[6]~118_combout\,
	datad => \alu_1|temp_out[6]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[6]~101_combout\);

-- Location: LC_X14_Y6_N0
\t1|dout[6]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(6) = (GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[6]~101_combout\)) # (!GLOBAL(\alu_en~combout\) & (((\t1|dout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[6]~101_combout\,
	datab => \alu_en~combout\,
	datac => \t1|dout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(6));

-- Location: LC_X14_Y6_N1
\m_9|outp[6]~11\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[6]~11_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(6)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[6]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[6]~101_combout\,
	datac => \pcsrc~regout\,
	datad => \t1|dout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[6]~11_combout\);

-- Location: LC_X14_Y6_N2
\pc|dout[6]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(6) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[6]~11_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(6),
	datac => \pcwr~regout\,
	datad => \m_9|outp[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(6));

-- Location: LC_X14_Y6_N7
\m_7|outp~12\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~12_combout\ = ((\pc|dout\(6) & (alusrca(1) $ (!alusrca(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(6),
	datac => alusrca(1),
	datad => alusrca(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~12_combout\);

-- Location: LC_X10_Y6_N2
\alu_1|opr1|a7|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a7|cout~0_combout\ = (\m_8|outp[6]~10_combout\ & ((\alu_1|opr1|a6|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~12_combout\)))) # (!\m_8|outp[6]~10_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~12_combout\ & 
-- \alu_1|opr1|a6|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|Equal1~0_combout\,
	datab => \m_8|outp[6]~10_combout\,
	datac => \m_7|outp~12_combout\,
	datad => \alu_1|opr1|a6|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a7|cout~0_combout\);

-- Location: LC_X13_Y5_N8
\alu_1|opr2|s7|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s7|bout~combout\ = (\m_8|outp[6]~10_combout\ & ((\m_7|Equal1~0_combout\) # ((\alu_1|opr2|s6|bout~combout\) # (!\m_7|outp~12_combout\)))) # (!\m_8|outp[6]~10_combout\ & (\alu_1|opr2|s6|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[6]~10_combout\,
	datab => \m_7|Equal1~0_combout\,
	datac => \m_7|outp~12_combout\,
	datad => \alu_1|opr2|s6|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s7|bout~combout\);

-- Location: LC_X13_Y5_N1
\alu_1|temp_out[7]~98\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[7]~98_combout\ = \alu_1|opr2|s8|xor_i~4_combout\ $ (((aluop(0) & ((\alu_1|opr2|s7|bout~combout\))) # (!aluop(0) & (\alu_1|opr1|a7|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "569a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr2|s8|xor_i~4_combout\,
	datab => aluop(0),
	datac => \alu_1|opr1|a7|cout~0_combout\,
	datad => \alu_1|opr2|s7|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[7]~98_combout\);

-- Location: LC_X13_Y5_N2
\alu_1|temp_out[7]~99\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[7]~99_combout\ = (aluop(1) & (!aluop(0) & (\alu_1|temp_out[7]~117_combout\))) # (!aluop(1) & (((\alu_1|temp_out[7]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7520",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => aluop(0),
	datac => \alu_1|temp_out[7]~117_combout\,
	datad => \alu_1|temp_out[7]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[7]~99_combout\);

-- Location: LC_X14_Y6_N3
\t1|dout[7]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(7) = ((GLOBAL(\alu_en~combout\) & ((\alu_1|temp_out[7]~99_combout\))) # (!GLOBAL(\alu_en~combout\) & (\t1|dout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|dout\(7),
	datab => \alu_1|temp_out[7]~99_combout\,
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(7));

-- Location: LC_X14_Y6_N4
\m_9|outp[7]~10\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[7]~10_combout\ = (\pcsrc~regout\ & (((\t1|dout\(7))))) # (!\pcsrc~regout\ & (\alu_1|temp_out[7]~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pcsrc~regout\,
	datab => \alu_1|temp_out[7]~99_combout\,
	datad => \t1|dout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[7]~10_combout\);

-- Location: LC_X14_Y6_N5
\pc|dout[7]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(7) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[7]~10_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(7),
	datac => \pcwr~regout\,
	datad => \m_9|outp[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(7));

-- Location: LC_X14_Y6_N6
\m_7|outp~11\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~11_combout\ = ((\pc|dout\(7) & (alusrca(1) $ (!alusrca(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(1),
	datac => alusrca(0),
	datad => \pc|dout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~11_combout\);

-- Location: LC_X10_Y6_N3
\alu_1|opr1|a8|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a8|cout~0_combout\ = (\m_8|outp[6]~10_combout\ & ((\alu_1|opr1|a7|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~11_combout\)))) # (!\m_8|outp[6]~10_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~11_combout\ & 
-- \alu_1|opr1|a7|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|Equal1~0_combout\,
	datab => \m_7|outp~11_combout\,
	datac => \m_8|outp[6]~10_combout\,
	datad => \alu_1|opr1|a7|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a8|cout~0_combout\);

-- Location: LC_X12_Y6_N1
\alu_1|opr2|s8|bout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s8|bout~0_combout\ = (!alusrca(1) & ((\pc|dout\(7) & ((\pc|dout\(6)) # (!\m_8|outp[6]~10_combout\))) # (!\pc|dout\(7) & (\pc|dout\(6) & !\m_8|outp[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "008e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(7),
	datab => \pc|dout\(6),
	datac => \m_8|outp[6]~10_combout\,
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s8|bout~0_combout\);

-- Location: LC_X12_Y6_N8
\alu_1|opr2|s8|bout~1\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s8|bout~1_combout\ = (\m_8|outp[6]~10_combout\ & (((alusrca(0)) # (\alu_1|opr2|s6|bout~combout\)) # (!\alu_1|opr2|s8|bout~0_combout\))) # (!\m_8|outp[6]~10_combout\ & (\alu_1|opr2|s6|bout~combout\ & ((alusrca(0)) # 
-- (!\alu_1|opr2|s8|bout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fba2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[6]~10_combout\,
	datab => \alu_1|opr2|s8|bout~0_combout\,
	datac => alusrca(0),
	datad => \alu_1|opr2|s6|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s8|bout~1_combout\);

-- Location: LC_X13_Y5_N3
\alu_1|temp_out[8]~92\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[8]~92_combout\ = (aluop(1) & (aluop(0))) # (!aluop(1) & ((aluop(0) & ((\alu_1|opr2|s8|bout~1_combout\))) # (!aluop(0) & (\alu_1|opr1|a8|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => aluop(0),
	datac => \alu_1|opr1|a8|cout~0_combout\,
	datad => \alu_1|opr2|s8|bout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[8]~92_combout\);

-- Location: LC_X13_Y5_N4
\alu_1|temp_out[8]~93\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[8]~93_combout\ = (aluop(1) & (!\alu_1|temp_out[8]~92_combout\ & ((!\m_8|outp[6]~10_combout\) # (!\alu_1|temp_out[8]~114_combout\)))) # (!aluop(1) & (\alu_1|temp_out[8]~114_combout\ $ (\m_8|outp[6]~10_combout\ $ 
-- (\alu_1|temp_out[8]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0976",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[8]~114_combout\,
	datab => \m_8|outp[6]~10_combout\,
	datac => aluop(1),
	datad => \alu_1|temp_out[8]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[8]~93_combout\);

-- Location: LC_X13_Y5_N5
\t1|dout[8]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(8) = (GLOBAL(\alu_en~combout\) & (((\alu_1|temp_out[8]~93_combout\)))) # (!GLOBAL(\alu_en~combout\) & (\t1|dout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|dout\(8),
	datab => \alu_en~combout\,
	datac => \alu_1|temp_out[8]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(8));

-- Location: LC_X13_Y5_N6
\m_9|outp[8]~9\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[8]~9_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(8)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[8]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pcsrc~regout\,
	datac => \alu_1|temp_out[8]~93_combout\,
	datad => \t1|dout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[8]~9_combout\);

-- Location: LC_X13_Y5_N7
\pc|dout[8]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(8) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[8]~9_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(8),
	datac => \pcwr~regout\,
	datad => \m_9|outp[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(8));

-- Location: LC_X14_Y5_N2
\alu_1|temp_out[9]~120\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[9]~120_combout\ = (alusrca(0)) # (((alusrca(1)) # (!\m_8|outp[6]~10_combout\)) # (!\pc|dout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(0),
	datab => \pc|dout\(9),
	datac => alusrca(1),
	datad => \m_8|outp[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[9]~120_combout\);

-- Location: LC_X14_Y5_N8
\alu_1|opr2|s10|xor_i~4\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s10|xor_i~4_combout\ = \m_8|outp[6]~10_combout\ $ (((!alusrca(0) & (\pc|dout\(9) & !alusrca(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(0),
	datab => \pc|dout\(9),
	datac => alusrca(1),
	datad => \m_8|outp[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s10|xor_i~4_combout\);

-- Location: LC_X12_Y5_N5
\m_7|outp~10\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~10_combout\ = (\pc|dout\(8) & ((alusrca(0) $ (!alusrca(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a00a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(8),
	datac => alusrca(0),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~10_combout\);

-- Location: LC_X10_Y6_N4
\alu_1|opr1|a9|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a9|cout~0_combout\ = (\m_8|outp[6]~10_combout\ & ((\alu_1|opr1|a8|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~10_combout\)))) # (!\m_8|outp[6]~10_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~10_combout\ & 
-- \alu_1|opr1|a8|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|Equal1~0_combout\,
	datab => \m_8|outp[6]~10_combout\,
	datac => \m_7|outp~10_combout\,
	datad => \alu_1|opr1|a8|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a9|cout~0_combout\);

-- Location: LC_X13_Y5_N0
\alu_1|opr2|s9|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s9|bout~combout\ = (\m_8|outp[6]~10_combout\ & ((\m_7|Equal1~0_combout\) # ((\alu_1|opr2|s8|bout~1_combout\) # (!\m_7|outp~10_combout\)))) # (!\m_8|outp[6]~10_combout\ & (\alu_1|opr2|s8|bout~1_combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[6]~10_combout\,
	datab => \m_7|Equal1~0_combout\,
	datac => \m_7|outp~10_combout\,
	datad => \alu_1|opr2|s8|bout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s9|bout~combout\);

-- Location: LC_X14_Y5_N3
\alu_1|temp_out[9]~104\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[9]~104_combout\ = \alu_1|opr2|s10|xor_i~4_combout\ $ (((aluop(0) & ((\alu_1|opr2|s9|bout~combout\))) # (!aluop(0) & (\alu_1|opr1|a9|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "56a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr2|s10|xor_i~4_combout\,
	datab => \alu_1|opr1|a9|cout~0_combout\,
	datac => aluop(0),
	datad => \alu_1|opr2|s9|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[9]~104_combout\);

-- Location: LC_X14_Y5_N4
\alu_1|temp_out[9]~105\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[9]~105_combout\ = (aluop(1) & (!aluop(0) & (\alu_1|temp_out[9]~120_combout\))) # (!aluop(1) & (((\alu_1|temp_out[9]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(0),
	datab => \alu_1|temp_out[9]~120_combout\,
	datac => aluop(1),
	datad => \alu_1|temp_out[9]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[9]~105_combout\);

-- Location: LC_X14_Y5_N5
\t1|dout[9]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(9) = ((GLOBAL(\alu_en~combout\) & ((\alu_1|temp_out[9]~105_combout\))) # (!GLOBAL(\alu_en~combout\) & (\t1|dout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_en~combout\,
	datac => \t1|dout\(9),
	datad => \alu_1|temp_out[9]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(9));

-- Location: LC_X14_Y5_N6
\m_9|outp[9]~8\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[9]~8_combout\ = (\pcsrc~regout\ & (((\t1|dout\(9))))) # (!\pcsrc~regout\ & (((\alu_1|temp_out[9]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pcsrc~regout\,
	datac => \alu_1|temp_out[9]~105_combout\,
	datad => \t1|dout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[9]~8_combout\);

-- Location: LC_X14_Y5_N7
\pc|dout[9]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(9) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[9]~8_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(9),
	datac => \pcwr~regout\,
	datad => \m_9|outp[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(9));

-- Location: LC_X11_Y6_N6
\alu_1|opr2|s10|bout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s10|bout~0_combout\ = (!alusrca(1) & ((\pc|dout\(8) & ((\pc|dout\(9)) # (!\m_8|outp[6]~10_combout\))) # (!\pc|dout\(8) & (!\m_8|outp[6]~10_combout\ & \pc|dout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4504",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(1),
	datab => \pc|dout\(8),
	datac => \m_8|outp[6]~10_combout\,
	datad => \pc|dout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s10|bout~0_combout\);

-- Location: LC_X11_Y6_N7
\alu_1|opr2|s10|bout~1\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s10|bout~1_combout\ = (\m_8|outp[6]~10_combout\ & (((alusrca(0)) # (\alu_1|opr2|s8|bout~1_combout\)) # (!\alu_1|opr2|s10|bout~0_combout\))) # (!\m_8|outp[6]~10_combout\ & (\alu_1|opr2|s8|bout~1_combout\ & ((alusrca(0)) # 
-- (!\alu_1|opr2|s10|bout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdd0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr2|s10|bout~0_combout\,
	datab => alusrca(0),
	datac => \m_8|outp[6]~10_combout\,
	datad => \alu_1|opr2|s8|bout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s10|bout~1_combout\);

-- Location: LC_X14_Y6_N8
\m_7|outp~9\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~9_combout\ = ((\pc|dout\(9) & (alusrca(1) $ (!alusrca(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(1),
	datac => alusrca(0),
	datad => \pc|dout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~9_combout\);

-- Location: LC_X10_Y6_N5
\alu_1|opr1|a10|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a10|cout~0_combout\ = (\m_8|outp[6]~10_combout\ & ((\alu_1|opr1|a9|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~9_combout\)))) # (!\m_8|outp[6]~10_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~9_combout\ & 
-- \alu_1|opr1|a9|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|Equal1~0_combout\,
	datab => \m_7|outp~9_combout\,
	datac => \m_8|outp[6]~10_combout\,
	datad => \alu_1|opr1|a9|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a10|cout~0_combout\);

-- Location: LC_X11_Y6_N0
\alu_1|temp_out[10]~102\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[10]~102_combout\ = (aluop(1) & (aluop(0))) # (!aluop(1) & ((aluop(0) & (\alu_1|opr2|s10|bout~1_combout\)) # (!aluop(0) & ((\alu_1|opr1|a10|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => aluop(0),
	datac => \alu_1|opr2|s10|bout~1_combout\,
	datad => \alu_1|opr1|a10|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[10]~102_combout\);

-- Location: LC_X12_Y5_N4
\alu_1|temp_out[10]~103\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[10]~103_combout\ = (aluop(1) & (!\alu_1|temp_out[10]~102_combout\ & ((!\m_8|outp[6]~10_combout\) # (!\alu_1|temp_out[10]~119_combout\)))) # (!aluop(1) & (\alu_1|temp_out[10]~119_combout\ $ (\m_8|outp[6]~10_combout\ $ 
-- (\alu_1|temp_out[10]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "215e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[10]~119_combout\,
	datab => aluop(1),
	datac => \m_8|outp[6]~10_combout\,
	datad => \alu_1|temp_out[10]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[10]~103_combout\);

-- Location: LC_X12_Y5_N0
\t1|dout[10]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(10) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[10]~103_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_en~combout\,
	datac => \alu_1|temp_out[10]~103_combout\,
	datad => \t1|dout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(10));

-- Location: LC_X12_Y5_N1
\m_9|outp[10]~7\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[10]~7_combout\ = (\pcsrc~regout\ & (((\t1|dout\(10))))) # (!\pcsrc~regout\ & (((\alu_1|temp_out[10]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pcsrc~regout\,
	datac => \alu_1|temp_out[10]~103_combout\,
	datad => \t1|dout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[10]~7_combout\);

-- Location: LC_X12_Y5_N2
\pc|dout[10]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(10) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[10]~7_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(10),
	datac => \pcwr~regout\,
	datad => \m_9|outp[10]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(10));

-- Location: LC_X12_Y5_N7
\m_7|outp~8\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~8_combout\ = ((\pc|dout\(10) & (alusrca(0) $ (!alusrca(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(10),
	datac => alusrca(0),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~8_combout\);

-- Location: LC_X11_Y6_N8
\alu_1|opr2|s11|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s11|bout~combout\ = (\m_8|outp[6]~10_combout\ & (((\m_7|Equal1~0_combout\) # (\alu_1|opr2|s10|bout~1_combout\)) # (!\m_7|outp~8_combout\))) # (!\m_8|outp[6]~10_combout\ & (\alu_1|opr2|s10|bout~1_combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdc4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp~8_combout\,
	datab => \m_8|outp[6]~10_combout\,
	datac => \m_7|Equal1~0_combout\,
	datad => \alu_1|opr2|s10|bout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s11|bout~combout\);

-- Location: LC_X10_Y6_N6
\alu_1|opr1|a11|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a11|cout~0_combout\ = (\m_8|outp[6]~10_combout\ & ((\alu_1|opr1|a10|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~8_combout\)))) # (!\m_8|outp[6]~10_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~8_combout\ & 
-- \alu_1|opr1|a10|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|Equal1~0_combout\,
	datab => \m_7|outp~8_combout\,
	datac => \m_8|outp[6]~10_combout\,
	datad => \alu_1|opr1|a10|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a11|cout~0_combout\);

-- Location: LC_X11_Y5_N9
\alu_1|temp_out[11]~90\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[11]~90_combout\ = (aluop(0) & ((\alu_1|opr2|s11|bout~combout\) # ((aluop(1))))) # (!aluop(0) & (((!aluop(1) & \alu_1|opr1|a11|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(0),
	datab => \alu_1|opr2|s11|bout~combout\,
	datac => aluop(1),
	datad => \alu_1|opr1|a11|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[11]~90_combout\);

-- Location: LC_X11_Y5_N6
\alu_1|temp_out[11]~91\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[11]~91_combout\ = (aluop(1) & (!\alu_1|temp_out[11]~90_combout\ & ((!\m_8|outp[6]~10_combout\) # (!\alu_1|temp_out[11]~113_combout\)))) # (!aluop(1) & (\alu_1|temp_out[11]~113_combout\ $ (\m_8|outp[6]~10_combout\ $ 
-- (\alu_1|temp_out[11]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "413e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => \alu_1|temp_out[11]~113_combout\,
	datac => \m_8|outp[6]~10_combout\,
	datad => \alu_1|temp_out[11]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[11]~91_combout\);

-- Location: LC_X11_Y5_N3
\t1|dout[11]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(11) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[11]~91_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_en~combout\,
	datac => \alu_1|temp_out[11]~91_combout\,
	datad => \t1|dout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(11));

-- Location: LC_X11_Y5_N4
\m_9|outp[11]~6\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[11]~6_combout\ = (\pcsrc~regout\ & (((\t1|dout\(11))))) # (!\pcsrc~regout\ & (((\alu_1|temp_out[11]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pcsrc~regout\,
	datac => \alu_1|temp_out[11]~91_combout\,
	datad => \t1|dout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[11]~6_combout\);

-- Location: LC_X11_Y5_N5
\pc|dout[11]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(11) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[11]~6_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(11),
	datac => \pcwr~regout\,
	datad => \m_9|outp[11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(11));

-- Location: LC_X11_Y4_N3
\m_7|outp~7\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~7_combout\ = ((\pc|dout\(11) & (alusrca(0) $ (!alusrca(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrca(0),
	datac => \pc|dout\(11),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~7_combout\);

-- Location: LC_X11_Y6_N9
\alu_1|opr2|s12|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s12|bout~combout\ = (\m_8|outp[6]~10_combout\ & (((\m_7|Equal1~0_combout\) # (\alu_1|opr2|s11|bout~combout\)) # (!\m_7|outp~7_combout\))) # (!\m_8|outp[6]~10_combout\ & (\alu_1|opr2|s11|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fba2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[6]~10_combout\,
	datab => \m_7|outp~7_combout\,
	datac => \m_7|Equal1~0_combout\,
	datad => \alu_1|opr2|s11|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s12|bout~combout\);

-- Location: LC_X10_Y6_N7
\alu_1|opr1|a12|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a12|cout~0_combout\ = (\m_8|outp[6]~10_combout\ & ((\alu_1|opr1|a11|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~7_combout\)))) # (!\m_8|outp[6]~10_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~7_combout\ & 
-- \alu_1|opr1|a11|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|Equal1~0_combout\,
	datab => \m_8|outp[6]~10_combout\,
	datac => \m_7|outp~7_combout\,
	datad => \alu_1|opr1|a11|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a12|cout~0_combout\);

-- Location: LC_X11_Y6_N4
\alu_1|temp_out[12]~108\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[12]~108_combout\ = (aluop(0) & ((\alu_1|opr2|s12|bout~combout\) # ((aluop(1))))) # (!aluop(0) & (((!aluop(1) & \alu_1|opr1|a12|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(0),
	datab => \alu_1|opr2|s12|bout~combout\,
	datac => aluop(1),
	datad => \alu_1|opr1|a12|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[12]~108_combout\);

-- Location: LC_X11_Y6_N5
\alu_1|temp_out[12]~109\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[12]~109_combout\ = (aluop(1) & (!\alu_1|temp_out[12]~108_combout\ & ((!\m_8|outp[6]~10_combout\) # (!\alu_1|temp_out[12]~122_combout\)))) # (!aluop(1) & (\alu_1|temp_out[12]~122_combout\ $ (\m_8|outp[6]~10_combout\ $ 
-- (\alu_1|temp_out[12]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "215e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[12]~122_combout\,
	datab => aluop(1),
	datac => \m_8|outp[6]~10_combout\,
	datad => \alu_1|temp_out[12]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[12]~109_combout\);

-- Location: LC_X11_Y6_N1
\t1|dout[12]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(12) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[12]~109_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_en~combout\,
	datac => \alu_1|temp_out[12]~109_combout\,
	datad => \t1|dout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(12));

-- Location: LC_X11_Y6_N2
\m_9|outp[12]~5\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[12]~5_combout\ = (\pcsrc~regout\ & (((\t1|dout\(12))))) # (!\pcsrc~regout\ & (((\alu_1|temp_out[12]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pcsrc~regout\,
	datac => \alu_1|temp_out[12]~109_combout\,
	datad => \t1|dout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[12]~5_combout\);

-- Location: LC_X11_Y6_N3
\pc|dout[12]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(12) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[12]~5_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(12),
	datac => \pcwr~regout\,
	datad => \m_9|outp[12]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(12));

-- Location: LC_X11_Y4_N4
\m_7|outp~6\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~6_combout\ = ((\pc|dout\(12) & (alusrca(0) $ (!alusrca(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrca(0),
	datac => \pc|dout\(12),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~6_combout\);

-- Location: LC_X10_Y5_N5
\alu_1|opr2|s13|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s13|bout~combout\ = (\m_8|outp[6]~10_combout\ & ((\m_7|Equal1~0_combout\) # ((\alu_1|opr2|s12|bout~combout\) # (!\m_7|outp~6_combout\)))) # (!\m_8|outp[6]~10_combout\ & (\alu_1|opr2|s12|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|Equal1~0_combout\,
	datab => \m_8|outp[6]~10_combout\,
	datac => \m_7|outp~6_combout\,
	datad => \alu_1|opr2|s12|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s13|bout~combout\);

-- Location: LC_X10_Y6_N8
\alu_1|opr1|a13|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a13|cout~0_combout\ = (\m_8|outp[6]~10_combout\ & ((\alu_1|opr1|a12|cout~0_combout\) # ((\m_7|outp~6_combout\ & !\m_7|Equal1~0_combout\)))) # (!\m_8|outp[6]~10_combout\ & (\m_7|outp~6_combout\ & (!\m_7|Equal1~0_combout\ & 
-- \alu_1|opr1|a12|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp~6_combout\,
	datab => \m_8|outp[6]~10_combout\,
	datac => \m_7|Equal1~0_combout\,
	datad => \alu_1|opr1|a12|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a13|cout~0_combout\);

-- Location: LC_X10_Y5_N6
\alu_1|temp_out[13]~106\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[13]~106_combout\ = (aluop(0) & ((aluop(1)) # ((\alu_1|opr2|s13|bout~combout\)))) # (!aluop(0) & (!aluop(1) & ((\alu_1|opr1|a13|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(0),
	datab => aluop(1),
	datac => \alu_1|opr2|s13|bout~combout\,
	datad => \alu_1|opr1|a13|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[13]~106_combout\);

-- Location: LC_X10_Y5_N7
\alu_1|temp_out[13]~107\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[13]~107_combout\ = (aluop(1) & (!\alu_1|temp_out[13]~106_combout\ & ((!\m_8|outp[6]~10_combout\) # (!\alu_1|temp_out[13]~121_combout\)))) # (!aluop(1) & (\alu_1|temp_out[13]~121_combout\ $ (\m_8|outp[6]~10_combout\ $ 
-- (\alu_1|temp_out[13]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "215e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[13]~121_combout\,
	datab => aluop(1),
	datac => \m_8|outp[6]~10_combout\,
	datad => \alu_1|temp_out[13]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[13]~107_combout\);

-- Location: LC_X10_Y5_N8
\t1|dout[13]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(13) = ((GLOBAL(\alu_en~combout\) & ((\alu_1|temp_out[13]~107_combout\))) # (!GLOBAL(\alu_en~combout\) & (\t1|dout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|dout\(13),
	datac => \alu_1|temp_out[13]~107_combout\,
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(13));

-- Location: LC_X10_Y5_N9
\m_9|outp[13]~4\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[13]~4_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(13)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[13]~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pcsrc~regout\,
	datac => \alu_1|temp_out[13]~107_combout\,
	datad => \t1|dout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[13]~4_combout\);

-- Location: LC_X10_Y5_N0
\pc|dout[13]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(13) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[13]~4_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(13),
	datac => \pcwr~regout\,
	datad => \m_9|outp[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(13));

-- Location: LC_X11_Y4_N7
\m_7|outp~5\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~5_combout\ = ((\pc|dout\(13) & (alusrca(0) $ (!alusrca(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrca(0),
	datac => \pc|dout\(13),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~5_combout\);

-- Location: LC_X10_Y6_N9
\alu_1|opr1|a14|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a14|cout~0_combout\ = (\m_8|outp[6]~10_combout\ & ((\alu_1|opr1|a13|cout~0_combout\) # ((\m_7|outp~5_combout\ & !\m_7|Equal1~0_combout\)))) # (!\m_8|outp[6]~10_combout\ & (\m_7|outp~5_combout\ & (!\m_7|Equal1~0_combout\ & 
-- \alu_1|opr1|a13|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp~5_combout\,
	datab => \m_8|outp[6]~10_combout\,
	datac => \m_7|Equal1~0_combout\,
	datad => \alu_1|opr1|a13|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a14|cout~0_combout\);

-- Location: LC_X9_Y5_N2
\alu_1|opr2|s14|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s14|bout~combout\ = (\m_8|outp[6]~10_combout\ & ((\m_7|Equal1~0_combout\) # ((\alu_1|opr2|s13|bout~combout\) # (!\m_7|outp~5_combout\)))) # (!\m_8|outp[6]~10_combout\ & (\alu_1|opr2|s13|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|Equal1~0_combout\,
	datab => \m_8|outp[6]~10_combout\,
	datac => \m_7|outp~5_combout\,
	datad => \alu_1|opr2|s13|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s14|bout~combout\);

-- Location: LC_X10_Y7_N1
\alu_1|temp_out[14]~84\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[14]~84_combout\ = \alu_1|opr2|s15|xor_i~0_combout\ $ (((aluop(0) & ((\alu_1|opr2|s14|bout~combout\))) # (!aluop(0) & (\alu_1|opr1|a14|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "369c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(0),
	datab => \alu_1|opr2|s15|xor_i~0_combout\,
	datac => \alu_1|opr1|a14|cout~0_combout\,
	datad => \alu_1|opr2|s14|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[14]~84_combout\);

-- Location: LC_X10_Y7_N2
\alu_1|temp_out[14]~85\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[14]~85_combout\ = (aluop(1) & (!aluop(0) & (\alu_1|temp_out[14]~110_combout\))) # (!aluop(1) & (((\alu_1|temp_out[14]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(0),
	datab => \alu_1|temp_out[14]~110_combout\,
	datac => aluop(1),
	datad => \alu_1|temp_out[14]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[14]~85_combout\);

-- Location: LC_X10_Y7_N5
\t1|dout[14]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(14) = ((GLOBAL(\alu_en~combout\) & ((\alu_1|temp_out[14]~85_combout\))) # (!GLOBAL(\alu_en~combout\) & (\t1|dout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_en~combout\,
	datac => \t1|dout\(14),
	datad => \alu_1|temp_out[14]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(14));

-- Location: LC_X10_Y7_N6
\m_9|outp[14]~14\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[14]~14_combout\ = (\pcsrc~regout\ & (((\t1|dout\(14))))) # (!\pcsrc~regout\ & (\alu_1|temp_out[14]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pcsrc~regout\,
	datab => \alu_1|temp_out[14]~85_combout\,
	datad => \t1|dout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[14]~14_combout\);

-- Location: LC_X10_Y7_N7
\pc|dout[14]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(14) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[14]~14_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(14),
	datac => \pcwr~regout\,
	datad => \m_9|outp[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(14));

-- Location: LC_X10_Y7_N4
\m_7|outp~15\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~15_combout\ = (\pc|dout\(14) & (alusrca(1) $ ((!alusrca(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8484",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(1),
	datab => \pc|dout\(14),
	datac => alusrca(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~15_combout\);

-- Location: LC_X9_Y5_N4
\alu_1|opr1|a15|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a15|cout~0_combout\ = (\m_8|outp[6]~10_combout\ & ((\alu_1|opr1|a14|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~15_combout\)))) # (!\m_8|outp[6]~10_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~15_combout\ & 
-- \alu_1|opr1|a14|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|Equal1~0_combout\,
	datab => \m_8|outp[6]~10_combout\,
	datac => \m_7|outp~15_combout\,
	datad => \alu_1|opr1|a14|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a15|cout~0_combout\);

-- Location: LC_X9_Y5_N6
\alu_1|opr1|a16|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a16|cout~0_combout\ = (\m_8|outp[6]~10_combout\ & ((\alu_1|opr1|a15|cout~0_combout\) # ((\m_7|outp~18_combout\ & !\m_7|Equal1~0_combout\)))) # (!\m_8|outp[6]~10_combout\ & (\m_7|outp~18_combout\ & (!\m_7|Equal1~0_combout\ & 
-- \alu_1|opr1|a15|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp~18_combout\,
	datab => \m_8|outp[6]~10_combout\,
	datac => \m_7|Equal1~0_combout\,
	datad => \alu_1|opr1|a15|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a16|cout~0_combout\);

-- Location: LC_X11_Y4_N9
\m_7|outp[15]~17\ : maxv_lcell
-- Equation(s):
-- \m_7|outp[15]~17_combout\ = ((!alusrca(1) & (\pc|dout\(15) & !alusrca(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrca(1),
	datac => \pc|dout\(15),
	datad => alusrca(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp[15]~17_combout\);

-- Location: LC_X10_Y7_N3
\m_7|outp[14]~16\ : maxv_lcell
-- Equation(s):
-- \m_7|outp[14]~16_combout\ = (!alusrca(1) & (\pc|dout\(14) & (!alusrca(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(1),
	datab => \pc|dout\(14),
	datac => alusrca(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp[14]~16_combout\);

-- Location: LC_X9_Y5_N8
\alu_1|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|cout~0_combout\ = (\m_7|outp[15]~17_combout\ & (\m_8|outp[6]~10_combout\ & ((\alu_1|opr2|s14|bout~combout\) # (!\m_7|outp[14]~16_combout\)))) # (!\m_7|outp[15]~17_combout\ & ((\m_8|outp[6]~10_combout\) # ((\alu_1|opr2|s14|bout~combout\ & 
-- !\m_7|outp[14]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[15]~17_combout\,
	datab => \alu_1|opr2|s14|bout~combout\,
	datac => \m_8|outp[6]~10_combout\,
	datad => \m_7|outp[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|cout~0_combout\);

-- Location: LC_X9_Y5_N7
\carry_flag|dout\ : maxv_lcell
-- Equation(s):
-- \carry_flag|dout~regout\ = DFFEAS((aluop(0) & (((\alu_1|cout~0_combout\)))) # (!aluop(0) & (((\alu_1|opr1|a16|cout~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \alu_en~combout\, , , aluop(1), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => aluop(0),
	datac => \alu_1|opr1|a16|cout~0_combout\,
	datad => \alu_1|cout~0_combout\,
	aclr => GND,
	sclr => aluop(1),
	ena => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \carry_flag|dout~regout\);

-- Location: LC_X9_Y5_N9
\alu_en~0\ : maxv_lcell
-- Equation(s):
-- \alu_en~0_combout\ = (\ir_1|r_1|dout\(1) & ((\carry_flag|dout~regout\) # ((\ir_1|r_1|dout\(0) & \zero_flag|dout~regout\)))) # (!\ir_1|r_1|dout\(1) & (((\zero_flag|dout~regout\)) # (!\ir_1|r_1|dout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdb1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(1),
	datab => \ir_1|r_1|dout\(0),
	datac => \carry_flag|dout~regout\,
	datad => \zero_flag|dout~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_en~0_combout\);

-- Location: LC_X12_Y3_N2
alu_en : maxv_lcell
-- Equation(s):
-- \alu_en~combout\ = (((\alud~regout\) # (\alu_en~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \alud~regout\,
	datad => \alu_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_en~combout\);

-- Location: LC_X5_Y6_N2
\t1|dout[2]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(2) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[2]~78_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_en~combout\,
	datac => \alu_1|temp_out[2]~78_combout\,
	datad => \t1|dout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(2));

-- Location: LC_X5_Y6_N3
\m_9|outp[2]~0\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[2]~0_combout\ = (\pcsrc~regout\ & (((\t1|dout\(2))))) # (!\pcsrc~regout\ & (((\alu_1|temp_out[2]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pcsrc~regout\,
	datac => \alu_1|temp_out[2]~78_combout\,
	datad => \t1|dout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[2]~0_combout\);

-- Location: LC_X5_Y6_N4
\pc|dout[2]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(2) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[2]~0_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(2),
	datac => \pcwr~regout\,
	datad => \m_9|outp[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(2));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(2),
	combout => \input~combout\(2));

-- Location: LC_X5_Y6_N0
\m_1|outp[2]~0\ : maxv_lcell
-- Equation(s):
-- \m_1|outp[2]~0_combout\ = (iord(1) & (\input~combout\(2))) # (!iord(1) & (((\t1|dout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(2),
	datab => iord(1),
	datad => \t1|dout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_1|outp[2]~0_combout\);

-- Location: LC_X5_Y6_N1
\m_1|outp[2]~1\ : maxv_lcell
-- Equation(s):
-- \m_1|outp[2]~1_combout\ = (iord(0) & (!iord(1) & (\pc|dout\(2)))) # (!iord(0) & (((\m_1|outp[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7520",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => iord(0),
	datab => iord(1),
	datac => \pc|dout\(2),
	datad => \m_1|outp[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_1|outp[2]~1_combout\);

-- Location: LC_X5_Y7_N1
\mem|Decoder0~10\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~10_combout\ = (\memwr~regout\ & (\m_1|outp[1]~3_combout\ & (!\m_1|outp[2]~1_combout\ & \m_1|outp[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_1|outp[2]~1_combout\,
	datad => \m_1|outp[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~10_combout\);

-- Location: LC_X5_Y7_N2
\mem|Decoder0~21\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~21_combout\ = (((\m_1|outp[3]~5_combout\ & \mem|Decoder0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \m_1|outp[3]~5_combout\,
	datad => \mem|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~21_combout\);

-- Location: LC_X6_Y8_N2
\mem|mem_reg[11][0]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[11][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~21_combout\, \m_2|outp[0]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[0]~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[11][0]~regout\);

-- Location: LC_X6_Y9_N7
\mem|mem_reg[10][0]\ : maxv_lcell
-- Equation(s):
-- \mem|do~77\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[10][0]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[8][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[8][0]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[0]~7\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~77\,
	regout => \mem|mem_reg[10][0]~regout\);

-- Location: LC_X7_Y6_N9
\mem|mem_reg[9][0]\ : maxv_lcell
-- Equation(s):
-- \mem|do~78\ = (\m_1|outp[0]~7_combout\ & ((\mem|do~77\ & (\mem|mem_reg[11][0]~regout\)) # (!\mem|do~77\ & ((S1_mem_reg[9][0]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|do~77\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[11][0]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[0]~7\,
	datad => \mem|do~77\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~78\,
	regout => \mem|mem_reg[9][0]~regout\);

-- Location: LC_X3_Y7_N5
\mem|mem_reg[15][0]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[15][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~23_combout\, \m_2|outp[0]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[0]~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[15][0]~regout\);

-- Location: LC_X7_Y5_N4
\mem|mem_reg[12][0]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[12][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~1_combout\, \m_2|outp[0]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[0]~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[12][0]~regout\);

-- Location: LC_X9_Y9_N1
\mem|mem_reg[13][0]\ : maxv_lcell
-- Equation(s):
-- \mem|do~84\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[13][0]) # (\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[12][0]~regout\ & ((!\m_1|outp[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[12][0]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[0]~7\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~84\,
	regout => \mem|mem_reg[13][0]~regout\);

-- Location: LC_X8_Y9_N1
\mem|mem_reg[14][0]\ : maxv_lcell
-- Equation(s):
-- \mem|do~85\ = (\m_1|outp[1]~3_combout\ & ((\mem|do~84\ & (\mem|mem_reg[15][0]~regout\)) # (!\mem|do~84\ & ((S1_mem_reg[14][0]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|do~84\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[15][0]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[0]~7\,
	datad => \mem|do~84\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~85\,
	regout => \mem|mem_reg[14][0]~regout\);

-- Location: LC_X5_Y7_N4
\mem|mem_reg[3][0]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[3][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~11_combout\, \m_2|outp[0]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[0]~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[3][0]~regout\);

-- Location: LC_X6_Y10_N8
\mem|mem_reg[0][0]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[0][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~18_combout\, \m_2|outp[0]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[0]~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[0][0]~regout\);

-- Location: LC_X7_Y10_N3
\mem|mem_reg[2][0]\ : maxv_lcell
-- Equation(s):
-- \mem|do~81\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[2][0]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[0][0]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[0]~7\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~81\,
	regout => \mem|mem_reg[2][0]~regout\);

-- Location: LC_X7_Y10_N5
\mem|mem_reg[1][0]\ : maxv_lcell
-- Equation(s):
-- \mem|do~82\ = (\m_1|outp[0]~7_combout\ & ((\mem|do~81\ & (\mem|mem_reg[3][0]~regout\)) # (!\mem|do~81\ & ((S1_mem_reg[1][0]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|do~81\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[0]~7_combout\,
	datab => \mem|mem_reg[3][0]~regout\,
	datac => \m_2|outp[0]~7\,
	datad => \mem|do~81\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~82\,
	regout => \mem|mem_reg[1][0]~regout\);

-- Location: LC_X9_Y7_N3
\mem|mem_reg[7][0]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[7][0]~regout\ = DFFEAS((((\m_2|outp[0]~7\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[0]~7\,
	aclr => GND,
	ena => \mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[7][0]~regout\);

-- Location: LC_X6_Y9_N3
\mem|mem_reg[4][0]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[4][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~16_combout\, \m_2|outp[0]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[0]~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[4][0]~regout\);

-- Location: LC_X9_Y10_N8
\mem|mem_reg[5][0]\ : maxv_lcell
-- Equation(s):
-- \mem|do~79\ = (\m_1|outp[1]~3_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & ((\m_1|outp[0]~7_combout\ & ((S1_mem_reg[5][0]))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[4][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[4][0]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[0]~7\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~79\,
	regout => \mem|mem_reg[5][0]~regout\);

-- Location: LC_X8_Y10_N6
\mem|mem_reg[6][0]\ : maxv_lcell
-- Equation(s):
-- \mem|do~80\ = (\m_1|outp[1]~3_combout\ & ((\mem|do~79\ & (\mem|mem_reg[7][0]~regout\)) # (!\mem|do~79\ & ((S1_mem_reg[6][0]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|do~79\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[1]~3_combout\,
	datab => \mem|mem_reg[7][0]~regout\,
	datac => \m_2|outp[0]~7\,
	datad => \mem|do~79\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~80\,
	regout => \mem|mem_reg[6][0]~regout\);

-- Location: LC_X7_Y6_N5
\mem|do~83\ : maxv_lcell
-- Equation(s):
-- \mem|do~83_combout\ = (\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~5_combout\) # ((\mem|do~80\)))) # (!\m_1|outp[2]~1_combout\ & (!\m_1|outp[3]~5_combout\ & (\mem|do~82\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \mem|do~82\,
	datad => \mem|do~80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~83_combout\);

-- Location: LC_X7_Y6_N6
\mem|do~86\ : maxv_lcell
-- Equation(s):
-- \mem|do~86_combout\ = (\m_1|outp[3]~5_combout\ & ((\mem|do~83_combout\ & ((\mem|do~85\))) # (!\mem|do~83_combout\ & (\mem|do~78\)))) # (!\m_1|outp[3]~5_combout\ & (((\mem|do~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~5_combout\,
	datab => \mem|do~78\,
	datac => \mem|do~85\,
	datad => \mem|do~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~86_combout\);

-- Location: LC_X7_Y6_N7
\mem|do[0]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(0) = DFFEAS((((\mem|do~86_combout\)) # (!\memrd~regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \memrd~regout\,
	datad => \mem|do~86_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(0));

-- Location: LC_X8_Y6_N0
\ir_1|r_1|dout[0]\ : maxv_lcell
-- Equation(s):
-- \ir_1|r_1|dout\(0) = ((GLOBAL(\irwr~regout\) & ((\mem|do\(0)))) # (!GLOBAL(\irwr~regout\) & (\ir_1|r_1|dout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir_1|r_1|dout\(0),
	datac => \irwr~regout\,
	datad => \mem|do\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ir_1|r_1|dout\(0));

-- Location: LC_X8_Y6_N4
\m_8|outp[0]~2\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[0]~2_combout\ = ((alusrcb(2) & ((\ir_1|r_1|dout\(0)))) # (!alusrcb(2) & (alusrcb(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrcb(0),
	datac => \ir_1|r_1|dout\(0),
	datad => alusrcb(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[0]~2_combout\);

-- Location: LC_X8_Y6_N8
\m_8|outp[0]~6\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[0]~6_combout\ = ((alusrcb(1) & ((\m_8|outp[0]~3_combout\))) # (!alusrcb(1) & (\m_8|outp[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrcb(1),
	datac => \m_8|outp[0]~2_combout\,
	datad => \m_8|outp[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[0]~6_combout\);

-- Location: LC_X13_Y6_N4
\alu_1|temp_out[0]~83\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[0]~83_combout\ = (aluop(1) & (!aluop(0) & ((!\m_7|outp[0]~2_combout\) # (!\m_8|outp[0]~6_combout\)))) # (!aluop(1) & (\m_8|outp[0]~6_combout\ $ (((\m_7|outp[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "134e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => \m_8|outp[0]~6_combout\,
	datac => aluop(0),
	datad => \m_7|outp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[0]~83_combout\);

-- Location: LC_X7_Y9_N5
\t1|dout[0]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(0) = ((GLOBAL(\alu_en~combout\) & ((\alu_1|temp_out[0]~83_combout\))) # (!GLOBAL(\alu_en~combout\) & (\t1|dout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_en~combout\,
	datac => \t1|dout\(0),
	datad => \alu_1|temp_out[0]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(0));

-- Location: LC_X7_Y9_N6
\m_9|outp[0]~3\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[0]~3_combout\ = (\pcsrc~regout\ & (((\t1|dout\(0))))) # (!\pcsrc~regout\ & (\alu_1|temp_out[0]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pcsrc~regout\,
	datab => \alu_1|temp_out[0]~83_combout\,
	datad => \t1|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[0]~3_combout\);

-- Location: LC_X7_Y9_N7
\pc|dout[0]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(0) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[0]~3_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc|dout\(0),
	datac => \pcwr~regout\,
	datad => \m_9|outp[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(0));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(0),
	combout => \input~combout\(0));

-- Location: LC_X7_Y9_N1
\m_1|outp[0]~6\ : maxv_lcell
-- Equation(s):
-- \m_1|outp[0]~6_combout\ = (iord(1) & (\input~combout\(0))) # (!iord(1) & (((\t1|dout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(0),
	datab => iord(1),
	datac => \t1|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_1|outp[0]~6_combout\);

-- Location: LC_X7_Y9_N2
\m_1|outp[0]~7\ : maxv_lcell
-- Equation(s):
-- \m_1|outp[0]~7_combout\ = (iord(0) & (!iord(1) & (\pc|dout\(0)))) # (!iord(0) & (((\m_1|outp[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7520",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => iord(0),
	datab => iord(1),
	datac => \pc|dout\(0),
	datad => \m_1|outp[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_1|outp[0]~7_combout\);

-- Location: LC_X6_Y9_N1
\mem|Decoder0~2\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~2_combout\ = (\m_1|outp[1]~3_combout\ & (\memwr~regout\ & (!\m_1|outp[0]~7_combout\ & !\m_1|outp[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~3_combout\,
	datab => \memwr~regout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \m_1|outp[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~2_combout\);

-- Location: LC_X6_Y9_N8
\mem|Decoder0~17\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~17_combout\ = (((!\m_1|outp[3]~5_combout\ & \mem|Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \m_1|outp[3]~5_combout\,
	datad => \mem|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~17_combout\);

-- Location: LC_X3_Y9_N4
\mem|mem_reg[2][1]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[1]~6\ = (\input~combout\(17) & (((dcon(1) & !dcon(0)))))
-- \mem|mem_reg[2][1]~regout\ = DFFEAS(\m_2|outp[1]~6\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \input~combout\(17),
	datac => dcon(1),
	datad => dcon(0),
	aclr => GND,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[1]~6\,
	regout => \mem|mem_reg[2][1]~regout\);

-- Location: LC_X3_Y7_N7
\mem|mem_reg[15][1]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[15][1]~regout\ = DFFEAS((((\m_2|outp[1]~6\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~23_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[1]~6\,
	aclr => GND,
	ena => \mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[15][1]~regout\);

-- Location: LC_X3_Y9_N0
\mem|mem_reg[3][1]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[3][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~11_combout\, \m_2|outp[1]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[1]~6\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[3][1]~regout\);

-- Location: LC_X3_Y6_N9
\mem|mem_reg[7][1]\ : maxv_lcell
-- Equation(s):
-- \mem|do~73\ = (\m_1|outp[2]~1_combout\ & (((S1_mem_reg[7][1]) # (\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[3][1]~regout\ & ((!\m_1|outp[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[3][1]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[1]~6\,
	datad => \m_1|outp[3]~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~73\,
	regout => \mem|mem_reg[7][1]~regout\);

-- Location: LC_X3_Y6_N6
\mem|mem_reg[11][1]\ : maxv_lcell
-- Equation(s):
-- \mem|do~74\ = (\m_1|outp[3]~5_combout\ & ((\mem|do~73\ & (\mem|mem_reg[15][1]~regout\)) # (!\mem|do~73\ & ((S1_mem_reg[11][1]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|do~73\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[3]~5_combout\,
	datab => \mem|mem_reg[15][1]~regout\,
	datac => \m_2|outp[1]~6\,
	datad => \mem|do~73\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~74\,
	regout => \mem|mem_reg[11][1]~regout\);

-- Location: LC_X4_Y8_N7
\mem|mem_reg[14][1]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[14][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~7_combout\, \m_2|outp[1]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[1]~6\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[14][1]~regout\);

-- Location: LC_X4_Y8_N8
\mem|mem_reg[6][1]\ : maxv_lcell
-- Equation(s):
-- \mem|do~66\ = (\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~5_combout\) # ((S1_mem_reg[6][1])))) # (!\m_1|outp[2]~1_combout\ & (!\m_1|outp[3]~5_combout\ & ((\mem|mem_reg[2][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[2]~1_combout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \m_2|outp[1]~6\,
	datad => \mem|mem_reg[2][1]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~66\,
	regout => \mem|mem_reg[6][1]~regout\);

-- Location: LC_X9_Y6_N0
\mem|mem_reg[10][1]\ : maxv_lcell
-- Equation(s):
-- \mem|do~67\ = (\m_1|outp[3]~5_combout\ & ((\mem|do~66\ & (\mem|mem_reg[14][1]~regout\)) # (!\mem|do~66\ & ((S1_mem_reg[10][1]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|do~66\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[14][1]~regout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \m_2|outp[1]~6\,
	datad => \mem|do~66\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~67\,
	regout => \mem|mem_reg[10][1]~regout\);

-- Location: LC_X9_Y9_N0
\mem|mem_reg[13][1]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[13][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~20_combout\, \m_2|outp[1]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[1]~6\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[13][1]~regout\);

-- Location: LC_X7_Y10_N9
\mem|mem_reg[1][1]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[1][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~13_combout\, \m_2|outp[1]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[1]~6\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[1][1]~regout\);

-- Location: LC_X6_Y7_N5
\mem|mem_reg[5][1]\ : maxv_lcell
-- Equation(s):
-- \mem|do~68\ = (\m_1|outp[3]~5_combout\ & (((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~5_combout\ & ((\m_1|outp[2]~1_combout\ & ((S1_mem_reg[5][1]))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[1][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[1][1]~regout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \m_2|outp[1]~6\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~68\,
	regout => \mem|mem_reg[5][1]~regout\);

-- Location: LC_X7_Y7_N5
\mem|mem_reg[9][1]\ : maxv_lcell
-- Equation(s):
-- \mem|do~69\ = (\m_1|outp[3]~5_combout\ & ((\mem|do~68\ & (\mem|mem_reg[13][1]~regout\)) # (!\mem|do~68\ & ((S1_mem_reg[9][1]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|do~68\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[13][1]~regout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \m_2|outp[1]~6\,
	datad => \mem|do~68\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~69\,
	regout => \mem|mem_reg[9][1]~regout\);

-- Location: LC_X8_Y9_N7
\mem|mem_reg[12][1]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[12][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~1_combout\, \m_2|outp[1]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[1]~6\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[12][1]~regout\);

-- Location: LC_X4_Y10_N3
\mem|mem_reg[0][1]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[0][1]~regout\ = DFFEAS((((\m_2|outp[1]~6\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~18_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[1]~6\,
	aclr => GND,
	ena => \mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[0][1]~regout\);

-- Location: LC_X4_Y7_N2
\mem|mem_reg[4][1]\ : maxv_lcell
-- Equation(s):
-- \mem|do~70\ = (\m_1|outp[3]~5_combout\ & (((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~5_combout\ & ((\m_1|outp[2]~1_combout\ & ((S1_mem_reg[4][1]))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[0][1]~regout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \m_2|outp[1]~6\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~70\,
	regout => \mem|mem_reg[4][1]~regout\);

-- Location: LC_X4_Y7_N0
\mem|mem_reg[8][1]\ : maxv_lcell
-- Equation(s):
-- \mem|do~71\ = (\m_1|outp[3]~5_combout\ & ((\mem|do~70\ & (\mem|mem_reg[12][1]~regout\)) # (!\mem|do~70\ & ((S1_mem_reg[8][1]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|do~70\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[3]~5_combout\,
	datab => \mem|mem_reg[12][1]~regout\,
	datac => \m_2|outp[1]~6\,
	datad => \mem|do~70\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~71\,
	regout => \mem|mem_reg[8][1]~regout\);

-- Location: LC_X9_Y6_N6
\mem|do~72\ : maxv_lcell
-- Equation(s):
-- \mem|do~72_combout\ = (\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\) # ((\mem|do~69\)))) # (!\m_1|outp[0]~7_combout\ & (!\m_1|outp[1]~3_combout\ & ((\mem|do~71\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \mem|do~69\,
	datad => \mem|do~71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~72_combout\);

-- Location: LC_X9_Y6_N7
\mem|do~75\ : maxv_lcell
-- Equation(s):
-- \mem|do~75_combout\ = (\m_1|outp[1]~3_combout\ & ((\mem|do~72_combout\ & (\mem|do~74\)) # (!\mem|do~72_combout\ & ((\mem|do~67\))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|do~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~3_combout\,
	datab => \mem|do~74\,
	datac => \mem|do~67\,
	datad => \mem|do~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~75_combout\);

-- Location: LC_X9_Y6_N8
\mem|do[1]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(1) = DFFEAS((((\mem|do~75_combout\)) # (!\memrd~regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \memrd~regout\,
	datad => \mem|do~75_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(1));

-- Location: LC_X9_Y6_N5
\ir_1|r_1|dout[1]\ : maxv_lcell
-- Equation(s):
-- \ir_1|r_1|dout\(1) = ((GLOBAL(\irwr~regout\) & ((\mem|do\(1)))) # (!GLOBAL(\irwr~regout\) & (\ir_1|r_1|dout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(1),
	datac => \irwr~regout\,
	datad => \mem|do\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ir_1|r_1|dout\(1));

-- Location: LC_X7_Y6_N0
\m_8|outp[1]~4\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[1]~4_combout\ = (((\p_1|outp\(1)) # (!alusrcb(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \p_1|outp\(1),
	datad => alusrcb(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[1]~4_combout\);

-- Location: LC_X7_Y6_N1
\m_8|outp[1]~5\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[1]~5_combout\ = (alusrcb(2) & ((alusrcb(1) & ((\m_8|outp[1]~4_combout\))) # (!alusrcb(1) & (\ir_1|r_1|dout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a820",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrcb(2),
	datab => alusrcb(1),
	datac => \ir_1|r_1|dout\(1),
	datad => \m_8|outp[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[1]~5_combout\);

-- Location: LC_X13_Y6_N1
\alu_1|temp_out[1]~79\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[1]~79_combout\ = (aluop(1) & (((aluop(0))))) # (!aluop(1) & (\m_8|outp[0]~6_combout\ & (aluop(0) $ (\m_7|outp[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a4e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => \m_8|outp[0]~6_combout\,
	datac => aluop(0),
	datad => \m_7|outp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[1]~79_combout\);

-- Location: LC_X13_Y6_N2
\alu_1|temp_out[1]~80\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[1]~80_combout\ = (aluop(1) & (!\alu_1|temp_out[1]~79_combout\ & ((!\m_7|outp[1]~3_combout\) # (!\m_8|outp[1]~5_combout\)))) # (!aluop(1) & (\m_8|outp[1]~5_combout\ $ (\m_7|outp[1]~3_combout\ $ (\alu_1|temp_out[1]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "413e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => \m_8|outp[1]~5_combout\,
	datac => \m_7|outp[1]~3_combout\,
	datad => \alu_1|temp_out[1]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[1]~80_combout\);

-- Location: LC_X5_Y9_N3
\t1|dout[1]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(1) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[1]~80_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_en~combout\,
	datac => \alu_1|temp_out[1]~80_combout\,
	datad => \t1|dout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(1));

-- Location: LC_X5_Y9_N4
\m_9|outp[1]~1\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[1]~1_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(1)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[1]~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_1|temp_out[1]~80_combout\,
	datac => \pcsrc~regout\,
	datad => \t1|dout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[1]~1_combout\);

-- Location: LC_X5_Y9_N5
\pc|dout[1]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(1) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[1]~1_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(1),
	datac => \pcwr~regout\,
	datad => \m_9|outp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(1));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(1),
	combout => \input~combout\(1));

-- Location: LC_X5_Y9_N2
\m_1|outp[1]~2\ : maxv_lcell
-- Equation(s):
-- \m_1|outp[1]~2_combout\ = ((iord(1) & (\input~combout\(1))) # (!iord(1) & ((\t1|dout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => iord(1),
	datac => \input~combout\(1),
	datad => \t1|dout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_1|outp[1]~2_combout\);

-- Location: LC_X5_Y9_N0
\m_1|outp[1]~3\ : maxv_lcell
-- Equation(s):
-- \m_1|outp[1]~3_combout\ = (iord(0) & (!iord(1) & (\pc|dout\(1)))) # (!iord(0) & (((\m_1|outp[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7520",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => iord(0),
	datab => iord(1),
	datac => \pc|dout\(1),
	datad => \m_1|outp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_1|outp[1]~3_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(21),
	combout => \input~combout\(21));

-- Location: LC_X5_Y8_N1
\mem|mem_reg[8][5]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[5]~11\ = ((\input~combout\(21) & (!dcon(0) & dcon(1))))
-- \mem|mem_reg[8][5]~regout\ = DFFEAS(\m_2|outp[5]~11\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \input~combout\(21),
	datac => dcon(0),
	datad => dcon(1),
	aclr => GND,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[5]~11\,
	regout => \mem|mem_reg[8][5]~regout\);

-- Location: LC_X3_Y7_N8
\mem|mem_reg[15][5]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[15][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~23_combout\, \m_2|outp[5]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[5]~11\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[15][5]~regout\);

-- Location: LC_X7_Y5_N9
\mem|mem_reg[12][5]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[12][5]~regout\ = DFFEAS((((\m_2|outp[5]~11\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[5]~11\,
	aclr => GND,
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[12][5]~regout\);

-- Location: LC_X9_Y9_N3
\mem|mem_reg[13][5]\ : maxv_lcell
-- Equation(s):
-- \mem|do~128\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[13][5]) # (\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[12][5]~regout\ & ((!\m_1|outp[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[12][5]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[5]~11\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~128\,
	regout => \mem|mem_reg[13][5]~regout\);

-- Location: LC_X9_Y9_N8
\mem|mem_reg[14][5]\ : maxv_lcell
-- Equation(s):
-- \mem|do~129\ = (\m_1|outp[1]~3_combout\ & ((\mem|do~128\ & (\mem|mem_reg[15][5]~regout\)) # (!\mem|do~128\ & ((S1_mem_reg[14][5]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|do~128\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[1]~3_combout\,
	datab => \mem|mem_reg[15][5]~regout\,
	datac => \m_2|outp[5]~11\,
	datad => \mem|do~128\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~129\,
	regout => \mem|mem_reg[14][5]~regout\);

-- Location: LC_X6_Y8_N1
\mem|mem_reg[11][5]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[11][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~21_combout\, \m_2|outp[5]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[5]~11\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[11][5]~regout\);

-- Location: LC_X6_Y9_N0
\mem|mem_reg[10][5]\ : maxv_lcell
-- Equation(s):
-- \mem|do~121\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[10][5]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[8][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[8][5]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[5]~11\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~121\,
	regout => \mem|mem_reg[10][5]~regout\);

-- Location: LC_X7_Y7_N2
\mem|mem_reg[9][5]\ : maxv_lcell
-- Equation(s):
-- \mem|do~122\ = (\m_1|outp[0]~7_combout\ & ((\mem|do~121\ & (\mem|mem_reg[11][5]~regout\)) # (!\mem|do~121\ & ((S1_mem_reg[9][5]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|do~121\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[11][5]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[5]~11\,
	datad => \mem|do~121\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~122\,
	regout => \mem|mem_reg[9][5]~regout\);

-- Location: LC_X5_Y7_N7
\mem|mem_reg[3][5]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[3][5]~regout\ = DFFEAS((((\m_2|outp[5]~11\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~11_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[5]~11\,
	aclr => GND,
	ena => \mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[3][5]~regout\);

-- Location: LC_X6_Y10_N2
\mem|mem_reg[0][5]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[0][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~18_combout\, \m_2|outp[5]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[5]~11\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[0][5]~regout\);

-- Location: LC_X7_Y10_N8
\mem|mem_reg[2][5]\ : maxv_lcell
-- Equation(s):
-- \mem|do~125\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[2][5]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[0][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[0]~7_combout\,
	datab => \mem|mem_reg[0][5]~regout\,
	datac => \m_2|outp[5]~11\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~125\,
	regout => \mem|mem_reg[2][5]~regout\);

-- Location: LC_X7_Y10_N6
\mem|mem_reg[1][5]\ : maxv_lcell
-- Equation(s):
-- \mem|do~126\ = (\m_1|outp[0]~7_combout\ & ((\mem|do~125\ & (\mem|mem_reg[3][5]~regout\)) # (!\mem|do~125\ & ((S1_mem_reg[1][5]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|do~125\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[0]~7_combout\,
	datab => \mem|mem_reg[3][5]~regout\,
	datac => \m_2|outp[5]~11\,
	datad => \mem|do~125\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~126\,
	regout => \mem|mem_reg[1][5]~regout\);

-- Location: LC_X9_Y7_N6
\mem|mem_reg[7][5]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[7][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~15_combout\, \m_2|outp[5]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[5]~11\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[7][5]~regout\);

-- Location: LC_X6_Y9_N4
\mem|mem_reg[4][5]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[4][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~16_combout\, \m_2|outp[5]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[5]~11\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[4][5]~regout\);

-- Location: LC_X9_Y10_N1
\mem|mem_reg[5][5]\ : maxv_lcell
-- Equation(s):
-- \mem|do~123\ = (\m_1|outp[1]~3_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & ((\m_1|outp[0]~7_combout\ & ((S1_mem_reg[5][5]))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[4][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[4][5]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[5]~11\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~123\,
	regout => \mem|mem_reg[5][5]~regout\);

-- Location: LC_X8_Y10_N8
\mem|mem_reg[6][5]\ : maxv_lcell
-- Equation(s):
-- \mem|do~124\ = (\m_1|outp[1]~3_combout\ & ((\mem|do~123\ & (\mem|mem_reg[7][5]~regout\)) # (!\mem|do~123\ & ((S1_mem_reg[6][5]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|do~123\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[1]~3_combout\,
	datab => \mem|mem_reg[7][5]~regout\,
	datac => \m_2|outp[5]~11\,
	datad => \mem|do~123\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~124\,
	regout => \mem|mem_reg[6][5]~regout\);

-- Location: LC_X8_Y10_N9
\mem|do~127\ : maxv_lcell
-- Equation(s):
-- \mem|do~127_combout\ = (\m_1|outp[3]~5_combout\ & (\m_1|outp[2]~1_combout\)) # (!\m_1|outp[3]~5_combout\ & ((\m_1|outp[2]~1_combout\ & ((\mem|do~124\))) # (!\m_1|outp[2]~1_combout\ & (\mem|do~126\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~5_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|do~126\,
	datad => \mem|do~124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~127_combout\);

-- Location: LC_X8_Y10_N1
\mem|do~130\ : maxv_lcell
-- Equation(s):
-- \mem|do~130_combout\ = (\m_1|outp[3]~5_combout\ & ((\mem|do~127_combout\ & (\mem|do~129\)) # (!\mem|do~127_combout\ & ((\mem|do~122\))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|do~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem|do~129\,
	datab => \mem|do~122\,
	datac => \m_1|outp[3]~5_combout\,
	datad => \mem|do~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~130_combout\);

-- Location: LC_X8_Y10_N2
\mem|do[5]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(5) = DFFEAS((((\mem|do~130_combout\)) # (!\memrd~regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \memrd~regout\,
	datad => \mem|do~130_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(5));

-- Location: LC_X8_Y10_N4
\ir_1|r_1|dout[5]\ : maxv_lcell
-- Equation(s):
-- \ir_1|r_1|dout\(5) = ((GLOBAL(\irwr~regout\) & ((\mem|do\(5)))) # (!GLOBAL(\irwr~regout\) & (\ir_1|r_1|dout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(5),
	datac => \irwr~regout\,
	datad => \mem|do\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ir_1|r_1|dout\(5));

-- Location: LC_X8_Y10_N3
\m_8|outp[6]~10\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[6]~10_combout\ = (\ir_1|r_1|dout\(5) & (!alusrcb(0) & (!alusrcb(1) & alusrcb(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(5),
	datab => alusrcb(0),
	datac => alusrcb(1),
	datad => alusrcb(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[6]~10_combout\);

-- Location: LC_X9_Y5_N0
\alu_1|temp_out[15]~86\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[15]~86_combout\ = (\m_7|outp[14]~16_combout\ & (\m_8|outp[6]~10_combout\ & ((aluop(1)) # (\alu_1|opr2|s14|bout~combout\)))) # (!\m_7|outp[14]~16_combout\ & ((\m_8|outp[6]~10_combout\) # ((!aluop(1) & \alu_1|opr2|s14|bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdc4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[14]~16_combout\,
	datab => \m_8|outp[6]~10_combout\,
	datac => aluop(1),
	datad => \alu_1|opr2|s14|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[15]~86_combout\);

-- Location: LC_X9_Y5_N1
\alu_1|temp_out[15]~88\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[15]~88_combout\ = (aluop(0)) # (((\m_7|outp[15]~17_combout\ & \alu_1|temp_out[15]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(0),
	datac => \m_7|outp[15]~17_combout\,
	datad => \alu_1|temp_out[15]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[15]~88_combout\);

-- Location: LC_X9_Y5_N5
\alu_1|temp_out[15]~87\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[15]~87_combout\ = \m_7|outp[15]~17_combout\ $ (((aluop(0) & (\alu_1|temp_out[15]~86_combout\)) # (!aluop(0) & ((\alu_1|opr1|a15|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "596a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[15]~17_combout\,
	datab => aluop(0),
	datac => \alu_1|temp_out[15]~86_combout\,
	datad => \alu_1|opr1|a15|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[15]~87_combout\);

-- Location: LC_X10_Y5_N1
\alu_1|temp_out[15]~89\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[15]~89_combout\ = (aluop(1) & (((!\alu_1|temp_out[15]~88_combout\)))) # (!aluop(1) & (\m_8|outp[6]~10_combout\ $ (((\alu_1|temp_out[15]~87_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1b4e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => \m_8|outp[6]~10_combout\,
	datac => \alu_1|temp_out[15]~88_combout\,
	datad => \alu_1|temp_out[15]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[15]~89_combout\);

-- Location: LC_X13_Y6_N9
\alu_1|zero_flag~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|zero_flag~0_combout\ = ((\alu_1|temp_out[1]~80_combout\) # ((\alu_1|temp_out[0]~83_combout\) # (\alu_1|temp_out[2]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_1|temp_out[1]~80_combout\,
	datac => \alu_1|temp_out[0]~83_combout\,
	datad => \alu_1|temp_out[2]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|zero_flag~0_combout\);

-- Location: LC_X5_Y6_N8
\alu_1|temp_out[3]~112\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[3]~112_combout\ = (!alusrca(0) & ((alusrca(1) & ((\ir_1|r_1|dout\(3)))) # (!alusrca(1) & (\pc|dout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(3),
	datab => \ir_1|r_1|dout\(3),
	datac => alusrca(0),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[3]~112_combout\);

-- Location: LC_X11_Y5_N1
\alu_1|temp_out[3]~81\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[3]~81_combout\ = (aluop(1) & (((aluop(0))))) # (!aluop(1) & ((aluop(0) & (\alu_1|opr2|s3|bout~combout\)) # (!aluop(0) & ((\alu_1|opr1|a3|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => \alu_1|opr2|s3|bout~combout\,
	datac => \alu_1|opr1|a3|cout~0_combout\,
	datad => aluop(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[3]~81_combout\);

-- Location: LC_X11_Y5_N2
\alu_1|temp_out[3]~82\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[3]~82_combout\ = (aluop(1) & (!\alu_1|temp_out[3]~81_combout\ & ((!\alu_1|temp_out[3]~112_combout\) # (!\m_8|outp[3]~7_combout\)))) # (!aluop(1) & (\m_8|outp[3]~7_combout\ $ (\alu_1|temp_out[3]~112_combout\ $ 
-- (\alu_1|temp_out[3]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0976",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[3]~7_combout\,
	datab => \alu_1|temp_out[3]~112_combout\,
	datac => aluop(1),
	datad => \alu_1|temp_out[3]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[3]~82_combout\);

-- Location: LC_X12_Y5_N8
\alu_1|zero_flag~1\ : maxv_lcell
-- Equation(s):
-- \alu_1|zero_flag~1_combout\ = (\alu_1|temp_out[4]~97_combout\) # ((\alu_1|zero_flag~0_combout\) # ((\alu_1|temp_out[5]~95_combout\) # (\alu_1|temp_out[3]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[4]~97_combout\,
	datab => \alu_1|zero_flag~0_combout\,
	datac => \alu_1|temp_out[5]~95_combout\,
	datad => \alu_1|temp_out[3]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|zero_flag~1_combout\);

-- Location: LC_X12_Y5_N9
\alu_1|zero_flag~2\ : maxv_lcell
-- Equation(s):
-- \alu_1|zero_flag~2_combout\ = (\alu_1|temp_out[6]~101_combout\) # ((\alu_1|temp_out[8]~93_combout\) # ((\alu_1|temp_out[7]~99_combout\) # (\alu_1|zero_flag~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[6]~101_combout\,
	datab => \alu_1|temp_out[8]~93_combout\,
	datac => \alu_1|temp_out[7]~99_combout\,
	datad => \alu_1|zero_flag~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|zero_flag~2_combout\);

-- Location: LC_X11_Y5_N0
\alu_1|zero_flag~3\ : maxv_lcell
-- Equation(s):
-- \alu_1|zero_flag~3_combout\ = (\alu_1|temp_out[9]~105_combout\) # ((\alu_1|zero_flag~2_combout\) # ((\alu_1|temp_out[11]~91_combout\) # (\alu_1|temp_out[10]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[9]~105_combout\,
	datab => \alu_1|zero_flag~2_combout\,
	datac => \alu_1|temp_out[11]~91_combout\,
	datad => \alu_1|temp_out[10]~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|zero_flag~3_combout\);

-- Location: LC_X11_Y5_N7
\alu_1|zero_flag~4\ : maxv_lcell
-- Equation(s):
-- \alu_1|zero_flag~4_combout\ = (((\alu_1|temp_out[12]~109_combout\) # (\alu_1|temp_out[13]~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \alu_1|temp_out[12]~109_combout\,
	datad => \alu_1|temp_out[13]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|zero_flag~4_combout\);

-- Location: LC_X11_Y5_N8
\zero_flag|dout\ : maxv_lcell
-- Equation(s):
-- \zero_flag|dout~regout\ = DFFEAS((!\alu_1|temp_out[15]~89_combout\ & (!\alu_1|zero_flag~3_combout\ & (!\alu_1|zero_flag~4_combout\ & !\alu_1|temp_out[14]~85_combout\))), GLOBAL(\clk~combout\), VCC, , \alu_en~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \alu_1|temp_out[15]~89_combout\,
	datab => \alu_1|zero_flag~3_combout\,
	datac => \alu_1|zero_flag~4_combout\,
	datad => \alu_1|temp_out[14]~85_combout\,
	aclr => GND,
	ena => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \zero_flag|dout~regout\);

-- Location: LC_X10_Y4_N0
\pcwr~1\ : maxv_lcell
-- Equation(s):
-- \pcwr~1_combout\ = (state(3) & (((\zero_flag|dout~regout\)))) # (!state(3) & (\pcwr~0_combout\ & (!state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \pcwr~0_combout\,
	datac => state(1),
	datad => \zero_flag|dout~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pcwr~1_combout\);

-- Location: LC_X12_Y3_N4
pcwr : maxv_lcell
-- Equation(s):
-- \pcwr~regout\ = DFFEAS((\pcwr~2_combout\ & ((\pcwr~1_combout\) # ((\pcwr~3_combout\ & \pcwr~regout\)))) # (!\pcwr~2_combout\ & (((\pcwr~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fad0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pcwr~2_combout\,
	datab => \pcwr~3_combout\,
	datac => \pcwr~regout\,
	datad => \pcwr~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pcwr~regout\);

-- Location: LC_X4_Y7_N3
\t1|dout[3]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(3) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[3]~82_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_en~combout\,
	datac => \alu_1|temp_out[3]~82_combout\,
	datad => \t1|dout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(3));

-- Location: LC_X4_Y7_N4
\m_9|outp[3]~2\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[3]~2_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(3)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[3]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pcsrc~regout\,
	datac => \alu_1|temp_out[3]~82_combout\,
	datad => \t1|dout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[3]~2_combout\);

-- Location: LC_X4_Y7_N5
\pc|dout[3]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(3) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[3]~2_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(3),
	datac => \pcwr~regout\,
	datad => \m_9|outp[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(3));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(3),
	combout => \input~combout\(3));

-- Location: LC_X4_Y7_N7
\m_1|outp[3]~4\ : maxv_lcell
-- Equation(s):
-- \m_1|outp[3]~4_combout\ = (iord(1) & (((\input~combout\(3))))) # (!iord(1) & (((\t1|dout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => iord(1),
	datac => \input~combout\(3),
	datad => \t1|dout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_1|outp[3]~4_combout\);

-- Location: LC_X4_Y7_N8
\m_1|outp[3]~5\ : maxv_lcell
-- Equation(s):
-- \m_1|outp[3]~5_combout\ = (iord(0) & (\pc|dout\(3) & (!iord(1)))) # (!iord(0) & (((\m_1|outp[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(3),
	datab => iord(0),
	datac => iord(1),
	datad => \m_1|outp[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_1|outp[3]~5_combout\);

-- Location: LC_X5_Y10_N7
\mem|Decoder0~5\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~5_combout\ = (((\m_1|outp[3]~5_combout\ & \mem|Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \m_1|outp[3]~5_combout\,
	datad => \mem|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~5_combout\);

-- Location: LC_X5_Y8_N5
\mem|mem_reg[8][15]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[15]~2\ = ((\input~combout\(31) & (!dcon(0) & dcon(1))))
-- \mem|mem_reg[8][15]~regout\ = DFFEAS(\m_2|outp[15]~2\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \input~combout\(31),
	datac => dcon(0),
	datad => dcon(1),
	aclr => GND,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[15]~2\,
	regout => \mem|mem_reg[8][15]~regout\);

-- Location: LC_X3_Y7_N3
\mem|mem_reg[15][15]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[15][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~23_combout\, \m_2|outp[15]~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[15]~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[15][15]~regout\);

-- Location: LC_X8_Y9_N9
\mem|mem_reg[12][15]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[12][15]~regout\ = DFFEAS((((\m_2|outp[15]~2\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[15]~2\,
	aclr => GND,
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[12][15]~regout\);

-- Location: LC_X9_Y9_N2
\mem|mem_reg[14][15]\ : maxv_lcell
-- Equation(s):
-- \mem|do~29\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[14][15]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[12][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[12][15]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[15]~2\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~29\,
	regout => \mem|mem_reg[14][15]~regout\);

-- Location: LC_X9_Y9_N5
\mem|mem_reg[13][15]\ : maxv_lcell
-- Equation(s):
-- \mem|do~30\ = (\m_1|outp[0]~7_combout\ & ((\mem|do~29\ & (\mem|mem_reg[15][15]~regout\)) # (!\mem|do~29\ & ((S1_mem_reg[13][15]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|do~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[15][15]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[15]~2\,
	datad => \mem|do~29\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~30\,
	regout => \mem|mem_reg[13][15]~regout\);

-- Location: LC_X6_Y8_N3
\mem|mem_reg[11][15]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[11][15]~regout\ = DFFEAS((((\m_2|outp[15]~2\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~21_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[15]~2\,
	aclr => GND,
	ena => \mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[11][15]~regout\);

-- Location: LC_X5_Y8_N2
\mem|mem_reg[9][15]\ : maxv_lcell
-- Equation(s):
-- \mem|do~22\ = (\m_1|outp[1]~3_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & ((\m_1|outp[0]~7_combout\ & ((S1_mem_reg[9][15]))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[8][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[1]~3_combout\,
	datab => \mem|mem_reg[8][15]~regout\,
	datac => \m_2|outp[15]~2\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~22\,
	regout => \mem|mem_reg[9][15]~regout\);

-- Location: LC_X6_Y8_N9
\mem|mem_reg[10][15]\ : maxv_lcell
-- Equation(s):
-- \mem|do~23\ = (\m_1|outp[1]~3_combout\ & ((\mem|do~22\ & (\mem|mem_reg[11][15]~regout\)) # (!\mem|do~22\ & ((S1_mem_reg[10][15]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|do~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[11][15]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[15]~2\,
	datad => \mem|do~22\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~23\,
	regout => \mem|mem_reg[10][15]~regout\);

-- Location: LC_X8_Y8_N7
\mem|mem_reg[3][15]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[3][15]~regout\ = DFFEAS((((\m_2|outp[15]~2\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~11_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[15]~2\,
	aclr => GND,
	ena => \mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[3][15]~regout\);

-- Location: LC_X4_Y10_N1
\mem|mem_reg[0][15]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[0][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~18_combout\, \m_2|outp[15]~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[15]~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[0][15]~regout\);

-- Location: LC_X5_Y9_N9
\mem|mem_reg[1][15]\ : maxv_lcell
-- Equation(s):
-- \mem|do~26\ = (\m_1|outp[1]~3_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & ((\m_1|outp[0]~7_combout\ & ((S1_mem_reg[1][15]))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[0][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[0][15]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[15]~2\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~26\,
	regout => \mem|mem_reg[1][15]~regout\);

-- Location: LC_X8_Y8_N1
\mem|mem_reg[2][15]\ : maxv_lcell
-- Equation(s):
-- \mem|do~27\ = (\m_1|outp[1]~3_combout\ & ((\mem|do~26\ & (\mem|mem_reg[3][15]~regout\)) # (!\mem|do~26\ & ((S1_mem_reg[2][15]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|do~26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[1]~3_combout\,
	datab => \mem|mem_reg[3][15]~regout\,
	datac => \m_2|outp[15]~2\,
	datad => \mem|do~26\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~27\,
	regout => \mem|mem_reg[2][15]~regout\);

-- Location: LC_X9_Y7_N8
\mem|mem_reg[7][15]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[7][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~15_combout\, \m_2|outp[15]~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[15]~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[7][15]~regout\);

-- Location: LC_X4_Y5_N5
\mem|mem_reg[4][15]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[4][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~16_combout\, \m_2|outp[15]~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[15]~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[4][15]~regout\);

-- Location: LC_X8_Y7_N4
\mem|mem_reg[5][15]\ : maxv_lcell
-- Equation(s):
-- \mem|do~24\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[5][15]) # (\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[4][15]~regout\ & ((!\m_1|outp[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[0]~7_combout\,
	datab => \mem|mem_reg[4][15]~regout\,
	datac => \m_2|outp[15]~2\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~24\,
	regout => \mem|mem_reg[5][15]~regout\);

-- Location: LC_X9_Y7_N2
\mem|mem_reg[6][15]\ : maxv_lcell
-- Equation(s):
-- \mem|do~25\ = (\m_1|outp[1]~3_combout\ & ((\mem|do~24\ & (\mem|mem_reg[7][15]~regout\)) # (!\mem|do~24\ & ((S1_mem_reg[6][15]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|do~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[7][15]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[15]~2\,
	datad => \mem|do~24\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~25\,
	regout => \mem|mem_reg[6][15]~regout\);

-- Location: LC_X9_Y8_N7
\mem|do~28\ : maxv_lcell
-- Equation(s):
-- \mem|do~28_combout\ = (\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~5_combout\) # ((\mem|do~25\)))) # (!\m_1|outp[2]~1_combout\ & (!\m_1|outp[3]~5_combout\ & (\mem|do~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \mem|do~27\,
	datad => \mem|do~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~28_combout\);

-- Location: LC_X9_Y8_N8
\mem|do~31\ : maxv_lcell
-- Equation(s):
-- \mem|do~31_combout\ = (\m_1|outp[3]~5_combout\ & ((\mem|do~28_combout\ & (\mem|do~30\)) # (!\mem|do~28_combout\ & ((\mem|do~23\))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|do~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem|do~30\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \mem|do~23\,
	datad => \mem|do~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~31_combout\);

-- Location: LC_X9_Y8_N9
\mem|do[15]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(15) = DFFEAS((((\mem|do~31_combout\)) # (!\memrd~regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \memrd~regout\,
	datad => \mem|do~31_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(15));

-- Location: LC_X9_Y8_N4
\ir_1|r_1|dout[15]\ : maxv_lcell
-- Equation(s):
-- \ir_1|r_1|dout\(15) = ((GLOBAL(\irwr~regout\) & ((\mem|do\(15)))) # (!GLOBAL(\irwr~regout\) & (\ir_1|r_1|dout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(15),
	datac => \irwr~regout\,
	datad => \mem|do\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ir_1|r_1|dout\(15));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(30),
	combout => \input~combout\(30));

-- Location: LC_X5_Y8_N9
\mem|mem_reg[8][14]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[14]~1\ = (\input~combout\(30) & (((!dcon(0) & dcon(1)))))
-- \mem|mem_reg[8][14]~regout\ = DFFEAS(\m_2|outp[14]~1\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \input~combout\(30),
	datac => dcon(0),
	datad => dcon(1),
	aclr => GND,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[14]~1\,
	regout => \mem|mem_reg[8][14]~regout\);

-- Location: LC_X2_Y7_N8
\mem|mem_reg[13][14]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[13][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~20_combout\, \m_2|outp[14]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[14]~1\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[13][14]~regout\);

-- Location: LC_X7_Y5_N5
\mem|mem_reg[12][14]\ : maxv_lcell
-- Equation(s):
-- \mem|do~11\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[2]~1_combout\ & ((S1_mem_reg[12][14]))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[8][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[0]~7_combout\,
	datab => \mem|mem_reg[8][14]~regout\,
	datac => \m_2|outp[14]~1\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~11\,
	regout => \mem|mem_reg[12][14]~regout\);

-- Location: LC_X7_Y5_N6
\mem|mem_reg[9][14]\ : maxv_lcell
-- Equation(s):
-- \mem|do~12\ = (\m_1|outp[0]~7_combout\ & ((\mem|do~11\ & (\mem|mem_reg[13][14]~regout\)) # (!\mem|do~11\ & ((S1_mem_reg[9][14]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|do~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[0]~7_combout\,
	datab => \mem|mem_reg[13][14]~regout\,
	datac => \m_2|outp[14]~1\,
	datad => \mem|do~11\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~12\,
	regout => \mem|mem_reg[9][14]~regout\);

-- Location: LC_X2_Y7_N0
\mem|mem_reg[15][14]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[15][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~23_combout\, \m_2|outp[14]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[14]~1\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[15][14]~regout\);

-- Location: LC_X4_Y9_N3
\mem|mem_reg[10][14]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[10][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~3_combout\, \m_2|outp[14]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[14]~1\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[10][14]~regout\);

-- Location: LC_X4_Y9_N5
\mem|mem_reg[11][14]\ : maxv_lcell
-- Equation(s):
-- \mem|do~18\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[11][14]) # (\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[10][14]~regout\ & ((!\m_1|outp[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[10][14]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[14]~1\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~18\,
	regout => \mem|mem_reg[11][14]~regout\);

-- Location: LC_X4_Y8_N1
\mem|mem_reg[14][14]\ : maxv_lcell
-- Equation(s):
-- \mem|do~19\ = (\m_1|outp[2]~1_combout\ & ((\mem|do~18\ & (\mem|mem_reg[15][14]~regout\)) # (!\mem|do~18\ & ((S1_mem_reg[14][14]))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|do~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|mem_reg[15][14]~regout\,
	datac => \m_2|outp[14]~1\,
	datad => \mem|do~18\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~19\,
	regout => \mem|mem_reg[14][14]~regout\);

-- Location: LC_X9_Y7_N0
\mem|mem_reg[7][14]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[7][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~15_combout\, \m_2|outp[14]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[14]~1\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[7][14]~regout\);

-- Location: LC_X8_Y8_N8
\mem|mem_reg[2][14]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[2][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~17_combout\, \m_2|outp[14]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[14]~1\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[2][14]~regout\);

-- Location: LC_X8_Y8_N4
\mem|mem_reg[3][14]\ : maxv_lcell
-- Equation(s):
-- \mem|do~13\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[3][14]) # (\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[2][14]~regout\ & ((!\m_1|outp[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[2][14]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[14]~1\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~13\,
	regout => \mem|mem_reg[3][14]~regout\);

-- Location: LC_X9_Y8_N5
\mem|mem_reg[6][14]\ : maxv_lcell
-- Equation(s):
-- \mem|do~14\ = (\m_1|outp[2]~1_combout\ & ((\mem|do~13\ & (\mem|mem_reg[7][14]~regout\)) # (!\mem|do~13\ & ((S1_mem_reg[6][14]))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|do~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|mem_reg[7][14]~regout\,
	datac => \m_2|outp[14]~1\,
	datad => \mem|do~13\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~14\,
	regout => \mem|mem_reg[6][14]~regout\);

-- Location: LC_X6_Y7_N0
\mem|mem_reg[5][14]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[5][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~9_combout\, \m_2|outp[14]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[14]~1\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[5][14]~regout\);

-- Location: LC_X6_Y10_N5
\mem|mem_reg[0][14]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[0][14]~regout\ = DFFEAS((((\m_2|outp[14]~1\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~18_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[14]~1\,
	aclr => GND,
	ena => \mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[0][14]~regout\);

-- Location: LC_X6_Y9_N6
\mem|mem_reg[4][14]\ : maxv_lcell
-- Equation(s):
-- \mem|do~15\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[2]~1_combout\ & ((S1_mem_reg[4][14]))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[0][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[0][14]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[14]~1\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~15\,
	regout => \mem|mem_reg[4][14]~regout\);

-- Location: LC_X7_Y7_N0
\mem|mem_reg[1][14]\ : maxv_lcell
-- Equation(s):
-- \mem|do~16\ = (\m_1|outp[0]~7_combout\ & ((\mem|do~15\ & (\mem|mem_reg[5][14]~regout\)) # (!\mem|do~15\ & ((S1_mem_reg[1][14]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|do~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[5][14]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[14]~1\,
	datad => \mem|do~15\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~16\,
	regout => \mem|mem_reg[1][14]~regout\);

-- Location: LC_X9_Y8_N1
\mem|do~17\ : maxv_lcell
-- Equation(s):
-- \mem|do~17_combout\ = (\m_1|outp[1]~3_combout\ & ((\m_1|outp[3]~5_combout\) # ((\mem|do~14\)))) # (!\m_1|outp[1]~3_combout\ & (!\m_1|outp[3]~5_combout\ & ((\mem|do~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~3_combout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \mem|do~14\,
	datad => \mem|do~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~17_combout\);

-- Location: LC_X9_Y8_N2
\mem|do~20\ : maxv_lcell
-- Equation(s):
-- \mem|do~20_combout\ = (\m_1|outp[3]~5_combout\ & ((\mem|do~17_combout\ & ((\mem|do~19\))) # (!\mem|do~17_combout\ & (\mem|do~12\)))) # (!\m_1|outp[3]~5_combout\ & (((\mem|do~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem|do~12\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \mem|do~19\,
	datad => \mem|do~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~20_combout\);

-- Location: LC_X9_Y8_N3
\mem|do[14]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(14) = DFFEAS((((\mem|do~20_combout\)) # (!\memrd~regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \memrd~regout\,
	datad => \mem|do~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(14));

-- Location: LC_X9_Y8_N0
\ir_1|r_1|dout[14]\ : maxv_lcell
-- Equation(s):
-- \ir_1|r_1|dout\(14) = ((GLOBAL(\irwr~regout\) & ((\mem|do\(14)))) # (!GLOBAL(\irwr~regout\) & (\ir_1|r_1|dout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir_1|r_1|dout\(14),
	datac => \irwr~regout\,
	datad => \mem|do\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ir_1|r_1|dout\(14));

-- Location: LC_X12_Y7_N8
\next_state~44\ : maxv_lcell
-- Equation(s):
-- \next_state~44_combout\ = (state(2) & ((\ir_1|r_1|dout\(13)) # ((\ir_1|r_1|dout\(14)) # (!\ir_1|r_1|dout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \ir_1|r_1|dout\(13),
	datac => \ir_1|r_1|dout\(15),
	datad => \ir_1|r_1|dout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~44_combout\);

-- Location: LC_X12_Y7_N9
\next_state~45\ : maxv_lcell
-- Equation(s):
-- \next_state~45_combout\ = (state(4) & (((next_state(3))))) # (!state(4) & (((next_state(3) & \next_state~44_combout\)) # (!state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1d1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(4),
	datac => next_state(3),
	datad => \next_state~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~45_combout\);

-- Location: LC_X12_Y8_N1
\next_state~35\ : maxv_lcell
-- Equation(s):
-- \next_state~35_combout\ = (state(2) & (((state(4) & next_state(3))))) # (!state(2) & (state(0) & ((next_state(3)) # (!state(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(0),
	datac => state(4),
	datad => next_state(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~35_combout\);

-- Location: LC_X12_Y7_N7
\next_state~42\ : maxv_lcell
-- Equation(s):
-- \next_state~42_combout\ = (!state(2) & (state(4) & (next_state(3) & state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(4),
	datac => next_state(3),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~42_combout\);

-- Location: LC_X12_Y7_N0
\next_state~36\ : maxv_lcell
-- Equation(s):
-- \next_state~36_combout\ = (next_state(3) & ((\ir_1|r_1|dout\(13)) # ((\ir_1|r_1|dout\(15)) # (!\ir_1|r_1|dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => next_state(3),
	datab => \ir_1|r_1|dout\(13),
	datac => \ir_1|r_1|dout\(15),
	datad => \ir_1|r_1|dout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~36_combout\);

-- Location: LC_X12_Y7_N1
\next_state~37\ : maxv_lcell
-- Equation(s):
-- \next_state~37_combout\ = (state(4) & (\Equal34~2_combout\ & (state(2)))) # (!state(4) & (((state(2)) # (\next_state~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => \Equal34~2_combout\,
	datac => state(2),
	datad => \next_state~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~37_combout\);

-- Location: LC_X12_Y8_N6
\next_state~38\ : maxv_lcell
-- Equation(s):
-- \next_state~38_combout\ = (\ir_1|r_1|dout\(15)) # ((\ir_1|r_1|dout\(13) & ((!\ir_1|r_1|dout\(14)))) # (!\ir_1|r_1|dout\(13) & (state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => \ir_1|r_1|dout\(15),
	datac => \ir_1|r_1|dout\(14),
	datad => \ir_1|r_1|dout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~38_combout\);

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(28),
	combout => \input~combout\(28));

-- Location: LC_X7_Y9_N8
\mem|mem_reg[4][12]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[12]~3\ = ((\input~combout\(28) & (dcon(1) & !dcon(0))))
-- \mem|mem_reg[4][12]~regout\ = DFFEAS(\m_2|outp[12]~3\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \input~combout\(28),
	datac => dcon(1),
	datad => dcon(0),
	aclr => GND,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[12]~3\,
	regout => \mem|mem_reg[4][12]~regout\);

-- Location: LC_X3_Y7_N4
\mem|mem_reg[15][12]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[15][12]~regout\ = DFFEAS((((\m_2|outp[12]~3\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~23_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[12]~3\,
	aclr => GND,
	ena => \mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[15][12]~regout\);

-- Location: LC_X8_Y9_N2
\mem|mem_reg[12][12]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[12][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~1_combout\, \m_2|outp[12]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[12]~3\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[12][12]~regout\);

-- Location: LC_X9_Y9_N6
\mem|mem_reg[14][12]\ : maxv_lcell
-- Equation(s):
-- \mem|do~40\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[14][12]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[12][12]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[12][12]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[12]~3\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~40\,
	regout => \mem|mem_reg[14][12]~regout\);

-- Location: LC_X9_Y9_N7
\mem|mem_reg[13][12]\ : maxv_lcell
-- Equation(s):
-- \mem|do~41\ = (\m_1|outp[0]~7_combout\ & ((\mem|do~40\ & (\mem|mem_reg[15][12]~regout\)) # (!\mem|do~40\ & ((S1_mem_reg[13][12]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|do~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[15][12]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[12]~3\,
	datad => \mem|do~40\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~41\,
	regout => \mem|mem_reg[13][12]~regout\);

-- Location: LC_X9_Y7_N7
\mem|mem_reg[7][12]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[7][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~15_combout\, \m_2|outp[12]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[12]~3\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[7][12]~regout\);

-- Location: LC_X7_Y9_N3
\mem|mem_reg[6][12]\ : maxv_lcell
-- Equation(s):
-- \mem|do~33\ = (\m_1|outp[1]~3_combout\ & (((S1_mem_reg[6][12]) # (\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[4][12]~regout\ & ((!\m_1|outp[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[1]~3_combout\,
	datab => \mem|mem_reg[4][12]~regout\,
	datac => \m_2|outp[12]~3\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~33\,
	regout => \mem|mem_reg[6][12]~regout\);

-- Location: LC_X10_Y8_N4
\mem|mem_reg[5][12]\ : maxv_lcell
-- Equation(s):
-- \mem|do~34\ = (\m_1|outp[0]~7_combout\ & ((\mem|do~33\ & (\mem|mem_reg[7][12]~regout\)) # (!\mem|do~33\ & ((S1_mem_reg[5][12]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|do~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[0]~7_combout\,
	datab => \mem|mem_reg[7][12]~regout\,
	datac => \m_2|outp[12]~3\,
	datad => \mem|do~33\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~34\,
	regout => \mem|mem_reg[5][12]~regout\);

-- Location: LC_X6_Y8_N8
\mem|mem_reg[11][12]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[11][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~21_combout\, \m_2|outp[12]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[12]~3\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[11][12]~regout\);

-- Location: LC_X5_Y8_N8
\mem|mem_reg[8][12]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[8][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~5_combout\, \m_2|outp[12]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[12]~3\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[8][12]~regout\);

-- Location: LC_X5_Y9_N6
\mem|mem_reg[9][12]\ : maxv_lcell
-- Equation(s):
-- \mem|do~35\ = (\m_1|outp[1]~3_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & ((\m_1|outp[0]~7_combout\ & ((S1_mem_reg[9][12]))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[8][12]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[8][12]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[12]~3\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~35\,
	regout => \mem|mem_reg[9][12]~regout\);

-- Location: LC_X6_Y8_N6
\mem|mem_reg[10][12]\ : maxv_lcell
-- Equation(s):
-- \mem|do~36\ = (\m_1|outp[1]~3_combout\ & ((\mem|do~35\ & (\mem|mem_reg[11][12]~regout\)) # (!\mem|do~35\ & ((S1_mem_reg[10][12]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|do~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[11][12]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[12]~3\,
	datad => \mem|do~35\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~36\,
	regout => \mem|mem_reg[10][12]~regout\);

-- Location: LC_X8_Y8_N6
\mem|mem_reg[3][12]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[3][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~11_combout\, \m_2|outp[12]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[12]~3\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[3][12]~regout\);

-- Location: LC_X6_Y10_N0
\mem|mem_reg[0][12]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[0][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~18_combout\, \m_2|outp[12]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[12]~3\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[0][12]~regout\);

-- Location: LC_X7_Y10_N0
\mem|mem_reg[1][12]\ : maxv_lcell
-- Equation(s):
-- \mem|do~37\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[1][12]) # (\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[0][12]~regout\ & ((!\m_1|outp[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[0][12]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[12]~3\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~37\,
	regout => \mem|mem_reg[1][12]~regout\);

-- Location: LC_X8_Y8_N2
\mem|mem_reg[2][12]\ : maxv_lcell
-- Equation(s):
-- \mem|do~38\ = (\m_1|outp[1]~3_combout\ & ((\mem|do~37\ & (\mem|mem_reg[3][12]~regout\)) # (!\mem|do~37\ & ((S1_mem_reg[2][12]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|do~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[3][12]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[12]~3\,
	datad => \mem|do~37\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~38\,
	regout => \mem|mem_reg[2][12]~regout\);

-- Location: LC_X10_Y8_N6
\mem|do~39\ : maxv_lcell
-- Equation(s):
-- \mem|do~39_combout\ = (\m_1|outp[2]~1_combout\ & (\m_1|outp[3]~5_combout\)) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~5_combout\ & (\mem|do~36\)) # (!\m_1|outp[3]~5_combout\ & ((\mem|do~38\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \mem|do~36\,
	datad => \mem|do~38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~39_combout\);

-- Location: LC_X10_Y8_N7
\mem|do~42\ : maxv_lcell
-- Equation(s):
-- \mem|do~42_combout\ = (\m_1|outp[2]~1_combout\ & ((\mem|do~39_combout\ & (\mem|do~41\)) # (!\mem|do~39_combout\ & ((\mem|do~34\))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|do~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|do~41\,
	datac => \mem|do~34\,
	datad => \mem|do~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~42_combout\);

-- Location: LC_X10_Y8_N8
\mem|do[12]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(12) = DFFEAS((((\mem|do~42_combout\) # (!\memrd~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \memrd~regout\,
	datad => \mem|do~42_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(12));

-- Location: LC_X10_Y8_N1
\ir_1|r_1|dout[12]\ : maxv_lcell
-- Equation(s):
-- \ir_1|r_1|dout\(12) = ((GLOBAL(\irwr~regout\) & ((\mem|do\(12)))) # (!GLOBAL(\irwr~regout\) & (\ir_1|r_1|dout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir_1|r_1|dout\(12),
	datac => \irwr~regout\,
	datad => \mem|do\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ir_1|r_1|dout\(12));

-- Location: LC_X12_Y8_N4
\next_state~39\ : maxv_lcell
-- Equation(s):
-- \next_state~39_combout\ = (\ir_1|r_1|dout\(15) & (!\ir_1|r_1|dout\(13) & ((!\ir_1|r_1|dout\(12)) # (!\ir_1|r_1|dout\(14))))) # (!\ir_1|r_1|dout\(15) & (!\ir_1|r_1|dout\(14) & ((\ir_1|r_1|dout\(13)) # (!\ir_1|r_1|dout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "114d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(14),
	datab => \ir_1|r_1|dout\(15),
	datac => \ir_1|r_1|dout\(12),
	datad => \ir_1|r_1|dout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~39_combout\);

-- Location: LC_X12_Y8_N5
\next_state~40\ : maxv_lcell
-- Equation(s):
-- \next_state~40_combout\ = (next_state(3) & ((\next_state~38_combout\) # ((!state(4) & \next_state~39_combout\)))) # (!next_state(3) & (!state(4) & ((\next_state~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => next_state(3),
	datab => state(4),
	datac => \next_state~38_combout\,
	datad => \next_state~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~40_combout\);

-- Location: LC_X12_Y7_N2
\next_state~41\ : maxv_lcell
-- Equation(s):
-- \next_state~41_combout\ = (state(0) & (\next_state~37_combout\)) # (!state(0) & (((!state(2) & \next_state~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8d88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \next_state~37_combout\,
	datac => state(2),
	datad => \next_state~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~41_combout\);

-- Location: LC_X12_Y7_N3
\next_state~43\ : maxv_lcell
-- Equation(s):
-- \next_state~43_combout\ = (state(3) & (((state(1))))) # (!state(3) & ((state(1) & ((\next_state~41_combout\))) # (!state(1) & (\next_state~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \next_state~42_combout\,
	datac => state(1),
	datad => \next_state~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~43_combout\);

-- Location: LC_X12_Y7_N4
\next_state[3]\ : maxv_lcell
-- Equation(s):
-- next_state(3) = DFFEAS((state(3) & ((\next_state~43_combout\ & (\next_state~45_combout\)) # (!\next_state~43_combout\ & ((\next_state~35_combout\))))) # (!state(3) & (((\next_state~43_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(3),
	datab => \next_state~45_combout\,
	datac => \next_state~35_combout\,
	datad => \next_state~43_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => next_state(3));

-- Location: LC_X11_Y7_N0
\next_state~24\ : maxv_lcell
-- Equation(s):
-- \next_state~24_combout\ = (state(0) & (((!state(1) & state(4))))) # (!state(0) & ((state(4)) # (state(3) $ (!state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f21",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(0),
	datac => state(1),
	datad => state(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~24_combout\);

-- Location: LC_X10_Y8_N9
\Equal20~0\ : maxv_lcell
-- Equation(s):
-- \Equal20~0_combout\ = (\ir_1|r_1|dout\(15)) # ((\ir_1|r_1|dout\(12)) # ((\ir_1|r_1|dout\(13)) # (!\ir_1|r_1|dout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(15),
	datab => \ir_1|r_1|dout\(12),
	datac => \ir_1|r_1|dout\(13),
	datad => \ir_1|r_1|dout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal20~0_combout\);

-- Location: LC_X9_Y8_N6
\Equal24~0\ : maxv_lcell
-- Equation(s):
-- \Equal24~0_combout\ = (((\ir_1|r_1|dout\(14) & !\ir_1|r_1|dout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir_1|r_1|dout\(14),
	datad => \ir_1|r_1|dout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal24~0_combout\);

-- Location: LC_X10_Y8_N2
\next_state[1]~20\ : maxv_lcell
-- Equation(s):
-- \next_state[1]~20_combout\ = (state(4) & (((\ir_1|r_1|dout\(12)) # (!\ir_1|r_1|dout\(13))) # (!\Equal24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => \Equal24~0_combout\,
	datac => \ir_1|r_1|dout\(13),
	datad => \ir_1|r_1|dout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state[1]~20_combout\);

-- Location: LC_X11_Y8_N5
\next_state[1]~21\ : maxv_lcell
-- Equation(s):
-- \next_state[1]~21_combout\ = (state(0) & (!state(4) & (\Equal20~0_combout\))) # (!state(0) & (((\next_state[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7340",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(0),
	datac => \Equal20~0_combout\,
	datad => \next_state[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state[1]~21_combout\);

-- Location: LC_X12_Y8_N8
\next_state~32\ : maxv_lcell
-- Equation(s):
-- \next_state~32_combout\ = (!state(4) & ((\ir_1|r_1|dout\(15)) # ((\ir_1|r_1|dout\(12) & !\ir_1|r_1|dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4454",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => \ir_1|r_1|dout\(15),
	datac => \ir_1|r_1|dout\(12),
	datad => \ir_1|r_1|dout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~32_combout\);

-- Location: LC_X11_Y8_N8
\next_state~33\ : maxv_lcell
-- Equation(s):
-- \next_state~33_combout\ = (state(1) & ((state(0)) # ((\next_state[1]~21_combout\) # (\next_state~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datac => \next_state[1]~21_combout\,
	datad => \next_state~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~33_combout\);

-- Location: LC_X10_Y8_N5
\next_state~11\ : maxv_lcell
-- Equation(s):
-- \next_state~11_combout\ = ((\ir_1|r_1|dout\(12) & ((\ir_1|r_1|dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir_1|r_1|dout\(12),
	datad => \ir_1|r_1|dout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~11_combout\);

-- Location: LC_X11_Y8_N1
\next_state[1]~28\ : maxv_lcell
-- Equation(s):
-- \next_state[1]~28_combout\ = (\ir_1|r_1|dout\(15) & ((\ir_1|r_1|dout\(13)) # ((state(0)) # (\next_state~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(13),
	datab => state(0),
	datac => \ir_1|r_1|dout\(15),
	datad => \next_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state[1]~28_combout\);

-- Location: LC_X12_Y8_N2
\next_state[1]~29\ : maxv_lcell
-- Equation(s):
-- \next_state[1]~29_combout\ = ((state(0) & ((\ir_1|r_1|dout\(13)) # (!\ir_1|r_1|dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => \ir_1|r_1|dout\(14),
	datad => \ir_1|r_1|dout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state[1]~29_combout\);

-- Location: LC_X10_Y8_N0
\next_state~7\ : maxv_lcell
-- Equation(s):
-- \next_state~7_combout\ = (!\ir_1|r_1|dout\(14) & (((!\ir_1|r_1|dout\(13) & \ir_1|r_1|dout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(14),
	datac => \ir_1|r_1|dout\(13),
	datad => \ir_1|r_1|dout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~7_combout\);

-- Location: LC_X11_Y8_N6
\next_state[1]~27\ : maxv_lcell
-- Equation(s):
-- \next_state[1]~27_combout\ = (state(2) & (state(0) & (state(3) & !\next_state~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(0),
	datac => state(3),
	datad => \next_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state[1]~27_combout\);

-- Location: LC_X11_Y8_N7
\next_state[1]~30\ : maxv_lcell
-- Equation(s):
-- \next_state[1]~30_combout\ = (\next_state[1]~27_combout\) # ((\memwr~10\ & ((\next_state[1]~28_combout\) # (\next_state[1]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~10\,
	datab => \next_state[1]~28_combout\,
	datac => \next_state[1]~29_combout\,
	datad => \next_state[1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state[1]~30_combout\);

-- Location: LC_X10_Y8_N3
\Equal24~1\ : maxv_lcell
-- Equation(s):
-- \Equal24~1_combout\ = (!\ir_1|r_1|dout\(15) & (\ir_1|r_1|dout\(12) & (\ir_1|r_1|dout\(13) & \ir_1|r_1|dout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(15),
	datab => \ir_1|r_1|dout\(12),
	datac => \ir_1|r_1|dout\(13),
	datad => \ir_1|r_1|dout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal24~1_combout\);

-- Location: LC_X11_Y8_N2
\next_state[1]~25\ : maxv_lcell
-- Equation(s):
-- \next_state[1]~25_combout\ = (state(1) & (\next_state[1]~20_combout\ & (!state(0) & !\Equal24~1_combout\))) # (!state(1) & (((state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5058",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => \next_state[1]~20_combout\,
	datac => state(0),
	datad => \Equal24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state[1]~25_combout\);

-- Location: LC_X11_Y8_N3
\next_state[1]~26\ : maxv_lcell
-- Equation(s):
-- \next_state[1]~26_combout\ = (state(2) & (((state(3))))) # (!state(2) & ((\next_state[1]~25_combout\) # ((state(1) & state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(1),
	datac => state(3),
	datad => \next_state[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state[1]~26_combout\);

-- Location: LC_X11_Y8_N4
\next_state[1]~31\ : maxv_lcell
-- Equation(s):
-- \next_state[1]~31_combout\ = (state(1) & (!\next_state[1]~30_combout\ & ((!\next_state[1]~26_combout\) # (!state(4))))) # (!state(1) & (((!\next_state[1]~26_combout\)) # (!state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "135f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(4),
	datac => \next_state[1]~30_combout\,
	datad => \next_state[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state[1]~31_combout\);

-- Location: LC_X11_Y8_N9
\next_state[2]\ : maxv_lcell
-- Equation(s):
-- next_state(2) = DFFEAS((state(2) & (((\next_state~24_combout\)))) # (!state(2) & (!state(3) & ((\next_state~33_combout\)))), GLOBAL(\clk~combout\), VCC, , \next_state[1]~31_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b1a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(2),
	datab => state(3),
	datac => \next_state~24_combout\,
	datad => \next_state~33_combout\,
	aclr => GND,
	ena => \next_state[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => next_state(2));

-- Location: LC_X12_Y8_N0
\next_state~23\ : maxv_lcell
-- Equation(s):
-- \next_state~23_combout\ = ((state(4)) # (state(1) $ (state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => state(1),
	datac => state(4),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~23_combout\);

-- Location: LC_X12_Y8_N3
\next_state~19\ : maxv_lcell
-- Equation(s):
-- \next_state~19_combout\ = (state(4)) # ((\ir_1|r_1|dout\(15) & ((!\ir_1|r_1|dout\(14)))) # (!\ir_1|r_1|dout\(15) & ((\ir_1|r_1|dout\(14)) # (!\ir_1|r_1|dout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => \ir_1|r_1|dout\(15),
	datac => \ir_1|r_1|dout\(13),
	datad => \ir_1|r_1|dout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~19_combout\);

-- Location: LC_X12_Y8_N7
\next_state~22\ : maxv_lcell
-- Equation(s):
-- \next_state~22_combout\ = (state(1) & (\next_state~19_combout\ & (!state(0) & !\next_state[1]~21_combout\))) # (!state(1) & (((state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3038",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~19_combout\,
	datab => state(1),
	datac => state(0),
	datad => \next_state[1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~22_combout\);

-- Location: LC_X11_Y8_N0
\next_state[1]\ : maxv_lcell
-- Equation(s):
-- next_state(1) = DFFEAS((state(3) & (\next_state~23_combout\)) # (!state(3) & (((\next_state~22_combout\)))), GLOBAL(\clk~combout\), VCC, , \next_state[1]~31_combout\, \next_state~24_combout\, , , state(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \next_state~23_combout\,
	datab => state(3),
	datac => \next_state~24_combout\,
	datad => \next_state~22_combout\,
	aclr => GND,
	sload => state(2),
	ena => \next_state[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => next_state(1));

-- Location: LC_X14_Y8_N7
\state[1]\ : maxv_lcell
-- Equation(s):
-- \next_state~1\ = (state(2) & (((!\Equal34~2_combout\) # (!state[1])))) # (!state(2) & ((next_state(0)) # ((state[1]))))
-- state(1) = DFFEAS(\next_state~1\, GLOBAL(\clk~combout\), VCC, , , next_state(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5efe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(2),
	datab => next_state(0),
	datac => next_state(1),
	datad => \Equal34~2_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~1\,
	regout => state(1));

-- Location: LC_X12_Y3_N9
irwr : maxv_lcell
-- Equation(s):
-- \irwr~regout\ = DFFEAS((\memwr~10\ & (state(0) & ((\irwr~regout\) # (!state(1))))) # (!\memwr~10\ & (((\irwr~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0b8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(0),
	datab => \memwr~10\,
	datac => \irwr~regout\,
	datad => state(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \irwr~regout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(29),
	combout => \input~combout\(29));

-- Location: LC_X5_Y8_N6
\mem|mem_reg[8][13]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[13]~0\ = ((\input~combout\(29) & (!dcon(0) & dcon(1))))
-- \mem|mem_reg[8][13]~regout\ = DFFEAS(\m_2|outp[13]~0\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \input~combout\(29),
	datac => dcon(0),
	datad => dcon(1),
	aclr => GND,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[13]~0\,
	regout => \mem|mem_reg[8][13]~regout\);

-- Location: LC_X2_Y7_N2
\mem|mem_reg[15][13]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[15][13]~regout\ = DFFEAS((((\m_2|outp[13]~0\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~23_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[13]~0\,
	aclr => GND,
	ena => \mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[15][13]~regout\);

-- Location: LC_X7_Y7_N6
\mem|mem_reg[9][13]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[9][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~22_combout\, \m_2|outp[13]~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[13]~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[9][13]~regout\);

-- Location: LC_X2_Y8_N1
\mem|mem_reg[11][13]\ : maxv_lcell
-- Equation(s):
-- \mem|do~7\ = (\m_1|outp[1]~3_combout\ & (((S1_mem_reg[11][13]) # (\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[9][13]~regout\ & ((!\m_1|outp[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[9][13]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[13]~0\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~7\,
	regout => \mem|mem_reg[11][13]~regout\);

-- Location: LC_X2_Y8_N2
\mem|mem_reg[13][13]\ : maxv_lcell
-- Equation(s):
-- \mem|do~8\ = (\m_1|outp[2]~1_combout\ & ((\mem|do~7\ & (\mem|mem_reg[15][13]~regout\)) # (!\mem|do~7\ & ((S1_mem_reg[13][13]))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|do~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[15][13]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[13]~0\,
	datad => \mem|do~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~8\,
	regout => \mem|mem_reg[13][13]~regout\);

-- Location: LC_X8_Y9_N0
\mem|mem_reg[14][13]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[14][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~7_combout\, \m_2|outp[13]~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[13]~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[14][13]~regout\);

-- Location: LC_X6_Y9_N9
\mem|mem_reg[10][13]\ : maxv_lcell
-- Equation(s):
-- \mem|do~0\ = (\m_1|outp[1]~3_combout\ & (((S1_mem_reg[10][13]) # (\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[8][13]~regout\ & ((!\m_1|outp[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[1]~3_combout\,
	datab => \mem|mem_reg[8][13]~regout\,
	datac => \m_2|outp[13]~0\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~0\,
	regout => \mem|mem_reg[10][13]~regout\);

-- Location: LC_X8_Y9_N6
\mem|mem_reg[12][13]\ : maxv_lcell
-- Equation(s):
-- \mem|do~1\ = (\m_1|outp[2]~1_combout\ & ((\mem|do~0\ & (\mem|mem_reg[14][13]~regout\)) # (!\mem|do~0\ & ((S1_mem_reg[12][13]))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|do~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|mem_reg[14][13]~regout\,
	datac => \m_2|outp[13]~0\,
	datad => \mem|do~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~1\,
	regout => \mem|mem_reg[12][13]~regout\);

-- Location: LC_X4_Y8_N6
\mem|mem_reg[6][13]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[6][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~19_combout\, \m_2|outp[13]~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[13]~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[6][13]~regout\);

-- Location: LC_X6_Y10_N3
\mem|mem_reg[0][13]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[0][13]~regout\ = DFFEAS((((\m_2|outp[13]~0\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~18_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[13]~0\,
	aclr => GND,
	ena => \mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[0][13]~regout\);

-- Location: LC_X6_Y10_N6
\mem|mem_reg[2][13]\ : maxv_lcell
-- Equation(s):
-- \mem|do~4\ = (\m_1|outp[1]~3_combout\ & (((S1_mem_reg[2][13]) # (\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[0][13]~regout\ & ((!\m_1|outp[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[0][13]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[13]~0\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~4\,
	regout => \mem|mem_reg[2][13]~regout\);

-- Location: LC_X6_Y9_N5
\mem|mem_reg[4][13]\ : maxv_lcell
-- Equation(s):
-- \mem|do~5\ = (\m_1|outp[2]~1_combout\ & ((\mem|do~4\ & (\mem|mem_reg[6][13]~regout\)) # (!\mem|do~4\ & ((S1_mem_reg[4][13]))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|do~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[6][13]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[13]~0\,
	datad => \mem|do~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~5\,
	regout => \mem|mem_reg[4][13]~regout\);

-- Location: LC_X9_Y7_N1
\mem|mem_reg[7][13]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[7][13]~regout\ = DFFEAS((((\m_2|outp[13]~0\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \m_2|outp[13]~0\,
	aclr => GND,
	ena => \mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[7][13]~regout\);

-- Location: LC_X5_Y9_N7
\mem|mem_reg[1][13]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[1][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~13_combout\, \m_2|outp[13]~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m_2|outp[13]~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[1][13]~regout\);

-- Location: LC_X5_Y7_N0
\mem|mem_reg[3][13]\ : maxv_lcell
-- Equation(s):
-- \mem|do~2\ = (\m_1|outp[2]~1_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[3][13]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[1][13]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[1][13]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[13]~0\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~2\,
	regout => \mem|mem_reg[3][13]~regout\);

-- Location: LC_X7_Y8_N5
\mem|mem_reg[5][13]\ : maxv_lcell
-- Equation(s):
-- \mem|do~3\ = (\mem|do~2\ & ((\mem|mem_reg[7][13]~regout\) # ((!\m_1|outp[2]~1_combout\)))) # (!\mem|do~2\ & (((S1_mem_reg[5][13] & \m_1|outp[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|mem_reg[7][13]~regout\,
	datab => \mem|do~2\,
	datac => \m_2|outp[13]~0\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~3\,
	regout => \mem|mem_reg[5][13]~regout\);

-- Location: LC_X7_Y8_N6
\mem|do~6\ : maxv_lcell
-- Equation(s):
-- \mem|do~6_combout\ = (\m_1|outp[0]~7_combout\ & ((\m_1|outp[3]~5_combout\) # ((\mem|do~3\)))) # (!\m_1|outp[0]~7_combout\ & (!\m_1|outp[3]~5_combout\ & (\mem|do~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[0]~7_combout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \mem|do~5\,
	datad => \mem|do~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~6_combout\);

-- Location: LC_X7_Y8_N7
\mem|do~9\ : maxv_lcell
-- Equation(s):
-- \mem|do~9_combout\ = (\m_1|outp[3]~5_combout\ & ((\mem|do~6_combout\ & (\mem|do~8\)) # (!\mem|do~6_combout\ & ((\mem|do~1\))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|do~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[3]~5_combout\,
	datab => \mem|do~8\,
	datac => \mem|do~1\,
	datad => \mem|do~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|do~9_combout\);

-- Location: LC_X7_Y8_N8
\mem|do[13]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(13) = DFFEAS((((\mem|do~9_combout\)) # (!\memrd~regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \memrd~regout\,
	datad => \mem|do~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(13));

-- Location: LC_X7_Y8_N0
\ir_1|r_1|dout[13]\ : maxv_lcell
-- Equation(s):
-- \ir_1|r_1|dout\(13) = ((GLOBAL(\irwr~regout\) & ((\mem|do\(13)))) # (!GLOBAL(\irwr~regout\) & (\ir_1|r_1|dout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir_1|r_1|dout\(13),
	datac => \irwr~regout\,
	datad => \mem|do\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ir_1|r_1|dout\(13));

-- Location: LC_X10_Y9_N9
\next_state~47\ : maxv_lcell
-- Equation(s):
-- \next_state~47_combout\ = (state(4) & ((next_state(4)) # ((!state(2) & !state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "888c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => next_state(4),
	datab => state(4),
	datac => state(2),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~47_combout\);

-- Location: LC_X12_Y9_N8
\next_state~55\ : maxv_lcell
-- Equation(s):
-- \next_state~55_combout\ = ((state(2) & ((state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => state(2),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~55_combout\);

-- Location: LC_X10_Y9_N7
\next_state~56\ : maxv_lcell
-- Equation(s):
-- \next_state~56_combout\ = (state(4) & (next_state(4))) # (!state(4) & (\next_state~55_combout\ & ((next_state(4)) # (\next_state~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => next_state(4),
	datab => state(4),
	datac => \next_state~55_combout\,
	datad => \next_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~56_combout\);

-- Location: LC_X10_Y9_N8
\next_state~53\ : maxv_lcell
-- Equation(s):
-- \next_state~53_combout\ = (state(4) & ((state(2)) # ((next_state(4) & state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => next_state(4),
	datab => state(4),
	datac => state(2),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~53_combout\);

-- Location: LC_X10_Y9_N6
\next_state~48\ : maxv_lcell
-- Equation(s):
-- \next_state~48_combout\ = (state(4)) # ((next_state(4) & ((\ir_1|r_1|dout\(13)) # (!\Equal24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ecee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => next_state(4),
	datab => state(4),
	datac => \ir_1|r_1|dout\(13),
	datad => \Equal24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~48_combout\);

-- Location: LC_X10_Y9_N0
\state[4]\ : maxv_lcell
-- Equation(s):
-- \next_state~49\ = (state[4]) # ((\ir_1|r_1|dout\(15) & ((\ir_1|r_1|dout\(13)) # (\next_state~11_combout\))))
-- state(4) = DFFEAS(\next_state~49\, GLOBAL(\clk~combout\), VCC, , , next_state(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ir_1|r_1|dout\(13),
	datab => \ir_1|r_1|dout\(15),
	datac => next_state(4),
	datad => \next_state~11_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~49\,
	regout => state(4));

-- Location: LC_X10_Y9_N1
\next_state~50\ : maxv_lcell
-- Equation(s):
-- \next_state~50_combout\ = (next_state(4) & ((\next_state~49\) # ((\Equal24~0_combout\ & \ir_1|r_1|dout\(13))))) # (!next_state(4) & (\Equal24~0_combout\ & (\ir_1|r_1|dout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => next_state(4),
	datab => \Equal24~0_combout\,
	datac => \ir_1|r_1|dout\(13),
	datad => \next_state~49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~50_combout\);

-- Location: LC_X10_Y9_N2
\next_state~51\ : maxv_lcell
-- Equation(s):
-- \next_state~51_combout\ = (state(0) & ((state(2)) # ((\next_state~48_combout\)))) # (!state(0) & (!state(2) & ((\next_state~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => \next_state~48_combout\,
	datad => \next_state~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~51_combout\);

-- Location: LC_X10_Y9_N3
\next_state~52\ : maxv_lcell
-- Equation(s):
-- \next_state~52_combout\ = (state(2) & (state(4) & ((\Equal34~2_combout\) # (!\next_state~51_combout\)))) # (!state(2) & (((\next_state~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(4),
	datac => \Equal34~2_combout\,
	datad => \next_state~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~52_combout\);

-- Location: LC_X10_Y9_N4
\next_state~54\ : maxv_lcell
-- Equation(s):
-- \next_state~54_combout\ = (state(3) & (((state(1))))) # (!state(3) & ((state(1) & ((\next_state~52_combout\))) # (!state(1) & (\next_state~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \next_state~53_combout\,
	datac => state(1),
	datad => \next_state~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~54_combout\);

-- Location: LC_X10_Y9_N5
\next_state[4]\ : maxv_lcell
-- Equation(s):
-- next_state(4) = DFFEAS((state(3) & ((\next_state~54_combout\ & ((\next_state~56_combout\))) # (!\next_state~54_combout\ & (\next_state~47_combout\)))) # (!state(3) & (((\next_state~54_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(3),
	datab => \next_state~47_combout\,
	datac => \next_state~56_combout\,
	datad => \next_state~54_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => next_state(4));

-- Location: LC_X12_Y9_N5
\next_state~6\ : maxv_lcell
-- Equation(s):
-- \next_state~6_combout\ = (state(2) & (!state(3) & (state(1) $ (state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0408",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(3),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~6_combout\);

-- Location: LC_X14_Y8_N4
\next_state~0\ : maxv_lcell
-- Equation(s):
-- \next_state~0_combout\ = (((state(1)) # (state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~0_combout\);

-- Location: LC_X14_Y8_N3
\next_state~2\ : maxv_lcell
-- Equation(s):
-- \next_state~2_combout\ = (\ir_1|r_1|dout\(13) & ((\Equal24~0_combout\ & ((!\ir_1|r_1|dout\(12)))) # (!\Equal24~0_combout\ & (next_state(0))))) # (!\ir_1|r_1|dout\(13) & (next_state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => next_state(0),
	datab => \ir_1|r_1|dout\(12),
	datac => \ir_1|r_1|dout\(13),
	datad => \Equal24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~2_combout\);

-- Location: LC_X14_Y8_N0
\next_state~3\ : maxv_lcell
-- Equation(s):
-- \next_state~3_combout\ = (state(2) & (((state(1))))) # (!state(2) & (((\next_state~2_combout\) # (!state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => state(1),
	datad => \next_state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~3_combout\);

-- Location: LC_X14_Y8_N1
\next_state~4\ : maxv_lcell
-- Equation(s):
-- \next_state~4_combout\ = (state(3) & (((state(0))))) # (!state(3) & ((state(0) & (\next_state~1\)) # (!state(0) & ((\next_state~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \next_state~1\,
	datac => state(0),
	datad => \next_state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~4_combout\);

-- Location: LC_X14_Y8_N2
\next_state~5\ : maxv_lcell
-- Equation(s):
-- \next_state~5_combout\ = (state(3) & (next_state(0) & ((\next_state~0_combout\) # (\next_state~4_combout\)))) # (!state(3) & (((\next_state~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => next_state(0),
	datac => \next_state~0_combout\,
	datad => \next_state~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~5_combout\);

-- Location: LC_X13_Y8_N4
\next_state~15\ : maxv_lcell
-- Equation(s):
-- \next_state~15_combout\ = ((\ir_1|r_1|dout\(14) & (!\ir_1|r_1|dout\(15) & !\ir_1|r_1|dout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir_1|r_1|dout\(14),
	datac => \ir_1|r_1|dout\(15),
	datad => \ir_1|r_1|dout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~15_combout\);

-- Location: LC_X13_Y8_N7
\next_state~16\ : maxv_lcell
-- Equation(s):
-- \next_state~16_combout\ = (\next_state~8\ & ((\next_state~15_combout\ & ((\ir_1|r_1|dout\(12)))) # (!\next_state~15_combout\ & (next_state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~15_combout\,
	datab => next_state(0),
	datac => \next_state~8\,
	datad => \ir_1|r_1|dout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~16_combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\extmeminit~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_extmeminit,
	combout => \extmeminit~combout\);

-- Location: LC_X13_Y8_N3
\next_state~12\ : maxv_lcell
-- Equation(s):
-- \next_state~12_combout\ = (\ir_1|r_1|dout\(14) & ((\ir_1|r_1|dout\(15) $ (!\ir_1|r_1|dout\(13))))) # (!\ir_1|r_1|dout\(14) & ((\ir_1|r_1|dout\(13)) # ((\ir_1|r_1|dout\(12) & !\ir_1|r_1|dout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f50e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(14),
	datab => \ir_1|r_1|dout\(12),
	datac => \ir_1|r_1|dout\(15),
	datad => \ir_1|r_1|dout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~12_combout\);

-- Location: LC_X13_Y8_N5
\next_state~13\ : maxv_lcell
-- Equation(s):
-- \next_state~13_combout\ = (\ir_1|r_1|dout\(15) & (next_state(0) & ((\next_state~11_combout\) # (\next_state~12_combout\)))) # (!\ir_1|r_1|dout\(15) & (((\next_state~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~11_combout\,
	datab => next_state(0),
	datac => \ir_1|r_1|dout\(15),
	datad => \next_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~13_combout\);

-- Location: LC_X13_Y8_N6
\next_state~14\ : maxv_lcell
-- Equation(s):
-- \next_state~14_combout\ = (!state(0) & ((state(1) & ((\next_state~13_combout\))) # (!state(1) & (!\extmeminit~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2301",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => \extmeminit~combout\,
	datad => \next_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~14_combout\);

-- Location: LC_X13_Y8_N8
\next_state~9\ : maxv_lcell
-- Equation(s):
-- \next_state~9_combout\ = (((next_state(0) & !\next_state~7_combout\)) # (!state(2))) # (!\next_state~8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~8\,
	datab => next_state(0),
	datac => state(2),
	datad => \next_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~9_combout\);

-- Location: LC_X13_Y8_N0
\next_state~10\ : maxv_lcell
-- Equation(s):
-- \next_state~10_combout\ = (state(3) & ((\next_state~9_combout\) # ((\next_state~7_combout\ & \ir_1|r_1|dout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~7_combout\,
	datab => state(3),
	datac => \ir_1|r_1|dout\(12),
	datad => \next_state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~10_combout\);

-- Location: LC_X13_Y8_N1
\next_state~17\ : maxv_lcell
-- Equation(s):
-- \next_state~17_combout\ = (\next_state~10_combout\) # ((!state(2) & ((\next_state~16_combout\) # (\next_state~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff54",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \next_state~16_combout\,
	datac => \next_state~14_combout\,
	datad => \next_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~17_combout\);

-- Location: LC_X13_Y8_N2
\next_state[0]\ : maxv_lcell
-- Equation(s):
-- next_state(0) = DFFEAS((state(4) & (((\next_state~5_combout\)))) # (!state(4) & ((\next_state~6_combout\) # ((\next_state~17_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5e4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(4),
	datab => \next_state~6_combout\,
	datac => \next_state~5_combout\,
	datad => \next_state~17_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => next_state(0));

-- Location: LC_X14_Y8_N5
\output[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \output[0]~reg0_regout\ = DFFEAS((((next_state(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => next_state(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[0]~reg0_regout\);

-- Location: LC_X14_Y8_N6
\output[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \output[1]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , next_state(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => next_state(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[1]~reg0_regout\);

-- Location: LC_X8_Y5_N5
\output[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \output[2]~reg0_regout\ = DFFEAS((((next_state(2)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => next_state(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[2]~reg0_regout\);

-- Location: LC_X12_Y8_N9
\output[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \output[3]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , next_state(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => next_state(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[3]~reg0_regout\);

-- Location: LC_X11_Y10_N1
\output[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \output[4]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , next_state(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => next_state(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[4]~reg0_regout\);

-- Location: LC_X12_Y9_N1
\output[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \output[5]~reg0_regout\ = DFFEAS((((state(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => state(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[5]~reg0_regout\);

-- Location: LC_X12_Y3_N7
\output[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \output[6]~reg0_regout\ = DFFEAS((((state(1)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => state(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[6]~reg0_regout\);

-- Location: LC_X14_Y8_N9
\output[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \output[7]~reg0_regout\ = DFFEAS((((state(2)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => state(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[7]~reg0_regout\);

-- Location: LC_X14_Y8_N8
\output[8]~reg0\ : maxv_lcell
-- Equation(s):
-- \output[8]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , state(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => state(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[8]~reg0_regout\);

-- Location: LC_X10_Y4_N6
\output[9]~reg0\ : maxv_lcell
-- Equation(s):
-- \output[9]~reg0_regout\ = DFFEAS((((state(4)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => state(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[9]~reg0_regout\);

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(4));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(5));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(6));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(7));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(8));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(9));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(10));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(11));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(12));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(13));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(14));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(15));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[0]~reg0_regout\,
	oe => VCC,
	padio => ww_output(0));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[1]~reg0_regout\,
	oe => VCC,
	padio => ww_output(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[2]~reg0_regout\,
	oe => VCC,
	padio => ww_output(2));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[3]~reg0_regout\,
	oe => VCC,
	padio => ww_output(3));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[4]~reg0_regout\,
	oe => VCC,
	padio => ww_output(4));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[5]~reg0_regout\,
	oe => VCC,
	padio => ww_output(5));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[6]~reg0_regout\,
	oe => VCC,
	padio => ww_output(6));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[7]~reg0_regout\,
	oe => VCC,
	padio => ww_output(7));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[8]~reg0_regout\,
	oe => VCC,
	padio => ww_output(8));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[9]~reg0_regout\,
	oe => VCC,
	padio => ww_output(9));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(27));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(26));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(25));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(24));
END structure;


