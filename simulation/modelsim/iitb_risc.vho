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

-- DATE "10/30/2018 00:48:26"

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

ENTITY 	register16 IS
    PORT (
	din : IN std_logic_vector(15 DOWNTO 0);
	en : IN std_logic;
	clk : IN std_logic;
	dout : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END register16;

-- Design Ports Information


ARCHITECTURE structure OF register16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_din : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_en : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_dout : std_logic_vector(15 DOWNTO 0);
SIGNAL \en~combout\ : std_logic;
SIGNAL \dout[0]$latch~combout\ : std_logic;
SIGNAL \dout[1]$latch~combout\ : std_logic;
SIGNAL \dout[2]$latch~combout\ : std_logic;
SIGNAL \dout[3]$latch~combout\ : std_logic;
SIGNAL \dout[4]$latch~combout\ : std_logic;
SIGNAL \dout[5]$latch~combout\ : std_logic;
SIGNAL \dout[6]$latch~combout\ : std_logic;
SIGNAL \dout[7]$latch~combout\ : std_logic;
SIGNAL \dout[8]$latch~combout\ : std_logic;
SIGNAL \dout[9]$latch~combout\ : std_logic;
SIGNAL \dout[10]$latch~combout\ : std_logic;
SIGNAL \dout[11]$latch~combout\ : std_logic;
SIGNAL \dout[12]$latch~combout\ : std_logic;
SIGNAL \dout[13]$latch~combout\ : std_logic;
SIGNAL \dout[14]$latch~combout\ : std_logic;
SIGNAL \dout[15]$latch~combout\ : std_logic;
SIGNAL \din~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_din <= din;
ww_en <= en;
ww_clk <= clk;
dout <= ww_dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(0),
	combout => \din~combout\(0));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\en~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_en,
	combout => \en~combout\);

-- Location: LC_X16_Y6_N4
\dout[0]$latch\ : maxv_lcell
-- Equation(s):
-- \dout[0]$latch~combout\ = ((GLOBAL(\en~combout\) & (\din~combout\(0))) # (!GLOBAL(\en~combout\) & ((\dout[0]$latch~combout\))))

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
	datab => \din~combout\(0),
	datac => \dout[0]$latch~combout\,
	datad => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dout[0]$latch~combout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(1),
	combout => \din~combout\(1));

-- Location: LC_X10_Y10_N3
\dout[1]$latch\ : maxv_lcell
-- Equation(s):
-- \dout[1]$latch~combout\ = ((GLOBAL(\en~combout\) & ((\din~combout\(1)))) # (!GLOBAL(\en~combout\) & (\dout[1]$latch~combout\)))

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
	dataa => \dout[1]$latch~combout\,
	datab => \din~combout\(1),
	datad => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dout[1]$latch~combout\);

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(2),
	combout => \din~combout\(2));

-- Location: LC_X15_Y10_N2
\dout[2]$latch\ : maxv_lcell
-- Equation(s):
-- \dout[2]$latch~combout\ = ((GLOBAL(\en~combout\) & ((\din~combout\(2)))) # (!GLOBAL(\en~combout\) & (\dout[2]$latch~combout\)))

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
	datab => \dout[2]$latch~combout\,
	datac => \din~combout\(2),
	datad => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dout[2]$latch~combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(3),
	combout => \din~combout\(3));

-- Location: LC_X13_Y10_N2
\dout[3]$latch\ : maxv_lcell
-- Equation(s):
-- \dout[3]$latch~combout\ = ((GLOBAL(\en~combout\) & (\din~combout\(3))) # (!GLOBAL(\en~combout\) & ((\dout[3]$latch~combout\))))

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
	dataa => \din~combout\(3),
	datab => \dout[3]$latch~combout\,
	datad => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dout[3]$latch~combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(4),
	combout => \din~combout\(4));

-- Location: LC_X9_Y4_N6
\dout[4]$latch\ : maxv_lcell
-- Equation(s):
-- \dout[4]$latch~combout\ = ((GLOBAL(\en~combout\) & (\din~combout\(4))) # (!GLOBAL(\en~combout\) & ((\dout[4]$latch~combout\))))

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
	dataa => \din~combout\(4),
	datac => \dout[4]$latch~combout\,
	datad => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dout[4]$latch~combout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(5),
	combout => \din~combout\(5));

-- Location: LC_X9_Y7_N4
\dout[5]$latch\ : maxv_lcell
-- Equation(s):
-- \dout[5]$latch~combout\ = ((GLOBAL(\en~combout\) & (\din~combout\(5))) # (!GLOBAL(\en~combout\) & ((\dout[5]$latch~combout\))))

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
	datab => \din~combout\(5),
	datac => \dout[5]$latch~combout\,
	datad => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dout[5]$latch~combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(6),
	combout => \din~combout\(6));

-- Location: LC_X4_Y7_N4
\dout[6]$latch\ : maxv_lcell
-- Equation(s):
-- \dout[6]$latch~combout\ = ((GLOBAL(\en~combout\) & (\din~combout\(6))) # (!GLOBAL(\en~combout\) & ((\dout[6]$latch~combout\))))

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
	datab => \din~combout\(6),
	datac => \dout[6]$latch~combout\,
	datad => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dout[6]$latch~combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(7),
	combout => \din~combout\(7));

-- Location: LC_X7_Y4_N6
\dout[7]$latch\ : maxv_lcell
-- Equation(s):
-- \dout[7]$latch~combout\ = ((GLOBAL(\en~combout\) & (\din~combout\(7))) # (!GLOBAL(\en~combout\) & ((\dout[7]$latch~combout\))))

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
	dataa => \din~combout\(7),
	datac => \dout[7]$latch~combout\,
	datad => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dout[7]$latch~combout\);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(8),
	combout => \din~combout\(8));

