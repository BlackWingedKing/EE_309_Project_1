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

-- DATE "10/28/2018 21:47:10"

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

ENTITY 	alu IS
    PORT (
	inp1 : IN std_logic_vector(15 DOWNTO 0);
	inp2 : IN std_logic_vector(15 DOWNTO 0);
	cin : IN std_logic;
	reset : IN std_logic;
	sel : IN std_logic_vector(1 DOWNTO 0);
	outp : OUT std_logic_vector(15 DOWNTO 0);
	cout : OUT std_logic;
	zero : OUT std_logic
	);
END alu;

-- Design Ports Information


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inp1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_inp2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_outp : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_zero : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \cin~combout\ : std_logic;
SIGNAL \temp_out[0]~0_combout\ : std_logic;
SIGNAL \cout~0_combout\ : std_logic;
SIGNAL \temp_out[0]~1_combout\ : std_logic;
SIGNAL \opr2|s1|bout~combout\ : std_logic;
SIGNAL \opr1|a1|cout~0_combout\ : std_logic;
SIGNAL \temp_out[1]~2_combout\ : std_logic;
SIGNAL \temp_out[1]~3_combout\ : std_logic;
SIGNAL \opr2|s2|bout~combout\ : std_logic;
SIGNAL \opr1|a2|cout~0_combout\ : std_logic;
SIGNAL \temp_out[2]~4_combout\ : std_logic;
SIGNAL \temp_out[2]~5_combout\ : std_logic;
SIGNAL \opr1|a3|cout~0_combout\ : std_logic;
SIGNAL \opr2|s3|bout~combout\ : std_logic;
SIGNAL \temp_out[3]~6_combout\ : std_logic;
SIGNAL \temp_out[3]~7_combout\ : std_logic;
SIGNAL \opr2|s4|bout~combout\ : std_logic;
SIGNAL \opr1|a4|cout~0_combout\ : std_logic;
SIGNAL \temp_out[4]~8_combout\ : std_logic;
SIGNAL \temp_out[4]~9_combout\ : std_logic;
SIGNAL \opr1|a5|cout~0_combout\ : std_logic;
SIGNAL \opr2|s5|bout~combout\ : std_logic;
SIGNAL \temp_out[5]~10_combout\ : std_logic;
SIGNAL \temp_out[5]~11_combout\ : std_logic;
SIGNAL \opr1|a6|cout~0_combout\ : std_logic;
SIGNAL \opr2|s6|bout~combout\ : std_logic;
SIGNAL \temp_out[6]~12_combout\ : std_logic;
SIGNAL \temp_out[6]~13_combout\ : std_logic;
SIGNAL \opr2|s7|bout~combout\ : std_logic;
SIGNAL \opr1|a7|cout~0_combout\ : std_logic;
SIGNAL \temp_out[7]~14_combout\ : std_logic;
SIGNAL \temp_out[7]~15_combout\ : std_logic;
SIGNAL \opr1|a8|cout~0_combout\ : std_logic;
SIGNAL \opr2|s8|bout~combout\ : std_logic;
SIGNAL \temp_out[8]~16_combout\ : std_logic;
SIGNAL \temp_out[8]~17_combout\ : std_logic;
SIGNAL \opr2|s9|bout~combout\ : std_logic;
SIGNAL \opr1|a9|cout~0_combout\ : std_logic;
SIGNAL \temp_out[9]~18_combout\ : std_logic;
SIGNAL \temp_out[9]~19_combout\ : std_logic;
SIGNAL \opr2|s10|bout~combout\ : std_logic;
SIGNAL \opr1|a10|cout~0_combout\ : std_logic;
SIGNAL \temp_out[10]~20_combout\ : std_logic;
SIGNAL \temp_out[10]~21_combout\ : std_logic;
SIGNAL \opr1|a11|cout~0_combout\ : std_logic;
SIGNAL \opr2|s11|bout~combout\ : std_logic;
SIGNAL \temp_out[11]~22_combout\ : std_logic;
SIGNAL \temp_out[11]~23_combout\ : std_logic;
SIGNAL \opr1|a12|cout~0_combout\ : std_logic;
SIGNAL \opr2|s12|bout~combout\ : std_logic;
SIGNAL \temp_out[12]~24_combout\ : std_logic;
SIGNAL \temp_out[12]~25_combout\ : std_logic;
SIGNAL \opr1|a13|cout~0_combout\ : std_logic;
SIGNAL \opr2|s14|xor_i~0_combout\ : std_logic;
SIGNAL \opr2|s13|bout~combout\ : std_logic;
SIGNAL \temp_out[13]~27_combout\ : std_logic;
SIGNAL \temp_out[13]~26_combout\ : std_logic;
SIGNAL \opr2|s15|xor_i~0_combout\ : std_logic;
SIGNAL \opr2|s14|bout~combout\ : std_logic;
SIGNAL \temp_out[15]~29_combout\ : std_logic;
SIGNAL \opr1|a14|cout~0_combout\ : std_logic;
SIGNAL \temp_out[14]~28_combout\ : std_logic;
SIGNAL \temp_out[14]~30_combout\ : std_logic;
SIGNAL \temp_out[14]~31_combout\ : std_logic;
SIGNAL \opr2|s16|xor_i~0_combout\ : std_logic;
SIGNAL \opr1|a15|cout~0_combout\ : std_logic;
SIGNAL \temp_out[14]~33_combout\ : std_logic;
SIGNAL \temp_out[15]~32_combout\ : std_logic;
SIGNAL \temp_out[15]~34_combout\ : std_logic;
SIGNAL \opr2|s15|bout~combout\ : std_logic;
SIGNAL \temp_out[15]~35_combout\ : std_logic;
SIGNAL \cout~2_combout\ : std_logic;
SIGNAL \cout~1_combout\ : std_logic;
SIGNAL \cout~3_combout\ : std_logic;
SIGNAL \cout~4_combout\ : std_logic;
SIGNAL \zero_flag~0_combout\ : std_logic;
SIGNAL \zero_flag~1_combout\ : std_logic;
SIGNAL \zero_flag~2_combout\ : std_logic;
SIGNAL \zero_flag~3_combout\ : std_logic;
SIGNAL \zero_flag~4_combout\ : std_logic;
SIGNAL \zero_flag~5_combout\ : std_logic;
SIGNAL \opr7|zout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \sel~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inp2~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inp1~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_zero_flag~5_combout\ : std_logic;

BEGIN

