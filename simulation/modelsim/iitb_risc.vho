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

-- DATE "11/05/2018 01:35:00"

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
	output : BUFFER std_logic_vector(9 DOWNTO 0)
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
SIGNAL \next_state~24_combout\ : std_logic;
SIGNAL \iord~7_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \iord~15_combout\ : std_logic;
SIGNAL \iord~14_combout\ : std_logic;
SIGNAL \memwr~11_combout\ : std_logic;
SIGNAL \iord~4_combout\ : std_logic;
SIGNAL \iord~3_combout\ : std_logic;
SIGNAL \iord~13_combout\ : std_logic;
SIGNAL \pcwr~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \aluop[0]~0_combout\ : std_logic;
SIGNAL \aluop[0]~1_combout\ : std_logic;
SIGNAL \alusrcb[2]~7_combout\ : std_logic;
SIGNAL \alud~0_combout\ : std_logic;
SIGNAL \pcsrc~1_combout\ : std_logic;
SIGNAL \pcsrc~0_combout\ : std_logic;
SIGNAL \pcsrc~regout\ : std_logic;
SIGNAL \m_7|outp[1]~3_combout\ : std_logic;
SIGNAL \alusrcb~5_combout\ : std_logic;
SIGNAL \alusrcb~4_combout\ : std_logic;
SIGNAL \priorityin~10_combout\ : std_logic;
SIGNAL \dcon~3_combout\ : std_logic;
SIGNAL \dcon[0]~2_combout\ : std_logic;
SIGNAL \dcon[0]~5_combout\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \memwr~6_combout\ : std_logic;
SIGNAL \memwr~7_combout\ : std_logic;
SIGNAL \memwr~12_combout\ : std_logic;
SIGNAL \memwr~13_combout\ : std_logic;
SIGNAL \memwr~regout\ : std_logic;
SIGNAL \mem|Decoder0~4_combout\ : std_logic;
SIGNAL \mem|Decoder0~5_combout\ : std_logic;
SIGNAL \m_2|outp[0]~7\ : std_logic;
SIGNAL \mem|Decoder0~10_combout\ : std_logic;
SIGNAL \mem|Decoder0~21_combout\ : std_logic;
SIGNAL \mem|mem_reg[11][0]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][0]~regout\ : std_logic;
SIGNAL \mem|Decoder0~2_combout\ : std_logic;
SIGNAL \mem|Decoder0~3_combout\ : std_logic;
SIGNAL \mem|Mux15~0\ : std_logic;
SIGNAL \mem|Decoder0~12_combout\ : std_logic;
SIGNAL \mem|Decoder0~22_combout\ : std_logic;
SIGNAL \mem|Mux15~1\ : std_logic;
SIGNAL \mem|Decoder0~14_combout\ : std_logic;
SIGNAL \mem|Decoder0~23_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][0]~regout\ : std_logic;
SIGNAL \mem|Decoder0~0_combout\ : std_logic;
SIGNAL \mem|Decoder0~1_combout\ : std_logic;
SIGNAL \mem|mem_reg[12][0]~regout\ : std_logic;
SIGNAL \mem|Decoder0~8_combout\ : std_logic;
SIGNAL \mem|Decoder0~20_combout\ : std_logic;
SIGNAL \mem|Mux15~7\ : std_logic;
SIGNAL \mem|Decoder0~6_combout\ : std_logic;
SIGNAL \mem|Decoder0~7_combout\ : std_logic;
SIGNAL \mem|Mux15~8\ : std_logic;
SIGNAL \mem|Decoder0~15_combout\ : std_logic;
SIGNAL \mem|mem_reg[7][0]~regout\ : std_logic;
SIGNAL \mem|Decoder0~16_combout\ : std_logic;
SIGNAL \mem|mem_reg[4][0]~regout\ : std_logic;
SIGNAL \mem|Decoder0~9_combout\ : std_logic;
SIGNAL \mem|Mux15~2\ : std_logic;
SIGNAL \mem|Decoder0~19_combout\ : std_logic;
SIGNAL \mem|Mux15~3\ : std_logic;
SIGNAL \mem|Decoder0~11_combout\ : std_logic;
SIGNAL \mem|mem_reg[3][0]~regout\ : std_logic;
SIGNAL \mem|Decoder0~18_combout\ : std_logic;
SIGNAL \mem|mem_reg[0][0]~regout\ : std_logic;
SIGNAL \mem|Decoder0~17_combout\ : std_logic;
SIGNAL \mem|Mux15~4\ : std_logic;
SIGNAL \mem|Decoder0~13_combout\ : std_logic;
SIGNAL \mem|Mux15~5\ : std_logic;
SIGNAL \mem|Mux15~6_combout\ : std_logic;
SIGNAL \memrd~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \memrd~1_combout\ : std_logic;
SIGNAL \memrd~2_combout\ : std_logic;
SIGNAL \memrd~regout\ : std_logic;
SIGNAL \m_7|outp[0]~2_combout\ : std_logic;
SIGNAL \m_8|outp[0]~2_combout\ : std_logic;
SIGNAL \m_8|outp[0]~3_combout\ : std_logic;
SIGNAL \alu_1|temp_out[0]~85_combout\ : std_logic;
SIGNAL \m_9|outp[0]~3_combout\ : std_logic;
SIGNAL \m_1|outp[0]~6_combout\ : std_logic;
SIGNAL \m_1|outp[0]~7_combout\ : std_logic;
SIGNAL \m_2|outp[2]~8\ : std_logic;
SIGNAL \mem|mem_reg[13][2]~regout\ : std_logic;
SIGNAL \mem|mem_reg[1][2]~regout\ : std_logic;
SIGNAL \mem|Mux13~0\ : std_logic;
SIGNAL \mem|Mux13~1\ : std_logic;
SIGNAL \mem|mem_reg[15][2]~regout\ : std_logic;
SIGNAL \mem|mem_reg[3][2]~regout\ : std_logic;
SIGNAL \mem|Mux13~7\ : std_logic;
SIGNAL \mem|Mux13~8\ : std_logic;
SIGNAL \mem|mem_reg[14][2]~regout\ : std_logic;
SIGNAL \mem|mem_reg[2][2]~regout\ : std_logic;
SIGNAL \mem|Mux13~2\ : std_logic;
SIGNAL \mem|Mux13~3\ : std_logic;
SIGNAL \mem|mem_reg[12][2]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][2]~regout\ : std_logic;
SIGNAL \mem|Mux13~4\ : std_logic;
SIGNAL \mem|Mux13~5\ : std_logic;
SIGNAL \mem|Mux13~6_combout\ : std_logic;
SIGNAL \priorityin[1]~2_combout\ : std_logic;
SIGNAL \priorityin[1]~3_combout\ : std_logic;
SIGNAL \priorityin~8_combout\ : std_logic;
SIGNAL \m_2|outp[3]~9\ : std_logic;
SIGNAL \mem|mem_reg[7][3]~regout\ : std_logic;
SIGNAL \mem|mem_reg[4][3]~regout\ : std_logic;
SIGNAL \mem|Mux12~0\ : std_logic;
SIGNAL \mem|Mux12~1\ : std_logic;
SIGNAL \mem|mem_reg[15][3]~regout\ : std_logic;
SIGNAL \mem|mem_reg[12][3]~regout\ : std_logic;
SIGNAL \mem|Mux12~7\ : std_logic;
SIGNAL \mem|Mux12~8\ : std_logic;
SIGNAL \mem|mem_reg[3][3]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][3]~regout\ : std_logic;
SIGNAL \mem|Mux12~4\ : std_logic;
SIGNAL \mem|Mux12~5\ : std_logic;
SIGNAL \mem|mem_reg[11][3]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][3]~regout\ : std_logic;
SIGNAL \mem|Mux12~2\ : std_logic;
SIGNAL \mem|Mux12~3\ : std_logic;
SIGNAL \mem|Mux12~6_combout\ : std_logic;
SIGNAL \priorityin~12_combout\ : std_logic;
SIGNAL \Equal34~0_combout\ : std_logic;
SIGNAL \priorityin~14_combout\ : std_logic;
SIGNAL \m_2|outp[4]~10\ : std_logic;
SIGNAL \mem|mem_reg[14][4]~regout\ : std_logic;
SIGNAL \mem|mem_reg[2][4]~regout\ : std_logic;
SIGNAL \mem|Mux11~0\ : std_logic;
SIGNAL \mem|Mux11~1\ : std_logic;
SIGNAL \mem|mem_reg[15][4]~regout\ : std_logic;
SIGNAL \mem|mem_reg[3][4]~regout\ : std_logic;
SIGNAL \mem|Mux11~7\ : std_logic;
SIGNAL \mem|Mux11~8\ : std_logic;
SIGNAL \mem|mem_reg[13][4]~regout\ : std_logic;
SIGNAL \mem|mem_reg[1][4]~regout\ : std_logic;
SIGNAL \mem|Mux11~2\ : std_logic;
SIGNAL \mem|Mux11~3\ : std_logic;
SIGNAL \mem|mem_reg[12][4]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][4]~regout\ : std_logic;
SIGNAL \mem|Mux11~4\ : std_logic;
SIGNAL \mem|Mux11~5\ : std_logic;
SIGNAL \mem|Mux11~6_combout\ : std_logic;
SIGNAL \Equal34~1_combout\ : std_logic;
SIGNAL \priorityin~4_combout\ : std_logic;
SIGNAL \m_2|outp[7]~5\ : std_logic;
SIGNAL \mem|mem_reg[7][7]~regout\ : std_logic;
SIGNAL \mem|mem_reg[4][7]~regout\ : std_logic;
SIGNAL \mem|Mux8~0\ : std_logic;
SIGNAL \mem|Mux8~1\ : std_logic;
SIGNAL \mem|mem_reg[11][7]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][7]~regout\ : std_logic;
SIGNAL \mem|Mux8~2\ : std_logic;
SIGNAL \mem|Mux8~3\ : std_logic;
SIGNAL \mem|mem_reg[3][7]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][7]~regout\ : std_logic;
SIGNAL \mem|Mux8~4\ : std_logic;
SIGNAL \mem|Mux8~5\ : std_logic;
SIGNAL \mem|Mux8~6_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][7]~regout\ : std_logic;
SIGNAL \mem|mem_reg[12][7]~regout\ : std_logic;
SIGNAL \mem|Mux8~7\ : std_logic;
SIGNAL \mem|Mux8~8\ : std_logic;
SIGNAL \priorityin~0_combout\ : std_logic;
SIGNAL \m_2|outp[6]~4\ : std_logic;
SIGNAL \mem|mem_reg[13][6]~regout\ : std_logic;
SIGNAL \mem|mem_reg[1][6]~regout\ : std_logic;
SIGNAL \mem|Mux9~0\ : std_logic;
SIGNAL \mem|Mux9~1\ : std_logic;
SIGNAL \mem|mem_reg[15][6]~regout\ : std_logic;
SIGNAL \mem|mem_reg[3][6]~regout\ : std_logic;
SIGNAL \mem|Mux9~7\ : std_logic;
SIGNAL \mem|Mux9~8\ : std_logic;
SIGNAL \mem|mem_reg[12][6]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][6]~regout\ : std_logic;
SIGNAL \mem|Mux9~4\ : std_logic;
SIGNAL \mem|Mux9~5\ : std_logic;
SIGNAL \mem|mem_reg[14][6]~regout\ : std_logic;
SIGNAL \mem|mem_reg[2][6]~regout\ : std_logic;
SIGNAL \mem|Mux9~2\ : std_logic;
SIGNAL \mem|Mux9~3\ : std_logic;
SIGNAL \mem|Mux9~6_combout\ : std_logic;
SIGNAL \Equal34~2_combout\ : std_logic;
SIGNAL \priorityin~16_combout\ : std_logic;
SIGNAL \m_2|outp[5]~11\ : std_logic;
SIGNAL \mem|mem_reg[15][5]~regout\ : std_logic;
SIGNAL \mem|mem_reg[12][5]~regout\ : std_logic;
SIGNAL \mem|Mux10~7\ : std_logic;
SIGNAL \mem|Mux10~8\ : std_logic;
SIGNAL \mem|mem_reg[11][5]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][5]~regout\ : std_logic;
SIGNAL \mem|Mux10~0\ : std_logic;
SIGNAL \mem|Mux10~1\ : std_logic;
SIGNAL \mem|mem_reg[3][5]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][5]~regout\ : std_logic;
SIGNAL \mem|Mux10~4\ : std_logic;
SIGNAL \mem|Mux10~5\ : std_logic;
SIGNAL \mem|mem_reg[7][5]~regout\ : std_logic;
SIGNAL \mem|mem_reg[4][5]~regout\ : std_logic;
SIGNAL \mem|Mux10~2\ : std_logic;
SIGNAL \mem|Mux10~3\ : std_logic;
SIGNAL \mem|Mux10~6_combout\ : std_logic;
SIGNAL \p_1|outp~0_combout\ : std_logic;
SIGNAL \priorityin~6_combout\ : std_logic;
SIGNAL \p_1|outp~2_combout\ : std_logic;
SIGNAL \m_8|outp[1]~4_combout\ : std_logic;
SIGNAL \m_8|outp[1]~5_combout\ : std_logic;
SIGNAL \alu_1|temp_out[1]~81_combout\ : std_logic;
SIGNAL \alu_1|temp_out[1]~82_combout\ : std_logic;
SIGNAL \m_9|outp[1]~1_combout\ : std_logic;
SIGNAL \m_1|outp[1]~2_combout\ : std_logic;
SIGNAL \m_1|outp[1]~3_combout\ : std_logic;
SIGNAL \m_2|outp[1]~6\ : std_logic;
SIGNAL \mem|mem_reg[14][1]~regout\ : std_logic;
SIGNAL \mem|mem_reg[2][1]~regout\ : std_logic;
SIGNAL \mem|Mux14~0\ : std_logic;
SIGNAL \mem|Mux14~1\ : std_logic;
SIGNAL \mem|mem_reg[12][1]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][1]~regout\ : std_logic;
SIGNAL \mem|Mux14~4\ : std_logic;
SIGNAL \mem|Mux14~5\ : std_logic;
SIGNAL \mem|mem_reg[13][1]~regout\ : std_logic;
SIGNAL \mem|mem_reg[1][1]~regout\ : std_logic;
SIGNAL \mem|Mux14~2\ : std_logic;
SIGNAL \mem|Mux14~3\ : std_logic;
SIGNAL \mem|Mux14~6_combout\ : std_logic;
SIGNAL \mem|mem_reg[15][1]~regout\ : std_logic;
SIGNAL \mem|mem_reg[3][1]~regout\ : std_logic;
SIGNAL \mem|Mux14~7\ : std_logic;
SIGNAL \mem|Mux14~8\ : std_logic;
SIGNAL \m_8|outp[6]~9_combout\ : std_logic;
SIGNAL \alu_1|temp_out[14]~112_combout\ : std_logic;
SIGNAL \m_8|outp[6]~8_combout\ : std_logic;
SIGNAL \m_7|outp~15_combout\ : std_logic;
SIGNAL \m_7|Equal1~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s15|xor_i~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[13]~123_combout\ : std_logic;
SIGNAL \alu_1|temp_out[11]~115_combout\ : std_logic;
SIGNAL \alu_1|temp_out[10]~121_combout\ : std_logic;
SIGNAL \m_7|outp~9_combout\ : std_logic;
SIGNAL \alu_1|temp_out[8]~116_combout\ : std_logic;
SIGNAL \alu_1|temp_out[7]~119_combout\ : std_logic;
SIGNAL \alu_1|temp_out[6]~120_combout\ : std_logic;
SIGNAL \alu_1|temp_out[5]~117_combout\ : std_logic;
SIGNAL \m_8|outp[4]~7_combout\ : std_logic;
SIGNAL \alu_1|temp_out[4]~118_combout\ : std_logic;
SIGNAL \m_8|outp[3]~6_combout\ : std_logic;
SIGNAL \m_7|outp~4_combout\ : std_logic;
SIGNAL \m_8|outp[2]~0_combout\ : std_logic;
SIGNAL \m_8|outp[2]~1_combout\ : std_logic;
SIGNAL \alu_1|temp_out[2]~113_combout\ : std_logic;
SIGNAL \alu_1|opr2|s2|bout~combout\ : std_logic;
SIGNAL \m_7|outp~1_combout\ : std_logic;
SIGNAL \alu_1|temp_out[0]~78_combout\ : std_logic;
SIGNAL \alu_1|opr1|a2|cout~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[2]~79_combout\ : std_logic;
SIGNAL \alu_1|temp_out[2]~80_combout\ : std_logic;
SIGNAL \m_9|outp[2]~0_combout\ : std_logic;
SIGNAL \m_7|outp~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s3|bout~combout\ : std_logic;
SIGNAL \alu_1|opr2|s4|bout~combout\ : std_logic;
SIGNAL \alu_1|opr1|a3|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr1|a4|cout~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[4]~98_combout\ : std_logic;
SIGNAL \alu_1|temp_out[4]~99_combout\ : std_logic;
SIGNAL \m_9|outp[4]~13_combout\ : std_logic;
SIGNAL \m_7|outp~14_combout\ : std_logic;
SIGNAL \alu_1|opr1|a5|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s5|bout~combout\ : std_logic;
SIGNAL \alu_1|temp_out[5]~96_combout\ : std_logic;
SIGNAL \alu_1|temp_out[5]~97_combout\ : std_logic;
SIGNAL \m_9|outp[5]~12_combout\ : std_logic;
SIGNAL \m_7|outp~13_combout\ : std_logic;
SIGNAL \alu_1|opr2|s6|bout~combout\ : std_logic;
SIGNAL \alu_1|opr1|a6|cout~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[6]~102_combout\ : std_logic;
SIGNAL \alu_1|temp_out[6]~103_combout\ : std_logic;
SIGNAL \m_9|outp[6]~11_combout\ : std_logic;
SIGNAL \m_7|outp~12_combout\ : std_logic;
SIGNAL \alu_1|opr1|a7|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s7|bout~combout\ : std_logic;
SIGNAL \alu_1|temp_out[7]~100_combout\ : std_logic;
SIGNAL \alu_1|temp_out[7]~101_combout\ : std_logic;
SIGNAL \m_9|outp[7]~10_combout\ : std_logic;
SIGNAL \m_7|outp~11_combout\ : std_logic;
SIGNAL \alu_1|opr2|s8|bout~combout\ : std_logic;
SIGNAL \alu_1|opr1|a8|cout~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[8]~94_combout\ : std_logic;
SIGNAL \alu_1|temp_out[8]~95_combout\ : std_logic;
SIGNAL \m_9|outp[8]~9_combout\ : std_logic;
SIGNAL \m_7|outp~10_combout\ : std_logic;
SIGNAL \alu_1|opr1|a9|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr1|a10|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s9|bout~combout\ : std_logic;
SIGNAL \alu_1|opr2|s10|bout~combout\ : std_logic;
SIGNAL \alu_1|temp_out[10]~104_combout\ : std_logic;
SIGNAL \alu_1|temp_out[10]~105_combout\ : std_logic;
SIGNAL \m_9|outp[10]~7_combout\ : std_logic;
SIGNAL \m_7|outp~8_combout\ : std_logic;
SIGNAL \alu_1|opr2|s11|bout~combout\ : std_logic;
SIGNAL \alu_1|opr1|a11|cout~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[11]~92_combout\ : std_logic;
SIGNAL \alu_1|temp_out[11]~93_combout\ : std_logic;
SIGNAL \m_9|outp[11]~6_combout\ : std_logic;
SIGNAL \alu_1|temp_out[12]~124_combout\ : std_logic;
SIGNAL \alu_1|opr2|s13|xor_i~4_combout\ : std_logic;
SIGNAL \m_7|outp~7_combout\ : std_logic;
SIGNAL \alu_1|opr1|a12|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s12|bout~combout\ : std_logic;
SIGNAL \alu_1|temp_out[12]~110_combout\ : std_logic;
SIGNAL \alu_1|temp_out[12]~111_combout\ : std_logic;
SIGNAL \m_9|outp[12]~5_combout\ : std_logic;
SIGNAL \alu_1|opr2|s13|bout~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s13|bout~1_combout\ : std_logic;
SIGNAL \m_7|outp~6_combout\ : std_logic;
SIGNAL \alu_1|opr1|a13|cout~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[13]~108_combout\ : std_logic;
SIGNAL \alu_1|temp_out[13]~109_combout\ : std_logic;
SIGNAL \m_9|outp[13]~4_combout\ : std_logic;
SIGNAL \m_7|outp~5_combout\ : std_logic;
SIGNAL \alu_1|opr1|a14|cout~0_combout\ : std_logic;
SIGNAL \alu_1|opr2|s14|bout~combout\ : std_logic;
SIGNAL \alu_1|temp_out[14]~86_combout\ : std_logic;
SIGNAL \alu_1|temp_out[14]~87_combout\ : std_logic;
SIGNAL \m_9|outp[14]~14_combout\ : std_logic;
SIGNAL \m_7|outp[14]~16_combout\ : std_logic;
SIGNAL \alu_1|temp_out[15]~89_combout\ : std_logic;
SIGNAL \alu_1|opr1|a15|cout~0_combout\ : std_logic;
SIGNAL \alu_1|temp_out[15]~88_combout\ : std_logic;
SIGNAL \alu_1|temp_out[15]~90_combout\ : std_logic;
SIGNAL \alu_1|temp_out[15]~91_combout\ : std_logic;
SIGNAL \m_9|outp[15]~15_combout\ : std_logic;
SIGNAL \m_7|outp[15]~17_combout\ : std_logic;
SIGNAL \alu_1|cout~0_combout\ : std_logic;
SIGNAL \m_7|outp~18_combout\ : std_logic;
SIGNAL \alu_1|opr1|a16|cout~0_combout\ : std_logic;
SIGNAL \carry_flag|dout~regout\ : std_logic;
SIGNAL \alu_en~0_combout\ : std_logic;
SIGNAL \alud~1_combout\ : std_logic;
SIGNAL \alud~2_combout\ : std_logic;
SIGNAL \alud~regout\ : std_logic;
SIGNAL \alu_en~combout\ : std_logic;
SIGNAL \m_9|outp[9]~8_combout\ : std_logic;
SIGNAL \alu_1|temp_out[9]~122_combout\ : std_logic;
SIGNAL \alu_1|temp_out[9]~106_combout\ : std_logic;
SIGNAL \alu_1|temp_out[9]~107_combout\ : std_logic;
SIGNAL \alu_1|temp_out[3]~114_combout\ : std_logic;
SIGNAL \alu_1|temp_out[3]~83_combout\ : std_logic;
SIGNAL \alu_1|temp_out[3]~84_combout\ : std_logic;
SIGNAL \alu_1|zero_flag~0_combout\ : std_logic;
SIGNAL \alu_1|zero_flag~1_combout\ : std_logic;
SIGNAL \alu_1|zero_flag~2_combout\ : std_logic;
SIGNAL \alu_1|zero_flag~3_combout\ : std_logic;
SIGNAL \alu_1|zero_flag~4_combout\ : std_logic;
SIGNAL \zero_flag|dout~regout\ : std_logic;
SIGNAL \pcwr~1_combout\ : std_logic;
SIGNAL \pcwr~3_combout\ : std_logic;
SIGNAL \pcwr~2_combout\ : std_logic;
SIGNAL \pcwr~regout\ : std_logic;
SIGNAL \m_9|outp[3]~2_combout\ : std_logic;
SIGNAL \m_1|outp[3]~4_combout\ : std_logic;
SIGNAL \m_1|outp[3]~5_combout\ : std_logic;
SIGNAL \m_2|outp[13]~0\ : std_logic;
SIGNAL \mem|mem_reg[15][13]~regout\ : std_logic;
SIGNAL \mem|mem_reg[9][13]~regout\ : std_logic;
SIGNAL \mem|Mux2~7\ : std_logic;
SIGNAL \mem|Mux2~8\ : std_logic;
SIGNAL \mem|mem_reg[0][13]~regout\ : std_logic;
SIGNAL \mem|Mux2~4\ : std_logic;
SIGNAL \mem|mem_reg[6][13]~regout\ : std_logic;
SIGNAL \mem|Mux2~5\ : std_logic;
SIGNAL \mem|mem_reg[7][13]~regout\ : std_logic;
SIGNAL \mem|mem_reg[1][13]~regout\ : std_logic;
SIGNAL \mem|Mux2~2\ : std_logic;
SIGNAL \mem|Mux2~3\ : std_logic;
SIGNAL \mem|Mux2~6_combout\ : std_logic;
SIGNAL \mem|mem_reg[14][13]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][13]~regout\ : std_logic;
SIGNAL \mem|Mux2~0\ : std_logic;
SIGNAL \mem|Mux2~1\ : std_logic;
SIGNAL \m_2|outp[14]~1\ : std_logic;
SIGNAL \mem|mem_reg[13][14]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][14]~regout\ : std_logic;
SIGNAL \mem|Mux1~0\ : std_logic;
SIGNAL \mem|Mux1~1\ : std_logic;
SIGNAL \mem|mem_reg[15][14]~regout\ : std_logic;
SIGNAL \mem|mem_reg[10][14]~regout\ : std_logic;
SIGNAL \mem|Mux1~7\ : std_logic;
SIGNAL \mem|Mux1~8\ : std_logic;
SIGNAL \mem|mem_reg[5][14]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][14]~regout\ : std_logic;
SIGNAL \mem|Mux1~4\ : std_logic;
SIGNAL \mem|Mux1~5\ : std_logic;
SIGNAL \mem|mem_reg[7][14]~regout\ : std_logic;
SIGNAL \mem|mem_reg[2][14]~regout\ : std_logic;
SIGNAL \mem|Mux1~2\ : std_logic;
SIGNAL \mem|Mux1~3\ : std_logic;
SIGNAL \mem|Mux1~6_combout\ : std_logic;
SIGNAL \next_state~44_combout\ : std_logic;
SIGNAL \next_state~45_combout\ : std_logic;
SIGNAL \next_state~35_combout\ : std_logic;
SIGNAL \next_state~42_combout\ : std_logic;
SIGNAL \next_state~36_combout\ : std_logic;
SIGNAL \next_state~37_combout\ : std_logic;
SIGNAL \next_state~39_combout\ : std_logic;
SIGNAL \next_state~38_combout\ : std_logic;
SIGNAL \next_state~40_combout\ : std_logic;
SIGNAL \next_state~41_combout\ : std_logic;
SIGNAL \next_state~43_combout\ : std_logic;
SIGNAL \iord~8\ : std_logic;
SIGNAL \iord~9_combout\ : std_logic;
SIGNAL \iord~10_combout\ : std_logic;
SIGNAL \m_1|outp[2]~0_combout\ : std_logic;
SIGNAL \m_1|outp[2]~1_combout\ : std_logic;
SIGNAL \m_2|outp[12]~3\ : std_logic;
SIGNAL \mem|mem_reg[7][12]~regout\ : std_logic;
SIGNAL \mem|mem_reg[4][12]~regout\ : std_logic;
SIGNAL \mem|Mux3~0\ : std_logic;
SIGNAL \mem|Mux3~1\ : std_logic;
SIGNAL \mem|mem_reg[15][12]~regout\ : std_logic;
SIGNAL \mem|mem_reg[12][12]~regout\ : std_logic;
SIGNAL \mem|Mux3~7\ : std_logic;
SIGNAL \mem|Mux3~8\ : std_logic;
SIGNAL \mem|mem_reg[11][12]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][12]~regout\ : std_logic;
SIGNAL \mem|Mux3~2\ : std_logic;
SIGNAL \mem|Mux3~3\ : std_logic;
SIGNAL \mem|mem_reg[3][12]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][12]~regout\ : std_logic;
SIGNAL \mem|Mux3~4\ : std_logic;
SIGNAL \mem|Mux3~5\ : std_logic;
SIGNAL \mem|Mux3~6_combout\ : std_logic;
SIGNAL \next_state~32_combout\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \Equal24~0_combout\ : std_logic;
SIGNAL \next_state[1]~20_combout\ : std_logic;
SIGNAL \next_state[1]~21_combout\ : std_logic;
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
SIGNAL \memwr~10\ : std_logic;
SIGNAL \irwr~regout\ : std_logic;
SIGNAL \m_2|outp[15]~2\ : std_logic;
SIGNAL \mem|mem_reg[11][15]~regout\ : std_logic;
SIGNAL \mem|mem_reg[8][15]~regout\ : std_logic;
SIGNAL \mem|Mux0~0\ : std_logic;
SIGNAL \mem|Mux0~1\ : std_logic;
SIGNAL \mem|mem_reg[15][15]~regout\ : std_logic;
SIGNAL \mem|mem_reg[12][15]~regout\ : std_logic;
SIGNAL \mem|Mux0~7\ : std_logic;
SIGNAL \mem|Mux0~8\ : std_logic;
SIGNAL \mem|mem_reg[3][15]~regout\ : std_logic;
SIGNAL \mem|mem_reg[0][15]~regout\ : std_logic;
SIGNAL \mem|Mux0~4\ : std_logic;
SIGNAL \mem|Mux0~5\ : std_logic;
SIGNAL \mem|mem_reg[7][15]~regout\ : std_logic;
SIGNAL \mem|mem_reg[4][15]~regout\ : std_logic;
SIGNAL \mem|Mux0~2\ : std_logic;
SIGNAL \mem|Mux0~3\ : std_logic;
SIGNAL \mem|Mux0~6_combout\ : std_logic;
SIGNAL \next_state~47_combout\ : std_logic;
SIGNAL \next_state~55_combout\ : std_logic;
SIGNAL \next_state~56_combout\ : std_logic;
SIGNAL \next_state~53_combout\ : std_logic;
SIGNAL \next_state~49\ : std_logic;
SIGNAL \next_state~50_combout\ : std_logic;
SIGNAL \next_state~48_combout\ : std_logic;
SIGNAL \next_state~51_combout\ : std_logic;
SIGNAL \next_state~52_combout\ : std_logic;
SIGNAL \next_state~54_combout\ : std_logic;
SIGNAL \next_state~23_combout\ : std_logic;
SIGNAL \next_state~19_combout\ : std_logic;
SIGNAL \next_state~22_combout\ : std_logic;
SIGNAL \next_state~8\ : std_logic;
SIGNAL \next_state~6_combout\ : std_logic;
SIGNAL \next_state~0_combout\ : std_logic;
SIGNAL \next_state~1\ : std_logic;
SIGNAL \next_state~2_combout\ : std_logic;
SIGNAL \next_state~3_combout\ : std_logic;
SIGNAL \next_state~4_combout\ : std_logic;
SIGNAL \next_state~5_combout\ : std_logic;
SIGNAL \next_state~9_combout\ : std_logic;
SIGNAL \next_state~10_combout\ : std_logic;
SIGNAL \next_state~15_combout\ : std_logic;
SIGNAL \next_state~16_combout\ : std_logic;
SIGNAL \extmeminit~combout\ : std_logic;
SIGNAL \next_state~12_combout\ : std_logic;
SIGNAL \next_state~13_combout\ : std_logic;
SIGNAL \next_state~14_combout\ : std_logic;
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
SIGNAL \t1|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pc|dout\ : std_logic_vector(15 DOWNTO 0);
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