-- Location: LC_X5_Y10_N5
\dout[8]$latch\ : maxv_lcell
-- Equation(s):
-- \dout[8]$latch~combout\ = ((GLOBAL(\en~combout\) & (\din~combout\(8))) # (!GLOBAL(\en~combout\) & ((\dout[8]$latch~combout\))))

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
	datab => \din~combout\(8),
	datac => \dout[8]$latch~combout\,
	datad => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dout[8]$latch~combout\);

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(9),
	combout => \din~combout\(9));

-- Location: LC_X9_Y10_N4
\dout[9]$latch\ : maxv_lcell
-- Equation(s):
-- \dout[9]$latch~combout\ = ((GLOBAL(\en~combout\) & (\din~combout\(9))) # (!GLOBAL(\en~combout\) & ((\dout[9]$latch~combout\))))

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
	dataa => \din~combout\(9),
	datac => \dout[9]$latch~combout\,
	datad => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dout[9]$latch~combout\);

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(10),
	combout => \din~combout\(10));

-- Location: LC_X8_Y10_N2
\dout[10]$latch\ : maxv_lcell
-- Equation(s):
-- \dout[10]$latch~combout\ = ((GLOBAL(\en~combout\) & ((\din~combout\(10)))) # (!GLOBAL(\en~combout\) & (\dout[10]$latch~combout\)))

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
	datab => \dout[10]$latch~combout\,
	datac => \din~combout\(10),
	datad => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dout[10]$latch~combout\);

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(11),
	combout => \din~combout\(11));

-- Location: LC_X10_Y10_N7
\dout[11]$latch\ : maxv_lcell
-- Equation(s):
-- \dout[11]$latch~combout\ = ((GLOBAL(\en~combout\) & (\din~combout\(11))) # (!GLOBAL(\en~combout\) & ((\dout[11]$latch~combout\))))

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
	dataa => \din~combout\(11),
	datac => \dout[11]$latch~combout\,
	datad => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dout[11]$latch~combout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(12),
	combout => \din~combout\(12));

-- Location: LC_X9_Y10_N2
\dout[12]$latch\ : maxv_lcell
-- Equation(s):
-- \dout[12]$latch~combout\ = ((GLOBAL(\en~combout\) & ((\din~combout\(12)))) # (!GLOBAL(\en~combout\) & (\dout[12]$latch~combout\)))

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
	datab => \dout[12]$latch~combout\,
	datac => \din~combout\(12),
	datad => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dout[12]$latch~combout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(13),
	combout => \din~combout\(13));

-- Location: LC_X2_Y7_N2
\dout[13]$latch\ : maxv_lcell
-- Equation(s):
-- \dout[13]$latch~combout\ = ((GLOBAL(\en~combout\) & (\din~combout\(13))) # (!GLOBAL(\en~combout\) & ((\dout[13]$latch~combout\))))

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
	dataa => \din~combout\(13),
	datab => \dout[13]$latch~combout\,
	datad => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dout[13]$latch~combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(14),
	combout => \din~combout\(14));

-- Location: LC_X16_Y4_N2
\dout[14]$latch\ : maxv_lcell
-- Equation(s):
-- \dout[14]$latch~combout\ = ((GLOBAL(\en~combout\) & ((\din~combout\(14)))) # (!GLOBAL(\en~combout\) & (\dout[14]$latch~combout\)))

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
	datab => \dout[14]$latch~combout\,
	datac => \din~combout\(14),
	datad => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dout[14]$latch~combout\);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(15),
	combout => \din~combout\(15));

-- Location: LC_X7_Y10_N2
\dout[15]$latch\ : maxv_lcell
-- Equation(s):
-- \dout[15]$latch~combout\ = ((GLOBAL(\en~combout\) & ((\din~combout\(15)))) # (!GLOBAL(\en~combout\) & (\dout[15]$latch~combout\)))

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
	datab => \dout[15]$latch~combout\,
	datac => \din~combout\(15),
	datad => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dout[15]$latch~combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dout[0]$latch~combout\,
	oe => VCC,
	padio => ww_dout(0));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dout[1]$latch~combout\,
	oe => VCC,
	padio => ww_dout(1));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dout[2]$latch~combout\,
	oe => VCC,
	padio => ww_dout(2));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dout[3]$latch~combout\,
	oe => VCC,
	padio => ww_dout(3));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dout[4]$latch~combout\,
	oe => VCC,
	padio => ww_dout(4));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dout[5]$latch~combout\,
	oe => VCC,
	padio => ww_dout(5));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dout[6]$latch~combout\,
	oe => VCC,
	padio => ww_dout(6));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dout[7]$latch~combout\,
	oe => VCC,
	padio => ww_dout(7));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dout[8]$latch~combout\,
	oe => VCC,
	padio => ww_dout(8));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dout[9]$latch~combout\,
	oe => VCC,
	padio => ww_dout(9));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dout[10]$latch~combout\,
	oe => VCC,
	padio => ww_dout(10));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dout[11]$latch~combout\,
	oe => VCC,
	padio => ww_dout(11));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dout[12]$latch~combout\,
	oe => VCC,
	padio => ww_dout(12));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dout[13]$latch~combout\,
	oe => VCC,
	padio => ww_dout(13));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dout[14]$latch~combout\,
	oe => VCC,
	padio => ww_dout(14));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dout[15]$latch~combout\,
	oe => VCC,
	padio => ww_dout(15));
END structure;


