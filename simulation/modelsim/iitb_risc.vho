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

-- DATE "10/28/2018 23:54:39"

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
	reset : IN std_logic;
	input : IN std_logic_vector(31 DOWNTO 0);
	output : OUT std_logic_vector(15 DOWNTO 0)
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_input : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_input <= input;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset);

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(1));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(2));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(3));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(4));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(5));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(6));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(7));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(8));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(9));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(10));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(11));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(12));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(13));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(14));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(15));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(16));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(17));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(18));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(19));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(20));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(21));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(22));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(23));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(24));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(25));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(26));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(27));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(28));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(29));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(30));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input(31));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output(0));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output(1));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output(2));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output(4));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output(5));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output(6));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output(7));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output(8));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output(9));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output(10));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output(11));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output(12));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output(13));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output(14));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output(15));
END structure;