-- Location: LC_X8_Y5_N8
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

-- Location: LC_X7_Y5_N3
\next_state~24\ : maxv_lcell
-- Equation(s):
-- \next_state~24_combout\ = (state(4) & (((!state(0))) # (!state(1)))) # (!state(4) & (!state(0) & (state(1) $ (!state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50f9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(3),
	datac => state(4),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~24_combout\);

-- Location: LC_X5_Y7_N4
\iord~7\ : maxv_lcell
-- Equation(s):
-- \iord~7_combout\ = (state(1) & ((state(0) & (state(4) & !state(2))) # (!state(0) & ((state(2)))))) # (!state(1) & (state(2) & ((state(0)) # (!state(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5b80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(4),
	datac => state(0),
	datad => state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \iord~7_combout\);

-- Location: LC_X8_Y4_N5
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

-- Location: LC_X7_Y7_N7
\iord~15\ : maxv_lcell
-- Equation(s):
-- \iord~15_combout\ = (!state(2) & (!state(0) & (state(4) & !state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
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
	datad => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \iord~15_combout\);

-- Location: LC_X6_Y6_N9
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

-- Location: LC_X5_Y7_N3
\memwr~11\ : maxv_lcell
-- Equation(s):
-- \memwr~11_combout\ = (!state(3) & (!state(4) & (!state(1) & !state(2))))

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
	datac => state(1),
	datad => state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memwr~11_combout\);

-- Location: LC_X5_Y7_N9
\iord~4\ : maxv_lcell
-- Equation(s):
-- \iord~4_combout\ = (state(4) & ((state(0) & ((state(1)) # (!state(2)))) # (!state(0) & ((state(2)))))) # (!state(4) & (!state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9dd1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(4),
	datac => state(0),
	datad => state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \iord~4_combout\);

-- Location: LC_X5_Y7_N0
\iord~3\ : maxv_lcell
-- Equation(s):
-- \iord~3_combout\ = (state(1) & (state(4) & (state(0) $ (state(2))))) # (!state(1) & (!state(4) & ((state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1980",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(4),
	datac => state(0),
	datad => state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \iord~3_combout\);

-- Location: LC_X5_Y7_N1
\iord~13\ : maxv_lcell
-- Equation(s):
-- \iord~13_combout\ = (!state(3) & ((iord(0) & (\iord~4_combout\)) # (!iord(0) & ((\iord~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => iord(0),
	datab => \iord~4_combout\,
	datac => state(3),
	datad => \iord~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \iord~13_combout\);

-- Location: LC_X5_Y7_N5
\iord[0]\ : maxv_lcell
-- Equation(s):
-- iord(0) = DFFEAS((!\memwr~11_combout\ & ((\iord~13_combout\) # ((iord(0) & !\iord~9_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4454",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memwr~11_combout\,
	datab => \iord~13_combout\,
	datac => iord(0),
	datad => \iord~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => iord(0));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(3),
	combout => \input~combout\(3));

-- Location: LC_X12_Y3_N0
\pcwr~0\ : maxv_lcell
-- Equation(s):
-- \pcwr~0_combout\ = (state(4) $ (((state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => state(4),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pcwr~0_combout\);

-- Location: LC_X7_Y6_N5
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

-- Location: LC_X7_Y6_N9
\Equal0~3\ : maxv_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (((state(1) & !state(0))))

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
	datac => state(1),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X7_Y6_N0
\aluop[0]~0\ : maxv_lcell
-- Equation(s):
-- \aluop[0]~0_combout\ = (state(3) & (state(0) $ (((!state(1) & !state(2)))))) # (!state(3) & (state(2) & ((!state(0)) # (!state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c970",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => state(2),
	datad => state(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \aluop[0]~0_combout\);

-- Location: LC_X7_Y6_N2
\aluop[0]~1\ : maxv_lcell
-- Equation(s):
-- \aluop[0]~1_combout\ = (!\aluop[0]~0_combout\ & (((!state(3) & \Equal0~3_combout\)) # (!state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "040f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \Equal0~3_combout\,
	datac => \aluop[0]~0_combout\,
	datad => state(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \aluop[0]~1_combout\);

-- Location: LC_X7_Y6_N7
\aluop[1]\ : maxv_lcell
-- Equation(s):
-- aluop(1) = DFFEAS((!state(2) & (((state(3))))), GLOBAL(\clk~combout\), VCC, , \aluop[0]~1_combout\, \~GND~combout\, , state(4), state(1))

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
	ena => \aluop[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => aluop(1));

-- Location: LC_X7_Y7_N1
\alusrcb[2]~7\ : maxv_lcell
-- Equation(s):
-- \alusrcb[2]~7_combout\ = (!\aluop[0]~0_combout\ & (((!state(3) & !state(0))) # (!state(4))))

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
	dataa => state(3),
	datab => state(0),
	datac => state(4),
	datad => \aluop[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alusrcb[2]~7_combout\);

-- Location: LC_X10_Y8_N2
\alusrca[0]\ : maxv_lcell
-- Equation(s):
-- alusrca(0) = DFFEAS((state(2) & ((state(0)) # ((!state(3)) # (!state(1))))) # (!state(2) & (((state(3))))), GLOBAL(\clk~combout\), VCC, , \alusrcb[2]~7_combout\, state(1), , , state(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(0),
	datab => state(2),
	datac => state(1),
	datad => state(3),
	aclr => GND,
	sload => state(4),
	ena => \alusrcb[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => alusrca(0));

-- Location: LC_X11_Y8_N6
\alusrca[1]\ : maxv_lcell
-- Equation(s):
-- alusrca(1) = DFFEAS((state(1) & (state(0) & ((!state(2))))), GLOBAL(\clk~combout\), VCC, , \alusrcb[2]~7_combout\, \~GND~combout\, , state(4), state(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(1),
	datab => state(0),
	datac => \~GND~combout\,
	datad => state(2),
	aclr => GND,
	sclr => state(4),
	sload => state(3),
	ena => \alusrcb[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => alusrca(1));

-- Location: LC_X12_Y4_N5
\alud~0\ : maxv_lcell
-- Equation(s):
-- \alud~0_combout\ = (!state(0) & (((!state(1)))))

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
	combout => \alud~0_combout\);

-- Location: LC_X12_Y3_N9
\pcsrc~1\ : maxv_lcell
-- Equation(s):
-- \pcsrc~1_combout\ = (state(4) & (\pcsrc~regout\ & ((state(3)) # (state(0))))) # (!state(4) & (state(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \pcsrc~regout\,
	datac => state(0),
	datad => state(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pcsrc~1_combout\);

-- Location: LC_X12_Y3_N4
\pcsrc~0\ : maxv_lcell
-- Equation(s):
-- \pcsrc~0_combout\ = (state(2)) # ((state(1) & ((\pcsrc~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eecc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datad => \pcsrc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pcsrc~0_combout\);

-- Location: LC_X12_Y3_N2
pcsrc : maxv_lcell
-- Equation(s):
-- \pcsrc~regout\ = DFFEAS((\pcsrc~1_combout\ & ((\pcsrc~regout\) # ((\alud~0_combout\ & \pcsrc~0_combout\)))) # (!\pcsrc~1_combout\ & (((\pcsrc~0_combout\ & \pcsrc~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \alud~0_combout\,
	datab => \pcsrc~1_combout\,
	datac => \pcsrc~0_combout\,
	datad => \pcsrc~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pcsrc~regout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(1),
	combout => \input~combout\(1));

-- Location: LC_X10_Y8_N0
\m_7|outp[1]~3\ : maxv_lcell
-- Equation(s):
-- \m_7|outp[1]~3_combout\ = (!alusrca(0) & ((alusrca(1) & (\ir_1|r_1|dout\(1))) # (!alusrca(1) & ((\pc|dout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(1),
	datab => alusrca(0),
	datac => \ir_1|r_1|dout\(1),
	datad => \pc|dout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp[1]~3_combout\);

-- Location: LC_X10_Y8_N3
\alusrcb[2]\ : maxv_lcell
-- Equation(s):
-- alusrcb(2) = DFFEAS((!state(3) & ((\Equal0~3_combout\) # ((state(2))))), GLOBAL(\clk~combout\), VCC, , \alusrcb[2]~7_combout\, VCC, , , state(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5544",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(3),
	datab => \Equal0~3_combout\,
	datac => VCC,
	datad => state(2),
	aclr => GND,
	sload => state(4),
	ena => \alusrcb[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => alusrcb(2));

-- Location: LC_X10_Y8_N9
\alusrcb[1]\ : maxv_lcell
-- Equation(s):
-- alusrcb(1) = DFFEAS((!state(0) & (state(2) & (state(1) & state(3)))), GLOBAL(\clk~combout\), VCC, , \alusrcb[2]~7_combout\, state(1), , , state(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(0),
	datab => state(2),
	datac => state(1),
	datad => state(3),
	aclr => GND,
	sload => state(4),
	ena => \alusrcb[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => alusrcb(1));

-- Location: LC_X7_Y7_N4
\alusrcb~5\ : maxv_lcell
-- Equation(s):
-- \alusrcb~5_combout\ = (state(2) & (state(1) & ((!state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(1),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alusrcb~5_combout\);

-- Location: LC_X7_Y7_N0
\alusrcb~4\ : maxv_lcell
-- Equation(s):
-- \alusrcb~4_combout\ = (!state(2) & (state(1) $ (((state(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1144",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(1),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alusrcb~4_combout\);

-- Location: LC_X10_Y8_N4
\alusrcb[0]\ : maxv_lcell
-- Equation(s):
-- alusrcb(0) = DFFEAS((state(3) & (\alusrcb~5_combout\)) # (!state(3) & (((\alusrcb~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \alusrcb[2]~7_combout\, VCC, , , state(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(3),
	datab => \alusrcb~5_combout\,
	datac => VCC,
	datad => \alusrcb~4_combout\,
	aclr => GND,
	sload => state(4),
	ena => \alusrcb[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => alusrcb(0));

-- Location: LC_X12_Y4_N4
\priorityin~10\ : maxv_lcell
-- Equation(s):
-- \priorityin~10_combout\ = (priorityin(2) & ((\p_1|outp\(2)) # ((\p_1|outp\(0)) # (!\p_1|outp\(1)))))

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
	dataa => priorityin(2),
	datab => \p_1|outp\(2),
	datac => \p_1|outp\(1),
	datad => \p_1|outp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin~10_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(16),
	combout => \input~combout\(16));

-- Location: LC_X12_Y4_N1
\dcon~3\ : maxv_lcell
-- Equation(s):
-- \dcon~3_combout\ = (state(0) & (((!state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
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
	combout => \dcon~3_combout\);

-- Location: LC_X8_Y4_N9
\dcon[0]~2\ : maxv_lcell
-- Equation(s):
-- \dcon[0]~2_combout\ = (state(4) & (((state(0)) # (!state(1))) # (!state(2)))) # (!state(4) & ((state(1)) # ((state(2) & !state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc7e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(4),
	datac => state(1),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dcon[0]~2_combout\);

-- Location: LC_X8_Y4_N2
\dcon[0]~5\ : maxv_lcell
-- Equation(s):
-- \dcon[0]~5_combout\ = ((!state(3) & ((!\dcon[0]~2_combout\))))

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
	datab => state(3),
	datad => \dcon[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dcon[0]~5_combout\);

-- Location: LC_X8_Y4_N1
\dcon[1]\ : maxv_lcell
-- Equation(s):
-- \Equal0~2\ = ((\memwr~10\ & (!state(1) & !state(0))))
-- dcon(1) = DFFEAS(\Equal0~2\, GLOBAL(\clk~combout\), VCC, , \dcon[0]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \memwr~10\,
	datac => state(1),
	datad => state(0),
	aclr => GND,
	ena => \dcon[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => dcon(1));

-- Location: LC_X8_Y4_N0
\dcon[0]\ : maxv_lcell
-- Equation(s):
-- dcon(0) = DFFEAS((!\Equal0~2\ & ((state(4)) # ((state(3)) # (!\dcon~3_combout\)))), GLOBAL(\clk~combout\), VCC, , \dcon[0]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ef",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(4),
	datab => state(3),
	datac => \dcon~3_combout\,
	datad => \Equal0~2\,
	aclr => GND,
	ena => \dcon[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dcon(0));

-- Location: LC_X7_Y6_N3
\memwr~6\ : maxv_lcell
-- Equation(s):
-- \memwr~6_combout\ = (state(1)) # (((state(2)) # (state(3))) # (!state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => state(2),
	datad => state(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memwr~6_combout\);

-- Location: LC_X7_Y6_N6
\memwr~7\ : maxv_lcell
-- Equation(s):
-- \memwr~7_combout\ = (state(1)) # ((state(0)) # ((state(2)) # (!state(3))))

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
	datab => state(0),
	datac => state(2),
	datad => state(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memwr~7_combout\);

-- Location: LC_X7_Y6_N1
\memwr~12\ : maxv_lcell
-- Equation(s):
-- \memwr~12_combout\ = (!state(3) & ((state(1) & (!state(0) & state(2))) # (!state(1) & (state(0) $ (!state(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0061",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => state(2),
	datad => state(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memwr~12_combout\);

-- Location: LC_X7_Y6_N8
\memwr~13\ : maxv_lcell
-- Equation(s):
-- \memwr~13_combout\ = (\memwr~regout\ & (((state(4))))) # (!\memwr~regout\ & (\memwr~12_combout\ & (state(1) $ (!state(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~regout\,
	datab => \memwr~12_combout\,
	datac => state(1),
	datad => state(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memwr~13_combout\);

-- Location: LC_X7_Y6_N4
memwr : maxv_lcell
-- Equation(s):
-- \memwr~regout\ = DFFEAS((\memwr~regout\ & ((\memwr~13_combout\ & ((\memwr~7_combout\))) # (!\memwr~13_combout\ & (\memwr~6_combout\)))) # (!\memwr~regout\ & (((\memwr~13_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memwr~6_combout\,
	datab => \memwr~regout\,
	datac => \memwr~7_combout\,
	datad => \memwr~13_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memwr~regout\);

-- Location: LC_X12_Y6_N3
\mem|Decoder0~4\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~4_combout\ = (\memwr~regout\ & (!\m_1|outp[2]~1_combout\ & (!\m_1|outp[0]~7_combout\ & !\m_1|outp[1]~3_combout\)))

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
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \m_1|outp[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~4_combout\);

-- Location: LC_X12_Y6_N9
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

-- Location: LC_X13_Y4_N6
\mem|mem_reg[8][0]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[0]~7\ = (\input~combout\(16) & (((!dcon(0) & dcon(1)))))
-- \mem|mem_reg[8][0]~regout\ = DFFEAS(\m_2|outp[0]~7\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~5_combout\, , , , )

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
	dataa => \input~combout\(16),
	datac => dcon(0),
	datad => dcon(1),
	aclr => GND,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[0]~7\,
	regout => \mem|mem_reg[8][0]~regout\);

-- Location: LC_X14_Y6_N9
\mem|Decoder0~10\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~10_combout\ = (\m_1|outp[1]~3_combout\ & (!\m_1|outp[2]~1_combout\ & (\memwr~regout\ & \m_1|outp[0]~7_combout\)))

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
	dataa => \m_1|outp[1]~3_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \memwr~regout\,
	datad => \m_1|outp[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~10_combout\);

-- Location: LC_X14_Y6_N0
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

-- Location: LC_X13_Y6_N7
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

-- Location: LC_X12_Y6_N0
\mem|Decoder0~2\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~2_combout\ = (\memwr~regout\ & (!\m_1|outp[2]~1_combout\ & (!\m_1|outp[0]~7_combout\ & \m_1|outp[1]~3_combout\)))

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
	dataa => \memwr~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \m_1|outp[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~2_combout\);

-- Location: LC_X12_Y6_N8
\mem|Decoder0~3\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~3_combout\ = ((\m_1|outp[3]~5_combout\ & (\mem|Decoder0~2_combout\)))

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
	datac => \mem|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~3_combout\);

-- Location: LC_X13_Y5_N9
\mem|mem_reg[10][0]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux15~0\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[10][0]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[8][0]~regout\))))

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
	combout => \mem|Mux15~0\,
	regout => \mem|mem_reg[10][0]~regout\);

-- Location: LC_X9_Y6_N3
\mem|Decoder0~12\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~12_combout\ = (!\m_1|outp[1]~3_combout\ & (\memwr~regout\ & (!\m_1|outp[2]~1_combout\ & \m_1|outp[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~3_combout\,
	datab => \memwr~regout\,
	datac => \m_1|outp[2]~1_combout\,
	datad => \m_1|outp[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~12_combout\);

-- Location: LC_X9_Y6_N5
\mem|Decoder0~22\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~22_combout\ = (((\m_1|outp[3]~5_combout\ & \mem|Decoder0~12_combout\)))

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
	datad => \mem|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~22_combout\);

-- Location: LC_X13_Y5_N4
\mem|mem_reg[9][0]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux15~1\ = (\m_1|outp[0]~7_combout\ & ((\mem|Mux15~0\ & (\mem|mem_reg[11][0]~regout\)) # (!\mem|Mux15~0\ & ((S1_mem_reg[9][0]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|Mux15~0\))))

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
	datad => \mem|Mux15~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux15~1\,
	regout => \mem|mem_reg[9][0]~regout\);

-- Location: LC_X10_Y9_N2
\mem|Decoder0~14\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~14_combout\ = (\m_1|outp[1]~3_combout\ & (\memwr~regout\ & (\m_1|outp[2]~1_combout\ & \m_1|outp[0]~7_combout\)))

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
	dataa => \m_1|outp[1]~3_combout\,
	datab => \memwr~regout\,
	datac => \m_1|outp[2]~1_combout\,
	datad => \m_1|outp[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~14_combout\);

-- Location: LC_X10_Y9_N3
\mem|Decoder0~23\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~23_combout\ = (((\m_1|outp[3]~5_combout\ & \mem|Decoder0~14_combout\)))

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
	datad => \mem|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~23_combout\);

-- Location: LC_X15_Y9_N0
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

-- Location: LC_X9_Y6_N2
\mem|Decoder0~0\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~0_combout\ = (!\m_1|outp[1]~3_combout\ & (\memwr~regout\ & (\m_1|outp[2]~1_combout\ & !\m_1|outp[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_1|outp[1]~3_combout\,
	datab => \memwr~regout\,
	datac => \m_1|outp[2]~1_combout\,
	datad => \m_1|outp[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~0_combout\);

-- Location: LC_X9_Y6_N4
\mem|Decoder0~1\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~1_combout\ = (((\m_1|outp[3]~5_combout\ & \mem|Decoder0~0_combout\)))

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
	datad => \mem|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~1_combout\);

-- Location: LC_X13_Y7_N3
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

-- Location: LC_X11_Y7_N3
\mem|Decoder0~8\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~8_combout\ = (\memwr~regout\ & (\m_1|outp[2]~1_combout\ & (!\m_1|outp[1]~3_combout\ & \m_1|outp[0]~7_combout\)))

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
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_1|outp[1]~3_combout\,
	datad => \m_1|outp[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~8_combout\);

-- Location: LC_X11_Y7_N5
\mem|Decoder0~20\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~20_combout\ = ((\m_1|outp[3]~5_combout\ & ((\mem|Decoder0~8_combout\))))

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
	datad => \mem|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~20_combout\);

-- Location: LC_X13_Y7_N8
\mem|mem_reg[13][0]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux15~7\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[13][0]) # (\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[12][0]~regout\ & ((!\m_1|outp[1]~3_combout\))))

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
	combout => \mem|Mux15~7\,
	regout => \mem|mem_reg[13][0]~regout\);

-- Location: LC_X11_Y6_N4
\mem|Decoder0~6\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~6_combout\ = (\m_1|outp[2]~1_combout\ & (\memwr~regout\ & (!\m_1|outp[0]~7_combout\ & \m_1|outp[1]~3_combout\)))

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
	dataa => \m_1|outp[2]~1_combout\,
	datab => \memwr~regout\,
	datac => \m_1|outp[0]~7_combout\,
	datad => \m_1|outp[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~6_combout\);

-- Location: LC_X11_Y6_N0
\mem|Decoder0~7\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~7_combout\ = (((\mem|Decoder0~6_combout\ & \m_1|outp[3]~5_combout\)))

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
	datac => \mem|Decoder0~6_combout\,
	datad => \m_1|outp[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~7_combout\);

-- Location: LC_X12_Y8_N7
\mem|mem_reg[14][0]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux15~8\ = (\m_1|outp[1]~3_combout\ & ((\mem|Mux15~7\ & (\mem|mem_reg[15][0]~regout\)) # (!\mem|Mux15~7\ & ((S1_mem_reg[14][0]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|Mux15~7\))))

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
	datad => \mem|Mux15~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux15~8\,
	regout => \mem|mem_reg[14][0]~regout\);

-- Location: LC_X10_Y9_N5
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

-- Location: LC_X15_Y9_N7
\mem|mem_reg[7][0]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[7][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~15_combout\, \m_2|outp[0]~7\, , , VCC)

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
	ena => \mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[7][0]~regout\);

-- Location: LC_X9_Y6_N8
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

-- Location: LC_X8_Y6_N8
\mem|mem_reg[4][0]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[4][0]~regout\ = DFFEAS((((\m_2|outp[0]~7\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~16_combout\, , , , )

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
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[4][0]~regout\);

-- Location: LC_X11_Y7_N8
\mem|Decoder0~9\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~9_combout\ = ((!\m_1|outp[3]~5_combout\ & ((\mem|Decoder0~8_combout\))))

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
	datad => \mem|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~9_combout\);

-- Location: LC_X11_Y6_N9
\mem|mem_reg[5][0]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux15~2\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[5][0]) # (\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[4][0]~regout\ & ((!\m_1|outp[1]~3_combout\))))

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
	datab => \mem|mem_reg[4][0]~regout\,
	datac => \m_2|outp[0]~7\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux15~2\,
	regout => \mem|mem_reg[5][0]~regout\);

-- Location: LC_X11_Y6_N1
\mem|Decoder0~19\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~19_combout\ = (((\mem|Decoder0~6_combout\ & !\m_1|outp[3]~5_combout\)))

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
	datac => \mem|Decoder0~6_combout\,
	datad => \m_1|outp[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~19_combout\);

-- Location: LC_X11_Y6_N6
\mem|mem_reg[6][0]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux15~3\ = (\m_1|outp[1]~3_combout\ & ((\mem|Mux15~2\ & (\mem|mem_reg[7][0]~regout\)) # (!\mem|Mux15~2\ & ((S1_mem_reg[6][0]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|Mux15~2\))))

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
	datad => \mem|Mux15~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux15~3\,
	regout => \mem|mem_reg[6][0]~regout\);

-- Location: LC_X14_Y6_N6
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

-- Location: LC_X15_Y7_N4
\mem|mem_reg[3][0]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[3][0]~regout\ = DFFEAS((((\m_2|outp[0]~7\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~11_combout\, , , , )

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
	ena => \mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[3][0]~regout\);

-- Location: LC_X12_Y6_N4
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

-- Location: LC_X8_Y6_N3
\mem|mem_reg[0][0]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[0][0]~regout\ = DFFEAS((((\m_2|outp[0]~7\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~18_combout\, , , , )

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
	ena => \mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[0][0]~regout\);

-- Location: LC_X12_Y6_N1
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

-- Location: LC_X12_Y7_N0
\mem|mem_reg[2][0]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux15~4\ = (\m_1|outp[1]~3_combout\ & (((S1_mem_reg[2][0]) # (\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[0][0]~regout\ & ((!\m_1|outp[0]~7_combout\))))

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
	dataa => \mem|mem_reg[0][0]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[0]~7\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux15~4\,
	regout => \mem|mem_reg[2][0]~regout\);

-- Location: LC_X9_Y6_N0
\mem|Decoder0~13\ : maxv_lcell
-- Equation(s):
-- \mem|Decoder0~13_combout\ = (((!\m_1|outp[3]~5_combout\ & \mem|Decoder0~12_combout\)))

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
	datad => \mem|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Decoder0~13_combout\);

-- Location: LC_X12_Y7_N1
\mem|mem_reg[1][0]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux15~5\ = (\m_1|outp[0]~7_combout\ & ((\mem|Mux15~4\ & (\mem|mem_reg[3][0]~regout\)) # (!\mem|Mux15~4\ & ((S1_mem_reg[1][0]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|Mux15~4\))))

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
	datad => \mem|Mux15~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux15~5\,
	regout => \mem|mem_reg[1][0]~regout\);

-- Location: LC_X12_Y8_N0
\mem|Mux15~6\ : maxv_lcell
-- Equation(s):
-- \mem|Mux15~6_combout\ = (\m_1|outp[3]~5_combout\ & (((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~5_combout\ & ((\m_1|outp[2]~1_combout\ & (\mem|Mux15~3\)) # (!\m_1|outp[2]~1_combout\ & ((\mem|Mux15~5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux15~3\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \mem|Mux15~5\,
	datad => \m_1|outp[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux15~6_combout\);

-- Location: LC_X6_Y6_N4
\memrd~0\ : maxv_lcell
-- Equation(s):
-- \memrd~0_combout\ = ((state(3) & (!state(0))) # (!state(3) & ((state(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => state(3),
	datad => state(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memrd~0_combout\);

-- Location: LC_X12_Y4_N6
\Equal0~0\ : maxv_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (state(0) & (((!state(1) & \memwr~10\))))

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
	dataa => state(0),
	datac => state(1),
	datad => \memwr~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X6_Y6_N0
\memrd~1\ : maxv_lcell
-- Equation(s):
-- \memrd~1_combout\ = (state(0) & (\memrd~regout\)) # (!state(0) & (((!state(1) & state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memrd~regout\,
	datab => state(1),
	datac => state(2),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memrd~1_combout\);

-- Location: LC_X6_Y6_N6
\memrd~2\ : maxv_lcell
-- Equation(s):
-- \memrd~2_combout\ = (\memrd~regout\ & ((state(1)) # ((!state(0)) # (!state(2))))) # (!\memrd~regout\ & (state(1) & (!state(2) & state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8eaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memrd~regout\,
	datab => state(1),
	datac => state(2),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memrd~2_combout\);

-- Location: LC_X6_Y6_N7
memrd : maxv_lcell
-- Equation(s):
-- \memrd~regout\ = DFFEAS((\Equal0~0_combout\) # ((\memrd~0_combout\ & ((\memrd~2_combout\))) # (!\memrd~0_combout\ & (\memrd~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fedc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memrd~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \memrd~1_combout\,
	datad => \memrd~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memrd~regout\);

-- Location: LC_X12_Y8_N1
\mem|do[0]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(0) = DFFEAS((\m_1|outp[3]~5_combout\ & ((\mem|Mux15~6_combout\ & ((\mem|Mux15~8\))) # (!\mem|Mux15~6_combout\ & (\mem|Mux15~1\)))) # (!\m_1|outp[3]~5_combout\ & (((\mem|Mux15~6_combout\)))), GLOBAL(\clk~combout\), VCC, , \memrd~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|Mux15~1\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \mem|Mux15~8\,
	datad => \mem|Mux15~6_combout\,
	aclr => GND,
	ena => \memrd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(0));

-- Location: LC_X12_Y8_N8
\ir_1|r_1|dout[0]\ : maxv_lcell
-- Equation(s):
-- \ir_1|r_1|dout\(0) = ((GLOBAL(\irwr~regout\) & ((\mem|do\(0)))) # (!GLOBAL(\irwr~regout\) & (\ir_1|r_1|dout\(0))))

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
	dataa => \ir_1|r_1|dout\(0),
	datac => \irwr~regout\,
	datad => \mem|do\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ir_1|r_1|dout\(0));

-- Location: LC_X12_Y8_N2
\m_7|outp[0]~2\ : maxv_lcell
-- Equation(s):
-- \m_7|outp[0]~2_combout\ = (!alusrca(0) & ((alusrca(1) & (\ir_1|r_1|dout\(0))) # (!alusrca(1) & ((\pc|dout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(0),
	datab => alusrca(1),
	datac => \pc|dout\(0),
	datad => alusrca(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp[0]~2_combout\);

-- Location: LC_X10_Y8_N5
\m_8|outp[0]~2\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[0]~2_combout\ = ((alusrcb(0) & ((!\p_1|outp\(0)) # (!alusrcb(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrcb(2),
	datac => alusrcb(0),
	datad => \p_1|outp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[0]~2_combout\);

-- Location: LC_X10_Y8_N6
\m_8|outp[0]~3\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[0]~3_combout\ = (alusrcb(1) & (((!\m_8|outp[0]~2_combout\)))) # (!alusrcb(1) & ((alusrcb(2) & (\ir_1|r_1|dout\(0))) # (!alusrcb(2) & ((\m_8|outp[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "31ec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrcb(2),
	datab => alusrcb(1),
	datac => \ir_1|r_1|dout\(0),
	datad => \m_8|outp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[0]~3_combout\);

-- Location: LC_X7_Y7_N6
\aluop[0]\ : maxv_lcell
-- Equation(s):
-- aluop(0) = DFFEAS((state(2) & (((!state(1))))), GLOBAL(\clk~combout\), VCC, , \aluop[0]~1_combout\, , , state(4), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(2),
	datad => state(1),
	aclr => GND,
	sclr => state(4),
	ena => \aluop[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => aluop(0));

-- Location: LC_X10_Y10_N9
\alu_1|temp_out[0]~85\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[0]~85_combout\ = (aluop(1) & (!aluop(0) & ((!\m_8|outp[0]~3_combout\) # (!\m_7|outp[0]~2_combout\)))) # (!aluop(1) & (\m_7|outp[0]~2_combout\ $ ((\m_8|outp[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0676",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[0]~2_combout\,
	datab => \m_8|outp[0]~3_combout\,
	datac => aluop(1),
	datad => aluop(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[0]~85_combout\);

-- Location: LC_X12_Y6_N5
\t1|dout[0]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(0) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[0]~85_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(0)))))

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
	datab => \alu_1|temp_out[0]~85_combout\,
	datac => \t1|dout\(0),
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(0));

-- Location: LC_X12_Y8_N4
\m_9|outp[0]~3\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[0]~3_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(0)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[0]~85_combout\)))

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
	datab => \alu_1|temp_out[0]~85_combout\,
	datac => \pcsrc~regout\,
	datad => \t1|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[0]~3_combout\);

-- Location: LC_X12_Y8_N5
\pc|dout[0]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(0) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[0]~3_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(0))))

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
	datab => \pcwr~regout\,
	datac => \pc|dout\(0),
	datad => \m_9|outp[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(0));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(0),
	combout => \input~combout\(0));

-- Location: LC_X12_Y8_N6
\m_1|outp[0]~6\ : maxv_lcell
-- Equation(s):
-- \m_1|outp[0]~6_combout\ = ((iord(1) & ((\input~combout\(0)))) # (!iord(1) & (\pc|dout\(0))))

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
	dataa => \pc|dout\(0),
	datac => \input~combout\(0),
	datad => iord(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_1|outp[0]~6_combout\);

-- Location: LC_X12_Y6_N6
\m_1|outp[0]~7\ : maxv_lcell
-- Equation(s):
-- \m_1|outp[0]~7_combout\ = (iord(0) & (!iord(1) & ((\t1|dout\(0))))) # (!iord(0) & (((\m_1|outp[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7430",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => iord(1),
	datab => iord(0),
	datac => \m_1|outp[0]~6_combout\,
	datad => \t1|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_1|outp[0]~7_combout\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(18),
	combout => \input~combout\(18));

-- Location: LC_X11_Y10_N5
\mem|mem_reg[1][2]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[2]~8\ = (dcon(1) & (((\input~combout\(18) & !dcon(0)))))
-- \mem|mem_reg[1][2]~regout\ = DFFEAS(\m_2|outp[2]~8\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~13_combout\, , , , )

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
	datac => \input~combout\(18),
	datad => dcon(0),
	aclr => GND,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[2]~8\,
	regout => \mem|mem_reg[1][2]~regout\);

-- Location: LC_X12_Y10_N5
\mem|mem_reg[13][2]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[13][2]~regout\ = DFFEAS((((\m_2|outp[2]~8\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~20_combout\, , , , )

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
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[13][2]~regout\);

-- Location: LC_X13_Y9_N4
\mem|mem_reg[5][2]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux13~0\ = (\m_1|outp[3]~5_combout\ & (((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~5_combout\ & ((\m_1|outp[2]~1_combout\ & ((S1_mem_reg[5][2]))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[1][2]~regout\))))

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
	dataa => \mem|mem_reg[1][2]~regout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \m_2|outp[2]~8\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux13~0\,
	regout => \mem|mem_reg[5][2]~regout\);

-- Location: LC_X13_Y9_N5
\mem|mem_reg[9][2]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux13~1\ = (\m_1|outp[3]~5_combout\ & ((\mem|Mux13~0\ & (\mem|mem_reg[13][2]~regout\)) # (!\mem|Mux13~0\ & ((S1_mem_reg[9][2]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|Mux13~0\))))

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
	datad => \mem|Mux13~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux13~1\,
	regout => \mem|mem_reg[9][2]~regout\);

-- Location: LC_X14_Y9_N6
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

-- Location: LC_X15_Y6_N6
\mem|mem_reg[3][2]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[3][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~11_combout\, \m_2|outp[2]~8\, , , VCC)

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
	ena => \mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[3][2]~regout\);

-- Location: LC_X15_Y6_N1
\mem|mem_reg[7][2]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux13~7\ = (\m_1|outp[2]~1_combout\ & (((S1_mem_reg[7][2]) # (\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[3][2]~regout\ & ((!\m_1|outp[3]~5_combout\))))

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
	combout => \mem|Mux13~7\,
	regout => \mem|mem_reg[7][2]~regout\);

-- Location: LC_X14_Y6_N1
\mem|mem_reg[11][2]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux13~8\ = (\m_1|outp[3]~5_combout\ & ((\mem|Mux13~7\ & (\mem|mem_reg[15][2]~regout\)) # (!\mem|Mux13~7\ & ((S1_mem_reg[11][2]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|Mux13~7\))))

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
	datad => \mem|Mux13~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux13~8\,
	regout => \mem|mem_reg[11][2]~regout\);

-- Location: LC_X12_Y9_N3
\mem|mem_reg[14][2]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[14][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~7_combout\, \m_2|outp[2]~8\, , , VCC)

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
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[14][2]~regout\);

-- Location: LC_X11_Y10_N2
\mem|mem_reg[2][2]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[2][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~17_combout\, \m_2|outp[2]~8\, , , VCC)

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
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[2][2]~regout\);

-- Location: LC_X11_Y9_N4
\mem|mem_reg[6][2]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux13~2\ = (\m_1|outp[3]~5_combout\ & (((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~5_combout\ & ((\m_1|outp[2]~1_combout\ & ((S1_mem_reg[6][2]))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[2][2]~regout\))))

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
	dataa => \mem|mem_reg[2][2]~regout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \m_2|outp[2]~8\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux13~2\,
	regout => \mem|mem_reg[6][2]~regout\);

-- Location: LC_X11_Y9_N5
\mem|mem_reg[10][2]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux13~3\ = (\m_1|outp[3]~5_combout\ & ((\mem|Mux13~2\ & (\mem|mem_reg[14][2]~regout\)) # (!\mem|Mux13~2\ & ((S1_mem_reg[10][2]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|Mux13~2\))))

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
	dataa => \mem|mem_reg[14][2]~regout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \m_2|outp[2]~8\,
	datad => \mem|Mux13~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux13~3\,
	regout => \mem|mem_reg[10][2]~regout\);

-- Location: LC_X12_Y9_N7
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

-- Location: LC_X14_Y6_N4
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

-- Location: LC_X11_Y5_N6
\mem|mem_reg[4][2]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux13~4\ = (\m_1|outp[2]~1_combout\ & (((S1_mem_reg[4][2]) # (\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[0][2]~regout\ & ((!\m_1|outp[3]~5_combout\))))

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
	dataa => \mem|mem_reg[0][2]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[2]~8\,
	datad => \m_1|outp[3]~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux13~4\,
	regout => \mem|mem_reg[4][2]~regout\);

-- Location: LC_X11_Y5_N7
\mem|mem_reg[8][2]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux13~5\ = (\m_1|outp[3]~5_combout\ & ((\mem|Mux13~4\ & (\mem|mem_reg[12][2]~regout\)) # (!\mem|Mux13~4\ & ((S1_mem_reg[8][2]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|Mux13~4\))))

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
	datad => \mem|Mux13~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux13~5\,
	regout => \mem|mem_reg[8][2]~regout\);

-- Location: LC_X12_Y8_N3
\mem|Mux13~6\ : maxv_lcell
-- Equation(s):
-- \mem|Mux13~6_combout\ = (\m_1|outp[0]~7_combout\ & (\m_1|outp[1]~3_combout\)) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\ & (\mem|Mux13~3\)) # (!\m_1|outp[1]~3_combout\ & ((\mem|Mux13~5\)))))

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
	dataa => \m_1|outp[0]~7_combout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \mem|Mux13~3\,
	datad => \mem|Mux13~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux13~6_combout\);

-- Location: LC_X13_Y8_N3
\mem|do[2]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(2) = DFFEAS((\m_1|outp[0]~7_combout\ & ((\mem|Mux13~6_combout\ & ((\mem|Mux13~8\))) # (!\mem|Mux13~6_combout\ & (\mem|Mux13~1\)))) # (!\m_1|outp[0]~7_combout\ & (((\mem|Mux13~6_combout\)))), GLOBAL(\clk~combout\), VCC, , \memrd~regout\, , , , )

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
	dataa => \m_1|outp[0]~7_combout\,
	datab => \mem|Mux13~1\,
	datac => \mem|Mux13~8\,
	datad => \mem|Mux13~6_combout\,
	aclr => GND,
	ena => \memrd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(2));

-- Location: LC_X13_Y8_N6
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

-- Location: LC_X12_Y3_N5
\priorityin[1]~2\ : maxv_lcell
-- Equation(s):
-- \priorityin[1]~2_combout\ = (state(3)) # ((state(1) & ((!state(2)) # (!state(4)))) # (!state(1) & ((state(4)) # (state(2)))))

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
	dataa => state(1),
	datab => state(4),
	datac => state(3),
	datad => state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin[1]~2_combout\);

-- Location: LC_X12_Y4_N8
\priorityin[1]~3\ : maxv_lcell
-- Equation(s):
-- \priorityin[1]~3_combout\ = (((state(0) & !\priorityin[1]~2_combout\)))

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
	datad => \priorityin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin[1]~3_combout\);

-- Location: LC_X12_Y4_N3
\priorityin[2]\ : maxv_lcell
-- Equation(s):
-- priorityin(2) = DFFEAS((\memwr~10\ & ((\dcon~3_combout\ & ((\ir_1|r_1|dout\(2)))) # (!\dcon~3_combout\ & (\priorityin~10_combout\)))) # (!\memwr~10\ & (\priorityin~10_combout\)), GLOBAL(\clk~combout\), VCC, , \priorityin[1]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \priorityin~10_combout\,
	datab => \memwr~10\,
	datac => \ir_1|r_1|dout\(2),
	datad => \dcon~3_combout\,
	aclr => GND,
	ena => \priorityin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => priorityin(2));

-- Location: LC_X9_Y4_N3
\priorityin~8\ : maxv_lcell
-- Equation(s):
-- \priorityin~8_combout\ = (\p_1|outp\(1)) # (((\p_1|outp\(0)) # (\p_1|outp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_1|outp\(1),
	datac => \p_1|outp\(0),
	datad => \p_1|outp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin~8_combout\);

-- Location: LC_X9_Y4_N1
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

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(19),
	combout => \input~combout\(19));

-- Location: LC_X14_Y9_N4
\mem|mem_reg[4][3]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[3]~9\ = (\input~combout\(19) & (((!dcon(0) & dcon(1)))))
-- \mem|mem_reg[4][3]~regout\ = DFFEAS(\m_2|outp[3]~9\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~16_combout\, , , , )

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
	dataa => \input~combout\(19),
	datac => dcon(0),
	datad => dcon(1),
	aclr => GND,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[3]~9\,
	regout => \mem|mem_reg[4][3]~regout\);

-- Location: LC_X10_Y9_N9
\mem|mem_reg[7][3]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[7][3]~regout\ = DFFEAS((((\m_2|outp[3]~9\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~15_combout\, , , , )

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
	ena => \mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[7][3]~regout\);

-- Location: LC_X11_Y4_N2
\mem|mem_reg[6][3]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux12~0\ = (\m_1|outp[1]~3_combout\ & (((S1_mem_reg[6][3]) # (\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[4][3]~regout\ & ((!\m_1|outp[0]~7_combout\))))

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
	dataa => \mem|mem_reg[4][3]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[3]~9\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux12~0\,
	regout => \mem|mem_reg[6][3]~regout\);

-- Location: LC_X11_Y4_N0
\mem|mem_reg[5][3]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux12~1\ = (\m_1|outp[0]~7_combout\ & ((\mem|Mux12~0\ & (\mem|mem_reg[7][3]~regout\)) # (!\mem|Mux12~0\ & ((S1_mem_reg[5][3]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|Mux12~0\))))

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
	datad => \mem|Mux12~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux12~1\,
	regout => \mem|mem_reg[5][3]~regout\);

-- Location: LC_X14_Y7_N1
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

-- Location: LC_X14_Y8_N2
\mem|mem_reg[12][3]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[12][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~1_combout\, \m_2|outp[3]~9\, , , VCC)

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
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[12][3]~regout\);

-- Location: LC_X14_Y7_N4
\mem|mem_reg[14][3]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux12~7\ = (\m_1|outp[1]~3_combout\ & (((S1_mem_reg[14][3]) # (\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[12][3]~regout\ & ((!\m_1|outp[0]~7_combout\))))

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
	dataa => \mem|mem_reg[12][3]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[3]~9\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux12~7\,
	regout => \mem|mem_reg[14][3]~regout\);

-- Location: LC_X13_Y7_N0
\mem|mem_reg[13][3]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux12~8\ = (\m_1|outp[0]~7_combout\ & ((\mem|Mux12~7\ & (\mem|mem_reg[15][3]~regout\)) # (!\mem|Mux12~7\ & ((S1_mem_reg[13][3]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|Mux12~7\))))

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
	datad => \mem|Mux12~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux12~8\,
	regout => \mem|mem_reg[13][3]~regout\);

-- Location: LC_X15_Y6_N0
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

-- Location: LC_X16_Y6_N4
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

-- Location: LC_X12_Y7_N9
\mem|mem_reg[1][3]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux12~4\ = (\m_1|outp[1]~3_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & ((\m_1|outp[0]~7_combout\ & ((S1_mem_reg[1][3]))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[0][3]~regout\))))

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
	datab => \mem|mem_reg[0][3]~regout\,
	datac => \m_2|outp[3]~9\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux12~4\,
	regout => \mem|mem_reg[1][3]~regout\);

-- Location: LC_X12_Y7_N6
\mem|mem_reg[2][3]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux12~5\ = (\m_1|outp[1]~3_combout\ & ((\mem|Mux12~4\ & (\mem|mem_reg[3][3]~regout\)) # (!\mem|Mux12~4\ & ((S1_mem_reg[2][3]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|Mux12~4\))))

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
	datab => \mem|mem_reg[3][3]~regout\,
	datac => \m_2|outp[3]~9\,
	datad => \mem|Mux12~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux12~5\,
	regout => \mem|mem_reg[2][3]~regout\);

-- Location: LC_X13_Y6_N3
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

-- Location: LC_X13_Y4_N5
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

-- Location: LC_X14_Y8_N1
\mem|mem_reg[9][3]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux12~2\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[9][3]) # (\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[8][3]~regout\ & ((!\m_1|outp[1]~3_combout\))))

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
	dataa => \mem|mem_reg[8][3]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[3]~9\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux12~2\,
	regout => \mem|mem_reg[9][3]~regout\);

-- Location: LC_X13_Y8_N0
\mem|mem_reg[10][3]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux12~3\ = (\m_1|outp[1]~3_combout\ & ((\mem|Mux12~2\ & (\mem|mem_reg[11][3]~regout\)) # (!\mem|Mux12~2\ & ((S1_mem_reg[10][3]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|Mux12~2\))))

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
	datab => \mem|mem_reg[11][3]~regout\,
	datac => \m_2|outp[3]~9\,
	datad => \mem|Mux12~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux12~3\,
	regout => \mem|mem_reg[10][3]~regout\);

-- Location: LC_X13_Y8_N1
\mem|Mux12~6\ : maxv_lcell
-- Equation(s):
-- \mem|Mux12~6_combout\ = (\m_1|outp[2]~1_combout\ & (\m_1|outp[3]~5_combout\)) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~5_combout\ & ((\mem|Mux12~3\))) # (!\m_1|outp[3]~5_combout\ & (\mem|Mux12~5\))))

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
	datac => \mem|Mux12~5\,
	datad => \mem|Mux12~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux12~6_combout\);

-- Location: LC_X13_Y8_N2
\mem|do[3]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(3) = DFFEAS((\m_1|outp[2]~1_combout\ & ((\mem|Mux12~6_combout\ & ((\mem|Mux12~8\))) # (!\mem|Mux12~6_combout\ & (\mem|Mux12~1\)))) # (!\m_1|outp[2]~1_combout\ & (((\mem|Mux12~6_combout\)))), GLOBAL(\clk~combout\), VCC, , \memrd~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem|Mux12~1\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|Mux12~8\,
	datad => \mem|Mux12~6_combout\,
	aclr => GND,
	ena => \memrd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(3));

-- Location: LC_X13_Y8_N8
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

-- Location: LC_X9_Y4_N5
\priorityin~12\ : maxv_lcell
-- Equation(s):
-- \priorityin~12_combout\ = (((\p_1|outp\(2)) # (!\p_1|outp\(0)))) # (!\p_1|outp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_1|outp\(1),
	datac => \p_1|outp\(0),
	datad => \p_1|outp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin~12_combout\);

-- Location: LC_X9_Y4_N7
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

-- Location: LC_X10_Y4_N7
\Equal34~0\ : maxv_lcell
-- Equation(s):
-- \Equal34~0_combout\ = (!priorityin(2) & (!priorityin(1) & (!priorityin(0) & !priorityin(3))))

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
	datab => priorityin(1),
	datac => priorityin(0),
	datad => priorityin(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal34~0_combout\);

-- Location: LC_X9_Y4_N0
\priorityin~14\ : maxv_lcell
-- Equation(s):
-- \priorityin~14_combout\ = (\p_1|outp\(1)) # (((\p_1|outp\(0)) # (!\p_1|outp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_1|outp\(1),
	datac => \p_1|outp\(0),
	datad => \p_1|outp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin~14_combout\);

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(20),
	combout => \input~combout\(20));

-- Location: LC_X11_Y10_N3
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

-- Location: LC_X12_Y9_N8
\mem|mem_reg[14][4]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[14][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~7_combout\, \m_2|outp[4]~10\, , , VCC)

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
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[14][4]~regout\);

-- Location: LC_X11_Y6_N3
\mem|mem_reg[6][4]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux11~0\ = (\m_1|outp[2]~1_combout\ & (((S1_mem_reg[6][4]) # (\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[2][4]~regout\ & ((!\m_1|outp[3]~5_combout\))))

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
	datab => \mem|mem_reg[2][4]~regout\,
	datac => \m_2|outp[4]~10\,
	datad => \m_1|outp[3]~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux11~0\,
	regout => \mem|mem_reg[6][4]~regout\);

-- Location: LC_X11_Y9_N2
\mem|mem_reg[10][4]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux11~1\ = (\m_1|outp[3]~5_combout\ & ((\mem|Mux11~0\ & (\mem|mem_reg[14][4]~regout\)) # (!\mem|Mux11~0\ & ((S1_mem_reg[10][4]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|Mux11~0\))))

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
	datad => \mem|Mux11~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux11~1\,
	regout => \mem|mem_reg[10][4]~regout\);

-- Location: LC_X15_Y9_N9
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

-- Location: LC_X15_Y6_N4
\mem|mem_reg[3][4]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[3][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~11_combout\, \m_2|outp[4]~10\, , , VCC)

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
	ena => \mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[3][4]~regout\);

-- Location: LC_X14_Y6_N2
\mem|mem_reg[11][4]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux11~7\ = (\m_1|outp[2]~1_combout\ & (((\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~5_combout\ & ((S1_mem_reg[11][4]))) # (!\m_1|outp[3]~5_combout\ & (\mem|mem_reg[3][4]~regout\))))

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
	combout => \mem|Mux11~7\,
	regout => \mem|mem_reg[11][4]~regout\);

-- Location: LC_X15_Y9_N6
\mem|mem_reg[7][4]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux11~8\ = (\m_1|outp[2]~1_combout\ & ((\mem|Mux11~7\ & (\mem|mem_reg[15][4]~regout\)) # (!\mem|Mux11~7\ & ((S1_mem_reg[7][4]))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|Mux11~7\))))

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
	datad => \mem|Mux11~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux11~8\,
	regout => \mem|mem_reg[7][4]~regout\);

-- Location: LC_X10_Y10_N7
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

-- Location: LC_X11_Y7_N2
\mem|mem_reg[1][4]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[1][4]~regout\ = DFFEAS((((\m_2|outp[4]~10\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~13_combout\, , , , )

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
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[1][4]~regout\);

-- Location: LC_X10_Y5_N8
\mem|mem_reg[9][4]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux11~2\ = (\m_1|outp[2]~1_combout\ & (((\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~5_combout\ & ((S1_mem_reg[9][4]))) # (!\m_1|outp[3]~5_combout\ & (\mem|mem_reg[1][4]~regout\))))

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
	datab => \mem|mem_reg[1][4]~regout\,
	datac => \m_2|outp[4]~10\,
	datad => \m_1|outp[3]~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux11~2\,
	regout => \mem|mem_reg[9][4]~regout\);

-- Location: LC_X10_Y5_N1
\mem|mem_reg[5][4]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux11~3\ = (\m_1|outp[2]~1_combout\ & ((\mem|Mux11~2\ & (\mem|mem_reg[13][4]~regout\)) # (!\mem|Mux11~2\ & ((S1_mem_reg[5][4]))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|Mux11~2\))))

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
	datab => \mem|mem_reg[13][4]~regout\,
	datac => \m_2|outp[4]~10\,
	datad => \mem|Mux11~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux11~3\,
	regout => \mem|mem_reg[5][4]~regout\);

-- Location: LC_X13_Y7_N1
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

-- Location: LC_X14_Y6_N7
\mem|mem_reg[0][4]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[0][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~18_combout\, \m_2|outp[4]~10\, , , VCC)

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
	ena => \mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[0][4]~regout\);

-- Location: LC_X11_Y5_N0
\mem|mem_reg[4][4]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux11~4\ = (\m_1|outp[2]~1_combout\ & (((S1_mem_reg[4][4]) # (\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[0][4]~regout\ & ((!\m_1|outp[3]~5_combout\))))

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
	dataa => \mem|mem_reg[0][4]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[4]~10\,
	datad => \m_1|outp[3]~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux11~4\,
	regout => \mem|mem_reg[4][4]~regout\);

-- Location: LC_X11_Y5_N1
\mem|mem_reg[8][4]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux11~5\ = (\m_1|outp[3]~5_combout\ & ((\mem|Mux11~4\ & (\mem|mem_reg[12][4]~regout\)) # (!\mem|Mux11~4\ & ((S1_mem_reg[8][4]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|Mux11~4\))))

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
	dataa => \mem|mem_reg[12][4]~regout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \m_2|outp[4]~10\,
	datad => \mem|Mux11~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux11~5\,
	regout => \mem|mem_reg[8][4]~regout\);

-- Location: LC_X11_Y5_N8
\mem|Mux11~6\ : maxv_lcell
-- Equation(s):
-- \mem|Mux11~6_combout\ = (\m_1|outp[1]~3_combout\ & (\m_1|outp[0]~7_combout\)) # (!\m_1|outp[1]~3_combout\ & ((\m_1|outp[0]~7_combout\ & (\mem|Mux11~3\)) # (!\m_1|outp[0]~7_combout\ & ((\mem|Mux11~5\)))))

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
	dataa => \m_1|outp[1]~3_combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \mem|Mux11~3\,
	datad => \mem|Mux11~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux11~6_combout\);

-- Location: LC_X10_Y9_N1
\mem|do[4]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(4) = DFFEAS((\m_1|outp[1]~3_combout\ & ((\mem|Mux11~6_combout\ & ((\mem|Mux11~8\))) # (!\mem|Mux11~6_combout\ & (\mem|Mux11~1\)))) # (!\m_1|outp[1]~3_combout\ & (((\mem|Mux11~6_combout\)))), GLOBAL(\clk~combout\), VCC, , \memrd~regout\, , , , )

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
	dataa => \m_1|outp[1]~3_combout\,
	datab => \mem|Mux11~1\,
	datac => \mem|Mux11~8\,
	datad => \mem|Mux11~6_combout\,
	aclr => GND,
	ena => \memrd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(4));

-- Location: LC_X10_Y9_N8
\ir_1|r_1|dout[4]\ : maxv_lcell
-- Equation(s):
-- \ir_1|r_1|dout\(4) = ((GLOBAL(\irwr~regout\) & ((\mem|do\(4)))) # (!GLOBAL(\irwr~regout\) & (\ir_1|r_1|dout\(4))))

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
	dataa => \ir_1|r_1|dout\(4),
	datac => \irwr~regout\,
	datad => \mem|do\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ir_1|r_1|dout\(4));

-- Location: LC_X9_Y4_N8
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

-- Location: LC_X10_Y4_N3
\Equal34~1\ : maxv_lcell
-- Equation(s):
-- \Equal34~1_combout\ = (((!priorityin(4) & !priorityin(5))))

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
	datac => priorityin(4),
	datad => priorityin(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal34~1_combout\);

-- Location: LC_X12_Y4_N7
\priorityin~4\ : maxv_lcell
-- Equation(s):
-- \priorityin~4_combout\ = (((!\p_1|outp\(2)) # (!\p_1|outp\(1))) # (!\p_1|outp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \p_1|outp\(0),
	datac => \p_1|outp\(1),
	datad => \p_1|outp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin~4_combout\);

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(23),
	combout => \input~combout\(23));

-- Location: LC_X14_Y9_N9
\mem|mem_reg[4][7]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[7]~5\ = (\input~combout\(23) & (((!dcon(0) & dcon(1)))))
-- \mem|mem_reg[4][7]~regout\ = DFFEAS(\m_2|outp[7]~5\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~16_combout\, , , , )

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
	dataa => \input~combout\(23),
	datac => dcon(0),
	datad => dcon(1),
	aclr => GND,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[7]~5\,
	regout => \mem|mem_reg[4][7]~regout\);

-- Location: LC_X10_Y9_N7
\mem|mem_reg[7][7]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[7][7]~regout\ = DFFEAS((((\m_2|outp[7]~5\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~15_combout\, , , , )

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
	ena => \mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[7][7]~regout\);

-- Location: LC_X11_Y6_N5
\mem|mem_reg[6][7]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux8~0\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[6][7]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[4][7]~regout\))))

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
	datab => \mem|mem_reg[4][7]~regout\,
	datac => \m_2|outp[7]~5\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux8~0\,
	regout => \mem|mem_reg[6][7]~regout\);

-- Location: LC_X11_Y7_N0
\mem|mem_reg[5][7]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux8~1\ = (\m_1|outp[0]~7_combout\ & ((\mem|Mux8~0\ & (\mem|mem_reg[7][7]~regout\)) # (!\mem|Mux8~0\ & ((S1_mem_reg[5][7]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|Mux8~0\))))

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
	dataa => \mem|mem_reg[7][7]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[7]~5\,
	datad => \mem|Mux8~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux8~1\,
	regout => \mem|mem_reg[5][7]~regout\);

-- Location: LC_X13_Y6_N5
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

-- Location: LC_X11_Y5_N5
\mem|mem_reg[8][7]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[8][7]~regout\ = DFFEAS((((\m_2|outp[7]~5\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~5_combout\, , , , )

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
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[8][7]~regout\);

-- Location: LC_X13_Y5_N2
\mem|mem_reg[9][7]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux8~2\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[9][7]) # (\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[8][7]~regout\ & ((!\m_1|outp[1]~3_combout\))))

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
	dataa => \mem|mem_reg[8][7]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[7]~5\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux8~2\,
	regout => \mem|mem_reg[9][7]~regout\);

-- Location: LC_X13_Y5_N3
\mem|mem_reg[10][7]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux8~3\ = (\m_1|outp[1]~3_combout\ & ((\mem|Mux8~2\ & (\mem|mem_reg[11][7]~regout\)) # (!\mem|Mux8~2\ & ((S1_mem_reg[10][7]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|Mux8~2\))))

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
	datab => \mem|mem_reg[11][7]~regout\,
	datac => \m_2|outp[7]~5\,
	datad => \mem|Mux8~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux8~3\,
	regout => \mem|mem_reg[10][7]~regout\);

-- Location: LC_X15_Y7_N7
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

-- Location: LC_X16_Y6_N9
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

-- Location: LC_X12_Y7_N4
\mem|mem_reg[1][7]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux8~4\ = (\m_1|outp[1]~3_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & ((\m_1|outp[0]~7_combout\ & ((S1_mem_reg[1][7]))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[0][7]~regout\))))

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
	dataa => \mem|mem_reg[0][7]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[7]~5\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux8~4\,
	regout => \mem|mem_reg[1][7]~regout\);

-- Location: LC_X12_Y7_N5
\mem|mem_reg[2][7]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux8~5\ = (\m_1|outp[1]~3_combout\ & ((\mem|Mux8~4\ & (\mem|mem_reg[3][7]~regout\)) # (!\mem|Mux8~4\ & ((S1_mem_reg[2][7]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|Mux8~4\))))

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
	datad => \mem|Mux8~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux8~5\,
	regout => \mem|mem_reg[2][7]~regout\);

-- Location: LC_X12_Y5_N0
\mem|Mux8~6\ : maxv_lcell
-- Equation(s):
-- \mem|Mux8~6_combout\ = (\m_1|outp[3]~5_combout\ & ((\m_1|outp[2]~1_combout\) # ((\mem|Mux8~3\)))) # (!\m_1|outp[3]~5_combout\ & (!\m_1|outp[2]~1_combout\ & ((\mem|Mux8~5\))))

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
	dataa => \m_1|outp[3]~5_combout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \mem|Mux8~3\,
	datad => \mem|Mux8~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux8~6_combout\);

-- Location: LC_X14_Y9_N7
\mem|mem_reg[15][7]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[15][7]~regout\ = DFFEAS((((\m_2|outp[7]~5\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~23_combout\, , , , )

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
	ena => \mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[15][7]~regout\);

-- Location: LC_X12_Y9_N5
\mem|mem_reg[12][7]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[12][7]~regout\ = DFFEAS((((\m_2|outp[7]~5\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~1_combout\, , , , )

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
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[12][7]~regout\);

-- Location: LC_X12_Y9_N1
\mem|mem_reg[14][7]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux8~7\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[14][7]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[12][7]~regout\))))

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
	dataa => \mem|mem_reg[12][7]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[7]~5\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux8~7\,
	regout => \mem|mem_reg[14][7]~regout\);

-- Location: LC_X13_Y6_N9
\mem|mem_reg[13][7]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux8~8\ = (\m_1|outp[0]~7_combout\ & ((\mem|Mux8~7\ & (\mem|mem_reg[15][7]~regout\)) # (!\mem|Mux8~7\ & ((S1_mem_reg[13][7]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|Mux8~7\))))

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
	dataa => \mem|mem_reg[15][7]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[7]~5\,
	datad => \mem|Mux8~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux8~8\,
	regout => \mem|mem_reg[13][7]~regout\);

-- Location: LC_X12_Y5_N1
\mem|do[7]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(7) = DFFEAS((\m_1|outp[2]~1_combout\ & ((\mem|Mux8~6_combout\ & ((\mem|Mux8~8\))) # (!\mem|Mux8~6_combout\ & (\mem|Mux8~1\)))) # (!\m_1|outp[2]~1_combout\ & (((\mem|Mux8~6_combout\)))), GLOBAL(\clk~combout\), VCC, , \memrd~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|Mux8~1\,
	datac => \mem|Mux8~6_combout\,
	datad => \mem|Mux8~8\,
	aclr => GND,
	ena => \memrd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(7));

-- Location: LC_X12_Y5_N5
\ir_1|r_1|dout[7]\ : maxv_lcell
-- Equation(s):
-- \ir_1|r_1|dout\(7) = ((GLOBAL(\irwr~regout\) & ((\mem|do\(7)))) # (!GLOBAL(\irwr~regout\) & (\ir_1|r_1|dout\(7))))

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
	dataa => \ir_1|r_1|dout\(7),
	datac => \irwr~regout\,
	datad => \mem|do\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ir_1|r_1|dout\(7));

-- Location: LC_X12_Y5_N6
\priorityin[7]\ : maxv_lcell
-- Equation(s):
-- priorityin(7) = DFFEAS((\Equal0~0_combout\ & (((\ir_1|r_1|dout\(7))))) # (!\Equal0~0_combout\ & (priorityin(7) & (\priorityin~4_combout\))), GLOBAL(\clk~combout\), VCC, , \priorityin[1]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f808",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => priorityin(7),
	datab => \priorityin~4_combout\,
	datac => \Equal0~0_combout\,
	datad => \ir_1|r_1|dout\(7),
	aclr => GND,
	ena => \priorityin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => priorityin(7));

-- Location: LC_X12_Y4_N0
\priorityin~0\ : maxv_lcell
-- Equation(s):
-- \priorityin~0_combout\ = ((\p_1|outp\(0)) # ((!\p_1|outp\(2)) # (!\p_1|outp\(1))))

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
	datab => \p_1|outp\(0),
	datac => \p_1|outp\(1),
	datad => \p_1|outp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin~0_combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(22),
	combout => \input~combout\(22));

-- Location: LC_X11_Y10_N8
\mem|mem_reg[1][6]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[6]~4\ = (dcon(1) & (((\input~combout\(22) & !dcon(0)))))
-- \mem|mem_reg[1][6]~regout\ = DFFEAS(\m_2|outp[6]~4\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~13_combout\, , , , )

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
	datac => \input~combout\(22),
	datad => dcon(0),
	aclr => GND,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[6]~4\,
	regout => \mem|mem_reg[1][6]~regout\);

-- Location: LC_X12_Y10_N7
\mem|mem_reg[13][6]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[13][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~20_combout\, \m_2|outp[6]~4\, , , VCC)

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
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[13][6]~regout\);

-- Location: LC_X13_Y9_N2
\mem|mem_reg[5][6]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux9~0\ = (\m_1|outp[3]~5_combout\ & (((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~5_combout\ & ((\m_1|outp[2]~1_combout\ & ((S1_mem_reg[5][6]))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[1][6]~regout\))))

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
	combout => \mem|Mux9~0\,
	regout => \mem|mem_reg[5][6]~regout\);

-- Location: LC_X13_Y9_N3
\mem|mem_reg[9][6]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux9~1\ = (\m_1|outp[3]~5_combout\ & ((\mem|Mux9~0\ & (\mem|mem_reg[13][6]~regout\)) # (!\mem|Mux9~0\ & ((S1_mem_reg[9][6]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|Mux9~0\))))

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
	datad => \mem|Mux9~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux9~1\,
	regout => \mem|mem_reg[9][6]~regout\);

-- Location: LC_X14_Y9_N3
\mem|mem_reg[15][6]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[15][6]~regout\ = DFFEAS((((\m_2|outp[6]~4\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~23_combout\, , , , )

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
	ena => \mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[15][6]~regout\);

-- Location: LC_X15_Y6_N9
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

-- Location: LC_X15_Y6_N8
\mem|mem_reg[7][6]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux9~7\ = (\m_1|outp[2]~1_combout\ & (((S1_mem_reg[7][6]) # (\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[3][6]~regout\ & ((!\m_1|outp[3]~5_combout\))))

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
	combout => \mem|Mux9~7\,
	regout => \mem|mem_reg[7][6]~regout\);

-- Location: LC_X14_Y6_N3
\mem|mem_reg[11][6]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux9~8\ = (\m_1|outp[3]~5_combout\ & ((\mem|Mux9~7\ & (\mem|mem_reg[15][6]~regout\)) # (!\mem|Mux9~7\ & ((S1_mem_reg[11][6]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|Mux9~7\))))

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
	datad => \mem|Mux9~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux9~8\,
	regout => \mem|mem_reg[11][6]~regout\);

-- Location: LC_X12_Y9_N2
\mem|mem_reg[12][6]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[12][6]~regout\ = DFFEAS((((\m_2|outp[6]~4\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~1_combout\, , , , )

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
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[12][6]~regout\);

-- Location: LC_X16_Y6_N7
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

-- Location: LC_X11_Y5_N9
\mem|mem_reg[8][6]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux9~4\ = (\m_1|outp[2]~1_combout\ & (((\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~5_combout\ & ((S1_mem_reg[8][6]))) # (!\m_1|outp[3]~5_combout\ & (\mem|mem_reg[0][6]~regout\))))

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
	dataa => \mem|mem_reg[0][6]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[6]~4\,
	datad => \m_1|outp[3]~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux9~4\,
	regout => \mem|mem_reg[8][6]~regout\);

-- Location: LC_X11_Y5_N4
\mem|mem_reg[4][6]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux9~5\ = (\m_1|outp[2]~1_combout\ & ((\mem|Mux9~4\ & (\mem|mem_reg[12][6]~regout\)) # (!\mem|Mux9~4\ & ((S1_mem_reg[4][6]))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|Mux9~4\))))

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
	dataa => \mem|mem_reg[12][6]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[6]~4\,
	datad => \mem|Mux9~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux9~5\,
	regout => \mem|mem_reg[4][6]~regout\);

-- Location: LC_X12_Y9_N6
\mem|mem_reg[14][6]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[14][6]~regout\ = DFFEAS((((\m_2|outp[6]~4\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~7_combout\, , , , )

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
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[14][6]~regout\);

-- Location: LC_X11_Y10_N9
\mem|mem_reg[2][6]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[2][6]~regout\ = DFFEAS((((\m_2|outp[6]~4\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~17_combout\, , , , )

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
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[2][6]~regout\);

-- Location: LC_X11_Y9_N8
\mem|mem_reg[10][6]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux9~2\ = (\m_1|outp[3]~5_combout\ & (((S1_mem_reg[10][6]) # (\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~5_combout\ & (\mem|mem_reg[2][6]~regout\ & ((!\m_1|outp[2]~1_combout\))))

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
	combout => \mem|Mux9~2\,
	regout => \mem|mem_reg[10][6]~regout\);

-- Location: LC_X11_Y9_N0
\mem|mem_reg[6][6]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux9~3\ = (\m_1|outp[2]~1_combout\ & ((\mem|Mux9~2\ & (\mem|mem_reg[14][6]~regout\)) # (!\mem|Mux9~2\ & ((S1_mem_reg[6][6]))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|Mux9~2\))))

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
	datad => \mem|Mux9~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux9~3\,
	regout => \mem|mem_reg[6][6]~regout\);

-- Location: LC_X12_Y5_N2
\mem|Mux9~6\ : maxv_lcell
-- Equation(s):
-- \mem|Mux9~6_combout\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\ & ((\mem|Mux9~3\))) # (!\m_1|outp[1]~3_combout\ & (\mem|Mux9~5\))))

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
	dataa => \m_1|outp[0]~7_combout\,
	datab => \mem|Mux9~5\,
	datac => \m_1|outp[1]~3_combout\,
	datad => \mem|Mux9~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux9~6_combout\);

-- Location: LC_X12_Y5_N3
\mem|do[6]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(6) = DFFEAS((\m_1|outp[0]~7_combout\ & ((\mem|Mux9~6_combout\ & ((\mem|Mux9~8\))) # (!\mem|Mux9~6_combout\ & (\mem|Mux9~1\)))) # (!\m_1|outp[0]~7_combout\ & (((\mem|Mux9~6_combout\)))), GLOBAL(\clk~combout\), VCC, , \memrd~regout\, , , , )

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
	dataa => \m_1|outp[0]~7_combout\,
	datab => \mem|Mux9~1\,
	datac => \mem|Mux9~8\,
	datad => \mem|Mux9~6_combout\,
	aclr => GND,
	ena => \memrd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(6));

-- Location: LC_X12_Y5_N8
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

-- Location: LC_X12_Y5_N9
\priorityin[6]\ : maxv_lcell
-- Equation(s):
-- priorityin(6) = DFFEAS((\Equal0~0_combout\ & (((\ir_1|r_1|dout\(6))))) # (!\Equal0~0_combout\ & (\priorityin~0_combout\ & (priorityin(6)))), GLOBAL(\clk~combout\), VCC, , \priorityin[1]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f808",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \priorityin~0_combout\,
	datab => priorityin(6),
	datac => \Equal0~0_combout\,
	datad => \ir_1|r_1|dout\(6),
	aclr => GND,
	ena => \priorityin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => priorityin(6));

-- Location: LC_X10_Y4_N4
\Equal34~2\ : maxv_lcell
-- Equation(s):
-- \Equal34~2_combout\ = ((priorityin(7)) # ((priorityin(6)) # (!\Equal34~0_combout\))) # (!\Equal34~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal34~1_combout\,
	datab => priorityin(7),
	datac => \Equal34~0_combout\,
	datad => priorityin(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal34~2_combout\);

-- Location: LC_X10_Y4_N0
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

-- Location: LC_X12_Y4_N2
\priorityin~16\ : maxv_lcell
-- Equation(s):
-- \priorityin~16_combout\ = (priorityin(5) & (((\p_1|outp\(1)) # (!\p_1|outp\(2))) # (!\p_1|outp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_1|outp\(0),
	datab => \p_1|outp\(2),
	datac => \p_1|outp\(1),
	datad => priorityin(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin~16_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(21),
	combout => \input~combout\(21));

-- Location: LC_X13_Y4_N2
\mem|mem_reg[8][5]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[5]~11\ = (\input~combout\(21) & (((!dcon(0) & dcon(1)))))
-- \mem|mem_reg[8][5]~regout\ = DFFEAS(\m_2|outp[5]~11\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~5_combout\, , , , )

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
	dataa => \input~combout\(21),
	datac => dcon(0),
	datad => dcon(1),
	aclr => GND,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[5]~11\,
	regout => \mem|mem_reg[8][5]~regout\);

-- Location: LC_X14_Y7_N5
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

-- Location: LC_X13_Y7_N6
\mem|mem_reg[12][5]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[12][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~1_combout\, \m_2|outp[5]~11\, , , VCC)

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
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[12][5]~regout\);

-- Location: LC_X13_Y7_N7
\mem|mem_reg[13][5]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux10~7\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[13][5]) # (\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[12][5]~regout\ & ((!\m_1|outp[1]~3_combout\))))

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
	combout => \mem|Mux10~7\,
	regout => \mem|mem_reg[13][5]~regout\);

-- Location: LC_X14_Y7_N6
\mem|mem_reg[14][5]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux10~8\ = (\m_1|outp[1]~3_combout\ & ((\mem|Mux10~7\ & (\mem|mem_reg[15][5]~regout\)) # (!\mem|Mux10~7\ & ((S1_mem_reg[14][5]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|Mux10~7\))))

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
	dataa => \mem|mem_reg[15][5]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[5]~11\,
	datad => \mem|Mux10~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux10~8\,
	regout => \mem|mem_reg[14][5]~regout\);

-- Location: LC_X13_Y6_N0
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

-- Location: LC_X13_Y5_N0
\mem|mem_reg[10][5]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux10~0\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[10][5]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[8][5]~regout\))))

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
	combout => \mem|Mux10~0\,
	regout => \mem|mem_reg[10][5]~regout\);

-- Location: LC_X13_Y5_N1
\mem|mem_reg[9][5]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux10~1\ = (\m_1|outp[0]~7_combout\ & ((\mem|Mux10~0\ & (\mem|mem_reg[11][5]~regout\)) # (!\mem|Mux10~0\ & ((S1_mem_reg[9][5]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|Mux10~0\))))

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
	datad => \mem|Mux10~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux10~1\,
	regout => \mem|mem_reg[9][5]~regout\);

-- Location: LC_X15_Y7_N8
\mem|mem_reg[3][5]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[3][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~11_combout\, \m_2|outp[5]~11\, , , VCC)

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
	ena => \mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[3][5]~regout\);

-- Location: LC_X12_Y6_N2
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

-- Location: LC_X12_Y7_N7
\mem|mem_reg[2][5]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux10~4\ = (\m_1|outp[1]~3_combout\ & (((S1_mem_reg[2][5]) # (\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[0][5]~regout\ & ((!\m_1|outp[0]~7_combout\))))

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
	dataa => \mem|mem_reg[0][5]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[5]~11\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux10~4\,
	regout => \mem|mem_reg[2][5]~regout\);

-- Location: LC_X12_Y7_N8
\mem|mem_reg[1][5]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux10~5\ = (\m_1|outp[0]~7_combout\ & ((\mem|Mux10~4\ & (\mem|mem_reg[3][5]~regout\)) # (!\mem|Mux10~4\ & ((S1_mem_reg[1][5]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|Mux10~4\))))

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
	datad => \mem|Mux10~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux10~5\,
	regout => \mem|mem_reg[1][5]~regout\);

-- Location: LC_X15_Y7_N5
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

-- Location: LC_X8_Y6_N5
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

-- Location: LC_X10_Y7_N4
\mem|mem_reg[5][5]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux10~2\ = (\m_1|outp[1]~3_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & ((\m_1|outp[0]~7_combout\ & ((S1_mem_reg[5][5]))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[4][5]~regout\))))

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
	combout => \mem|Mux10~2\,
	regout => \mem|mem_reg[5][5]~regout\);

-- Location: LC_X9_Y7_N8
\mem|mem_reg[6][5]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux10~3\ = (\m_1|outp[1]~3_combout\ & ((\mem|Mux10~2\ & (\mem|mem_reg[7][5]~regout\)) # (!\mem|Mux10~2\ & ((S1_mem_reg[6][5]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|Mux10~2\))))

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
	datad => \mem|Mux10~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux10~3\,
	regout => \mem|mem_reg[6][5]~regout\);

-- Location: LC_X9_Y7_N9
\mem|Mux10~6\ : maxv_lcell
-- Equation(s):
-- \mem|Mux10~6_combout\ = (\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~5_combout\) # ((\mem|Mux10~3\)))) # (!\m_1|outp[2]~1_combout\ & (!\m_1|outp[3]~5_combout\ & (\mem|Mux10~5\)))

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
	datac => \mem|Mux10~5\,
	datad => \mem|Mux10~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux10~6_combout\);

-- Location: LC_X9_Y7_N2
\mem|do[5]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(5) = DFFEAS((\m_1|outp[3]~5_combout\ & ((\mem|Mux10~6_combout\ & (\mem|Mux10~8\)) # (!\mem|Mux10~6_combout\ & ((\mem|Mux10~1\))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|Mux10~6_combout\)))), GLOBAL(\clk~combout\), VCC, , \memrd~regout\, , , , )

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
	dataa => \m_1|outp[3]~5_combout\,
	datab => \mem|Mux10~8\,
	datac => \mem|Mux10~1\,
	datad => \mem|Mux10~6_combout\,
	aclr => GND,
	ena => \memrd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(5));

-- Location: LC_X9_Y7_N5
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

-- Location: LC_X12_Y4_N9
\priorityin[5]\ : maxv_lcell
-- Equation(s):
-- priorityin(5) = DFFEAS((\memwr~10\ & ((\dcon~3_combout\ & ((\ir_1|r_1|dout\(5)))) # (!\dcon~3_combout\ & (\priorityin~16_combout\)))) # (!\memwr~10\ & (\priorityin~16_combout\)), GLOBAL(\clk~combout\), VCC, , \priorityin[1]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memwr~10\,
	datab => \priorityin~16_combout\,
	datac => \ir_1|r_1|dout\(5),
	datad => \dcon~3_combout\,
	aclr => GND,
	ena => \priorityin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => priorityin(5));

-- Location: LC_X10_Y4_N6
\p_1|outp~0\ : maxv_lcell
-- Equation(s):
-- \p_1|outp~0_combout\ = (!priorityin(3) & ((priorityin(4)) # ((!priorityin(5) & priorityin(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => priorityin(5),
	datab => priorityin(6),
	datac => priorityin(4),
	datad => priorityin(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \p_1|outp~0_combout\);

-- Location: LC_X10_Y4_N5
\p_1|outp[0]\ : maxv_lcell
-- Equation(s):
-- \p_1|outp\(0) = DFFEAS((priorityin(0)) # ((!priorityin(1) & ((\p_1|outp~0_combout\) # (priorityin(2))))), GLOBAL(\clk~combout\), VCC, , \Equal34~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3f2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \p_1|outp~0_combout\,
	datab => priorityin(1),
	datac => priorityin(0),
	datad => priorityin(2),
	aclr => GND,
	ena => \Equal34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p_1|outp\(0));

-- Location: LC_X9_Y4_N4
\priorityin~6\ : maxv_lcell
-- Equation(s):
-- \priorityin~6_combout\ = (\p_1|outp\(1)) # (((\p_1|outp\(2)) # (!\p_1|outp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_1|outp\(1),
	datac => \p_1|outp\(0),
	datad => \p_1|outp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \priorityin~6_combout\);

-- Location: LC_X9_Y4_N2
\priorityin[1]\ : maxv_lcell
-- Equation(s):
-- priorityin(1) = DFFEAS((\Equal0~0_combout\ & (\ir_1|r_1|dout\(1))) # (!\Equal0~0_combout\ & (((priorityin(1) & \priorityin~6_combout\)))), GLOBAL(\clk~combout\), VCC, , \priorityin[1]~3_combout\, , , , )

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
	dataa => \ir_1|r_1|dout\(1),
	datab => priorityin(1),
	datac => \priorityin~6_combout\,
	datad => \Equal0~0_combout\,
	aclr => GND,
	ena => \priorityin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => priorityin(1));

-- Location: LC_X10_Y4_N9
\p_1|outp~2\ : maxv_lcell
-- Equation(s):
-- \p_1|outp~2_combout\ = ((!priorityin(3) & (!priorityin(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => priorityin(3),
	datac => priorityin(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \p_1|outp~2_combout\);

-- Location: LC_X10_Y4_N8
\p_1|outp[1]\ : maxv_lcell
-- Equation(s):
-- \p_1|outp\(1) = DFFEAS((priorityin(1)) # ((priorityin(0)) # ((\p_1|outp~2_combout\ & !\Equal34~1_combout\))), GLOBAL(\clk~combout\), VCC, , \Equal34~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => priorityin(1),
	datab => \p_1|outp~2_combout\,
	datac => priorityin(0),
	datad => \Equal34~1_combout\,
	aclr => GND,
	ena => \Equal34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p_1|outp\(1));

-- Location: LC_X10_Y8_N7
\m_8|outp[1]~4\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[1]~4_combout\ = (((\p_1|outp\(1)) # (!alusrcb(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => alusrcb(0),
	datad => \p_1|outp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[1]~4_combout\);

-- Location: LC_X10_Y8_N8
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

-- Location: LC_X10_Y10_N2
\alu_1|temp_out[1]~81\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[1]~81_combout\ = (aluop(1) & (((aluop(0))))) # (!aluop(1) & (\m_8|outp[0]~3_combout\ & (\m_7|outp[0]~2_combout\ $ (aluop(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f208",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[0]~3_combout\,
	datab => \m_7|outp[0]~2_combout\,
	datac => aluop(1),
	datad => aluop(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[1]~81_combout\);

-- Location: LC_X10_Y10_N3
\alu_1|temp_out[1]~82\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[1]~82_combout\ = (aluop(1) & (!\alu_1|temp_out[1]~81_combout\ & ((!\m_8|outp[1]~5_combout\) # (!\m_7|outp[1]~3_combout\)))) # (!aluop(1) & (\m_7|outp[1]~3_combout\ $ (\m_8|outp[1]~5_combout\ $ (\alu_1|temp_out[1]~81_combout\))))

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
	dataa => \m_7|outp[1]~3_combout\,
	datab => \m_8|outp[1]~5_combout\,
	datac => aluop(1),
	datad => \alu_1|temp_out[1]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[1]~82_combout\);

-- Location: LC_X10_Y6_N2
\t1|dout[1]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(1) = ((GLOBAL(\alu_en~combout\) & ((\alu_1|temp_out[1]~82_combout\))) # (!GLOBAL(\alu_en~combout\) & (\t1|dout\(1))))

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
	datab => \t1|dout\(1),
	datac => \alu_1|temp_out[1]~82_combout\,
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(1));

-- Location: LC_X10_Y10_N5
\m_9|outp[1]~1\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[1]~1_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(1)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[1]~82_combout\)))

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
	dataa => \alu_1|temp_out[1]~82_combout\,
	datac => \pcsrc~regout\,
	datad => \t1|dout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[1]~1_combout\);

-- Location: LC_X10_Y10_N6
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

-- Location: LC_X10_Y10_N0
\m_1|outp[1]~2\ : maxv_lcell
-- Equation(s):
-- \m_1|outp[1]~2_combout\ = ((iord(1) & (\input~combout\(1))) # (!iord(1) & ((\pc|dout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(1),
	datac => \pc|dout\(1),
	datad => iord(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_1|outp[1]~2_combout\);

-- Location: LC_X10_Y6_N5
\m_1|outp[1]~3\ : maxv_lcell
-- Equation(s):
-- \m_1|outp[1]~3_combout\ = (iord(0) & (!iord(1) & ((\t1|dout\(1))))) # (!iord(0) & (((\m_1|outp[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7430",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => iord(1),
	datab => iord(0),
	datac => \m_1|outp[1]~2_combout\,
	datad => \t1|dout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_1|outp[1]~3_combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(17),
	combout => \input~combout\(17));

-- Location: LC_X11_Y10_N6
\mem|mem_reg[2][1]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[1]~6\ = (dcon(1) & (((\input~combout\(17) & !dcon(0)))))
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
	dataa => dcon(1),
	datac => \input~combout\(17),
	datad => dcon(0),
	aclr => GND,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[1]~6\,
	regout => \mem|mem_reg[2][1]~regout\);

-- Location: LC_X12_Y9_N9
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

-- Location: LC_X11_Y9_N3
\mem|mem_reg[6][1]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux14~0\ = (\m_1|outp[3]~5_combout\ & (((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~5_combout\ & ((\m_1|outp[2]~1_combout\ & ((S1_mem_reg[6][1]))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[2][1]~regout\))))

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
	dataa => \mem|mem_reg[2][1]~regout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \m_2|outp[1]~6\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux14~0\,
	regout => \mem|mem_reg[6][1]~regout\);

-- Location: LC_X11_Y9_N1
\mem|mem_reg[10][1]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux14~1\ = (\m_1|outp[3]~5_combout\ & ((\mem|Mux14~0\ & (\mem|mem_reg[14][1]~regout\)) # (!\mem|Mux14~0\ & ((S1_mem_reg[10][1]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|Mux14~0\))))

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
	datab => \mem|mem_reg[14][1]~regout\,
	datac => \m_2|outp[1]~6\,
	datad => \mem|Mux14~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux14~1\,
	regout => \mem|mem_reg[10][1]~regout\);

-- Location: LC_X13_Y7_N5
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

-- Location: LC_X14_Y6_N5
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

-- Location: LC_X11_Y5_N2
\mem|mem_reg[4][1]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux14~4\ = (\m_1|outp[2]~1_combout\ & (((S1_mem_reg[4][1]) # (\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[0][1]~regout\ & ((!\m_1|outp[3]~5_combout\))))

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
	dataa => \mem|mem_reg[0][1]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[1]~6\,
	datad => \m_1|outp[3]~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux14~4\,
	regout => \mem|mem_reg[4][1]~regout\);

-- Location: LC_X11_Y5_N3
\mem|mem_reg[8][1]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux14~5\ = (\m_1|outp[3]~5_combout\ & ((\mem|Mux14~4\ & (\mem|mem_reg[12][1]~regout\)) # (!\mem|Mux14~4\ & ((S1_mem_reg[8][1]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|Mux14~4\))))

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
	dataa => \mem|mem_reg[12][1]~regout\,
	datab => \m_1|outp[3]~5_combout\,
	datac => \m_2|outp[1]~6\,
	datad => \mem|Mux14~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux14~5\,
	regout => \mem|mem_reg[8][1]~regout\);

-- Location: LC_X10_Y10_N8
\mem|mem_reg[13][1]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[13][1]~regout\ = DFFEAS((((\m_2|outp[1]~6\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~20_combout\, , , , )

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
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[13][1]~regout\);

-- Location: LC_X10_Y10_N4
\mem|mem_reg[1][1]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[1][1]~regout\ = DFFEAS((((\m_2|outp[1]~6\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~13_combout\, , , , )

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
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[1][1]~regout\);

-- Location: LC_X10_Y7_N3
\mem|mem_reg[5][1]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux14~2\ = (\m_1|outp[3]~5_combout\ & (((\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[3]~5_combout\ & ((\m_1|outp[2]~1_combout\ & ((S1_mem_reg[5][1]))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[1][1]~regout\))))

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
	combout => \mem|Mux14~2\,
	regout => \mem|mem_reg[5][1]~regout\);

-- Location: LC_X10_Y5_N3
\mem|mem_reg[9][1]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux14~3\ = (\m_1|outp[3]~5_combout\ & ((\mem|Mux14~2\ & (\mem|mem_reg[13][1]~regout\)) # (!\mem|Mux14~2\ & ((S1_mem_reg[9][1]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|Mux14~2\))))

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
	datab => \mem|mem_reg[13][1]~regout\,
	datac => \m_2|outp[1]~6\,
	datad => \mem|Mux14~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux14~3\,
	regout => \mem|mem_reg[9][1]~regout\);

-- Location: LC_X10_Y5_N4
\mem|Mux14~6\ : maxv_lcell
-- Equation(s):
-- \mem|Mux14~6_combout\ = (\m_1|outp[1]~3_combout\ & (\m_1|outp[0]~7_combout\)) # (!\m_1|outp[1]~3_combout\ & ((\m_1|outp[0]~7_combout\ & ((\mem|Mux14~3\))) # (!\m_1|outp[0]~7_combout\ & (\mem|Mux14~5\))))

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
	dataa => \m_1|outp[1]~3_combout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \mem|Mux14~5\,
	datad => \mem|Mux14~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux14~6_combout\);

-- Location: LC_X14_Y9_N5
\mem|mem_reg[15][1]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[15][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~23_combout\, \m_2|outp[1]~6\, , , VCC)

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
	ena => \mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[15][1]~regout\);

-- Location: LC_X15_Y6_N5
\mem|mem_reg[3][1]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[3][1]~regout\ = DFFEAS((((\m_2|outp[1]~6\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~11_combout\, , , , )

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
	ena => \mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[3][1]~regout\);

-- Location: LC_X15_Y6_N7
\mem|mem_reg[7][1]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux14~7\ = (\m_1|outp[2]~1_combout\ & (((S1_mem_reg[7][1]) # (\m_1|outp[3]~5_combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[3][1]~regout\ & ((!\m_1|outp[3]~5_combout\))))

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
	combout => \mem|Mux14~7\,
	regout => \mem|mem_reg[7][1]~regout\);

-- Location: LC_X14_Y6_N8
\mem|mem_reg[11][1]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux14~8\ = (\m_1|outp[3]~5_combout\ & ((\mem|Mux14~7\ & (\mem|mem_reg[15][1]~regout\)) # (!\mem|Mux14~7\ & ((S1_mem_reg[11][1]))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|Mux14~7\))))

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
	datad => \mem|Mux14~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux14~8\,
	regout => \mem|mem_reg[11][1]~regout\);

-- Location: LC_X9_Y8_N9
\mem|do[1]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(1) = DFFEAS((\m_1|outp[1]~3_combout\ & ((\mem|Mux14~6_combout\ & ((\mem|Mux14~8\))) # (!\mem|Mux14~6_combout\ & (\mem|Mux14~1\)))) # (!\m_1|outp[1]~3_combout\ & (((\mem|Mux14~6_combout\)))), GLOBAL(\clk~combout\), VCC, , \memrd~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[1]~3_combout\,
	datab => \mem|Mux14~1\,
	datac => \mem|Mux14~6_combout\,
	datad => \mem|Mux14~8\,
	aclr => GND,
	ena => \memrd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(1));

-- Location: LC_X9_Y8_N1
\ir_1|r_1|dout[1]\ : maxv_lcell
-- Equation(s):
-- \ir_1|r_1|dout\(1) = ((GLOBAL(\irwr~regout\) & ((\mem|do\(1)))) # (!GLOBAL(\irwr~regout\) & (\ir_1|r_1|dout\(1))))

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
	datab => \ir_1|r_1|dout\(1),
	datac => \irwr~regout\,
	datad => \mem|do\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ir_1|r_1|dout\(1));

-- Location: LC_X9_Y7_N7
\m_8|outp[6]~9\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[6]~9_combout\ = (\ir_1|r_1|dout\(5) & (!alusrcb(1) & (alusrcb(2) & !alusrcb(0))))

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
	dataa => \ir_1|r_1|dout\(5),
	datab => alusrcb(1),
	datac => alusrcb(2),
	datad => alusrcb(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[6]~9_combout\);

-- Location: LC_X8_Y7_N6
\alu_1|temp_out[14]~112\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[14]~112_combout\ = ((alusrca(1)) # ((alusrca(0)) # (!\m_8|outp[6]~9_combout\))) # (!\pc|dout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(14),
	datab => alusrca(1),
	datac => \m_8|outp[6]~9_combout\,
	datad => alusrca(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[14]~112_combout\);

-- Location: LC_X9_Y7_N6
\m_8|outp[6]~8\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[6]~8_combout\ = (\ir_1|r_1|dout\(5) & (((alusrcb(2) & !alusrcb(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(5),
	datac => alusrcb(2),
	datad => alusrcb(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[6]~8_combout\);

-- Location: LC_X8_Y7_N1
\m_7|outp~15\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~15_combout\ = ((\pc|dout\(14) & (alusrca(0) $ (!alusrca(1)))))

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
	datac => \pc|dout\(14),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~15_combout\);

-- Location: LC_X11_Y8_N5
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

-- Location: LC_X8_Y7_N0
\alu_1|opr2|s15|xor_i~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s15|xor_i~0_combout\ = (\m_8|outp[6]~8_combout\ & (alusrcb(0) $ (((\m_7|Equal1~0_combout\) # (!\m_7|outp~15_combout\))))) # (!\m_8|outp[6]~8_combout\ & (\m_7|outp~15_combout\ & ((!\m_7|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ac6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[6]~8_combout\,
	datab => \m_7|outp~15_combout\,
	datac => alusrcb(0),
	datad => \m_7|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s15|xor_i~0_combout\);

-- Location: LC_X8_Y10_N8
\alu_1|temp_out[13]~123\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[13]~123_combout\ = (\pc|dout\(13) & (!alusrca(1) & (!alusrca(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(13),
	datab => alusrca(1),
	datac => alusrca(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[13]~123_combout\);

-- Location: LC_X6_Y9_N0
\alu_1|temp_out[11]~115\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[11]~115_combout\ = ((!alusrca(0) & (!alusrca(1) & \pc|dout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrca(0),
	datac => alusrca(1),
	datad => \pc|dout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[11]~115_combout\);

-- Location: LC_X7_Y10_N1
\alu_1|temp_out[10]~121\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[10]~121_combout\ = (\pc|dout\(10) & (((!alusrca(0) & !alusrca(1)))))

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
	dataa => \pc|dout\(10),
	datac => alusrca(0),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[10]~121_combout\);

-- Location: LC_X7_Y8_N4
\m_7|outp~9\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~9_combout\ = ((\pc|dout\(9) & (alusrca(0) $ (!alusrca(1)))))

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
	datab => \pc|dout\(9),
	datac => alusrca(0),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~9_combout\);

-- Location: LC_X7_Y10_N8
\alu_1|temp_out[8]~116\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[8]~116_combout\ = (!alusrca(1) & (((!alusrca(0) & \pc|dout\(8)))))

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
	dataa => alusrca(1),
	datac => alusrca(0),
	datad => \pc|dout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[8]~116_combout\);

-- Location: LC_X6_Y9_N5
\alu_1|temp_out[7]~119\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[7]~119_combout\ = ((!alusrca(0) & (!alusrca(1) & \pc|dout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrca(0),
	datac => alusrca(1),
	datad => \pc|dout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[7]~119_combout\);

-- Location: LC_X6_Y7_N9
\alu_1|temp_out[6]~120\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[6]~120_combout\ = (\pc|dout\(6) & (((!alusrca(0) & !alusrca(1)))))

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
	dataa => \pc|dout\(6),
	datac => alusrca(0),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[6]~120_combout\);

-- Location: LC_X9_Y7_N4
\alu_1|temp_out[5]~117\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[5]~117_combout\ = (!alusrca(0) & ((alusrca(1) & ((\ir_1|r_1|dout\(5)))) # (!alusrca(1) & (\pc|dout\(5)))))

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
	dataa => alusrca(0),
	datab => \pc|dout\(5),
	datac => \ir_1|r_1|dout\(5),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[5]~117_combout\);

-- Location: LC_X9_Y7_N3
\m_8|outp[4]~7\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[4]~7_combout\ = ((!alusrcb(1) & (alusrcb(2) & \ir_1|r_1|dout\(4))))

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
	datad => \ir_1|r_1|dout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[4]~7_combout\);

-- Location: LC_X9_Y10_N7
\alu_1|temp_out[4]~118\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[4]~118_combout\ = (!alusrca(0) & ((alusrca(1) & ((\ir_1|r_1|dout\(4)))) # (!alusrca(1) & (\pc|dout\(4)))))

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
	combout => \alu_1|temp_out[4]~118_combout\);

-- Location: LC_X13_Y8_N9
\m_8|outp[3]~6\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[3]~6_combout\ = (\ir_1|r_1|dout\(3) & (((alusrcb(2) & !alusrcb(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(3),
	datac => alusrcb(2),
	datad => alusrcb(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[3]~6_combout\);

-- Location: LC_X10_Y7_N2
\m_7|outp~4\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~4_combout\ = (alusrca(1) & ((alusrca(0) & (\pc|dout\(3))) # (!alusrca(0) & ((\ir_1|r_1|dout\(3)))))) # (!alusrca(1) & (\pc|dout\(3) & (!alusrca(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8e82",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(3),
	datab => alusrca(1),
	datac => alusrca(0),
	datad => \ir_1|r_1|dout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~4_combout\);

-- Location: LC_X11_Y8_N8
\m_8|outp[2]~0\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[2]~0_combout\ = ((\p_1|outp\(2)) # ((!alusrcb(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \p_1|outp\(2),
	datad => alusrcb(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[2]~0_combout\);

-- Location: LC_X11_Y8_N9
\m_8|outp[2]~1\ : maxv_lcell
-- Equation(s):
-- \m_8|outp[2]~1_combout\ = (alusrcb(2) & ((alusrcb(1) & ((\m_8|outp[2]~0_combout\))) # (!alusrcb(1) & (\ir_1|r_1|dout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrcb(2),
	datab => \ir_1|r_1|dout\(2),
	datac => alusrcb(1),
	datad => \m_8|outp[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_8|outp[2]~1_combout\);

-- Location: LC_X12_Y8_N9
\alu_1|temp_out[2]~113\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[2]~113_combout\ = (!alusrca(0) & ((alusrca(1) & (\ir_1|r_1|dout\(2))) # (!alusrca(1) & ((\pc|dout\(2))))))

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
	dataa => \ir_1|r_1|dout\(2),
	datab => alusrca(1),
	datac => alusrca(0),
	datad => \pc|dout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[2]~113_combout\);

-- Location: LC_X11_Y8_N1
\alu_1|opr2|s2|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s2|bout~combout\ = (\m_8|outp[1]~5_combout\ & (((!\m_7|outp[0]~2_combout\ & \m_8|outp[0]~3_combout\)) # (!\m_7|outp[1]~3_combout\))) # (!\m_8|outp[1]~5_combout\ & (!\m_7|outp[0]~2_combout\ & (\m_8|outp[0]~3_combout\ & 
-- !\m_7|outp[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[1]~5_combout\,
	datab => \m_7|outp[0]~2_combout\,
	datac => \m_8|outp[0]~3_combout\,
	datad => \m_7|outp[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s2|bout~combout\);

-- Location: LC_X9_Y8_N0
\m_7|outp~1\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~1_combout\ = (alusrca(0) & (((alusrca(1) & \pc|dout\(1))))) # (!alusrca(0) & ((alusrca(1) & (\ir_1|r_1|dout\(1))) # (!alusrca(1) & ((\pc|dout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e540",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(0),
	datab => \ir_1|r_1|dout\(1),
	datac => alusrca(1),
	datad => \pc|dout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~1_combout\);

-- Location: LC_X9_Y8_N2
\alu_1|temp_out[0]~78\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[0]~78_combout\ = (((!\m_7|outp[0]~2_combout\) # (!\m_8|outp[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \m_8|outp[0]~3_combout\,
	datad => \m_7|outp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[0]~78_combout\);

-- Location: LC_X9_Y8_N3
\alu_1|opr1|a2|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a2|cout~0_combout\ = (\m_8|outp[1]~5_combout\ & (((!\m_7|Equal1~0_combout\ & \m_7|outp~1_combout\)) # (!\alu_1|temp_out[0]~78_combout\))) # (!\m_8|outp[1]~5_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~1_combout\ & 
-- !\alu_1|temp_out[0]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40dc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|Equal1~0_combout\,
	datab => \m_8|outp[1]~5_combout\,
	datac => \m_7|outp~1_combout\,
	datad => \alu_1|temp_out[0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a2|cout~0_combout\);

-- Location: LC_X10_Y8_N1
\alu_1|temp_out[2]~79\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[2]~79_combout\ = (aluop(0) & ((\alu_1|opr2|s2|bout~combout\) # ((aluop(1))))) # (!aluop(0) & (((!aluop(1) & \alu_1|opr1|a2|cout~0_combout\))))

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
	datab => \alu_1|opr2|s2|bout~combout\,
	datac => aluop(1),
	datad => \alu_1|opr1|a2|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[2]~79_combout\);

-- Location: LC_X11_Y8_N4
\alu_1|temp_out[2]~80\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[2]~80_combout\ = (aluop(1) & (!\alu_1|temp_out[2]~79_combout\ & ((!\m_8|outp[2]~1_combout\) # (!\alu_1|temp_out[2]~113_combout\)))) # (!aluop(1) & (\alu_1|temp_out[2]~113_combout\ $ (\alu_1|temp_out[2]~79_combout\ $ 
-- (\m_8|outp[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "251e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[2]~113_combout\,
	datab => aluop(1),
	datac => \alu_1|temp_out[2]~79_combout\,
	datad => \m_8|outp[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[2]~80_combout\);

-- Location: LC_X10_Y6_N6
\t1|dout[2]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(2) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[2]~80_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[2]~80_combout\,
	datac => \t1|dout\(2),
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(2));

-- Location: LC_X10_Y6_N7
\m_9|outp[2]~0\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[2]~0_combout\ = (\pcsrc~regout\ & (((\t1|dout\(2))))) # (!\pcsrc~regout\ & (((\alu_1|temp_out[2]~80_combout\))))

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
	datac => \alu_1|temp_out[2]~80_combout\,
	datad => \t1|dout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[2]~0_combout\);

-- Location: LC_X11_Y8_N0
\pc|dout[2]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(2) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[2]~0_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(2))))

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
	datab => \pcwr~regout\,
	datac => \pc|dout\(2),
	datad => \m_9|outp[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(2));

-- Location: LC_X11_Y8_N7
\m_7|outp~0\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~0_combout\ = (alusrca(1) & ((alusrca(0) & (\pc|dout\(2))) # (!alusrca(0) & ((\ir_1|r_1|dout\(2)))))) # (!alusrca(1) & (!alusrca(0) & (\pc|dout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b290",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => alusrca(1),
	datab => alusrca(0),
	datac => \pc|dout\(2),
	datad => \ir_1|r_1|dout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~0_combout\);

-- Location: LC_X11_Y8_N2
\alu_1|opr2|s3|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s3|bout~combout\ = (\m_8|outp[2]~1_combout\ & ((\m_7|Equal1~0_combout\) # ((\alu_1|opr2|s2|bout~combout\) # (!\m_7|outp~0_combout\)))) # (!\m_8|outp[2]~1_combout\ & (\alu_1|opr2|s2|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~0_combout\))))

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
	datab => \m_8|outp[2]~1_combout\,
	datac => \m_7|outp~0_combout\,
	datad => \alu_1|opr2|s2|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s3|bout~combout\);

-- Location: LC_X11_Y8_N3
\alu_1|opr2|s4|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s4|bout~combout\ = (\m_8|outp[3]~6_combout\ & ((\m_7|Equal1~0_combout\) # ((\alu_1|opr2|s3|bout~combout\) # (!\m_7|outp~4_combout\)))) # (!\m_8|outp[3]~6_combout\ & (\alu_1|opr2|s3|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~4_combout\))))

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
	datab => \m_8|outp[3]~6_combout\,
	datac => \m_7|outp~4_combout\,
	datad => \alu_1|opr2|s3|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s4|bout~combout\);

-- Location: LC_X9_Y8_N4
\alu_1|opr1|a3|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a3|cout~0_combout\ = (\m_8|outp[2]~1_combout\ & ((\alu_1|opr1|a2|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~0_combout\)))) # (!\m_8|outp[2]~1_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~0_combout\ & 
-- \alu_1|opr1|a2|cout~0_combout\)))

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
	datab => \m_7|outp~0_combout\,
	datac => \m_8|outp[2]~1_combout\,
	datad => \alu_1|opr1|a2|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a3|cout~0_combout\);

-- Location: LC_X9_Y8_N5
\alu_1|opr1|a4|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a4|cout~0_combout\ = (\m_8|outp[3]~6_combout\ & ((\alu_1|opr1|a3|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~4_combout\)))) # (!\m_8|outp[3]~6_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~4_combout\ & 
-- \alu_1|opr1|a3|cout~0_combout\)))

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
	datab => \m_8|outp[3]~6_combout\,
	datac => \m_7|outp~4_combout\,
	datad => \alu_1|opr1|a3|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a4|cout~0_combout\);

-- Location: LC_X9_Y10_N9
\alu_1|temp_out[4]~98\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[4]~98_combout\ = (aluop(1) & (aluop(0))) # (!aluop(1) & ((aluop(0) & (\alu_1|opr2|s4|bout~combout\)) # (!aluop(0) & ((\alu_1|opr1|a4|cout~0_combout\)))))

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
	datac => \alu_1|opr2|s4|bout~combout\,
	datad => \alu_1|opr1|a4|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[4]~98_combout\);

-- Location: LC_X9_Y10_N8
\alu_1|temp_out[4]~99\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[4]~99_combout\ = (aluop(1) & (!\alu_1|temp_out[4]~98_combout\ & ((!\alu_1|temp_out[4]~118_combout\) # (!\m_8|outp[4]~7_combout\)))) # (!aluop(1) & (\m_8|outp[4]~7_combout\ $ (\alu_1|temp_out[4]~118_combout\ $ 
-- (\alu_1|temp_out[4]~98_combout\))))

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
	datab => \m_8|outp[4]~7_combout\,
	datac => \alu_1|temp_out[4]~118_combout\,
	datad => \alu_1|temp_out[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[4]~99_combout\);

-- Location: LC_X9_Y10_N4
\t1|dout[4]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(4) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[4]~99_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[4]~99_combout\,
	datac => \t1|dout\(4),
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(4));

-- Location: LC_X9_Y10_N5
\m_9|outp[4]~13\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[4]~13_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(4)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[4]~99_combout\)))

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
	dataa => \alu_1|temp_out[4]~99_combout\,
	datac => \pcsrc~regout\,
	datad => \t1|dout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[4]~13_combout\);

-- Location: LC_X9_Y10_N6
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

-- Location: LC_X9_Y10_N2
\m_7|outp~14\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~14_combout\ = (alusrca(1) & ((alusrca(0) & (\pc|dout\(4))) # (!alusrca(0) & ((\ir_1|r_1|dout\(4)))))) # (!alusrca(1) & (\pc|dout\(4) & (!alusrca(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8e82",
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
	combout => \m_7|outp~14_combout\);

-- Location: LC_X9_Y8_N6
\alu_1|opr1|a5|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a5|cout~0_combout\ = (\m_8|outp[4]~7_combout\ & ((\alu_1|opr1|a4|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~14_combout\)))) # (!\m_8|outp[4]~7_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~14_combout\ & 
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
	datac => \m_8|outp[4]~7_combout\,
	datad => \alu_1|opr1|a4|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a5|cout~0_combout\);

-- Location: LC_X6_Y8_N0
\alu_1|opr2|s5|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s5|bout~combout\ = (\m_8|outp[4]~7_combout\ & ((\m_7|Equal1~0_combout\) # ((\alu_1|opr2|s4|bout~combout\) # (!\m_7|outp~14_combout\)))) # (!\m_8|outp[4]~7_combout\ & (\alu_1|opr2|s4|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|Equal1~0_combout\,
	datab => \m_8|outp[4]~7_combout\,
	datac => \alu_1|opr2|s4|bout~combout\,
	datad => \m_7|outp~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s5|bout~combout\);

-- Location: LC_X6_Y10_N1
\alu_1|temp_out[5]~96\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[5]~96_combout\ = (aluop(0) & ((aluop(1)) # ((\alu_1|opr2|s5|bout~combout\)))) # (!aluop(0) & (!aluop(1) & (\alu_1|opr1|a5|cout~0_combout\)))

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
	dataa => aluop(0),
	datab => aluop(1),
	datac => \alu_1|opr1|a5|cout~0_combout\,
	datad => \alu_1|opr2|s5|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[5]~96_combout\);

-- Location: LC_X6_Y10_N2
\alu_1|temp_out[5]~97\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[5]~97_combout\ = (aluop(1) & (!\alu_1|temp_out[5]~96_combout\ & ((!\m_8|outp[6]~8_combout\) # (!\alu_1|temp_out[5]~117_combout\)))) # (!aluop(1) & (\alu_1|temp_out[5]~117_combout\ $ (\m_8|outp[6]~8_combout\ $ 
-- (\alu_1|temp_out[5]~96_combout\))))

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
	datab => \alu_1|temp_out[5]~117_combout\,
	datac => \m_8|outp[6]~8_combout\,
	datad => \alu_1|temp_out[5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[5]~97_combout\);

-- Location: LC_X6_Y10_N7
\t1|dout[5]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(5) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[5]~97_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(5)))))

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
	datab => \alu_1|temp_out[5]~97_combout\,
	datac => \t1|dout\(5),
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(5));

-- Location: LC_X6_Y10_N8
\m_9|outp[5]~12\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[5]~12_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(5)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[5]~97_combout\)))

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
	datab => \alu_1|temp_out[5]~97_combout\,
	datac => \pcsrc~regout\,
	datad => \t1|dout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[5]~12_combout\);

-- Location: LC_X6_Y10_N9
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

-- Location: LC_X9_Y7_N0
\m_7|outp~13\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~13_combout\ = (alusrca(0) & (alusrca(1) & ((\pc|dout\(5))))) # (!alusrca(0) & ((alusrca(1) & (\ir_1|r_1|dout\(5))) # (!alusrca(1) & ((\pc|dout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d940",
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
	combout => \m_7|outp~13_combout\);

-- Location: LC_X6_Y8_N1
\alu_1|opr2|s6|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s6|bout~combout\ = (\m_8|outp[6]~8_combout\ & (((\m_7|Equal1~0_combout\) # (\alu_1|opr2|s5|bout~combout\)) # (!\m_7|outp~13_combout\))) # (!\m_8|outp[6]~8_combout\ & (\alu_1|opr2|s5|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~13_combout\))))

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
	dataa => \m_8|outp[6]~8_combout\,
	datab => \m_7|outp~13_combout\,
	datac => \m_7|Equal1~0_combout\,
	datad => \alu_1|opr2|s5|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s6|bout~combout\);

-- Location: LC_X9_Y8_N7
\alu_1|opr1|a6|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a6|cout~0_combout\ = (\m_8|outp[6]~8_combout\ & ((\alu_1|opr1|a5|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~13_combout\)))) # (!\m_8|outp[6]~8_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~13_combout\ & 
-- \alu_1|opr1|a5|cout~0_combout\)))

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
	datab => \m_8|outp[6]~8_combout\,
	datac => \m_7|outp~13_combout\,
	datad => \alu_1|opr1|a5|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a6|cout~0_combout\);

-- Location: LC_X6_Y7_N3
\alu_1|temp_out[6]~102\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[6]~102_combout\ = (aluop(0) & ((\alu_1|opr2|s6|bout~combout\) # ((aluop(1))))) # (!aluop(0) & (((!aluop(1) & \alu_1|opr1|a6|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr2|s6|bout~combout\,
	datab => aluop(0),
	datac => aluop(1),
	datad => \alu_1|opr1|a6|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[6]~102_combout\);

-- Location: LC_X6_Y7_N0
\alu_1|temp_out[6]~103\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[6]~103_combout\ = (aluop(1) & (!\alu_1|temp_out[6]~102_combout\ & ((!\m_8|outp[6]~9_combout\) # (!\alu_1|temp_out[6]~120_combout\)))) # (!aluop(1) & (\alu_1|temp_out[6]~120_combout\ $ (\m_8|outp[6]~9_combout\ $ 
-- (\alu_1|temp_out[6]~102_combout\))))

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
	datab => \alu_1|temp_out[6]~120_combout\,
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|temp_out[6]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[6]~103_combout\);

-- Location: LC_X6_Y7_N6
\t1|dout[6]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(6) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[6]~103_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(6)))))

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
	datab => \alu_1|temp_out[6]~103_combout\,
	datac => \t1|dout\(6),
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(6));

-- Location: LC_X6_Y7_N7
\m_9|outp[6]~11\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[6]~11_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(6)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[6]~103_combout\)))

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
	datab => \alu_1|temp_out[6]~103_combout\,
	datac => \pcsrc~regout\,
	datad => \t1|dout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[6]~11_combout\);

-- Location: LC_X6_Y7_N8
\pc|dout[6]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(6) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[6]~11_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(6))))

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
	dataa => \pc|dout\(6),
	datac => \pcwr~regout\,
	datad => \m_9|outp[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(6));

-- Location: LC_X6_Y7_N4
\m_7|outp~12\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~12_combout\ = (\pc|dout\(6) & ((alusrca(0) $ (!alusrca(1)))))

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
	dataa => \pc|dout\(6),
	datac => alusrca(0),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~12_combout\);

-- Location: LC_X9_Y8_N8
\alu_1|opr1|a7|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a7|cout~0_combout\ = (\m_8|outp[6]~9_combout\ & ((\alu_1|opr1|a6|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~12_combout\)))) # (!\m_8|outp[6]~9_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~12_combout\ & 
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
	datab => \m_8|outp[6]~9_combout\,
	datac => \m_7|outp~12_combout\,
	datad => \alu_1|opr1|a6|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a7|cout~0_combout\);

-- Location: LC_X6_Y8_N2
\alu_1|opr2|s7|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s7|bout~combout\ = (\m_8|outp[6]~9_combout\ & ((\m_7|Equal1~0_combout\) # ((\alu_1|opr2|s6|bout~combout\) # (!\m_7|outp~12_combout\)))) # (!\m_8|outp[6]~9_combout\ & (\alu_1|opr2|s6|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|Equal1~0_combout\,
	datab => \m_7|outp~12_combout\,
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|opr2|s6|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s7|bout~combout\);

-- Location: LC_X6_Y9_N3
\alu_1|temp_out[7]~100\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[7]~100_combout\ = (aluop(1) & (aluop(0))) # (!aluop(1) & ((aluop(0) & ((\alu_1|opr2|s7|bout~combout\))) # (!aluop(0) & (\alu_1|opr1|a7|cout~0_combout\))))

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
	datac => \alu_1|opr1|a7|cout~0_combout\,
	datad => \alu_1|opr2|s7|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[7]~100_combout\);

-- Location: LC_X6_Y9_N4
\alu_1|temp_out[7]~101\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[7]~101_combout\ = (aluop(1) & (!\alu_1|temp_out[7]~100_combout\ & ((!\m_8|outp[6]~9_combout\) # (!\alu_1|temp_out[7]~119_combout\)))) # (!aluop(1) & (\alu_1|temp_out[7]~119_combout\ $ (\m_8|outp[6]~9_combout\ $ 
-- (\alu_1|temp_out[7]~100_combout\))))

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
	datab => \alu_1|temp_out[7]~119_combout\,
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|temp_out[7]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[7]~101_combout\);

-- Location: LC_X6_Y10_N4
\t1|dout[7]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(7) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[7]~101_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[7]~101_combout\,
	datac => \t1|dout\(7),
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(7));

-- Location: LC_X6_Y10_N5
\m_9|outp[7]~10\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[7]~10_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(7)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[7]~101_combout\)))

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
	datac => \alu_1|temp_out[7]~101_combout\,
	datad => \t1|dout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[7]~10_combout\);

-- Location: LC_X6_Y10_N6
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

-- Location: LC_X6_Y10_N3
\m_7|outp~11\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~11_combout\ = (\pc|dout\(7) & (alusrca(1) $ (((!alusrca(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8822",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(7),
	datab => alusrca(1),
	datad => alusrca(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~11_combout\);

-- Location: LC_X6_Y8_N3
\alu_1|opr2|s8|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s8|bout~combout\ = (\m_8|outp[6]~9_combout\ & ((\m_7|Equal1~0_combout\) # ((\alu_1|opr2|s7|bout~combout\) # (!\m_7|outp~11_combout\)))) # (!\m_8|outp[6]~9_combout\ & (\alu_1|opr2|s7|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~11_combout\))))

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
	datab => \m_8|outp[6]~9_combout\,
	datac => \m_7|outp~11_combout\,
	datad => \alu_1|opr2|s7|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s8|bout~combout\);

-- Location: LC_X8_Y8_N6
\alu_1|opr1|a8|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a8|cout~0_combout\ = (\m_8|outp[6]~9_combout\ & ((\alu_1|opr1|a7|cout~0_combout\) # ((\m_7|outp~11_combout\ & !\m_7|Equal1~0_combout\)))) # (!\m_8|outp[6]~9_combout\ & (\m_7|outp~11_combout\ & (!\m_7|Equal1~0_combout\ & 
-- \alu_1|opr1|a7|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp~11_combout\,
	datab => \m_7|Equal1~0_combout\,
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|opr1|a7|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a8|cout~0_combout\);

-- Location: LC_X7_Y10_N2
\alu_1|temp_out[8]~94\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[8]~94_combout\ = (aluop(1) & (aluop(0))) # (!aluop(1) & ((aluop(0) & (\alu_1|opr2|s8|bout~combout\)) # (!aluop(0) & ((\alu_1|opr1|a8|cout~0_combout\)))))

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
	datac => \alu_1|opr2|s8|bout~combout\,
	datad => \alu_1|opr1|a8|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[8]~94_combout\);

-- Location: LC_X7_Y10_N3
\alu_1|temp_out[8]~95\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[8]~95_combout\ = (aluop(1) & (!\alu_1|temp_out[8]~94_combout\ & ((!\m_8|outp[6]~9_combout\) # (!\alu_1|temp_out[8]~116_combout\)))) # (!aluop(1) & (\alu_1|temp_out[8]~116_combout\ $ (\m_8|outp[6]~9_combout\ $ 
-- (\alu_1|temp_out[8]~94_combout\))))

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
	dataa => \alu_1|temp_out[8]~116_combout\,
	datab => \m_8|outp[6]~9_combout\,
	datac => aluop(1),
	datad => \alu_1|temp_out[8]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[8]~95_combout\);

-- Location: LC_X7_Y10_N5
\t1|dout[8]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(8) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[8]~95_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[8]~95_combout\,
	datac => \t1|dout\(8),
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(8));

-- Location: LC_X7_Y10_N6
\m_9|outp[8]~9\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[8]~9_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(8)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[8]~95_combout\)))

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
	dataa => \alu_1|temp_out[8]~95_combout\,
	datac => \pcsrc~regout\,
	datad => \t1|dout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[8]~9_combout\);

-- Location: LC_X7_Y10_N7
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

-- Location: LC_X7_Y8_N1
\m_7|outp~10\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~10_combout\ = ((\pc|dout\(8) & (alusrca(1) $ (!alusrca(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrca(1),
	datac => alusrca(0),
	datad => \pc|dout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~10_combout\);

-- Location: LC_X8_Y8_N7
\alu_1|opr1|a9|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a9|cout~0_combout\ = (\m_8|outp[6]~9_combout\ & ((\alu_1|opr1|a8|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~10_combout\)))) # (!\m_8|outp[6]~9_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~10_combout\ & 
-- \alu_1|opr1|a8|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[6]~9_combout\,
	datab => \m_7|Equal1~0_combout\,
	datac => \m_7|outp~10_combout\,
	datad => \alu_1|opr1|a8|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a9|cout~0_combout\);

-- Location: LC_X8_Y8_N8
\alu_1|opr1|a10|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a10|cout~0_combout\ = (\m_8|outp[6]~9_combout\ & ((\alu_1|opr1|a9|cout~0_combout\) # ((\m_7|outp~9_combout\ & !\m_7|Equal1~0_combout\)))) # (!\m_8|outp[6]~9_combout\ & (\m_7|outp~9_combout\ & (!\m_7|Equal1~0_combout\ & 
-- \alu_1|opr1|a9|cout~0_combout\)))

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
	dataa => \m_8|outp[6]~9_combout\,
	datab => \m_7|outp~9_combout\,
	datac => \m_7|Equal1~0_combout\,
	datad => \alu_1|opr1|a9|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a10|cout~0_combout\);

-- Location: LC_X6_Y8_N4
\alu_1|opr2|s9|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s9|bout~combout\ = (\m_8|outp[6]~9_combout\ & (((\m_7|Equal1~0_combout\) # (\alu_1|opr2|s8|bout~combout\)) # (!\m_7|outp~10_combout\))) # (!\m_8|outp[6]~9_combout\ & (\alu_1|opr2|s8|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~10_combout\))))

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
	dataa => \m_7|outp~10_combout\,
	datab => \m_8|outp[6]~9_combout\,
	datac => \m_7|Equal1~0_combout\,
	datad => \alu_1|opr2|s8|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s9|bout~combout\);

-- Location: LC_X7_Y8_N5
\alu_1|opr2|s10|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s10|bout~combout\ = (\m_8|outp[6]~9_combout\ & (((\m_7|Equal1~0_combout\) # (\alu_1|opr2|s9|bout~combout\)) # (!\m_7|outp~9_combout\))) # (!\m_8|outp[6]~9_combout\ & (\alu_1|opr2|s9|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~9_combout\))))

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
	dataa => \m_7|outp~9_combout\,
	datab => \m_7|Equal1~0_combout\,
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|opr2|s9|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s10|bout~combout\);

-- Location: LC_X7_Y8_N3
\alu_1|temp_out[10]~104\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[10]~104_combout\ = (aluop(0) & (((\alu_1|opr2|s10|bout~combout\) # (aluop(1))))) # (!aluop(0) & (\alu_1|opr1|a10|cout~0_combout\ & ((!aluop(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(0),
	datab => \alu_1|opr1|a10|cout~0_combout\,
	datac => \alu_1|opr2|s10|bout~combout\,
	datad => aluop(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[10]~104_combout\);

-- Location: LC_X7_Y9_N5
\alu_1|temp_out[10]~105\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[10]~105_combout\ = (aluop(1) & (!\alu_1|temp_out[10]~104_combout\ & ((!\m_8|outp[6]~9_combout\) # (!\alu_1|temp_out[10]~121_combout\)))) # (!aluop(1) & (\alu_1|temp_out[10]~121_combout\ $ (\m_8|outp[6]~9_combout\ $ 
-- (\alu_1|temp_out[10]~104_combout\))))

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
	datab => \alu_1|temp_out[10]~121_combout\,
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|temp_out[10]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[10]~105_combout\);

-- Location: LC_X7_Y9_N4
\t1|dout[10]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(10) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[10]~105_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[10]~105_combout\,
	datac => \t1|dout\(10),
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(10));

-- Location: LC_X7_Y9_N1
\m_9|outp[10]~7\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[10]~7_combout\ = (\pcsrc~regout\ & (\t1|dout\(10))) # (!\pcsrc~regout\ & (((\alu_1|temp_out[10]~105_combout\))))

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
	dataa => \t1|dout\(10),
	datab => \pcsrc~regout\,
	datac => \alu_1|temp_out[10]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[10]~7_combout\);

-- Location: LC_X7_Y9_N6
\pc|dout[10]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(10) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[10]~7_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(10))))

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
	dataa => \pc|dout\(10),
	datac => \pcwr~regout\,
	datad => \m_9|outp[10]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(10));

-- Location: LC_X7_Y10_N0
\m_7|outp~8\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~8_combout\ = (\pc|dout\(10) & ((alusrca(0) $ (!alusrca(1)))))

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
	dataa => \pc|dout\(10),
	datac => alusrca(0),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~8_combout\);

-- Location: LC_X7_Y8_N6
\alu_1|opr2|s11|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s11|bout~combout\ = (\m_8|outp[6]~9_combout\ & ((\m_7|Equal1~0_combout\) # ((\alu_1|opr2|s10|bout~combout\) # (!\m_7|outp~8_combout\)))) # (!\m_8|outp[6]~9_combout\ & (\alu_1|opr2|s10|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|Equal1~0_combout\,
	datab => \m_7|outp~8_combout\,
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|opr2|s10|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s11|bout~combout\);

-- Location: LC_X8_Y8_N9
\alu_1|opr1|a11|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a11|cout~0_combout\ = (\m_8|outp[6]~9_combout\ & ((\alu_1|opr1|a10|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~8_combout\)))) # (!\m_8|outp[6]~9_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~8_combout\ & 
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
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|opr1|a10|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a11|cout~0_combout\);

-- Location: LC_X7_Y9_N2
\alu_1|temp_out[11]~92\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[11]~92_combout\ = (aluop(0) & ((aluop(1)) # ((\alu_1|opr2|s11|bout~combout\)))) # (!aluop(0) & (!aluop(1) & ((\alu_1|opr1|a11|cout~0_combout\))))

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
	datac => \alu_1|opr2|s11|bout~combout\,
	datad => \alu_1|opr1|a11|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[11]~92_combout\);

-- Location: LC_X7_Y9_N3
\alu_1|temp_out[11]~93\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[11]~93_combout\ = (aluop(1) & (!\alu_1|temp_out[11]~92_combout\ & ((!\m_8|outp[6]~9_combout\) # (!\alu_1|temp_out[11]~115_combout\)))) # (!aluop(1) & (\alu_1|temp_out[11]~115_combout\ $ (\m_8|outp[6]~9_combout\ $ 
-- (\alu_1|temp_out[11]~92_combout\))))

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
	dataa => \alu_1|temp_out[11]~115_combout\,
	datab => aluop(1),
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|temp_out[11]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[11]~93_combout\);

-- Location: LC_X7_Y9_N7
\t1|dout[11]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(11) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[11]~93_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[11]~93_combout\,
	datac => \t1|dout\(11),
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(11));

-- Location: LC_X7_Y9_N8
\m_9|outp[11]~6\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[11]~6_combout\ = (\pcsrc~regout\ & (((\t1|dout\(11))))) # (!\pcsrc~regout\ & (\alu_1|temp_out[11]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[11]~93_combout\,
	datab => \pcsrc~regout\,
	datad => \t1|dout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[11]~6_combout\);

-- Location: LC_X7_Y9_N9
\pc|dout[11]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(11) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[11]~6_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(11))))

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
	datab => \pc|dout\(11),
	datac => \pcwr~regout\,
	datad => \m_9|outp[11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(11));

-- Location: LC_X8_Y10_N5
\alu_1|temp_out[12]~124\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[12]~124_combout\ = ((alusrca(1)) # ((alusrca(0)) # (!\pc|dout\(12)))) # (!\m_8|outp[6]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[6]~9_combout\,
	datab => alusrca(1),
	datac => alusrca(0),
	datad => \pc|dout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[12]~124_combout\);

-- Location: LC_X8_Y10_N0
\alu_1|opr2|s13|xor_i~4\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s13|xor_i~4_combout\ = \m_8|outp[6]~9_combout\ $ (((!alusrca(1) & (!alusrca(0) & \pc|dout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a9aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[6]~9_combout\,
	datab => alusrca(1),
	datac => alusrca(0),
	datad => \pc|dout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s13|xor_i~4_combout\);

-- Location: LC_X6_Y9_N2
\m_7|outp~7\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~7_combout\ = ((\pc|dout\(11) & (alusrca(0) $ (!alusrca(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrca(0),
	datac => alusrca(1),
	datad => \pc|dout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~7_combout\);

-- Location: LC_X8_Y8_N0
\alu_1|opr1|a12|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a12|cout~0_combout\ = (\m_8|outp[6]~9_combout\ & ((\alu_1|opr1|a11|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~7_combout\)))) # (!\m_8|outp[6]~9_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~7_combout\ & 
-- \alu_1|opr1|a11|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[6]~9_combout\,
	datab => \m_7|Equal1~0_combout\,
	datac => \m_7|outp~7_combout\,
	datad => \alu_1|opr1|a11|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a12|cout~0_combout\);

-- Location: LC_X7_Y8_N0
\alu_1|opr2|s12|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s12|bout~combout\ = (\m_8|outp[6]~9_combout\ & ((\m_7|Equal1~0_combout\) # ((\alu_1|opr2|s11|bout~combout\) # (!\m_7|outp~7_combout\)))) # (!\m_8|outp[6]~9_combout\ & (\alu_1|opr2|s11|bout~combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[6]~9_combout\,
	datab => \m_7|Equal1~0_combout\,
	datac => \alu_1|opr2|s11|bout~combout\,
	datad => \m_7|outp~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s12|bout~combout\);

-- Location: LC_X9_Y9_N5
\alu_1|temp_out[12]~110\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[12]~110_combout\ = \alu_1|opr2|s13|xor_i~4_combout\ $ (((aluop(0) & ((\alu_1|opr2|s12|bout~combout\))) # (!aluop(0) & (\alu_1|opr1|a12|cout~0_combout\))))

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
	dataa => \alu_1|opr2|s13|xor_i~4_combout\,
	datab => aluop(0),
	datac => \alu_1|opr1|a12|cout~0_combout\,
	datad => \alu_1|opr2|s12|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[12]~110_combout\);

-- Location: LC_X9_Y9_N6
\alu_1|temp_out[12]~111\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[12]~111_combout\ = (aluop(1) & (\alu_1|temp_out[12]~124_combout\ & (!aluop(0)))) # (!aluop(1) & (((\alu_1|temp_out[12]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[12]~124_combout\,
	datab => aluop(0),
	datac => aluop(1),
	datad => \alu_1|temp_out[12]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[12]~111_combout\);

-- Location: LC_X9_Y9_N0
\t1|dout[12]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(12) = ((GLOBAL(\alu_en~combout\) & ((\alu_1|temp_out[12]~111_combout\))) # (!GLOBAL(\alu_en~combout\) & (\t1|dout\(12))))

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
	datab => \t1|dout\(12),
	datac => \alu_1|temp_out[12]~111_combout\,
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(12));

-- Location: LC_X9_Y9_N1
\m_9|outp[12]~5\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[12]~5_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(12)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[12]~111_combout\)))

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
	datac => \alu_1|temp_out[12]~111_combout\,
	datad => \t1|dout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[12]~5_combout\);

-- Location: LC_X9_Y9_N2
\pc|dout[12]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(12) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[12]~5_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(12))))

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
	datab => \pc|dout\(12),
	datac => \pcwr~regout\,
	datad => \m_9|outp[12]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(12));

-- Location: LC_X6_Y9_N1
\alu_1|opr2|s13|bout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s13|bout~0_combout\ = (!alusrca(1) & ((\pc|dout\(11) & ((\pc|dout\(12)) # (!\m_8|outp[6]~9_combout\))) # (!\pc|dout\(11) & (!\m_8|outp[6]~9_combout\ & \pc|dout\(12)))))

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
	datab => \pc|dout\(11),
	datac => \m_8|outp[6]~9_combout\,
	datad => \pc|dout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s13|bout~0_combout\);

-- Location: LC_X7_Y8_N7
\alu_1|opr2|s13|bout~1\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s13|bout~1_combout\ = (\m_8|outp[6]~9_combout\ & (((alusrca(0)) # (\alu_1|opr2|s11|bout~combout\)) # (!\alu_1|opr2|s13|bout~0_combout\))) # (!\m_8|outp[6]~9_combout\ & (\alu_1|opr2|s11|bout~combout\ & ((alusrca(0)) # 
-- (!\alu_1|opr2|s13|bout~0_combout\))))

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
	dataa => \alu_1|opr2|s13|bout~0_combout\,
	datab => alusrca(0),
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|opr2|s11|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s13|bout~1_combout\);

-- Location: LC_X8_Y10_N2
\m_7|outp~6\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~6_combout\ = ((\pc|dout\(12) & (alusrca(1) $ (!alusrca(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrca(1),
	datac => alusrca(0),
	datad => \pc|dout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~6_combout\);

-- Location: LC_X8_Y8_N1
\alu_1|opr1|a13|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a13|cout~0_combout\ = (\m_8|outp[6]~9_combout\ & ((\alu_1|opr1|a12|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~6_combout\)))) # (!\m_8|outp[6]~9_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~6_combout\ & 
-- \alu_1|opr1|a12|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[6]~9_combout\,
	datab => \m_7|Equal1~0_combout\,
	datac => \m_7|outp~6_combout\,
	datad => \alu_1|opr1|a12|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a13|cout~0_combout\);

-- Location: LC_X7_Y8_N2
\alu_1|temp_out[13]~108\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[13]~108_combout\ = (aluop(0) & ((aluop(1)) # ((\alu_1|opr2|s13|bout~1_combout\)))) # (!aluop(0) & (!aluop(1) & ((\alu_1|opr1|a13|cout~0_combout\))))

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
	datac => \alu_1|opr2|s13|bout~1_combout\,
	datad => \alu_1|opr1|a13|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[13]~108_combout\);

-- Location: LC_X8_Y9_N2
\alu_1|temp_out[13]~109\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[13]~109_combout\ = (aluop(1) & (!\alu_1|temp_out[13]~108_combout\ & ((!\m_8|outp[6]~9_combout\) # (!\alu_1|temp_out[13]~123_combout\)))) # (!aluop(1) & (\alu_1|temp_out[13]~123_combout\ $ (\m_8|outp[6]~9_combout\ $ 
-- (\alu_1|temp_out[13]~108_combout\))))

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
	datab => \alu_1|temp_out[13]~123_combout\,
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|temp_out[13]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[13]~109_combout\);

-- Location: LC_X8_Y9_N6
\t1|dout[13]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(13) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[13]~109_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(13)))))

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
	datab => \alu_1|temp_out[13]~109_combout\,
	datac => \t1|dout\(13),
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(13));

-- Location: LC_X8_Y9_N3
\m_9|outp[13]~4\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[13]~4_combout\ = (\pcsrc~regout\ & (((\t1|dout\(13))))) # (!\pcsrc~regout\ & (((\alu_1|temp_out[13]~109_combout\))))

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
	dataa => \pcsrc~regout\,
	datac => \t1|dout\(13),
	datad => \alu_1|temp_out[13]~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[13]~4_combout\);

-- Location: LC_X8_Y9_N4
\pc|dout[13]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(13) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[13]~4_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(13))))

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
	dataa => \pc|dout\(13),
	datac => \pcwr~regout\,
	datad => \m_9|outp[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(13));

-- Location: LC_X8_Y10_N6
\m_7|outp~5\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~5_combout\ = (\pc|dout\(13) & (alusrca(1) $ ((!alusrca(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8282",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc|dout\(13),
	datab => alusrca(1),
	datac => alusrca(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~5_combout\);

-- Location: LC_X8_Y8_N2
\alu_1|opr1|a14|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a14|cout~0_combout\ = (\m_8|outp[6]~9_combout\ & ((\alu_1|opr1|a13|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~5_combout\)))) # (!\m_8|outp[6]~9_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~5_combout\ & 
-- \alu_1|opr1|a13|cout~0_combout\)))

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
	datab => \m_7|outp~5_combout\,
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|opr1|a13|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a14|cout~0_combout\);

-- Location: LC_X7_Y8_N8
\alu_1|opr2|s14|bout\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr2|s14|bout~combout\ = (\m_8|outp[6]~9_combout\ & ((\m_7|Equal1~0_combout\) # ((\alu_1|opr2|s13|bout~1_combout\) # (!\m_7|outp~5_combout\)))) # (!\m_8|outp[6]~9_combout\ & (\alu_1|opr2|s13|bout~1_combout\ & ((\m_7|Equal1~0_combout\) # 
-- (!\m_7|outp~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|Equal1~0_combout\,
	datab => \m_7|outp~5_combout\,
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|opr2|s13|bout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr2|s14|bout~combout\);

-- Location: LC_X9_Y9_N8
\alu_1|temp_out[14]~86\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[14]~86_combout\ = \alu_1|opr2|s15|xor_i~0_combout\ $ (((aluop(0) & ((\alu_1|opr2|s14|bout~combout\))) # (!aluop(0) & (\alu_1|opr1|a14|cout~0_combout\))))

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
	combout => \alu_1|temp_out[14]~86_combout\);

-- Location: LC_X9_Y9_N9
\alu_1|temp_out[14]~87\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[14]~87_combout\ = (aluop(1) & (\alu_1|temp_out[14]~112_combout\ & (!aluop(0)))) # (!aluop(1) & (((\alu_1|temp_out[14]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[14]~112_combout\,
	datab => aluop(0),
	datac => aluop(1),
	datad => \alu_1|temp_out[14]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[14]~87_combout\);

-- Location: LC_X9_Y9_N7
\t1|dout[14]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(14) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[14]~87_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(14)))))

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
	datab => \alu_1|temp_out[14]~87_combout\,
	datac => \t1|dout\(14),
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(14));

-- Location: LC_X9_Y9_N3
\m_9|outp[14]~14\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[14]~14_combout\ = ((\pcsrc~regout\ & (\t1|dout\(14))) # (!\pcsrc~regout\ & ((\alu_1|temp_out[14]~87_combout\))))

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
	datab => \pcsrc~regout\,
	datac => \t1|dout\(14),
	datad => \alu_1|temp_out[14]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[14]~14_combout\);

-- Location: LC_X9_Y9_N4
\pc|dout[14]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(14) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[14]~14_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(14))))

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
	dataa => \pc|dout\(14),
	datac => \pcwr~regout\,
	datad => \m_9|outp[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(14));

-- Location: LC_X8_Y7_N3
\m_7|outp[14]~16\ : maxv_lcell
-- Equation(s):
-- \m_7|outp[14]~16_combout\ = ((!alusrca(0) & (\pc|dout\(14) & !alusrca(1))))

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
	datac => \pc|dout\(14),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp[14]~16_combout\);

-- Location: LC_X7_Y8_N9
\alu_1|temp_out[15]~89\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[15]~89_combout\ = ((\m_7|outp[14]~16_combout\ & (\m_8|outp[6]~9_combout\ & !\alu_1|opr2|s14|bout~combout\)) # (!\m_7|outp[14]~16_combout\ & (!\m_8|outp[6]~9_combout\ & \alu_1|opr2|s14|bout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \m_7|outp[14]~16_combout\,
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|opr2|s14|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[15]~89_combout\);

-- Location: LC_X8_Y8_N3
\alu_1|opr1|a15|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a15|cout~0_combout\ = (\m_8|outp[6]~9_combout\ & ((\alu_1|opr1|a14|cout~0_combout\) # ((!\m_7|Equal1~0_combout\ & \m_7|outp~15_combout\)))) # (!\m_8|outp[6]~9_combout\ & (!\m_7|Equal1~0_combout\ & (\m_7|outp~15_combout\ & 
-- \alu_1|opr1|a14|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_8|outp[6]~9_combout\,
	datab => \m_7|Equal1~0_combout\,
	datac => \m_7|outp~15_combout\,
	datad => \alu_1|opr1|a14|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a15|cout~0_combout\);

-- Location: LC_X8_Y8_N4
\alu_1|temp_out[15]~88\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[15]~88_combout\ = (\alu_1|opr1|a15|cout~0_combout\ $ (((\m_8|outp[6]~8_combout\ & !alusrcb(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f30c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \m_8|outp[6]~8_combout\,
	datac => alusrcb(0),
	datad => \alu_1|opr1|a15|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[15]~88_combout\);

-- Location: LC_X8_Y8_N5
\alu_1|temp_out[15]~90\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[15]~90_combout\ = (aluop(0) & ((aluop(1)) # ((\alu_1|temp_out[15]~89_combout\)))) # (!aluop(0) & (!aluop(1) & ((\alu_1|temp_out[15]~88_combout\))))

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
	datac => \alu_1|temp_out[15]~89_combout\,
	datad => \alu_1|temp_out[15]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[15]~90_combout\);

-- Location: LC_X8_Y9_N8
\alu_1|temp_out[15]~91\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[15]~91_combout\ = (aluop(1) & (!\alu_1|temp_out[15]~90_combout\ & ((!\m_8|outp[6]~9_combout\) # (!\m_7|outp[15]~17_combout\)))) # (!aluop(1) & (\m_7|outp[15]~17_combout\ $ (((\alu_1|temp_out[15]~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "116e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => aluop(1),
	datab => \m_7|outp[15]~17_combout\,
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|temp_out[15]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[15]~91_combout\);

-- Location: LC_X8_Y9_N0
\t1|dout[15]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(15) = ((GLOBAL(\alu_en~combout\) & ((\alu_1|temp_out[15]~91_combout\))) # (!GLOBAL(\alu_en~combout\) & (\t1|dout\(15))))

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
	datad => \alu_1|temp_out[15]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(15));

-- Location: LC_X8_Y9_N9
\m_9|outp[15]~15\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[15]~15_combout\ = (\pcsrc~regout\ & (((\t1|dout\(15))))) # (!\pcsrc~regout\ & (((\alu_1|temp_out[15]~91_combout\))))

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
	dataa => \pcsrc~regout\,
	datac => \t1|dout\(15),
	datad => \alu_1|temp_out[15]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[15]~15_combout\);

-- Location: LC_X8_Y9_N5
\pc|dout[15]\ : maxv_lcell
-- Equation(s):
-- \pc|dout\(15) = ((GLOBAL(\pcwr~regout\) & ((\m_9|outp[15]~15_combout\))) # (!GLOBAL(\pcwr~regout\) & (\pc|dout\(15))))

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
	dataa => \pc|dout\(15),
	datac => \pcwr~regout\,
	datad => \m_9|outp[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pc|dout\(15));

-- Location: LC_X8_Y7_N2
\m_7|outp[15]~17\ : maxv_lcell
-- Equation(s):
-- \m_7|outp[15]~17_combout\ = ((!alusrca(0) & (!alusrca(1) & \pc|dout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrca(0),
	datac => alusrca(1),
	datad => \pc|dout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp[15]~17_combout\);

-- Location: LC_X8_Y7_N7
\alu_1|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|cout~0_combout\ = (\m_7|outp[14]~16_combout\ & (\m_8|outp[6]~9_combout\ & ((\alu_1|opr2|s14|bout~combout\) # (!\m_7|outp[15]~17_combout\)))) # (!\m_7|outp[14]~16_combout\ & ((\m_8|outp[6]~9_combout\) # ((!\m_7|outp[15]~17_combout\ & 
-- \alu_1|opr2|s14|bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f170",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp[14]~16_combout\,
	datab => \m_7|outp[15]~17_combout\,
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|opr2|s14|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|cout~0_combout\);

-- Location: LC_X8_Y7_N5
\m_7|outp~18\ : maxv_lcell
-- Equation(s):
-- \m_7|outp~18_combout\ = ((\pc|dout\(15) & (alusrca(1) $ (!alusrca(0)))))

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
	datab => \pc|dout\(15),
	datac => alusrca(1),
	datad => alusrca(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_7|outp~18_combout\);

-- Location: LC_X8_Y7_N9
\alu_1|opr1|a16|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|opr1|a16|cout~0_combout\ = (\m_8|outp[6]~9_combout\ & ((\alu_1|opr1|a15|cout~0_combout\) # ((\m_7|outp~18_combout\ & !\m_7|Equal1~0_combout\)))) # (!\m_8|outp[6]~9_combout\ & (\m_7|outp~18_combout\ & (!\m_7|Equal1~0_combout\ & 
-- \alu_1|opr1|a15|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m_7|outp~18_combout\,
	datab => \m_7|Equal1~0_combout\,
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|opr1|a15|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|opr1|a16|cout~0_combout\);

-- Location: LC_X8_Y7_N8
\carry_flag|dout\ : maxv_lcell
-- Equation(s):
-- \carry_flag|dout~regout\ = DFFEAS(((aluop(0) & (\alu_1|cout~0_combout\)) # (!aluop(0) & ((\alu_1|opr1|a16|cout~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \alu_en~combout\, , , aluop(1), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => aluop(0),
	datac => \alu_1|cout~0_combout\,
	datad => \alu_1|opr1|a16|cout~0_combout\,
	aclr => GND,
	sclr => aluop(1),
	ena => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \carry_flag|dout~regout\);

-- Location: LC_X8_Y7_N4
\alu_en~0\ : maxv_lcell
-- Equation(s):
-- \alu_en~0_combout\ = (\ir_1|r_1|dout\(1) & ((\carry_flag|dout~regout\) # ((\ir_1|r_1|dout\(0) & \zero_flag|dout~regout\)))) # (!\ir_1|r_1|dout\(1) & (((\zero_flag|dout~regout\)) # (!\ir_1|r_1|dout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbd1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(1),
	datab => \ir_1|r_1|dout\(0),
	datac => \zero_flag|dout~regout\,
	datad => \carry_flag|dout~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_en~0_combout\);

-- Location: LC_X7_Y7_N9
\alud~1\ : maxv_lcell
-- Equation(s):
-- \alud~1_combout\ = ((state(2)) # (state(0) $ (!state(1)))) # (!state(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdf7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(0),
	datac => state(2),
	datad => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alud~1_combout\);

-- Location: LC_X7_Y7_N2
\alud~2\ : maxv_lcell
-- Equation(s):
-- \alud~2_combout\ = (\memwr~11_combout\ & (state(0) & ((state(4)) # (\alud~1_combout\)))) # (!\memwr~11_combout\ & ((state(4)) # ((\alud~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc54",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memwr~11_combout\,
	datab => state(4),
	datac => \alud~1_combout\,
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alud~2_combout\);

-- Location: LC_X7_Y7_N3
alud : maxv_lcell
-- Equation(s):
-- \alud~regout\ = DFFEAS((\Equal0~0_combout\) # ((\alud~regout\ & ((\Equal0~1_combout\) # (\alud~2_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \alud~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alud~regout\);

-- Location: LC_X7_Y7_N5
alu_en : maxv_lcell
-- Equation(s):
-- \alu_en~combout\ = ((\alu_en~0_combout\) # ((\alud~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_en~0_combout\,
	datad => \alud~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_en~combout\);

-- Location: LC_X6_Y8_N8
\t1|dout[9]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(9) = ((GLOBAL(\alu_en~combout\) & ((\alu_1|temp_out[9]~107_combout\))) # (!GLOBAL(\alu_en~combout\) & (\t1|dout\(9))))

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
	datab => \t1|dout\(9),
	datac => \alu_1|temp_out[9]~107_combout\,
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(9));

-- Location: LC_X6_Y8_N9
\m_9|outp[9]~8\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[9]~8_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(9)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[9]~107_combout\)))

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
	dataa => \alu_1|temp_out[9]~107_combout\,
	datac => \pcsrc~regout\,
	datad => \t1|dout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[9]~8_combout\);

-- Location: LC_X6_Y8_N7
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

-- Location: LC_X6_Y9_N8
\alu_1|temp_out[9]~122\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[9]~122_combout\ = ((!alusrca(0) & (!alusrca(1) & \pc|dout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => alusrca(0),
	datac => alusrca(1),
	datad => \pc|dout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[9]~122_combout\);

-- Location: LC_X6_Y8_N5
\alu_1|temp_out[9]~106\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[9]~106_combout\ = (aluop(1) & (aluop(0))) # (!aluop(1) & ((aluop(0) & (\alu_1|opr2|s9|bout~combout\)) # (!aluop(0) & ((\alu_1|opr1|a9|cout~0_combout\)))))

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
	datac => \alu_1|opr2|s9|bout~combout\,
	datad => \alu_1|opr1|a9|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[9]~106_combout\);

-- Location: LC_X6_Y8_N6
\alu_1|temp_out[9]~107\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[9]~107_combout\ = (aluop(1) & (!\alu_1|temp_out[9]~106_combout\ & ((!\m_8|outp[6]~9_combout\) # (!\alu_1|temp_out[9]~122_combout\)))) # (!aluop(1) & (\alu_1|temp_out[9]~122_combout\ $ (\m_8|outp[6]~9_combout\ $ 
-- (\alu_1|temp_out[9]~106_combout\))))

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
	datab => \alu_1|temp_out[9]~122_combout\,
	datac => \m_8|outp[6]~9_combout\,
	datad => \alu_1|temp_out[9]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[9]~107_combout\);

-- Location: LC_X9_Y7_N1
\alu_1|temp_out[3]~114\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[3]~114_combout\ = (!alusrca(0) & ((alusrca(1) & ((\ir_1|r_1|dout\(3)))) # (!alusrca(1) & (\pc|dout\(3)))))

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
	dataa => alusrca(0),
	datab => \pc|dout\(3),
	datac => \ir_1|r_1|dout\(3),
	datad => alusrca(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[3]~114_combout\);

-- Location: LC_X11_Y7_N6
\alu_1|temp_out[3]~83\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[3]~83_combout\ = (aluop(0) & ((\alu_1|opr2|s3|bout~combout\) # ((aluop(1))))) # (!aluop(0) & (((!aluop(1) & \alu_1|opr1|a3|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|opr2|s3|bout~combout\,
	datab => aluop(0),
	datac => aluop(1),
	datad => \alu_1|opr1|a3|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[3]~83_combout\);

-- Location: LC_X11_Y7_N7
\alu_1|temp_out[3]~84\ : maxv_lcell
-- Equation(s):
-- \alu_1|temp_out[3]~84_combout\ = (aluop(1) & (!\alu_1|temp_out[3]~83_combout\ & ((!\alu_1|temp_out[3]~114_combout\) # (!\m_8|outp[3]~6_combout\)))) # (!aluop(1) & (\m_8|outp[3]~6_combout\ $ (\alu_1|temp_out[3]~114_combout\ $ 
-- (\alu_1|temp_out[3]~83_combout\))))

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
	dataa => \m_8|outp[3]~6_combout\,
	datab => aluop(1),
	datac => \alu_1|temp_out[3]~114_combout\,
	datad => \alu_1|temp_out[3]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|temp_out[3]~84_combout\);

-- Location: LC_X6_Y9_N9
\alu_1|zero_flag~0\ : maxv_lcell
-- Equation(s):
-- \alu_1|zero_flag~0_combout\ = (\alu_1|temp_out[0]~85_combout\) # (((\alu_1|temp_out[2]~80_combout\) # (\alu_1|temp_out[1]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[0]~85_combout\,
	datac => \alu_1|temp_out[2]~80_combout\,
	datad => \alu_1|temp_out[1]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|zero_flag~0_combout\);

-- Location: LC_X6_Y9_N6
\alu_1|zero_flag~1\ : maxv_lcell
-- Equation(s):
-- \alu_1|zero_flag~1_combout\ = (\alu_1|temp_out[4]~99_combout\) # ((\alu_1|temp_out[3]~84_combout\) # ((\alu_1|temp_out[5]~97_combout\) # (\alu_1|zero_flag~0_combout\)))

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
	dataa => \alu_1|temp_out[4]~99_combout\,
	datab => \alu_1|temp_out[3]~84_combout\,
	datac => \alu_1|temp_out[5]~97_combout\,
	datad => \alu_1|zero_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|zero_flag~1_combout\);

-- Location: LC_X6_Y9_N7
\alu_1|zero_flag~2\ : maxv_lcell
-- Equation(s):
-- \alu_1|zero_flag~2_combout\ = (\alu_1|temp_out[7]~101_combout\) # ((\alu_1|temp_out[6]~103_combout\) # ((\alu_1|temp_out[8]~95_combout\) # (\alu_1|zero_flag~1_combout\)))

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
	dataa => \alu_1|temp_out[7]~101_combout\,
	datab => \alu_1|temp_out[6]~103_combout\,
	datac => \alu_1|temp_out[8]~95_combout\,
	datad => \alu_1|zero_flag~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|zero_flag~2_combout\);

-- Location: LC_X7_Y9_N0
\alu_1|zero_flag~3\ : maxv_lcell
-- Equation(s):
-- \alu_1|zero_flag~3_combout\ = (\alu_1|temp_out[9]~107_combout\) # ((\alu_1|zero_flag~2_combout\) # ((\alu_1|temp_out[10]~105_combout\) # (\alu_1|temp_out[11]~93_combout\)))

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
	dataa => \alu_1|temp_out[9]~107_combout\,
	datab => \alu_1|zero_flag~2_combout\,
	datac => \alu_1|temp_out[10]~105_combout\,
	datad => \alu_1|temp_out[11]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|zero_flag~3_combout\);

-- Location: LC_X8_Y9_N7
\alu_1|zero_flag~4\ : maxv_lcell
-- Equation(s):
-- \alu_1|zero_flag~4_combout\ = (((\alu_1|temp_out[12]~111_combout\) # (\alu_1|temp_out[13]~109_combout\)))

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
	datac => \alu_1|temp_out[12]~111_combout\,
	datad => \alu_1|temp_out[13]~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_1|zero_flag~4_combout\);

-- Location: LC_X8_Y9_N1
\zero_flag|dout\ : maxv_lcell
-- Equation(s):
-- \zero_flag|dout~regout\ = DFFEAS((!\alu_1|zero_flag~3_combout\ & (!\alu_1|temp_out[14]~87_combout\ & (!\alu_1|zero_flag~4_combout\ & !\alu_1|temp_out[15]~91_combout\))), GLOBAL(\clk~combout\), VCC, , \alu_en~combout\, , , , )

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
	dataa => \alu_1|zero_flag~3_combout\,
	datab => \alu_1|temp_out[14]~87_combout\,
	datac => \alu_1|zero_flag~4_combout\,
	datad => \alu_1|temp_out[15]~91_combout\,
	aclr => GND,
	ena => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \zero_flag|dout~regout\);

-- Location: LC_X12_Y3_N1
\pcwr~1\ : maxv_lcell
-- Equation(s):
-- \pcwr~1_combout\ = (state(3) & (((\zero_flag|dout~regout\)))) # (!state(3) & (!state(1) & (\pcwr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => \pcwr~0_combout\,
	datac => state(3),
	datad => \zero_flag|dout~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pcwr~1_combout\);

-- Location: LC_X12_Y3_N6
\pcwr~3\ : maxv_lcell
-- Equation(s):
-- \pcwr~3_combout\ = ((!state(3) & ((state(4)) # (state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => state(4),
	datac => state(3),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pcwr~3_combout\);

-- Location: LC_X12_Y3_N3
\pcwr~2\ : maxv_lcell
-- Equation(s):
-- \pcwr~2_combout\ = (state(3) & (\alud~0_combout\ & (!state(4) & state(2)))) # (!state(3) & (((!state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "200f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alud~0_combout\,
	datab => state(4),
	datac => state(3),
	datad => state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pcwr~2_combout\);

-- Location: LC_X12_Y3_N8
pcwr : maxv_lcell
-- Equation(s):
-- \pcwr~regout\ = DFFEAS((\pcwr~2_combout\ & ((\pcwr~1_combout\) # ((\pcwr~regout\ & \pcwr~3_combout\)))) # (!\pcwr~2_combout\ & (\pcwr~regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ecaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pcwr~regout\,
	datab => \pcwr~1_combout\,
	datac => \pcwr~3_combout\,
	datad => \pcwr~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pcwr~regout\);

-- Location: LC_X10_Y7_N1
\t1|dout[3]\ : maxv_lcell
-- Equation(s):
-- \t1|dout\(3) = ((GLOBAL(\alu_en~combout\) & (\alu_1|temp_out[3]~84_combout\)) # (!GLOBAL(\alu_en~combout\) & ((\t1|dout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_1|temp_out[3]~84_combout\,
	datab => \t1|dout\(3),
	datad => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|dout\(3));

-- Location: LC_X10_Y7_N5
\m_9|outp[3]~2\ : maxv_lcell
-- Equation(s):
-- \m_9|outp[3]~2_combout\ = ((\pcsrc~regout\ & ((\t1|dout\(3)))) # (!\pcsrc~regout\ & (\alu_1|temp_out[3]~84_combout\)))

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
	dataa => \alu_1|temp_out[3]~84_combout\,
	datac => \pcsrc~regout\,
	datad => \t1|dout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_9|outp[3]~2_combout\);

-- Location: LC_X10_Y7_N6
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

-- Location: LC_X10_Y7_N7
\m_1|outp[3]~4\ : maxv_lcell
-- Equation(s):
-- \m_1|outp[3]~4_combout\ = ((iord(1) & (\input~combout\(3))) # (!iord(1) & ((\pc|dout\(3)))))

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
	datac => \input~combout\(3),
	datad => \pc|dout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_1|outp[3]~4_combout\);

-- Location: LC_X10_Y7_N0
\m_1|outp[3]~5\ : maxv_lcell
-- Equation(s):
-- \m_1|outp[3]~5_combout\ = (iord(0) & (!iord(1) & ((\t1|dout\(3))))) # (!iord(0) & (((\m_1|outp[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7250",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => iord(0),
	datab => iord(1),
	datac => \m_1|outp[3]~4_combout\,
	datad => \t1|dout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_1|outp[3]~5_combout\);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(29),
	combout => \input~combout\(29));

-- Location: LC_X13_Y4_N1
\mem|mem_reg[8][13]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[13]~0\ = (\input~combout\(29) & (((!dcon(0) & dcon(1)))))
-- \mem|mem_reg[8][13]~regout\ = DFFEAS(\m_2|outp[13]~0\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~5_combout\, , , , )

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
	dataa => \input~combout\(29),
	datac => dcon(0),
	datad => dcon(1),
	aclr => GND,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[13]~0\,
	regout => \mem|mem_reg[8][13]~regout\);

-- Location: LC_X15_Y9_N5
\mem|mem_reg[15][13]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[15][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~23_combout\, \m_2|outp[13]~0\, , , VCC)

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
	ena => \mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[15][13]~regout\);

-- Location: LC_X14_Y8_N3
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

-- Location: LC_X13_Y6_N8
\mem|mem_reg[11][13]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux2~7\ = (\m_1|outp[2]~1_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[11][13]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[9][13]~regout\))))

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
	datab => \mem|mem_reg[9][13]~regout\,
	datac => \m_2|outp[13]~0\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux2~7\,
	regout => \mem|mem_reg[11][13]~regout\);

-- Location: LC_X13_Y6_N6
\mem|mem_reg[13][13]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux2~8\ = (\m_1|outp[2]~1_combout\ & ((\mem|Mux2~7\ & (\mem|mem_reg[15][13]~regout\)) # (!\mem|Mux2~7\ & ((S1_mem_reg[13][13]))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|Mux2~7\))))

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
	datad => \mem|Mux2~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux2~8\,
	regout => \mem|mem_reg[13][13]~regout\);

-- Location: LC_X8_Y6_N9
\mem|mem_reg[0][13]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[0][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~18_combout\, \m_2|outp[13]~0\, , , VCC)

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
	ena => \mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[0][13]~regout\);

-- Location: LC_X10_Y6_N4
\mem|mem_reg[2][13]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux2~4\ = (\m_1|outp[2]~1_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[2][13]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[0][13]~regout\))))

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
	datab => \mem|mem_reg[0][13]~regout\,
	datac => \m_2|outp[13]~0\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux2~4\,
	regout => \mem|mem_reg[2][13]~regout\);

-- Location: LC_X11_Y6_N2
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

-- Location: LC_X9_Y6_N6
\mem|mem_reg[4][13]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux2~5\ = (\mem|Mux2~4\ & ((\mem|mem_reg[6][13]~regout\) # ((!\m_1|outp[2]~1_combout\)))) # (!\mem|Mux2~4\ & (((S1_mem_reg[4][13] & \m_1|outp[2]~1_combout\))))

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
	dataa => \mem|Mux2~4\,
	datab => \mem|mem_reg[6][13]~regout\,
	datac => \m_2|outp[13]~0\,
	datad => \m_1|outp[2]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux2~5\,
	regout => \mem|mem_reg[4][13]~regout\);

-- Location: LC_X15_Y9_N2
\mem|mem_reg[7][13]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[7][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~15_combout\, \m_2|outp[13]~0\, , , VCC)

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
	ena => \mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[7][13]~regout\);

-- Location: LC_X10_Y10_N1
\mem|mem_reg[1][13]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[1][13]~regout\ = DFFEAS((((\m_2|outp[13]~0\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~13_combout\, , , , )

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
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[1][13]~regout\);

-- Location: LC_X10_Y7_N8
\mem|mem_reg[3][13]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux2~2\ = (\m_1|outp[2]~1_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[3][13]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[1][13]~regout\))))

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
	combout => \mem|Mux2~2\,
	regout => \mem|mem_reg[3][13]~regout\);

-- Location: LC_X10_Y7_N9
\mem|mem_reg[5][13]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux2~3\ = (\m_1|outp[2]~1_combout\ & ((\mem|Mux2~2\ & (\mem|mem_reg[7][13]~regout\)) # (!\mem|Mux2~2\ & ((S1_mem_reg[5][13]))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|Mux2~2\))))

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
	dataa => \mem|mem_reg[7][13]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[13]~0\,
	datad => \mem|Mux2~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux2~3\,
	regout => \mem|mem_reg[5][13]~regout\);

-- Location: LC_X9_Y6_N7
\mem|Mux2~6\ : maxv_lcell
-- Equation(s):
-- \mem|Mux2~6_combout\ = (\m_1|outp[3]~5_combout\ & (\m_1|outp[0]~7_combout\)) # (!\m_1|outp[3]~5_combout\ & ((\m_1|outp[0]~7_combout\ & ((\mem|Mux2~3\))) # (!\m_1|outp[0]~7_combout\ & (\mem|Mux2~5\))))

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
	datab => \m_1|outp[0]~7_combout\,
	datac => \mem|Mux2~5\,
	datad => \mem|Mux2~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux2~6_combout\);

-- Location: LC_X14_Y5_N2
\mem|mem_reg[14][13]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[14][13]~regout\ = DFFEAS((((\m_2|outp[13]~0\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~7_combout\, , , , )

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
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[14][13]~regout\);

-- Location: LC_X13_Y8_N4
\mem|mem_reg[10][13]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux2~0\ = (\m_1|outp[2]~1_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[10][13]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[8][13]~regout\))))

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
	dataa => \mem|mem_reg[8][13]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[13]~0\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux2~0\,
	regout => \mem|mem_reg[10][13]~regout\);

-- Location: LC_X14_Y8_N8
\mem|mem_reg[12][13]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux2~1\ = (\m_1|outp[2]~1_combout\ & ((\mem|Mux2~0\ & (\mem|mem_reg[14][13]~regout\)) # (!\mem|Mux2~0\ & ((S1_mem_reg[12][13]))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|Mux2~0\))))

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
	dataa => \mem|mem_reg[14][13]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[13]~0\,
	datad => \mem|Mux2~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux2~1\,
	regout => \mem|mem_reg[12][13]~regout\);

-- Location: LC_X9_Y6_N9
\mem|do[13]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(13) = DFFEAS((\m_1|outp[3]~5_combout\ & ((\mem|Mux2~6_combout\ & (\mem|Mux2~8\)) # (!\mem|Mux2~6_combout\ & ((\mem|Mux2~1\))))) # (!\m_1|outp[3]~5_combout\ & (((\mem|Mux2~6_combout\)))), GLOBAL(\clk~combout\), VCC, , \memrd~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \m_1|outp[3]~5_combout\,
	datab => \mem|Mux2~8\,
	datac => \mem|Mux2~6_combout\,
	datad => \mem|Mux2~1\,
	aclr => GND,
	ena => \memrd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(13));

-- Location: LC_X9_Y6_N1
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

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(30),
	combout => \input~combout\(30));

-- Location: LC_X13_Y4_N7
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

-- Location: LC_X13_Y7_N2
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

-- Location: LC_X14_Y8_N5
\mem|mem_reg[12][14]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux1~0\ = (\m_1|outp[2]~1_combout\ & (((S1_mem_reg[12][14]) # (\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[8][14]~regout\ & ((!\m_1|outp[0]~7_combout\))))

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
	dataa => \mem|mem_reg[8][14]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[14]~1\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux1~0\,
	regout => \mem|mem_reg[12][14]~regout\);

-- Location: LC_X14_Y8_N6
\mem|mem_reg[9][14]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux1~1\ = (\m_1|outp[0]~7_combout\ & ((\mem|Mux1~0\ & (\mem|mem_reg[13][14]~regout\)) # (!\mem|Mux1~0\ & ((S1_mem_reg[9][14]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|Mux1~0\))))

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
	dataa => \mem|mem_reg[13][14]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[14]~1\,
	datad => \mem|Mux1~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux1~1\,
	regout => \mem|mem_reg[9][14]~regout\);

-- Location: LC_X14_Y9_N2
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

-- Location: LC_X13_Y8_N7
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

-- Location: LC_X14_Y5_N6
\mem|mem_reg[11][14]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux1~7\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[11][14]) # (\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[10][14]~regout\ & ((!\m_1|outp[2]~1_combout\))))

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
	combout => \mem|Mux1~7\,
	regout => \mem|mem_reg[11][14]~regout\);

-- Location: LC_X14_Y5_N7
\mem|mem_reg[14][14]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux1~8\ = (\m_1|outp[2]~1_combout\ & ((\mem|Mux1~7\ & (\mem|mem_reg[15][14]~regout\)) # (!\mem|Mux1~7\ & ((S1_mem_reg[14][14]))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|Mux1~7\))))

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
	dataa => \mem|mem_reg[15][14]~regout\,
	datab => \m_1|outp[2]~1_combout\,
	datac => \m_2|outp[14]~1\,
	datad => \mem|Mux1~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux1~8\,
	regout => \mem|mem_reg[14][14]~regout\);

-- Location: LC_X11_Y7_N4
\mem|mem_reg[5][14]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[5][14]~regout\ = DFFEAS((((\m_2|outp[14]~1\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~9_combout\, , , , )

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
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[5][14]~regout\);

-- Location: LC_X8_Y6_N7
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

-- Location: LC_X8_Y6_N2
\mem|mem_reg[4][14]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux1~4\ = (\m_1|outp[2]~1_combout\ & (((S1_mem_reg[4][14]) # (\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[2]~1_combout\ & (\mem|mem_reg[0][14]~regout\ & ((!\m_1|outp[0]~7_combout\))))

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
	datab => \mem|mem_reg[0][14]~regout\,
	datac => \m_2|outp[14]~1\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux1~4\,
	regout => \mem|mem_reg[4][14]~regout\);

-- Location: LC_X9_Y5_N7
\mem|mem_reg[1][14]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux1~5\ = (\m_1|outp[0]~7_combout\ & ((\mem|Mux1~4\ & (\mem|mem_reg[5][14]~regout\)) # (!\mem|Mux1~4\ & ((S1_mem_reg[1][14]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|Mux1~4\))))

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
	datab => \mem|mem_reg[5][14]~regout\,
	datac => \m_2|outp[14]~1\,
	datad => \mem|Mux1~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux1~5\,
	regout => \mem|mem_reg[1][14]~regout\);

-- Location: LC_X10_Y9_N6
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

-- Location: LC_X13_Y4_N9
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

-- Location: LC_X15_Y6_N2
\mem|mem_reg[3][14]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux1~2\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[3][14]) # (\m_1|outp[2]~1_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[2][14]~regout\ & ((!\m_1|outp[2]~1_combout\))))

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
	combout => \mem|Mux1~2\,
	regout => \mem|mem_reg[3][14]~regout\);

-- Location: LC_X11_Y6_N8
\mem|mem_reg[6][14]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux1~3\ = (\m_1|outp[2]~1_combout\ & ((\mem|Mux1~2\ & (\mem|mem_reg[7][14]~regout\)) # (!\mem|Mux1~2\ & ((S1_mem_reg[6][14]))))) # (!\m_1|outp[2]~1_combout\ & (((\mem|Mux1~2\))))

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
	datad => \mem|Mux1~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux1~3\,
	regout => \mem|mem_reg[6][14]~regout\);

-- Location: LC_X9_Y5_N8
\mem|Mux1~6\ : maxv_lcell
-- Equation(s):
-- \mem|Mux1~6_combout\ = (\m_1|outp[1]~3_combout\ & ((\m_1|outp[3]~5_combout\) # ((\mem|Mux1~3\)))) # (!\m_1|outp[1]~3_combout\ & (!\m_1|outp[3]~5_combout\ & (\mem|Mux1~5\)))

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
	datab => \m_1|outp[3]~5_combout\,
	datac => \mem|Mux1~5\,
	datad => \mem|Mux1~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux1~6_combout\);

-- Location: LC_X9_Y5_N9
\mem|do[14]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(14) = DFFEAS((\m_1|outp[3]~5_combout\ & ((\mem|Mux1~6_combout\ & ((\mem|Mux1~8\))) # (!\mem|Mux1~6_combout\ & (\mem|Mux1~1\)))) # (!\m_1|outp[3]~5_combout\ & (((\mem|Mux1~6_combout\)))), GLOBAL(\clk~combout\), VCC, , \memrd~regout\, , , , )

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
	dataa => \m_1|outp[3]~5_combout\,
	datab => \mem|Mux1~1\,
	datac => \mem|Mux1~8\,
	datad => \mem|Mux1~6_combout\,
	aclr => GND,
	ena => \memrd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(14));

-- Location: LC_X9_Y5_N0
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

-- Location: LC_X6_Y4_N0
\next_state~44\ : maxv_lcell
-- Equation(s):
-- \next_state~44_combout\ = (state(2) & (((\ir_1|r_1|dout\(13)) # (\ir_1|r_1|dout\(14))) # (!\ir_1|r_1|dout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(15),
	datab => \ir_1|r_1|dout\(13),
	datac => state(2),
	datad => \ir_1|r_1|dout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~44_combout\);

-- Location: LC_X6_Y4_N4
\next_state~45\ : maxv_lcell
-- Equation(s):
-- \next_state~45_combout\ = (state(4) & (((next_state(3))))) # (!state(4) & (((next_state(3) & \next_state~44_combout\)) # (!state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => next_state(3),
	datac => \next_state~44_combout\,
	datad => state(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~45_combout\);

-- Location: LC_X7_Y4_N5
\next_state~35\ : maxv_lcell
-- Equation(s):
-- \next_state~35_combout\ = (state(2) & (next_state(3) & ((state(4))))) # (!state(2) & (state(0) & ((next_state(3)) # (!state(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a830",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => next_state(3),
	datab => state(2),
	datac => state(0),
	datad => state(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~35_combout\);

-- Location: LC_X7_Y4_N6
\next_state~42\ : maxv_lcell
-- Equation(s):
-- \next_state~42_combout\ = (next_state(3) & (!state(2) & (state(0) & state(4))))

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
	dataa => next_state(3),
	datab => state(2),
	datac => state(0),
	datad => state(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~42_combout\);

-- Location: LC_X6_Y4_N1
\next_state~36\ : maxv_lcell
-- Equation(s):
-- \next_state~36_combout\ = (next_state(3) & ((\ir_1|r_1|dout\(15)) # ((\ir_1|r_1|dout\(13)) # (!\ir_1|r_1|dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(15),
	datab => next_state(3),
	datac => \ir_1|r_1|dout\(13),
	datad => \ir_1|r_1|dout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~36_combout\);

-- Location: LC_X6_Y4_N2
\next_state~37\ : maxv_lcell
-- Equation(s):
-- \next_state~37_combout\ = (state(4) & (\Equal34~2_combout\ & (state(2)))) # (!state(4) & (((state(2)) # (\next_state~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal34~2_combout\,
	datab => state(4),
	datac => state(2),
	datad => \next_state~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~37_combout\);

-- Location: LC_X6_Y4_N8
\next_state~39\ : maxv_lcell
-- Equation(s):
-- \next_state~39_combout\ = (\ir_1|r_1|dout\(12) & (!\ir_1|r_1|dout\(14) & (\ir_1|r_1|dout\(13) $ (\ir_1|r_1|dout\(15))))) # (!\ir_1|r_1|dout\(12) & ((\ir_1|r_1|dout\(15) & ((!\ir_1|r_1|dout\(13)))) # (!\ir_1|r_1|dout\(15) & (!\ir_1|r_1|dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1345",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(14),
	datab => \ir_1|r_1|dout\(13),
	datac => \ir_1|r_1|dout\(12),
	datad => \ir_1|r_1|dout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~39_combout\);

-- Location: LC_X6_Y4_N3
\next_state~38\ : maxv_lcell
-- Equation(s):
-- \next_state~38_combout\ = (\ir_1|r_1|dout\(15)) # ((\ir_1|r_1|dout\(13) & ((!\ir_1|r_1|dout\(14)))) # (!\ir_1|r_1|dout\(13) & (state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(15),
	datab => state(4),
	datac => \ir_1|r_1|dout\(13),
	datad => \ir_1|r_1|dout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~38_combout\);

-- Location: LC_X6_Y4_N5
\next_state~40\ : maxv_lcell
-- Equation(s):
-- \next_state~40_combout\ = (\next_state~39_combout\ & (((next_state(3) & \next_state~38_combout\)) # (!state(4)))) # (!\next_state~39_combout\ & (((next_state(3) & \next_state~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~39_combout\,
	datab => state(4),
	datac => next_state(3),
	datad => \next_state~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~40_combout\);

-- Location: LC_X6_Y4_N6
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

-- Location: LC_X6_Y4_N7
\next_state~43\ : maxv_lcell
-- Equation(s):
-- \next_state~43_combout\ = (state(3) & (((state(1))))) # (!state(3) & ((state(1) & ((\next_state~41_combout\))) # (!state(1) & (\next_state~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~42_combout\,
	datab => state(3),
	datac => state(1),
	datad => \next_state~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~43_combout\);

-- Location: LC_X6_Y4_N9
\next_state[3]\ : maxv_lcell
-- Equation(s):
-- next_state(3) = DFFEAS((\next_state~43_combout\ & ((\next_state~45_combout\) # ((!state(3))))) # (!\next_state~43_combout\ & (((\next_state~35_combout\ & state(3))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \next_state~45_combout\,
	datab => \next_state~35_combout\,
	datac => \next_state~43_combout\,
	datad => state(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => next_state(3));

-- Location: LC_X6_Y6_N5
\state[3]\ : maxv_lcell
-- Equation(s):
-- \iord~8\ = (state[3] & (((state(4))))) # (!state[3] & ((state(4) & ((!\iord~14_combout\))) # (!state(4) & (!\next_state~8\))))
-- state(3) = DFFEAS(\iord~8\, GLOBAL(\clk~combout\), VCC, , , next_state(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f305",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \next_state~8\,
	datab => \iord~14_combout\,
	datac => next_state(3),
	datad => state(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \iord~8\,
	regout => state(3));

-- Location: LC_X7_Y7_N8
\iord~9\ : maxv_lcell
-- Equation(s):
-- \iord~9_combout\ = (!\Equal0~1_combout\ & (\iord~8\ & ((\iord~15_combout\) # (!state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \Equal0~1_combout\,
	datac => \iord~15_combout\,
	datad => \iord~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \iord~9_combout\);

-- Location: LC_X5_Y7_N7
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

-- Location: LC_X5_Y7_N8
\iord[1]\ : maxv_lcell
-- Equation(s):
-- iord(1) = DFFEAS((\memwr~11_combout\ & (((!state(0))))) # (!\memwr~11_combout\ & (iord(1) & (\iord~10_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => iord(1),
	datab => \iord~10_combout\,
	datac => state(0),
	datad => \memwr~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => iord(1));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(2),
	combout => \input~combout\(2));

-- Location: LC_X11_Y7_N9
\m_1|outp[2]~0\ : maxv_lcell
-- Equation(s):
-- \m_1|outp[2]~0_combout\ = ((iord(1) & (\input~combout\(2))) # (!iord(1) & ((\pc|dout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(2),
	datac => \pc|dout\(2),
	datad => iord(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_1|outp[2]~0_combout\);

-- Location: LC_X10_Y6_N3
\m_1|outp[2]~1\ : maxv_lcell
-- Equation(s):
-- \m_1|outp[2]~1_combout\ = (iord(0) & (!iord(1) & ((\t1|dout\(2))))) # (!iord(0) & (((\m_1|outp[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7430",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => iord(1),
	datab => iord(0),
	datac => \m_1|outp[2]~0_combout\,
	datad => \t1|dout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_1|outp[2]~1_combout\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(28),
	combout => \input~combout\(28));

-- Location: LC_X14_Y9_N8
\mem|mem_reg[4][12]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[12]~3\ = (\input~combout\(28) & (((!dcon(0) & dcon(1)))))
-- \mem|mem_reg[4][12]~regout\ = DFFEAS(\m_2|outp[12]~3\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~16_combout\, , , , )

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
	dataa => \input~combout\(28),
	datac => dcon(0),
	datad => dcon(1),
	aclr => GND,
	ena => \mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[12]~3\,
	regout => \mem|mem_reg[4][12]~regout\);

-- Location: LC_X10_Y9_N4
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

-- Location: LC_X11_Y4_N4
\mem|mem_reg[6][12]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux3~0\ = (\m_1|outp[1]~3_combout\ & (((S1_mem_reg[6][12]) # (\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[4][12]~regout\ & ((!\m_1|outp[0]~7_combout\))))

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
	dataa => \mem|mem_reg[4][12]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[12]~3\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux3~0\,
	regout => \mem|mem_reg[6][12]~regout\);

-- Location: LC_X10_Y5_N0
\mem|mem_reg[5][12]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux3~1\ = (\m_1|outp[0]~7_combout\ & ((\mem|Mux3~0\ & (\mem|mem_reg[7][12]~regout\)) # (!\mem|Mux3~0\ & ((S1_mem_reg[5][12]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|Mux3~0\))))

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
	dataa => \mem|mem_reg[7][12]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[12]~3\,
	datad => \mem|Mux3~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux3~1\,
	regout => \mem|mem_reg[5][12]~regout\);

-- Location: LC_X14_Y9_N0
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

-- Location: LC_X13_Y7_N9
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

-- Location: LC_X14_Y7_N8
\mem|mem_reg[14][12]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux3~7\ = (\m_1|outp[1]~3_combout\ & (((S1_mem_reg[14][12]) # (\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[12][12]~regout\ & ((!\m_1|outp[0]~7_combout\))))

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
	dataa => \mem|mem_reg[12][12]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[12]~3\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux3~7\,
	regout => \mem|mem_reg[14][12]~regout\);

-- Location: LC_X13_Y7_N4
\mem|mem_reg[13][12]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux3~8\ = (\m_1|outp[0]~7_combout\ & ((\mem|Mux3~7\ & (\mem|mem_reg[15][12]~regout\)) # (!\mem|Mux3~7\ & ((S1_mem_reg[13][12]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|Mux3~7\))))

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
	datad => \mem|Mux3~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux3~8\,
	regout => \mem|mem_reg[13][12]~regout\);

-- Location: LC_X13_Y6_N2
\mem|mem_reg[11][12]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[11][12]~regout\ = DFFEAS((((\m_2|outp[12]~3\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~21_combout\, , , , )

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
	ena => \mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[11][12]~regout\);

-- Location: LC_X13_Y4_N3
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

-- Location: LC_X13_Y5_N7
\mem|mem_reg[9][12]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux3~2\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[9][12]) # (\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[8][12]~regout\ & ((!\m_1|outp[1]~3_combout\))))

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
	dataa => \mem|mem_reg[8][12]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[12]~3\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux3~2\,
	regout => \mem|mem_reg[9][12]~regout\);

-- Location: LC_X13_Y5_N8
\mem|mem_reg[10][12]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux3~3\ = (\m_1|outp[1]~3_combout\ & ((\mem|Mux3~2\ & (\mem|mem_reg[11][12]~regout\)) # (!\mem|Mux3~2\ & ((S1_mem_reg[10][12]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|Mux3~2\))))

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
	datab => \mem|mem_reg[11][12]~regout\,
	datac => \m_2|outp[12]~3\,
	datad => \mem|Mux3~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux3~3\,
	regout => \mem|mem_reg[10][12]~regout\);

-- Location: LC_X15_Y7_N2
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

-- Location: LC_X16_Y6_N2
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

-- Location: LC_X12_Y7_N2
\mem|mem_reg[1][12]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux3~4\ = (\m_1|outp[1]~3_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & ((\m_1|outp[0]~7_combout\ & ((S1_mem_reg[1][12]))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[0][12]~regout\))))

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
	dataa => \mem|mem_reg[0][12]~regout\,
	datab => \m_1|outp[1]~3_combout\,
	datac => \m_2|outp[12]~3\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux3~4\,
	regout => \mem|mem_reg[1][12]~regout\);

-- Location: LC_X12_Y7_N3
\mem|mem_reg[2][12]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux3~5\ = (\m_1|outp[1]~3_combout\ & ((\mem|Mux3~4\ & (\mem|mem_reg[3][12]~regout\)) # (!\mem|Mux3~4\ & ((S1_mem_reg[2][12]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|Mux3~4\))))

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
	datad => \mem|Mux3~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux3~5\,
	regout => \mem|mem_reg[2][12]~regout\);

-- Location: LC_X8_Y5_N1
\mem|Mux3~6\ : maxv_lcell
-- Equation(s):
-- \mem|Mux3~6_combout\ = (\m_1|outp[2]~1_combout\ & (\m_1|outp[3]~5_combout\)) # (!\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~5_combout\ & (\mem|Mux3~3\)) # (!\m_1|outp[3]~5_combout\ & ((\mem|Mux3~5\)))))

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
	datac => \mem|Mux3~3\,
	datad => \mem|Mux3~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux3~6_combout\);

-- Location: LC_X8_Y5_N2
\mem|do[12]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(12) = DFFEAS((\m_1|outp[2]~1_combout\ & ((\mem|Mux3~6_combout\ & ((\mem|Mux3~8\))) # (!\mem|Mux3~6_combout\ & (\mem|Mux3~1\)))) # (!\m_1|outp[2]~1_combout\ & (((\mem|Mux3~6_combout\)))), GLOBAL(\clk~combout\), VCC, , \memrd~regout\, , , , )

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
	dataa => \m_1|outp[2]~1_combout\,
	datab => \mem|Mux3~1\,
	datac => \mem|Mux3~8\,
	datad => \mem|Mux3~6_combout\,
	aclr => GND,
	ena => \memrd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(12));

-- Location: LC_X8_Y5_N9
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

-- Location: LC_X9_Y5_N6
\next_state~32\ : maxv_lcell
-- Equation(s):
-- \next_state~32_combout\ = (!state(4) & ((\ir_1|r_1|dout\(15)) # ((\ir_1|r_1|dout\(12) & !\ir_1|r_1|dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3302",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(12),
	datab => state(4),
	datac => \ir_1|r_1|dout\(14),
	datad => \ir_1|r_1|dout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~32_combout\);

-- Location: LC_X10_Y5_N2
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

-- Location: LC_X9_Y5_N5
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

-- Location: LC_X8_Y5_N0
\next_state[1]~20\ : maxv_lcell
-- Equation(s):
-- \next_state[1]~20_combout\ = (state(4) & (((\ir_1|r_1|dout\(12)) # (!\Equal24~0_combout\)) # (!\ir_1|r_1|dout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(13),
	datab => \ir_1|r_1|dout\(12),
	datac => state(4),
	datad => \Equal24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state[1]~20_combout\);

-- Location: LC_X10_Y5_N5
\next_state[1]~21\ : maxv_lcell
-- Equation(s):
-- \next_state[1]~21_combout\ = (state(0) & (\Equal20~0_combout\ & (!state(4)))) # (!state(0) & (((\next_state[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Equal20~0_combout\,
	datac => state(4),
	datad => \next_state[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state[1]~21_combout\);

-- Location: LC_X10_Y5_N6
\next_state~33\ : maxv_lcell
-- Equation(s):
-- \next_state~33_combout\ = (state(1) & ((state(0)) # ((\next_state~32_combout\) # (\next_state[1]~21_combout\))))

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
	datac => \next_state~32_combout\,
	datad => \next_state[1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~33_combout\);

-- Location: LC_X7_Y5_N1
\next_state~11\ : maxv_lcell
-- Equation(s):
-- \next_state~11_combout\ = (((\ir_1|r_1|dout\(12) & \ir_1|r_1|dout\(14))))

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
	datac => \ir_1|r_1|dout\(12),
	datad => \ir_1|r_1|dout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~11_combout\);

-- Location: LC_X7_Y5_N4
\next_state[1]~28\ : maxv_lcell
-- Equation(s):
-- \next_state[1]~28_combout\ = (\ir_1|r_1|dout\(15) & ((state(0)) # ((\ir_1|r_1|dout\(13)) # (\next_state~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(15),
	datab => state(0),
	datac => \ir_1|r_1|dout\(13),
	datad => \next_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state[1]~28_combout\);

-- Location: LC_X7_Y5_N0
\next_state[1]~29\ : maxv_lcell
-- Equation(s):
-- \next_state[1]~29_combout\ = ((state(0) & ((\ir_1|r_1|dout\(13)) # (!\ir_1|r_1|dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => \ir_1|r_1|dout\(13),
	datad => \ir_1|r_1|dout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state[1]~29_combout\);

-- Location: LC_X9_Y5_N4
\next_state~7\ : maxv_lcell
-- Equation(s):
-- \next_state~7_combout\ = ((\ir_1|r_1|dout\(15) & (!\ir_1|r_1|dout\(14) & !\ir_1|r_1|dout\(13))))

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
	datab => \ir_1|r_1|dout\(15),
	datac => \ir_1|r_1|dout\(14),
	datad => \ir_1|r_1|dout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~7_combout\);

-- Location: LC_X8_Y5_N7
\next_state[1]~27\ : maxv_lcell
-- Equation(s):
-- \next_state[1]~27_combout\ = (state(0) & (state(3) & (state(2) & !\next_state~7_combout\)))

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
	dataa => state(0),
	datab => state(3),
	datac => state(2),
	datad => \next_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state[1]~27_combout\);

-- Location: LC_X7_Y5_N5
\next_state[1]~30\ : maxv_lcell
-- Equation(s):
-- \next_state[1]~30_combout\ = (\next_state[1]~27_combout\) # ((\memwr~10\ & ((\next_state[1]~28_combout\) # (\next_state[1]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \next_state[1]~28_combout\,
	datab => \memwr~10\,
	datac => \next_state[1]~29_combout\,
	datad => \next_state[1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state[1]~30_combout\);

-- Location: LC_X8_Y5_N4
\Equal24~1\ : maxv_lcell
-- Equation(s):
-- \Equal24~1_combout\ = (!\ir_1|r_1|dout\(15) & (\ir_1|r_1|dout\(12) & (\ir_1|r_1|dout\(14) & \ir_1|r_1|dout\(13))))

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
	datac => \ir_1|r_1|dout\(14),
	datad => \ir_1|r_1|dout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal24~1_combout\);

-- Location: LC_X7_Y5_N6
\next_state[1]~25\ : maxv_lcell
-- Equation(s):
-- \next_state[1]~25_combout\ = (state(1) & (!state(0) & (\next_state[1]~20_combout\ & !\Equal24~1_combout\))) # (!state(1) & (state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4464",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => \next_state[1]~20_combout\,
	datad => \Equal24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state[1]~25_combout\);

-- Location: LC_X7_Y5_N7
\next_state[1]~26\ : maxv_lcell
-- Equation(s):
-- \next_state[1]~26_combout\ = (state(2) & (state(3))) # (!state(2) & ((\next_state[1]~25_combout\) # ((state(3) & state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bba8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(2),
	datac => state(1),
	datad => \next_state[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state[1]~26_combout\);

-- Location: LC_X7_Y5_N8
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

-- Location: LC_X7_Y5_N2
\next_state[2]\ : maxv_lcell
-- Equation(s):
-- next_state(2) = DFFEAS((state(2) & (\next_state~24_combout\)) # (!state(2) & (((!state(3) & \next_state~33_combout\)))), GLOBAL(\clk~combout\), VCC, , \next_state[1]~31_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8b88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \next_state~24_combout\,
	datab => state(2),
	datac => state(3),
	datad => \next_state~33_combout\,
	aclr => GND,
	ena => \next_state[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => next_state(2));

-- Location: LC_X8_Y4_N4
\state[2]\ : maxv_lcell
-- Equation(s):
-- \memwr~10\ = ((!state(4) & (!state[2] & !state(3))))
-- state(2) = DFFEAS(\memwr~10\, GLOBAL(\clk~combout\), VCC, , , next_state(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => state(4),
	datac => next_state(2),
	datad => state(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memwr~10\,
	regout => state(2));

-- Location: LC_X12_Y3_N7
irwr : maxv_lcell
-- Equation(s):
-- \irwr~regout\ = DFFEAS((\memwr~10\ & (state(0) & ((\irwr~regout\) # (!state(1))))) # (!\memwr~10\ & (((\irwr~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f430",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(1),
	datab => \memwr~10\,
	datac => \irwr~regout\,
	datad => state(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \irwr~regout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(31),
	combout => \input~combout\(31));

-- Location: LC_X13_Y4_N8
\mem|mem_reg[8][15]\ : maxv_lcell
-- Equation(s):
-- \m_2|outp[15]~2\ = (\input~combout\(31) & (((!dcon(0) & dcon(1)))))
-- \mem|mem_reg[8][15]~regout\ = DFFEAS(\m_2|outp[15]~2\, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~5_combout\, , , , )

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
	dataa => \input~combout\(31),
	datac => dcon(0),
	datad => dcon(1),
	aclr => GND,
	ena => \mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m_2|outp[15]~2\,
	regout => \mem|mem_reg[8][15]~regout\);

-- Location: LC_X13_Y6_N1
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

-- Location: LC_X13_Y5_N5
\mem|mem_reg[9][15]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux0~0\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[9][15]) # (\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[8][15]~regout\ & ((!\m_1|outp[1]~3_combout\))))

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
	dataa => \mem|mem_reg[8][15]~regout\,
	datab => \m_1|outp[0]~7_combout\,
	datac => \m_2|outp[15]~2\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux0~0\,
	regout => \mem|mem_reg[9][15]~regout\);

-- Location: LC_X13_Y5_N6
\mem|mem_reg[10][15]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux0~1\ = (\m_1|outp[1]~3_combout\ & ((\mem|Mux0~0\ & (\mem|mem_reg[11][15]~regout\)) # (!\mem|Mux0~0\ & ((S1_mem_reg[10][15]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|Mux0~0\))))

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
	datab => \mem|mem_reg[11][15]~regout\,
	datac => \m_2|outp[15]~2\,
	datad => \mem|Mux0~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux0~1\,
	regout => \mem|mem_reg[10][15]~regout\);

-- Location: LC_X14_Y9_N1
\mem|mem_reg[15][15]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[15][15]~regout\ = DFFEAS((((\m_2|outp[15]~2\))), GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~23_combout\, , , , )

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
	ena => \mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[15][15]~regout\);

-- Location: LC_X12_Y9_N4
\mem|mem_reg[12][15]\ : maxv_lcell
-- Equation(s):
-- \mem|mem_reg[12][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \mem|Decoder0~1_combout\, \m_2|outp[15]~2\, , , VCC)

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
	ena => \mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|mem_reg[12][15]~regout\);

-- Location: LC_X12_Y9_N0
\mem|mem_reg[14][15]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux0~7\ = (\m_1|outp[0]~7_combout\ & (((\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & ((\m_1|outp[1]~3_combout\ & ((S1_mem_reg[14][15]))) # (!\m_1|outp[1]~3_combout\ & (\mem|mem_reg[12][15]~regout\))))

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
	combout => \mem|Mux0~7\,
	regout => \mem|mem_reg[14][15]~regout\);

-- Location: LC_X13_Y6_N4
\mem|mem_reg[13][15]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux0~8\ = (\m_1|outp[0]~7_combout\ & ((\mem|Mux0~7\ & (\mem|mem_reg[15][15]~regout\)) # (!\mem|Mux0~7\ & ((S1_mem_reg[13][15]))))) # (!\m_1|outp[0]~7_combout\ & (((\mem|Mux0~7\))))

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
	datad => \mem|Mux0~7\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux0~8\,
	regout => \mem|mem_reg[13][15]~regout\);

-- Location: LC_X15_Y6_N3
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

-- Location: LC_X8_Y6_N1
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

-- Location: LC_X12_Y6_N7
\mem|mem_reg[1][15]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux0~4\ = (\m_1|outp[0]~7_combout\ & (((S1_mem_reg[1][15]) # (\m_1|outp[1]~3_combout\)))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[0][15]~regout\ & ((!\m_1|outp[1]~3_combout\))))

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
	datab => \mem|mem_reg[0][15]~regout\,
	datac => \m_2|outp[15]~2\,
	datad => \m_1|outp[1]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux0~4\,
	regout => \mem|mem_reg[1][15]~regout\);

-- Location: LC_X10_Y6_N0
\mem|mem_reg[2][15]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux0~5\ = (\m_1|outp[1]~3_combout\ & ((\mem|Mux0~4\ & (\mem|mem_reg[3][15]~regout\)) # (!\mem|Mux0~4\ & ((S1_mem_reg[2][15]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|Mux0~4\))))

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
	datad => \mem|Mux0~4\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux0~5\,
	regout => \mem|mem_reg[2][15]~regout\);

-- Location: LC_X10_Y9_N0
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

-- Location: LC_X8_Y6_N0
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

-- Location: LC_X11_Y7_N1
\mem|mem_reg[5][15]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux0~2\ = (\m_1|outp[1]~3_combout\ & (((\m_1|outp[0]~7_combout\)))) # (!\m_1|outp[1]~3_combout\ & ((\m_1|outp[0]~7_combout\ & ((S1_mem_reg[5][15]))) # (!\m_1|outp[0]~7_combout\ & (\mem|mem_reg[4][15]~regout\))))

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
	datab => \mem|mem_reg[4][15]~regout\,
	datac => \m_2|outp[15]~2\,
	datad => \m_1|outp[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux0~2\,
	regout => \mem|mem_reg[5][15]~regout\);

-- Location: LC_X11_Y6_N7
\mem|mem_reg[6][15]\ : maxv_lcell
-- Equation(s):
-- \mem|Mux0~3\ = (\m_1|outp[1]~3_combout\ & ((\mem|Mux0~2\ & (\mem|mem_reg[7][15]~regout\)) # (!\mem|Mux0~2\ & ((S1_mem_reg[6][15]))))) # (!\m_1|outp[1]~3_combout\ & (((\mem|Mux0~2\))))

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
	datad => \mem|Mux0~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux0~3\,
	regout => \mem|mem_reg[6][15]~regout\);

-- Location: LC_X10_Y6_N9
\mem|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \mem|Mux0~6_combout\ = (\m_1|outp[2]~1_combout\ & ((\m_1|outp[3]~5_combout\) # ((\mem|Mux0~3\)))) # (!\m_1|outp[2]~1_combout\ & (!\m_1|outp[3]~5_combout\ & (\mem|Mux0~5\)))

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
	datac => \mem|Mux0~5\,
	datad => \mem|Mux0~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem|Mux0~6_combout\);

-- Location: LC_X10_Y6_N8
\mem|do[15]\ : maxv_lcell
-- Equation(s):
-- \mem|do\(15) = DFFEAS((\m_1|outp[3]~5_combout\ & ((\mem|Mux0~6_combout\ & ((\mem|Mux0~8\))) # (!\mem|Mux0~6_combout\ & (\mem|Mux0~1\)))) # (!\m_1|outp[3]~5_combout\ & (((\mem|Mux0~6_combout\)))), GLOBAL(\clk~combout\), VCC, , \memrd~regout\, , , , )

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
	dataa => \m_1|outp[3]~5_combout\,
	datab => \mem|Mux0~1\,
	datac => \mem|Mux0~8\,
	datad => \mem|Mux0~6_combout\,
	aclr => GND,
	ena => \memrd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem|do\(15));

-- Location: LC_X10_Y6_N1
\ir_1|r_1|dout[15]\ : maxv_lcell
-- Equation(s):
-- \ir_1|r_1|dout\(15) = (GLOBAL(\irwr~regout\) & (((\mem|do\(15))))) # (!GLOBAL(\irwr~regout\) & (\ir_1|r_1|dout\(15)))

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
	dataa => \irwr~regout\,
	datab => \ir_1|r_1|dout\(15),
	datad => \mem|do\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ir_1|r_1|dout\(15));

-- Location: LC_X6_Y5_N4
\next_state~47\ : maxv_lcell
-- Equation(s):
-- \next_state~47_combout\ = (state(4) & ((next_state(4)) # ((!state(0) & !state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => next_state(4),
	datad => state(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~47_combout\);

-- Location: LC_X6_Y6_N2
\next_state~55\ : maxv_lcell
-- Equation(s):
-- \next_state~55_combout\ = (((state(2) & state(0))))

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
	datac => state(2),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~55_combout\);

-- Location: LC_X6_Y5_N6
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

-- Location: LC_X6_Y5_N7
\next_state~53\ : maxv_lcell
-- Equation(s):
-- \next_state~53_combout\ = (state(4) & ((state(2)) # ((state(0) & next_state(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => next_state(4),
	datad => state(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~53_combout\);

-- Location: LC_X6_Y5_N8
\state[4]\ : maxv_lcell
-- Equation(s):
-- \next_state~49\ = (state[4]) # ((\ir_1|r_1|dout\(15) & ((\ir_1|r_1|dout\(13)) # (\next_state~11_combout\))))
-- state(4) = DFFEAS(\next_state~49\, GLOBAL(\clk~combout\), VCC, , , next_state(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ir_1|r_1|dout\(15),
	datab => \ir_1|r_1|dout\(13),
	datac => next_state(4),
	datad => \next_state~11_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~49\,
	regout => state(4));

-- Location: LC_X6_Y5_N9
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

-- Location: LC_X6_Y5_N0
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

-- Location: LC_X6_Y5_N1
\next_state~51\ : maxv_lcell
-- Equation(s):
-- \next_state~51_combout\ = (state(0) & (((state(2)) # (\next_state~48_combout\)))) # (!state(0) & (\next_state~50_combout\ & (!state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \next_state~50_combout\,
	datac => state(2),
	datad => \next_state~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~51_combout\);

-- Location: LC_X6_Y5_N2
\next_state~52\ : maxv_lcell
-- Equation(s):
-- \next_state~52_combout\ = (state(2) & (state(4) & ((\Equal34~2_combout\) # (!\next_state~51_combout\)))) # (!state(2) & (((\next_state~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(2),
	datac => \Equal34~2_combout\,
	datad => \next_state~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~52_combout\);

-- Location: LC_X6_Y5_N3
\next_state~54\ : maxv_lcell
-- Equation(s):
-- \next_state~54_combout\ = (state(3) & (state(1))) # (!state(3) & ((state(1) & ((\next_state~52_combout\))) # (!state(1) & (\next_state~53_combout\))))

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
	dataa => state(3),
	datab => state(1),
	datac => \next_state~53_combout\,
	datad => \next_state~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~54_combout\);

-- Location: LC_X6_Y5_N5
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

-- Location: LC_X8_Y4_N3
\next_state~23\ : maxv_lcell
-- Equation(s):
-- \next_state~23_combout\ = ((state(4)) # (state(1) $ (state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => state(4),
	datac => state(1),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~23_combout\);

-- Location: LC_X10_Y5_N7
\next_state~19\ : maxv_lcell
-- Equation(s):
-- \next_state~19_combout\ = (state(4)) # ((\ir_1|r_1|dout\(14) & ((!\ir_1|r_1|dout\(15)))) # (!\ir_1|r_1|dout\(14) & ((\ir_1|r_1|dout\(15)) # (!\ir_1|r_1|dout\(13)))))

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
	datab => \ir_1|r_1|dout\(14),
	datac => \ir_1|r_1|dout\(13),
	datad => \ir_1|r_1|dout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~19_combout\);

-- Location: LC_X10_Y5_N9
\next_state~22\ : maxv_lcell
-- Equation(s):
-- \next_state~22_combout\ = (state(0) & (((!state(1))))) # (!state(0) & (\next_state~19_combout\ & (!\next_state[1]~21_combout\ & state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "04aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \next_state~19_combout\,
	datac => \next_state[1]~21_combout\,
	datad => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~22_combout\);

-- Location: LC_X7_Y5_N9
\next_state[1]\ : maxv_lcell
-- Equation(s):
-- next_state(1) = DFFEAS((state(3) & (\next_state~23_combout\)) # (!state(3) & (((\next_state~22_combout\)))), GLOBAL(\clk~combout\), VCC, , \next_state[1]~31_combout\, \next_state~24_combout\, , , state(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(3),
	datab => \next_state~23_combout\,
	datac => \next_state~24_combout\,
	datad => \next_state~22_combout\,
	aclr => GND,
	sload => state(2),
	ena => \next_state[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => next_state(1));

-- Location: LC_X5_Y5_N8
\state[1]\ : maxv_lcell
-- Equation(s):
-- \next_state~1\ = (state(2) & (((!state[1])) # (!\Equal34~2_combout\))) # (!state(2) & (((state[1]) # (next_state(0)))))
-- state(1) = DFFEAS(\next_state~1\, GLOBAL(\clk~combout\), VCC, , , next_state(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f7a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => state(2),
	datab => \Equal34~2_combout\,
	datac => next_state(1),
	datad => next_state(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~1\,
	regout => state(1));

-- Location: LC_X5_Y5_N5
\next_state~6\ : maxv_lcell
-- Equation(s):
-- \next_state~6_combout\ = (!state(3) & (state(2) & (state(1) $ (state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(1),
	datac => state(2),
	datad => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~6_combout\);

-- Location: LC_X5_Y5_N9
\next_state~0\ : maxv_lcell
-- Equation(s):
-- \next_state~0_combout\ = (state(2)) # (((state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~0_combout\);

-- Location: LC_X9_Y5_N2
\next_state~2\ : maxv_lcell
-- Equation(s):
-- \next_state~2_combout\ = (\Equal24~0_combout\ & ((\ir_1|r_1|dout\(13) & ((!\ir_1|r_1|dout\(12)))) # (!\ir_1|r_1|dout\(13) & (next_state(0))))) # (!\Equal24~0_combout\ & (next_state(0)))

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
	datac => \Equal24~0_combout\,
	datad => \ir_1|r_1|dout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~2_combout\);

-- Location: LC_X5_Y5_N2
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

-- Location: LC_X5_Y5_N3
\next_state~4\ : maxv_lcell
-- Equation(s):
-- \next_state~4_combout\ = (state(0) & ((\next_state~1\) # ((state(3))))) # (!state(0) & (((!state(3) & \next_state~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~1\,
	datab => state(0),
	datac => state(3),
	datad => \next_state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~4_combout\);

-- Location: LC_X5_Y5_N4
\next_state~5\ : maxv_lcell
-- Equation(s):
-- \next_state~5_combout\ = (state(3) & (next_state(0) & ((\next_state~0_combout\) # (\next_state~4_combout\)))) # (!state(3) & (((\next_state~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => next_state(0),
	datab => \next_state~0_combout\,
	datac => state(3),
	datad => \next_state~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~5_combout\);

-- Location: LC_X5_Y5_N6
\next_state~9\ : maxv_lcell
-- Equation(s):
-- \next_state~9_combout\ = (((next_state(0) & !\next_state~7_combout\)) # (!state(2))) # (!\next_state~8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fbf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => next_state(0),
	datab => \next_state~8\,
	datac => state(2),
	datad => \next_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~9_combout\);

-- Location: LC_X5_Y5_N7
\next_state~10\ : maxv_lcell
-- Equation(s):
-- \next_state~10_combout\ = (state(3) & ((\next_state~9_combout\) # ((\ir_1|r_1|dout\(12) & \next_state~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \ir_1|r_1|dout\(12),
	datac => \next_state~7_combout\,
	datad => \next_state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~10_combout\);

-- Location: LC_X9_Y5_N1
\next_state~15\ : maxv_lcell
-- Equation(s):
-- \next_state~15_combout\ = (!\ir_1|r_1|dout\(13) & (((\ir_1|r_1|dout\(14) & !\ir_1|r_1|dout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(13),
	datac => \ir_1|r_1|dout\(14),
	datad => \ir_1|r_1|dout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~15_combout\);

-- Location: LC_X9_Y5_N3
\next_state~16\ : maxv_lcell
-- Equation(s):
-- \next_state~16_combout\ = (\next_state~8\ & ((\next_state~15_combout\ & ((\ir_1|r_1|dout\(12)))) # (!\next_state~15_combout\ & (next_state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => next_state(0),
	datab => \next_state~8\,
	datac => \ir_1|r_1|dout\(12),
	datad => \next_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~16_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\extmeminit~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_extmeminit,
	combout => \extmeminit~combout\);

-- Location: LC_X8_Y5_N3
\next_state~12\ : maxv_lcell
-- Equation(s):
-- \next_state~12_combout\ = (\ir_1|r_1|dout\(15) & (((\ir_1|r_1|dout\(13))))) # (!\ir_1|r_1|dout\(15) & ((\ir_1|r_1|dout\(14) & ((!\ir_1|r_1|dout\(13)))) # (!\ir_1|r_1|dout\(14) & ((\ir_1|r_1|dout\(12)) # (\ir_1|r_1|dout\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af54",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir_1|r_1|dout\(15),
	datab => \ir_1|r_1|dout\(12),
	datac => \ir_1|r_1|dout\(14),
	datad => \ir_1|r_1|dout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~12_combout\);

-- Location: LC_X8_Y5_N5
\next_state~13\ : maxv_lcell
-- Equation(s):
-- \next_state~13_combout\ = (\ir_1|r_1|dout\(15) & (next_state(0) & ((\next_state~11_combout\) # (\next_state~12_combout\)))) # (!\ir_1|r_1|dout\(15) & (((\next_state~12_combout\))))

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
	dataa => \ir_1|r_1|dout\(15),
	datab => next_state(0),
	datac => \next_state~11_combout\,
	datad => \next_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~13_combout\);

-- Location: LC_X8_Y5_N6
\next_state~14\ : maxv_lcell
-- Equation(s):
-- \next_state~14_combout\ = (!state(0) & ((state(1) & ((\next_state~13_combout\))) # (!state(1) & (!\extmeminit~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4501",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datac => \extmeminit~combout\,
	datad => \next_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~14_combout\);

-- Location: LC_X5_Y5_N0
\next_state~17\ : maxv_lcell
-- Equation(s):
-- \next_state~17_combout\ = (\next_state~10_combout\) # ((!state(2) & ((\next_state~16_combout\) # (\next_state~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dddc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \next_state~10_combout\,
	datac => \next_state~16_combout\,
	datad => \next_state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~17_combout\);

-- Location: LC_X5_Y5_N1
\next_state[0]\ : maxv_lcell
-- Equation(s):
-- next_state(0) = DFFEAS((state(4) & (((\next_state~5_combout\)))) # (!state(4) & ((\next_state~6_combout\) # ((\next_state~17_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \next_state~6_combout\,
	datab => state(4),
	datac => \next_state~5_combout\,
	datad => \next_state~17_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => next_state(0));

-- Location: LC_X8_Y4_N6
\output[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \output[0]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , next_state(0), , , VCC)

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
	datac => next_state(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[0]~reg0_regout\);

-- Location: LC_X7_Y4_N8
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

-- Location: LC_X8_Y4_N7
\output[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \output[2]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , next_state(2), , , VCC)

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
	datac => next_state(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[2]~reg0_regout\);

-- Location: LC_X7_Y4_N7
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

-- Location: LC_X4_Y5_N2
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

-- Location: LC_X5_Y8_N2
\output[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \output[5]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , state(0), , , VCC)

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
	datac => state(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[5]~reg0_regout\);

-- Location: LC_X5_Y4_N8
\output[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \output[6]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , state(1), , , VCC)

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
	datac => state(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[6]~reg0_regout\);

-- Location: LC_X8_Y4_N8
\output[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \output[7]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , state(2), , , VCC)

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
	datac => state(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[7]~reg0_regout\);

-- Location: LC_X9_Y4_N6
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

-- Location: LC_X5_Y4_N7
\output[9]~reg0\ : maxv_lcell
-- Equation(s):
-- \output[9]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , state(4), , , VCC)

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
	datac => state(4),
	aclr => GND,
	sload => VCC,
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

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(5));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(6));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(7));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(8));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(9));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(10));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(11));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(15));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[0]~reg0_regout\,
	oe => VCC,
	padio => ww_output(0));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[3]~reg0_regout\,
	oe => VCC,
	padio => ww_output(3));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[4]~reg0_regout\,
	oe => VCC,
	padio => ww_output(4));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[5]~reg0_regout\,
	oe => VCC,
	padio => ww_output(5));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[6]~reg0_regout\,
	oe => VCC,
	padio => ww_output(6));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[7]~reg0_regout\,
	oe => VCC,
	padio => ww_output(7));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[8]~reg0_regout\,
	oe => VCC,
	padio => ww_output(8));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output[9]~reg0_regout\,
	oe => VCC,
	padio => ww_output(9));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(27));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(26));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(25));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(24));
END structure;