ww_inp1 <= inp1;
ww_inp2 <= inp2;
ww_cin <= cin;
ww_reset <= reset;
ww_sel <= sel;
outp <= ww_outp;
cout <= ww_cout;
zero <= ww_zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_zero_flag~5_combout\ <= NOT \zero_flag~5_combout\;

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp1(0),
	combout => \inp1~combout\(0));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp2[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp2(0),
	combout => \inp2~combout\(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cin~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cin,
	combout => \cin~combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sel(1),
	combout => \sel~combout\(1));

-- Location: LC_X8_Y7_N0
\temp_out[0]~0\ : maxv_lcell
-- Equation(s):
-- \temp_out[0]~0_combout\ = (!\sel~combout\(1) & (\cin~combout\ $ (\inp2~combout\(0) $ (\inp1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2112",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cin~combout\,
	datab => \sel~combout\(1),
	datac => \inp2~combout\(0),
	datad => \inp1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[0]~0_combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sel(0),
	combout => \sel~combout\(0));

-- Location: LC_X11_Y7_N8
\cout~0\ : maxv_lcell
-- Equation(s):
-- \cout~0_combout\ = (((\sel~combout\(1) & !\sel~combout\(0))))

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
	datac => \sel~combout\(1),
	datad => \sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cout~0_combout\);

-- Location: LC_X8_Y7_N1
\temp_out[0]~1\ : maxv_lcell
-- Equation(s):
-- \temp_out[0]~1_combout\ = (\temp_out[0]~0_combout\) # ((\cout~0_combout\ & ((!\inp2~combout\(0)) # (!\inp1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp1~combout\(0),
	datab => \inp2~combout\(0),
	datac => \temp_out[0]~0_combout\,
	datad => \cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[0]~1_combout\);

-- Location: LC_X10_Y7_N5
\opr7|zout[0]\ : maxv_lcell
-- Equation(s):
-- \opr7|zout\(0) = (!\reset~combout\ & (((\temp_out[0]~1_combout\))))

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
	dataa => \reset~combout\,
	datad => \temp_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr7|zout\(0));

-- Location: LC_X8_Y7_N2
\opr2|s1|bout\ : maxv_lcell
-- Equation(s):
-- \opr2|s1|bout~combout\ = ((\inp2~combout\(0) & ((\cin~combout\) # (!\inp1~combout\(0)))) # (!\inp2~combout\(0) & (\cin~combout\ & !\inp1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp2~combout\(0),
	datac => \cin~combout\,
	datad => \inp1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s1|bout~combout\);

-- Location: LC_X8_Y7_N5
\opr1|a1|cout~0\ : maxv_lcell
-- Equation(s):
-- \opr1|a1|cout~0_combout\ = ((\inp2~combout\(0) & ((\cin~combout\) # (\inp1~combout\(0)))) # (!\inp2~combout\(0) & (\cin~combout\ & \inp1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp2~combout\(0),
	datac => \cin~combout\,
	datad => \inp1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr1|a1|cout~0_combout\);

-- Location: LC_X9_Y6_N8
\temp_out[1]~2\ : maxv_lcell
-- Equation(s):
-- \temp_out[1]~2_combout\ = (\sel~combout\(1) & (((\sel~combout\(0))))) # (!\sel~combout\(1) & ((\sel~combout\(0) & (\opr2|s1|bout~combout\)) # (!\sel~combout\(0) & ((\opr1|a1|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opr2|s1|bout~combout\,
	datab => \sel~combout\(1),
	datac => \sel~combout\(0),
	datad => \opr1|a1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[1]~2_combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp2[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp2(1),
	combout => \inp2~combout\(1));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp1(1),
	combout => \inp1~combout\(1));

-- Location: LC_X9_Y6_N5
\temp_out[1]~3\ : maxv_lcell
-- Equation(s):
-- \temp_out[1]~3_combout\ = (\sel~combout\(1) & (!\temp_out[1]~2_combout\ & ((!\inp1~combout\(1)) # (!\inp2~combout\(1))))) # (!\sel~combout\(1) & (\temp_out[1]~2_combout\ $ (\inp2~combout\(1) $ (\inp1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2556",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp_out[1]~2_combout\,
	datab => \sel~combout\(1),
	datac => \inp2~combout\(1),
	datad => \inp1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[1]~3_combout\);

-- Location: LC_X10_Y7_N2
\opr7|zout[1]\ : maxv_lcell
-- Equation(s):
-- \opr7|zout\(1) = (!\reset~combout\ & (((\temp_out[1]~3_combout\))))

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
	dataa => \reset~combout\,
	datad => \temp_out[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr7|zout\(1));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp2[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp2(2),
	combout => \inp2~combout\(2));

-- Location: LC_X9_Y6_N4
\opr2|s2|bout\ : maxv_lcell
-- Equation(s):
-- \opr2|s2|bout~combout\ = (\inp2~combout\(1) & (((\opr2|s1|bout~combout\) # (!\inp1~combout\(1))))) # (!\inp2~combout\(1) & (((\opr2|s1|bout~combout\ & !\inp1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp2~combout\(1),
	datac => \opr2|s1|bout~combout\,
	datad => \inp1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s2|bout~combout\);

-- Location: LC_X9_Y6_N7
\opr1|a2|cout~0\ : maxv_lcell
-- Equation(s):
-- \opr1|a2|cout~0_combout\ = ((\opr1|a1|cout~0_combout\ & ((\inp2~combout\(1)) # (\inp1~combout\(1)))) # (!\opr1|a1|cout~0_combout\ & (\inp2~combout\(1) & \inp1~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opr1|a1|cout~0_combout\,
	datac => \inp2~combout\(1),
	datad => \inp1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr1|a2|cout~0_combout\);

-- Location: LC_X9_Y6_N6
\temp_out[2]~4\ : maxv_lcell
-- Equation(s):
-- \temp_out[2]~4_combout\ = (\sel~combout\(0) & ((\opr2|s2|bout~combout\) # ((\sel~combout\(1))))) # (!\sel~combout\(0) & (((\opr1|a2|cout~0_combout\ & !\sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opr2|s2|bout~combout\,
	datab => \sel~combout\(0),
	datac => \opr1|a2|cout~0_combout\,
	datad => \sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[2]~4_combout\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp1(2),
	combout => \inp1~combout\(2));

-- Location: LC_X9_Y6_N0
\temp_out[2]~5\ : maxv_lcell
-- Equation(s):
-- \temp_out[2]~5_combout\ = (\sel~combout\(1) & (!\temp_out[2]~4_combout\ & ((!\inp1~combout\(2)) # (!\inp2~combout\(2))))) # (!\sel~combout\(1) & (\inp2~combout\(2) $ (\temp_out[2]~4_combout\ $ (\inp1~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "431e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \inp2~combout\(2),
	datac => \temp_out[2]~4_combout\,
	datad => \inp1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[2]~5_combout\);

-- Location: LC_X10_Y7_N6
\opr7|zout[2]\ : maxv_lcell
-- Equation(s):
-- \opr7|zout\(2) = (!\reset~combout\ & (((\temp_out[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \temp_out[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr7|zout\(2));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp2[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp2(3),
	combout => \inp2~combout\(3));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp1[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp1(3),
	combout => \inp1~combout\(3));

-- Location: LC_X9_Y6_N2
\opr1|a3|cout~0\ : maxv_lcell
-- Equation(s):
-- \opr1|a3|cout~0_combout\ = ((\inp2~combout\(2) & ((\opr1|a2|cout~0_combout\) # (\inp1~combout\(2)))) # (!\inp2~combout\(2) & (\opr1|a2|cout~0_combout\ & \inp1~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp2~combout\(2),
	datac => \opr1|a2|cout~0_combout\,
	datad => \inp1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr1|a3|cout~0_combout\);

-- Location: LC_X9_Y6_N3
\opr2|s3|bout\ : maxv_lcell
-- Equation(s):
-- \opr2|s3|bout~combout\ = ((\inp2~combout\(2) & ((\opr2|s2|bout~combout\) # (!\inp1~combout\(2)))) # (!\inp2~combout\(2) & (\opr2|s2|bout~combout\ & !\inp1~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp2~combout\(2),
	datac => \opr2|s2|bout~combout\,
	datad => \inp1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s3|bout~combout\);

-- Location: LC_X9_Y7_N1
\temp_out[3]~6\ : maxv_lcell
-- Equation(s):
-- \temp_out[3]~6_combout\ = (\sel~combout\(1) & (((\sel~combout\(0))))) # (!\sel~combout\(1) & ((\sel~combout\(0) & ((\opr2|s3|bout~combout\))) # (!\sel~combout\(0) & (\opr1|a3|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opr1|a3|cout~0_combout\,
	datab => \sel~combout\(1),
	datac => \opr2|s3|bout~combout\,
	datad => \sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[3]~6_combout\);

-- Location: LC_X9_Y7_N9
\temp_out[3]~7\ : maxv_lcell
-- Equation(s):
-- \temp_out[3]~7_combout\ = (\sel~combout\(1) & (!\temp_out[3]~6_combout\ & ((!\inp1~combout\(3)) # (!\inp2~combout\(3))))) # (!\sel~combout\(1) & (\inp2~combout\(3) $ (\inp1~combout\(3) $ (\temp_out[3]~6_combout\))))

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
	dataa => \inp2~combout\(3),
	datab => \sel~combout\(1),
	datac => \inp1~combout\(3),
	datad => \temp_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[3]~7_combout\);

-- Location: LC_X9_Y7_N3
\opr7|zout[3]\ : maxv_lcell
-- Equation(s):
-- \opr7|zout\(3) = (((!\reset~combout\ & \temp_out[3]~7_combout\)))

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
	datac => \reset~combout\,
	datad => \temp_out[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr7|zout\(3));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp1[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp1(4),
	combout => \inp1~combout\(4));

-- Location: LC_X9_Y7_N4
\opr2|s4|bout\ : maxv_lcell
-- Equation(s):
-- \opr2|s4|bout~combout\ = (\inp2~combout\(3) & ((\opr2|s3|bout~combout\) # ((!\inp1~combout\(3))))) # (!\inp2~combout\(3) & (\opr2|s3|bout~combout\ & (!\inp1~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8e8e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp2~combout\(3),
	datab => \opr2|s3|bout~combout\,
	datac => \inp1~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s4|bout~combout\);

-- Location: LC_X9_Y7_N6
\opr1|a4|cout~0\ : maxv_lcell
-- Equation(s):
-- \opr1|a4|cout~0_combout\ = (\inp1~combout\(3) & (((\inp2~combout\(3)) # (\opr1|a3|cout~0_combout\)))) # (!\inp1~combout\(3) & (((\inp2~combout\(3) & \opr1|a3|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp1~combout\(3),
	datac => \inp2~combout\(3),
	datad => \opr1|a3|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr1|a4|cout~0_combout\);

-- Location: LC_X9_Y7_N5
\temp_out[4]~8\ : maxv_lcell
-- Equation(s):
-- \temp_out[4]~8_combout\ = (\sel~combout\(1) & (((\sel~combout\(0))))) # (!\sel~combout\(1) & ((\sel~combout\(0) & (\opr2|s4|bout~combout\)) # (!\sel~combout\(0) & ((\opr1|a4|cout~0_combout\)))))

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
	dataa => \opr2|s4|bout~combout\,
	datab => \sel~combout\(1),
	datac => \opr1|a4|cout~0_combout\,
	datad => \sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[4]~8_combout\);

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp2[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp2(4),
	combout => \inp2~combout\(4));

-- Location: LC_X9_Y7_N2
\temp_out[4]~9\ : maxv_lcell
-- Equation(s):
-- \temp_out[4]~9_combout\ = (\sel~combout\(1) & (!\temp_out[4]~8_combout\ & ((!\inp2~combout\(4)) # (!\inp1~combout\(4))))) # (!\sel~combout\(1) & (\inp1~combout\(4) $ (\temp_out[4]~8_combout\ $ (\inp2~combout\(4)))))

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
	dataa => \inp1~combout\(4),
	datab => \sel~combout\(1),
	datac => \temp_out[4]~8_combout\,
	datad => \inp2~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[4]~9_combout\);

-- Location: LC_X10_Y7_N4
\opr7|zout[4]\ : maxv_lcell
-- Equation(s):
-- \opr7|zout\(4) = (!\reset~combout\ & (((\temp_out[4]~9_combout\))))

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
	dataa => \reset~combout\,
	datad => \temp_out[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr7|zout\(4));

-- Location: LC_X9_Y7_N7
\opr1|a5|cout~0\ : maxv_lcell
-- Equation(s):
-- \opr1|a5|cout~0_combout\ = (\inp1~combout\(4) & (((\opr1|a4|cout~0_combout\) # (\inp2~combout\(4))))) # (!\inp1~combout\(4) & (((\opr1|a4|cout~0_combout\ & \inp2~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp1~combout\(4),
	datac => \opr1|a4|cout~0_combout\,
	datad => \inp2~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr1|a5|cout~0_combout\);

-- Location: LC_X9_Y7_N8
\opr2|s5|bout\ : maxv_lcell
-- Equation(s):
-- \opr2|s5|bout~combout\ = (\inp1~combout\(4) & (((\opr2|s4|bout~combout\ & \inp2~combout\(4))))) # (!\inp1~combout\(4) & (((\opr2|s4|bout~combout\) # (\inp2~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp1~combout\(4),
	datac => \opr2|s4|bout~combout\,
	datad => \inp2~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s5|bout~combout\);

-- Location: LC_X7_Y7_N3
\temp_out[5]~10\ : maxv_lcell
-- Equation(s):
-- \temp_out[5]~10_combout\ = (\sel~combout\(1) & (((\sel~combout\(0))))) # (!\sel~combout\(1) & ((\sel~combout\(0) & ((\opr2|s5|bout~combout\))) # (!\sel~combout\(0) & (\opr1|a5|cout~0_combout\))))

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
	dataa => \opr1|a5|cout~0_combout\,
	datab => \sel~combout\(1),
	datac => \sel~combout\(0),
	datad => \opr2|s5|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[5]~10_combout\);

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp1[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp1(5),
	combout => \inp1~combout\(5));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp2[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp2(5),
	combout => \inp2~combout\(5));

-- Location: LC_X7_Y7_N5
\temp_out[5]~11\ : maxv_lcell
-- Equation(s):
-- \temp_out[5]~11_combout\ = (\sel~combout\(1) & (!\temp_out[5]~10_combout\ & ((!\inp2~combout\(5)) # (!\inp1~combout\(5))))) # (!\sel~combout\(1) & (\temp_out[5]~10_combout\ $ (\inp1~combout\(5) $ (\inp2~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2556",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp_out[5]~10_combout\,
	datab => \sel~combout\(1),
	datac => \inp1~combout\(5),
	datad => \inp2~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[5]~11_combout\);

-- Location: LC_X7_Y7_N2
\opr7|zout[5]\ : maxv_lcell
-- Equation(s):
-- \opr7|zout\(5) = (((\temp_out[5]~11_combout\ & !\reset~combout\)))

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
	datac => \temp_out[5]~11_combout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr7|zout\(5));

-- Location: LC_X7_Y7_N8
\opr1|a6|cout~0\ : maxv_lcell
-- Equation(s):
-- \opr1|a6|cout~0_combout\ = ((\inp2~combout\(5) & ((\inp1~combout\(5)) # (\opr1|a5|cout~0_combout\))) # (!\inp2~combout\(5) & (\inp1~combout\(5) & \opr1|a5|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp2~combout\(5),
	datac => \inp1~combout\(5),
	datad => \opr1|a5|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr1|a6|cout~0_combout\);

-- Location: LC_X7_Y7_N9
\opr2|s6|bout\ : maxv_lcell
-- Equation(s):
-- \opr2|s6|bout~combout\ = ((\inp2~combout\(5) & ((\opr2|s5|bout~combout\) # (!\inp1~combout\(5)))) # (!\inp2~combout\(5) & (!\inp1~combout\(5) & \opr2|s5|bout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp2~combout\(5),
	datac => \inp1~combout\(5),
	datad => \opr2|s5|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s6|bout~combout\);

-- Location: LC_X7_Y7_N4
\temp_out[6]~12\ : maxv_lcell
-- Equation(s):
-- \temp_out[6]~12_combout\ = (\sel~combout\(1) & (((\sel~combout\(0))))) # (!\sel~combout\(1) & ((\sel~combout\(0) & ((\opr2|s6|bout~combout\))) # (!\sel~combout\(0) & (\opr1|a6|cout~0_combout\))))

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
	dataa => \opr1|a6|cout~0_combout\,
	datab => \sel~combout\(1),
	datac => \sel~combout\(0),
	datad => \opr2|s6|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[6]~12_combout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp2[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp2(6),
	combout => \inp2~combout\(6));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp1[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp1(6),
	combout => \inp1~combout\(6));

-- Location: LC_X7_Y7_N7
\temp_out[6]~13\ : maxv_lcell
-- Equation(s):
-- \temp_out[6]~13_combout\ = (\sel~combout\(1) & (!\temp_out[6]~12_combout\ & ((!\inp1~combout\(6)) # (!\inp2~combout\(6))))) # (!\sel~combout\(1) & (\temp_out[6]~12_combout\ $ (\inp2~combout\(6) $ (\inp1~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2556",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp_out[6]~12_combout\,
	datab => \sel~combout\(1),
	datac => \inp2~combout\(6),
	datad => \inp1~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[6]~13_combout\);

-- Location: LC_X10_Y7_N1
\opr7|zout[6]\ : maxv_lcell
-- Equation(s):
-- \opr7|zout\(6) = ((\temp_out[6]~13_combout\ & ((!\reset~combout\))))

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
	datab => \temp_out[6]~13_combout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr7|zout\(6));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp2[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp2(7),
	combout => \inp2~combout\(7));

-- Location: LC_X7_Y7_N1
\opr2|s7|bout\ : maxv_lcell
-- Equation(s):
-- \opr2|s7|bout~combout\ = ((\inp1~combout\(6) & (\inp2~combout\(6) & \opr2|s6|bout~combout\)) # (!\inp1~combout\(6) & ((\inp2~combout\(6)) # (\opr2|s6|bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp1~combout\(6),
	datac => \inp2~combout\(6),
	datad => \opr2|s6|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s7|bout~combout\);

-- Location: LC_X7_Y7_N6
\opr1|a7|cout~0\ : maxv_lcell
-- Equation(s):
-- \opr1|a7|cout~0_combout\ = ((\inp1~combout\(6) & ((\inp2~combout\(6)) # (\opr1|a6|cout~0_combout\))) # (!\inp1~combout\(6) & (\inp2~combout\(6) & \opr1|a6|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp1~combout\(6),
	datac => \inp2~combout\(6),
	datad => \opr1|a6|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr1|a7|cout~0_combout\);

-- Location: LC_X11_Y7_N2
\temp_out[7]~14\ : maxv_lcell
-- Equation(s):
-- \temp_out[7]~14_combout\ = (\sel~combout\(0) & ((\opr2|s7|bout~combout\) # ((\sel~combout\(1))))) # (!\sel~combout\(0) & (((!\sel~combout\(1) & \opr1|a7|cout~0_combout\))))

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
	dataa => \opr2|s7|bout~combout\,
	datab => \sel~combout\(0),
	datac => \sel~combout\(1),
	datad => \opr1|a7|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[7]~14_combout\);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp1[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp1(7),
	combout => \inp1~combout\(7));

-- Location: LC_X11_Y7_N1
\temp_out[7]~15\ : maxv_lcell
-- Equation(s):
-- \temp_out[7]~15_combout\ = (\sel~combout\(1) & (!\temp_out[7]~14_combout\ & ((!\inp1~combout\(7)) # (!\inp2~combout\(7))))) # (!\sel~combout\(1) & (\inp2~combout\(7) $ (\temp_out[7]~14_combout\ $ (\inp1~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1936",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp2~combout\(7),
	datab => \temp_out[7]~14_combout\,
	datac => \sel~combout\(1),
	datad => \inp1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[7]~15_combout\);

-- Location: LC_X10_Y7_N3
\opr7|zout[7]\ : maxv_lcell
-- Equation(s):
-- \opr7|zout\(7) = (!\reset~combout\ & (((\temp_out[7]~15_combout\))))

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
	dataa => \reset~combout\,
	datad => \temp_out[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr7|zout\(7));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp1[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp1(8),
	combout => \inp1~combout\(8));

-- Location: LC_X11_Y7_N0
\opr1|a8|cout~0\ : maxv_lcell
-- Equation(s):
-- \opr1|a8|cout~0_combout\ = ((\opr1|a7|cout~0_combout\ & ((\inp2~combout\(7)) # (\inp1~combout\(7)))) # (!\opr1|a7|cout~0_combout\ & (\inp2~combout\(7) & \inp1~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opr1|a7|cout~0_combout\,
	datac => \inp2~combout\(7),
	datad => \inp1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr1|a8|cout~0_combout\);

-- Location: LC_X11_Y7_N9
\opr2|s8|bout\ : maxv_lcell
-- Equation(s):
-- \opr2|s8|bout~combout\ = (\inp2~combout\(7) & (((\opr2|s7|bout~combout\) # (!\inp1~combout\(7))))) # (!\inp2~combout\(7) & (((\opr2|s7|bout~combout\ & !\inp1~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp2~combout\(7),
	datac => \opr2|s7|bout~combout\,
	datad => \inp1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s8|bout~combout\);

-- Location: LC_X11_Y7_N7
\temp_out[8]~16\ : maxv_lcell
-- Equation(s):
-- \temp_out[8]~16_combout\ = (\sel~combout\(1) & (\sel~combout\(0))) # (!\sel~combout\(1) & ((\sel~combout\(0) & ((\opr2|s8|bout~combout\))) # (!\sel~combout\(0) & (\opr1|a8|cout~0_combout\))))

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
	dataa => \sel~combout\(1),
	datab => \sel~combout\(0),
	datac => \opr1|a8|cout~0_combout\,
	datad => \opr2|s8|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[8]~16_combout\);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp2[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp2(8),
	combout => \inp2~combout\(8));

-- Location: LC_X11_Y7_N6
\temp_out[8]~17\ : maxv_lcell
-- Equation(s):
-- \temp_out[8]~17_combout\ = (\sel~combout\(1) & (!\temp_out[8]~16_combout\ & ((!\inp2~combout\(8)) # (!\inp1~combout\(8))))) # (!\sel~combout\(1) & (\inp1~combout\(8) $ (\temp_out[8]~16_combout\ $ (\inp2~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1936",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp1~combout\(8),
	datab => \temp_out[8]~16_combout\,
	datac => \sel~combout\(1),
	datad => \inp2~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[8]~17_combout\);

-- Location: LC_X10_Y7_N0
\opr7|zout[8]\ : maxv_lcell
-- Equation(s):
-- \opr7|zout\(8) = (!\reset~combout\ & (((\temp_out[8]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \temp_out[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr7|zout\(8));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp2[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp2(9),
	combout => \inp2~combout\(9));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp1[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp1(9),
	combout => \inp1~combout\(9));

-- Location: LC_X11_Y7_N5
\opr2|s9|bout\ : maxv_lcell
-- Equation(s):
-- \opr2|s9|bout~combout\ = (\inp1~combout\(8) & (\opr2|s8|bout~combout\ & ((\inp2~combout\(8))))) # (!\inp1~combout\(8) & ((\opr2|s8|bout~combout\) # ((\inp2~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp1~combout\(8),
	datab => \opr2|s8|bout~combout\,
	datad => \inp2~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s9|bout~combout\);

-- Location: LC_X11_Y7_N3
\opr1|a9|cout~0\ : maxv_lcell
-- Equation(s):
-- \opr1|a9|cout~0_combout\ = (\inp1~combout\(8) & (((\opr1|a8|cout~0_combout\) # (\inp2~combout\(8))))) # (!\inp1~combout\(8) & (((\opr1|a8|cout~0_combout\ & \inp2~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp1~combout\(8),
	datac => \opr1|a8|cout~0_combout\,
	datad => \inp2~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr1|a9|cout~0_combout\);

-- Location: LC_X11_Y7_N4
\temp_out[9]~18\ : maxv_lcell
-- Equation(s):
-- \temp_out[9]~18_combout\ = (\sel~combout\(0) & ((\opr2|s9|bout~combout\) # ((\sel~combout\(1))))) # (!\sel~combout\(0) & (((!\sel~combout\(1) & \opr1|a9|cout~0_combout\))))

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
	dataa => \opr2|s9|bout~combout\,
	datab => \sel~combout\(0),
	datac => \sel~combout\(1),
	datad => \opr1|a9|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[9]~18_combout\);

-- Location: LC_X6_Y7_N7
\temp_out[9]~19\ : maxv_lcell
-- Equation(s):
-- \temp_out[9]~19_combout\ = (\sel~combout\(1) & (!\temp_out[9]~18_combout\ & ((!\inp1~combout\(9)) # (!\inp2~combout\(9))))) # (!\sel~combout\(1) & (\inp2~combout\(9) $ (\inp1~combout\(9) $ (\temp_out[9]~18_combout\))))

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
	dataa => \sel~combout\(1),
	datab => \inp2~combout\(9),
	datac => \inp1~combout\(9),
	datad => \temp_out[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[9]~19_combout\);

-- Location: LC_X5_Y7_N3
\opr7|zout[9]\ : maxv_lcell
-- Equation(s):
-- \opr7|zout\(9) = (\temp_out[9]~19_combout\ & (((!\reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp_out[9]~19_combout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr7|zout\(9));

-- Location: LC_X6_Y7_N1
\opr2|s10|bout\ : maxv_lcell
-- Equation(s):
-- \opr2|s10|bout~combout\ = ((\inp2~combout\(9) & ((\opr2|s9|bout~combout\) # (!\inp1~combout\(9)))) # (!\inp2~combout\(9) & (!\inp1~combout\(9) & \opr2|s9|bout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp2~combout\(9),
	datac => \inp1~combout\(9),
	datad => \opr2|s9|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s10|bout~combout\);

-- Location: LC_X6_Y7_N9
\opr1|a10|cout~0\ : maxv_lcell
-- Equation(s):
-- \opr1|a10|cout~0_combout\ = ((\inp2~combout\(9) & ((\inp1~combout\(9)) # (\opr1|a9|cout~0_combout\))) # (!\inp2~combout\(9) & (\inp1~combout\(9) & \opr1|a9|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp2~combout\(9),
	datac => \inp1~combout\(9),
	datad => \opr1|a9|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr1|a10|cout~0_combout\);

-- Location: LC_X6_Y7_N2
\temp_out[10]~20\ : maxv_lcell
-- Equation(s):
-- \temp_out[10]~20_combout\ = (\sel~combout\(1) & (((\sel~combout\(0))))) # (!\sel~combout\(1) & ((\sel~combout\(0) & (\opr2|s10|bout~combout\)) # (!\sel~combout\(0) & ((\opr1|a10|cout~0_combout\)))))

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
	dataa => \sel~combout\(1),
	datab => \opr2|s10|bout~combout\,
	datac => \sel~combout\(0),
	datad => \opr1|a10|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[10]~20_combout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp2[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp2(10),
	combout => \inp2~combout\(10));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp1[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp1(10),
	combout => \inp1~combout\(10));

-- Location: LC_X6_Y7_N4
\temp_out[10]~21\ : maxv_lcell
-- Equation(s):
-- \temp_out[10]~21_combout\ = (\sel~combout\(1) & (!\temp_out[10]~20_combout\ & ((!\inp1~combout\(10)) # (!\inp2~combout\(10))))) # (!\sel~combout\(1) & (\temp_out[10]~20_combout\ $ (\inp2~combout\(10) $ (\inp1~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4336",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \temp_out[10]~20_combout\,
	datac => \inp2~combout\(10),
	datad => \inp1~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[10]~21_combout\);

-- Location: LC_X5_Y7_N6
\opr7|zout[10]\ : maxv_lcell
-- Equation(s):
-- \opr7|zout\(10) = ((\temp_out[10]~21_combout\ & ((!\reset~combout\))))

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
	datab => \temp_out[10]~21_combout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr7|zout\(10));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp1[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp1(11),
	combout => \inp1~combout\(11));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp2[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp2(11),
	combout => \inp2~combout\(11));

-- Location: LC_X6_Y7_N5
\opr1|a11|cout~0\ : maxv_lcell
-- Equation(s):
-- \opr1|a11|cout~0_combout\ = ((\opr1|a10|cout~0_combout\ & ((\inp2~combout\(10)) # (\inp1~combout\(10)))) # (!\opr1|a10|cout~0_combout\ & (\inp2~combout\(10) & \inp1~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opr1|a10|cout~0_combout\,
	datac => \inp2~combout\(10),
	datad => \inp1~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr1|a11|cout~0_combout\);

-- Location: LC_X6_Y7_N0
\opr2|s11|bout\ : maxv_lcell
-- Equation(s):
-- \opr2|s11|bout~combout\ = ((\opr2|s10|bout~combout\ & ((\inp2~combout\(10)) # (!\inp1~combout\(10)))) # (!\opr2|s10|bout~combout\ & (\inp2~combout\(10) & !\inp1~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opr2|s10|bout~combout\,
	datac => \inp2~combout\(10),
	datad => \inp1~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s11|bout~combout\);

-- Location: LC_X6_Y8_N8
\temp_out[11]~22\ : maxv_lcell
-- Equation(s):
-- \temp_out[11]~22_combout\ = (\sel~combout\(1) & (((\sel~combout\(0))))) # (!\sel~combout\(1) & ((\sel~combout\(0) & ((\opr2|s11|bout~combout\))) # (!\sel~combout\(0) & (\opr1|a11|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \opr1|a11|cout~0_combout\,
	datac => \opr2|s11|bout~combout\,
	datad => \sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[11]~22_combout\);

-- Location: LC_X6_Y7_N6
\temp_out[11]~23\ : maxv_lcell
-- Equation(s):
-- \temp_out[11]~23_combout\ = (\sel~combout\(1) & (!\temp_out[11]~22_combout\ & ((!\inp2~combout\(11)) # (!\inp1~combout\(11))))) # (!\sel~combout\(1) & (\inp1~combout\(11) $ (\inp2~combout\(11) $ (\temp_out[11]~22_combout\))))

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
	dataa => \sel~combout\(1),
	datab => \inp1~combout\(11),
	datac => \inp2~combout\(11),
	datad => \temp_out[11]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[11]~23_combout\);

-- Location: LC_X5_Y7_N1
\opr7|zout[11]\ : maxv_lcell
-- Equation(s):
-- \opr7|zout\(11) = (((\temp_out[11]~23_combout\ & !\reset~combout\)))

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
	datac => \temp_out[11]~23_combout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr7|zout\(11));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp1[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp1(12),
	combout => \inp1~combout\(12));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp2[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp2(12),
	combout => \inp2~combout\(12));

-- Location: LC_X6_Y7_N8
\opr1|a12|cout~0\ : maxv_lcell
-- Equation(s):
-- \opr1|a12|cout~0_combout\ = (\opr1|a11|cout~0_combout\ & ((\inp1~combout\(11)) # ((\inp2~combout\(11))))) # (!\opr1|a11|cout~0_combout\ & (\inp1~combout\(11) & (\inp2~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opr1|a11|cout~0_combout\,
	datab => \inp1~combout\(11),
	datac => \inp2~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr1|a12|cout~0_combout\);

-- Location: LC_X6_Y7_N3
\opr2|s12|bout\ : maxv_lcell
-- Equation(s):
-- \opr2|s12|bout~combout\ = ((\inp1~combout\(11) & (\inp2~combout\(11) & \opr2|s11|bout~combout\)) # (!\inp1~combout\(11) & ((\inp2~combout\(11)) # (\opr2|s11|bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp1~combout\(11),
	datac => \inp2~combout\(11),
	datad => \opr2|s11|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s12|bout~combout\);

-- Location: LC_X6_Y8_N6
\temp_out[12]~24\ : maxv_lcell
-- Equation(s):
-- \temp_out[12]~24_combout\ = (\sel~combout\(1) & (((\sel~combout\(0))))) # (!\sel~combout\(1) & ((\sel~combout\(0) & ((\opr2|s12|bout~combout\))) # (!\sel~combout\(0) & (\opr1|a12|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \opr1|a12|cout~0_combout\,
	datac => \opr2|s12|bout~combout\,
	datad => \sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[12]~24_combout\);

-- Location: LC_X6_Y8_N1
\temp_out[12]~25\ : maxv_lcell
-- Equation(s):
-- \temp_out[12]~25_combout\ = (\sel~combout\(1) & (!\temp_out[12]~24_combout\ & ((!\inp2~combout\(12)) # (!\inp1~combout\(12))))) # (!\sel~combout\(1) & (\inp1~combout\(12) $ (\inp2~combout\(12) $ (\temp_out[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0796",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp1~combout\(12),
	datab => \inp2~combout\(12),
	datac => \temp_out[12]~24_combout\,
	datad => \sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[12]~25_combout\);

-- Location: LC_X5_Y7_N7
\opr7|zout[12]\ : maxv_lcell
-- Equation(s):
-- \opr7|zout\(12) = (((\temp_out[12]~25_combout\ & !\reset~combout\)))

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
	datac => \temp_out[12]~25_combout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr7|zout\(12));

-- Location: LC_X6_Y8_N5
\opr1|a13|cout~0\ : maxv_lcell
-- Equation(s):
-- \opr1|a13|cout~0_combout\ = (\inp1~combout\(12) & ((\inp2~combout\(12)) # ((\opr1|a12|cout~0_combout\)))) # (!\inp1~combout\(12) & (\inp2~combout\(12) & (\opr1|a12|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp1~combout\(12),
	datab => \inp2~combout\(12),
	datac => \opr1|a12|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr1|a13|cout~0_combout\);

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp2[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp2(13),
	combout => \inp2~combout\(13));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp1[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp1(13),
	combout => \inp1~combout\(13));

-- Location: LC_X6_Y8_N7
\opr2|s14|xor_i~0\ : maxv_lcell
-- Equation(s):
-- \opr2|s14|xor_i~0_combout\ = (\inp2~combout\(13) $ ((\inp1~combout\(13))))

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
	datab => \inp2~combout\(13),
	datac => \inp1~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s14|xor_i~0_combout\);

-- Location: LC_X6_Y8_N0
\opr2|s13|bout\ : maxv_lcell
-- Equation(s):
-- \opr2|s13|bout~combout\ = (\inp1~combout\(12) & (\inp2~combout\(12) & (\opr2|s12|bout~combout\))) # (!\inp1~combout\(12) & ((\inp2~combout\(12)) # ((\opr2|s12|bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp1~combout\(12),
	datab => \inp2~combout\(12),
	datac => \opr2|s12|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s13|bout~combout\);

-- Location: LC_X6_Y8_N3
\temp_out[13]~27\ : maxv_lcell
-- Equation(s):
-- \temp_out[13]~27_combout\ = \opr2|s14|xor_i~0_combout\ $ (((\sel~combout\(0) & ((\opr2|s13|bout~combout\))) # (!\sel~combout\(0) & (\opr1|a13|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opr1|a13|cout~0_combout\,
	datab => \opr2|s14|xor_i~0_combout\,
	datac => \opr2|s13|bout~combout\,
	datad => \sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[13]~27_combout\);

-- Location: LC_X6_Y8_N9
\temp_out[13]~26\ : maxv_lcell
-- Equation(s):
-- \temp_out[13]~26_combout\ = (\sel~combout\(1) & (!\sel~combout\(0) & ((!\inp1~combout\(13)) # (!\inp2~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "002a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \inp2~combout\(13),
	datac => \inp1~combout\(13),
	datad => \sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[13]~26_combout\);

-- Location: LC_X5_Y7_N0
\opr7|zout[13]\ : maxv_lcell
-- Equation(s):
-- \opr7|zout\(13) = (!\reset~combout\ & ((\temp_out[13]~26_combout\) # ((!\sel~combout\(1) & \temp_out[13]~27_combout\))))

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
	dataa => \reset~combout\,
	datab => \sel~combout\(1),
	datac => \temp_out[13]~27_combout\,
	datad => \temp_out[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr7|zout\(13));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp2[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp2(14),
	combout => \inp2~combout\(14));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp1[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp1(14),
	combout => \inp1~combout\(14));

-- Location: LC_X7_Y8_N5
\opr2|s15|xor_i~0\ : maxv_lcell
-- Equation(s):
-- \opr2|s15|xor_i~0_combout\ = \inp1~combout\(14) $ ((((\inp2~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp1~combout\(14),
	datac => \inp2~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s15|xor_i~0_combout\);

-- Location: LC_X6_Y8_N4
\opr2|s14|bout\ : maxv_lcell
-- Equation(s):
-- \opr2|s14|bout~combout\ = (\inp1~combout\(13) & (\inp2~combout\(13) & (\opr2|s13|bout~combout\))) # (!\inp1~combout\(13) & ((\inp2~combout\(13)) # ((\opr2|s13|bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp1~combout\(13),
	datab => \inp2~combout\(13),
	datac => \opr2|s13|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s14|bout~combout\);

-- Location: LC_X7_Y8_N0
\temp_out[15]~29\ : maxv_lcell
-- Equation(s):
-- \temp_out[15]~29_combout\ = ((!\sel~combout\(1) & ((\sel~combout\(0)))))

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
	datab => \sel~combout\(1),
	datad => \sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[15]~29_combout\);

-- Location: LC_X6_Y8_N2
\opr1|a14|cout~0\ : maxv_lcell
-- Equation(s):
-- \opr1|a14|cout~0_combout\ = (\inp1~combout\(13) & ((\inp2~combout\(13)) # ((\opr1|a13|cout~0_combout\)))) # (!\inp1~combout\(13) & (\inp2~combout\(13) & (\opr1|a13|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp1~combout\(13),
	datab => \inp2~combout\(13),
	datac => \opr1|a13|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr1|a14|cout~0_combout\);

-- Location: LC_X7_Y8_N8
\temp_out[14]~28\ : maxv_lcell
-- Equation(s):
-- \temp_out[14]~28_combout\ = (!\sel~combout\(0) & (!\sel~combout\(1) & (\opr1|a14|cout~0_combout\ $ (\opr2|s15|xor_i~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0014",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \opr1|a14|cout~0_combout\,
	datac => \opr2|s15|xor_i~0_combout\,
	datad => \sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[14]~28_combout\);

-- Location: LC_X7_Y8_N6
\temp_out[14]~30\ : maxv_lcell
-- Equation(s):
-- \temp_out[14]~30_combout\ = (\temp_out[14]~28_combout\) # ((\temp_out[15]~29_combout\ & (\opr2|s15|xor_i~0_combout\ $ (\opr2|s14|bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opr2|s15|xor_i~0_combout\,
	datab => \opr2|s14|bout~combout\,
	datac => \temp_out[15]~29_combout\,
	datad => \temp_out[14]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[14]~30_combout\);

-- Location: LC_X7_Y8_N3
\temp_out[14]~31\ : maxv_lcell
-- Equation(s):
-- \temp_out[14]~31_combout\ = (\temp_out[14]~30_combout\) # ((\cout~0_combout\ & ((!\inp1~combout\(14)) # (!\inp2~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp2~combout\(14),
	datab => \temp_out[14]~30_combout\,
	datac => \inp1~combout\(14),
	datad => \cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[14]~31_combout\);

-- Location: LC_X5_Y7_N5
\opr7|zout[14]\ : maxv_lcell
-- Equation(s):
-- \opr7|zout\(14) = (\temp_out[14]~31_combout\ & (((!\reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp_out[14]~31_combout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr7|zout\(14));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp2[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp2(15),
	combout => \inp2~combout\(15));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp1[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp1(15),
	combout => \inp1~combout\(15));

-- Location: LC_X8_Y7_N4
\opr2|s16|xor_i~0\ : maxv_lcell
-- Equation(s):
-- \opr2|s16|xor_i~0_combout\ = ((\inp2~combout\(15) $ (\inp1~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inp2~combout\(15),
	datad => \inp1~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s16|xor_i~0_combout\);

-- Location: LC_X7_Y8_N7
\opr1|a15|cout~0\ : maxv_lcell
-- Equation(s):
-- \opr1|a15|cout~0_combout\ = (\inp1~combout\(14) & ((\opr1|a14|cout~0_combout\) # ((\inp2~combout\(14))))) # (!\inp1~combout\(14) & (\opr1|a14|cout~0_combout\ & (\inp2~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp1~combout\(14),
	datab => \opr1|a14|cout~0_combout\,
	datac => \inp2~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr1|a15|cout~0_combout\);

-- Location: LC_X7_Y8_N4
\temp_out[14]~33\ : maxv_lcell
-- Equation(s):
-- \temp_out[14]~33_combout\ = ((!\sel~combout\(1) & ((!\sel~combout\(0)))))

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
	datab => \sel~combout\(1),
	datad => \sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[14]~33_combout\);

-- Location: LC_X8_Y7_N6
\temp_out[15]~32\ : maxv_lcell
-- Equation(s):
-- \temp_out[15]~32_combout\ = (\sel~combout\(1) & (!\sel~combout\(0) & ((!\inp1~combout\(15)) # (!\inp2~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "040c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp2~combout\(15),
	datab => \sel~combout\(1),
	datac => \sel~combout\(0),
	datad => \inp1~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[15]~32_combout\);

-- Location: LC_X7_Y8_N9
\temp_out[15]~34\ : maxv_lcell
-- Equation(s):
-- \temp_out[15]~34_combout\ = (\temp_out[15]~32_combout\) # ((\temp_out[14]~33_combout\ & (\opr2|s16|xor_i~0_combout\ $ (\opr1|a15|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opr2|s16|xor_i~0_combout\,
	datab => \opr1|a15|cout~0_combout\,
	datac => \temp_out[14]~33_combout\,
	datad => \temp_out[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[15]~34_combout\);

-- Location: LC_X7_Y8_N2
\opr2|s15|bout\ : maxv_lcell
-- Equation(s):
-- \opr2|s15|bout~combout\ = (\inp1~combout\(14) & (\opr2|s14|bout~combout\ & (\inp2~combout\(14)))) # (!\inp1~combout\(14) & ((\opr2|s14|bout~combout\) # ((\inp2~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp1~combout\(14),
	datab => \opr2|s14|bout~combout\,
	datac => \inp2~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr2|s15|bout~combout\);

-- Location: LC_X7_Y8_N1
\temp_out[15]~35\ : maxv_lcell
-- Equation(s):
-- \temp_out[15]~35_combout\ = (\temp_out[15]~34_combout\) # ((\temp_out[15]~29_combout\ & (\opr2|s16|xor_i~0_combout\ $ (\opr2|s15|bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dcec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opr2|s16|xor_i~0_combout\,
	datab => \temp_out[15]~34_combout\,
	datac => \temp_out[15]~29_combout\,
	datad => \opr2|s15|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_out[15]~35_combout\);

-- Location: LC_X5_Y7_N9
\opr7|zout[15]\ : maxv_lcell
-- Equation(s):
-- \opr7|zout\(15) = (((\temp_out[15]~35_combout\ & !\reset~combout\)))

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
	datac => \temp_out[15]~35_combout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \opr7|zout\(15));

-- Location: LC_X8_Y7_N3
\cout~2\ : maxv_lcell
-- Equation(s):
-- \cout~2_combout\ = (\opr2|s15|bout~combout\ & ((\inp1~combout\(15) & ((\inp2~combout\(15)))) # (!\inp1~combout\(15) & (\sel~combout\(0))))) # (!\opr2|s15|bout~combout\ & (\inp2~combout\(15) & (\sel~combout\(0) $ (\inp1~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \opr2|s15|bout~combout\,
	datac => \inp2~combout\(15),
	datad => \inp1~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cout~2_combout\);

-- Location: LC_X8_Y7_N9
\cout~1\ : maxv_lcell
-- Equation(s):
-- \cout~1_combout\ = (\opr1|a15|cout~0_combout\ & (!\sel~combout\(0) & ((\inp2~combout\(15)) # (\inp1~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp2~combout\(15),
	datab => \opr1|a15|cout~0_combout\,
	datac => \sel~combout\(0),
	datad => \inp1~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cout~1_combout\);

-- Location: LC_X8_Y7_N7
\cout~3\ : maxv_lcell
-- Equation(s):
-- \cout~3_combout\ = (!\sel~combout\(1) & (!\reset~combout\ & ((\cout~2_combout\) # (\cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0302",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cout~2_combout\,
	datab => \sel~combout\(1),
	datac => \reset~combout\,
	datad => \cout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cout~3_combout\);

-- Location: LC_X8_Y7_N8
\cout~4\ : maxv_lcell
-- Equation(s):
-- \cout~4_combout\ = (\cout~3_combout\) # ((!\reset~combout\ & (\cin~combout\ & \cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \cout~3_combout\,
	datac => \cin~combout\,
	datad => \cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cout~4_combout\);

-- Location: LC_X5_Y7_N2
\zero_flag~0\ : maxv_lcell
-- Equation(s):
-- \zero_flag~0_combout\ = (\temp_out[12]~25_combout\) # ((\temp_out[13]~26_combout\) # ((!\sel~combout\(1) & \temp_out[13]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp_out[12]~25_combout\,
	datab => \sel~combout\(1),
	datac => \temp_out[13]~27_combout\,
	datad => \temp_out[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \zero_flag~0_combout\);

-- Location: LC_X10_Y7_N8
\zero_flag~1\ : maxv_lcell
-- Equation(s):
-- \zero_flag~1_combout\ = ((\temp_out[0]~1_combout\) # ((\temp_out[2]~5_combout\) # (\temp_out[1]~3_combout\)))

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
	datab => \temp_out[0]~1_combout\,
	datac => \temp_out[2]~5_combout\,
	datad => \temp_out[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \zero_flag~1_combout\);

-- Location: LC_X10_Y7_N7
\zero_flag~2\ : maxv_lcell
-- Equation(s):
-- \zero_flag~2_combout\ = (\temp_out[3]~7_combout\) # ((\temp_out[4]~9_combout\) # ((\temp_out[5]~11_combout\) # (\zero_flag~1_combout\)))

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
	dataa => \temp_out[3]~7_combout\,
	datab => \temp_out[4]~9_combout\,
	datac => \temp_out[5]~11_combout\,
	datad => \zero_flag~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \zero_flag~2_combout\);

-- Location: LC_X10_Y7_N9
\zero_flag~3\ : maxv_lcell
-- Equation(s):
-- \zero_flag~3_combout\ = (\temp_out[8]~17_combout\) # ((\temp_out[6]~13_combout\) # ((\zero_flag~2_combout\) # (\temp_out[7]~15_combout\)))

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
	dataa => \temp_out[8]~17_combout\,
	datab => \temp_out[6]~13_combout\,
	datac => \zero_flag~2_combout\,
	datad => \temp_out[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \zero_flag~3_combout\);

-- Location: LC_X5_Y7_N4
\zero_flag~4\ : maxv_lcell
-- Equation(s):
-- \zero_flag~4_combout\ = (\temp_out[11]~23_combout\) # ((\temp_out[10]~21_combout\) # ((\zero_flag~3_combout\) # (\temp_out[9]~19_combout\)))

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
	dataa => \temp_out[11]~23_combout\,
	datab => \temp_out[10]~21_combout\,
	datac => \zero_flag~3_combout\,
	datad => \temp_out[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \zero_flag~4_combout\);

-- Location: LC_X5_Y7_N8
\zero_flag~5\ : maxv_lcell
-- Equation(s):
-- \zero_flag~5_combout\ = (\temp_out[15]~35_combout\) # ((\zero_flag~0_combout\) # ((\zero_flag~4_combout\) # (\temp_out[14]~31_combout\)))

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
	dataa => \temp_out[15]~35_combout\,
	datab => \zero_flag~0_combout\,
	datac => \zero_flag~4_combout\,
	datad => \temp_out[14]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \zero_flag~5_combout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\outp[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \opr7|zout\(0),
	oe => VCC,
	padio => ww_outp(0));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\outp[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \opr7|zout\(1),
	oe => VCC,
	padio => ww_outp(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\outp[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \opr7|zout\(2),
	oe => VCC,
	padio => ww_outp(2));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\outp[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \opr7|zout\(3),
	oe => VCC,
	padio => ww_outp(3));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\outp[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \opr7|zout\(4),
	oe => VCC,
	padio => ww_outp(4));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\outp[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \opr7|zout\(5),
	oe => VCC,
	padio => ww_outp(5));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\outp[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \opr7|zout\(6),
	oe => VCC,
	padio => ww_outp(6));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\outp[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \opr7|zout\(7),
	oe => VCC,
	padio => ww_outp(7));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\outp[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \opr7|zout\(8),
	oe => VCC,
	padio => ww_outp(8));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\outp[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \opr7|zout\(9),
	oe => VCC,
	padio => ww_outp(9));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\outp[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \opr7|zout\(10),
	oe => VCC,
	padio => ww_outp(10));

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\outp[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \opr7|zout\(11),
	oe => VCC,
	padio => ww_outp(11));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\outp[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \opr7|zout\(12),
	oe => VCC,
	padio => ww_outp(12));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\outp[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \opr7|zout\(13),
	oe => VCC,
	padio => ww_outp(13));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\outp[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \opr7|zout\(14),
	oe => VCC,
	padio => ww_outp(14));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\outp[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \opr7|zout\(15),
	oe => VCC,
	padio => ww_outp(15));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cout~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cout~4_combout\,
	oe => VCC,
	padio => ww_cout);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\zero~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_zero_flag~5_combout\,
	oe => VCC,
	padio => ww_zero);
END structure;


