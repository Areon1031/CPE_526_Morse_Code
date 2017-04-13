-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/11/2017 11:43:19"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	uarec IS
    PORT (
	en : IN std_logic;
	clk : IN std_logic;
	ser_in : IN std_logic;
	dout : OUT std_logic_vector(7 DOWNTO 0);
	en_out : OUT std_logic
	);
END uarec;

-- Design Ports Information
-- dout[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_out	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ser_in	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uarec IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ser_in : std_logic;
SIGNAL ww_dout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_en_out : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L2|Mux4~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dout[0]~output_o\ : std_logic;
SIGNAL \dout[1]~output_o\ : std_logic;
SIGNAL \dout[2]~output_o\ : std_logic;
SIGNAL \dout[3]~output_o\ : std_logic;
SIGNAL \dout[4]~output_o\ : std_logic;
SIGNAL \dout[5]~output_o\ : std_logic;
SIGNAL \dout[6]~output_o\ : std_logic;
SIGNAL \dout[7]~output_o\ : std_logic;
SIGNAL \en_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ser_in~input_o\ : std_logic;
SIGNAL \L3|shift:loc_dout[7]~feeder_combout\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \L2|process_1~0_combout\ : std_logic;
SIGNAL \L2|process_1~1_combout\ : std_logic;
SIGNAL \L1|Add0~1\ : std_logic;
SIGNAL \L1|Add0~2_combout\ : std_logic;
SIGNAL \L1|count~12_combout\ : std_logic;
SIGNAL \L1|cnt:count[1]~q\ : std_logic;
SIGNAL \L1|Add0~3\ : std_logic;
SIGNAL \L1|Add0~4_combout\ : std_logic;
SIGNAL \L1|count~14_combout\ : std_logic;
SIGNAL \L1|cnt:count[2]~q\ : std_logic;
SIGNAL \L1|Add0~5\ : std_logic;
SIGNAL \L1|Add0~6_combout\ : std_logic;
SIGNAL \L1|count~15_combout\ : std_logic;
SIGNAL \L1|cnt:count[3]~q\ : std_logic;
SIGNAL \L1|Add0~7\ : std_logic;
SIGNAL \L1|Add0~8_combout\ : std_logic;
SIGNAL \L1|count~11_combout\ : std_logic;
SIGNAL \L1|cnt:count[4]~q\ : std_logic;
SIGNAL \L1|Add0~0_combout\ : std_logic;
SIGNAL \L1|count~13_combout\ : std_logic;
SIGNAL \L1|cnt:count[0]~q\ : std_logic;
SIGNAL \L1|LessThan0~0_combout\ : std_logic;
SIGNAL \L1|LessThan0~1_combout\ : std_logic;
SIGNAL \L1|h~0_combout\ : std_logic;
SIGNAL \L1|h~q\ : std_logic;
SIGNAL \L2|Mux3~5_combout\ : std_logic;
SIGNAL \L2|Mux6~0_combout\ : std_logic;
SIGNAL \L2|Mux1~4_combout\ : std_logic;
SIGNAL \L2|Mux3~2_combout\ : std_logic;
SIGNAL \L2|Mux3~3_combout\ : std_logic;
SIGNAL \L2|Mux3~4_combout\ : std_logic;
SIGNAL \L2|Mux5~1_combout\ : std_logic;
SIGNAL \L2|Mux7~0_combout\ : std_logic;
SIGNAL \L2|Mux7~1_combout\ : std_logic;
SIGNAL \L2|Mux4~0_combout\ : std_logic;
SIGNAL \L2|Mux4~0clkctrl_outclk\ : std_logic;
SIGNAL \L2|Mux5~2_combout\ : std_logic;
SIGNAL \L2|Mux5~4_combout\ : std_logic;
SIGNAL \L2|Mux5~3_combout\ : std_logic;
SIGNAL \L2|Mux5~5_combout\ : std_logic;
SIGNAL \L2|Mux5~6_combout\ : std_logic;
SIGNAL \L2|Mux0~0_combout\ : std_logic;
SIGNAL \L2|Mux0~1_combout\ : std_logic;
SIGNAL \L1|count~10_combout\ : std_logic;
SIGNAL \L1|f~0_combout\ : std_logic;
SIGNAL \L1|f~1_combout\ : std_logic;
SIGNAL \L1|f~2_combout\ : std_logic;
SIGNAL \L1|f~q\ : std_logic;
SIGNAL \L2|Mux1~5_combout\ : std_logic;
SIGNAL \L3|shift:loc_dout[7]~q\ : std_logic;
SIGNAL \L3|shift:loc_dout[6]~feeder_combout\ : std_logic;
SIGNAL \L3|shift:loc_dout[6]~q\ : std_logic;
SIGNAL \L3|shift:loc_dout[5]~feeder_combout\ : std_logic;
SIGNAL \L3|shift:loc_dout[5]~q\ : std_logic;
SIGNAL \L3|shift:loc_dout[4]~feeder_combout\ : std_logic;
SIGNAL \L3|shift:loc_dout[4]~q\ : std_logic;
SIGNAL \L3|shift:loc_dout[3]~feeder_combout\ : std_logic;
SIGNAL \L3|shift:loc_dout[3]~q\ : std_logic;
SIGNAL \L3|shift:loc_dout[2]~feeder_combout\ : std_logic;
SIGNAL \L3|shift:loc_dout[2]~q\ : std_logic;
SIGNAL \L3|shift:loc_dout[1]~feeder_combout\ : std_logic;
SIGNAL \L3|shift:loc_dout[1]~q\ : std_logic;
SIGNAL \L3|dout[1]~feeder_combout\ : std_logic;
SIGNAL \L3|dout[2]~feeder_combout\ : std_logic;
SIGNAL \L3|dout[3]~feeder_combout\ : std_logic;
SIGNAL \L3|dout[4]~feeder_combout\ : std_logic;
SIGNAL \L3|dout[5]~feeder_combout\ : std_logic;
SIGNAL \L3|dout[6]~feeder_combout\ : std_logic;
SIGNAL \L3|dout[7]~feeder_combout\ : std_logic;
SIGNAL \L2|Mux5~0_combout\ : std_logic;
SIGNAL \L2|Mux2~0_combout\ : std_logic;
SIGNAL \L2|state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L2|next_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L3|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L2|ALT_INV_Mux2~0_combout\ : std_logic;

BEGIN

ww_en <= en;
ww_clk <= clk;
ww_ser_in <= ser_in;
dout <= ww_dout;
en_out <= ww_en_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\L2|Mux4~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \L2|Mux4~0_combout\);
\L2|ALT_INV_Mux2~0_combout\ <= NOT \L2|Mux2~0_combout\;

-- Location: IOOBUF_X14_Y31_N2
\dout[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|dout\(0),
	devoe => ww_devoe,
	o => \dout[0]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\dout[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|dout\(1),
	devoe => ww_devoe,
	o => \dout[1]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\dout[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|dout\(2),
	devoe => ww_devoe,
	o => \dout[2]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\dout[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|dout\(3),
	devoe => ww_devoe,
	o => \dout[3]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\dout[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|dout\(4),
	devoe => ww_devoe,
	o => \dout[4]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\dout[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|dout\(5),
	devoe => ww_devoe,
	o => \dout[5]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\dout[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|dout\(6),
	devoe => ww_devoe,
	o => \dout[6]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\dout[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|dout\(7),
	devoe => ww_devoe,
	o => \dout[7]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\en_out~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L2|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \en_out~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X33_Y25_N8
\ser_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ser_in,
	o => \ser_in~input_o\);

-- Location: LCCOMB_X21_Y26_N4
\L3|shift:loc_dout[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L3|shift:loc_dout[7]~feeder_combout\ = \ser_in~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ser_in~input_o\,
	combout => \L3|shift:loc_dout[7]~feeder_combout\);

-- Location: IOIBUF_X26_Y31_N1
\en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: LCCOMB_X23_Y26_N16
\L2|process_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|process_1~0_combout\ = (!\L1|f~q\) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en~input_o\,
	datad => \L1|f~q\,
	combout => \L2|process_1~0_combout\);

-- Location: LCCOMB_X21_Y26_N26
\L2|process_1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|process_1~1_combout\ = (\en~input_o\ & !\ser_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en~input_o\,
	datad => \ser_in~input_o\,
	combout => \L2|process_1~1_combout\);

-- Location: LCCOMB_X24_Y26_N16
\L1|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|Add0~0_combout\ = \L1|cnt:count[0]~q\ $ (VCC)
-- \L1|Add0~1\ = CARRY(\L1|cnt:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|cnt:count[0]~q\,
	datad => VCC,
	combout => \L1|Add0~0_combout\,
	cout => \L1|Add0~1\);

-- Location: LCCOMB_X24_Y26_N18
\L1|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|Add0~2_combout\ = (\L1|cnt:count[1]~q\ & (\L1|Add0~1\ & VCC)) # (!\L1|cnt:count[1]~q\ & (!\L1|Add0~1\))
-- \L1|Add0~3\ = CARRY((!\L1|cnt:count[1]~q\ & !\L1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|cnt:count[1]~q\,
	datad => VCC,
	cin => \L1|Add0~1\,
	combout => \L1|Add0~2_combout\,
	cout => \L1|Add0~3\);

-- Location: LCCOMB_X24_Y26_N8
\L1|count~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|count~12_combout\ = (\L2|Mux0~1_combout\) # ((\L1|Add0~2_combout\ & ((\L1|LessThan0~0_combout\) # (\L1|cnt:count[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux0~1_combout\,
	datab => \L1|LessThan0~0_combout\,
	datac => \L1|cnt:count[4]~q\,
	datad => \L1|Add0~2_combout\,
	combout => \L1|count~12_combout\);

-- Location: FF_X24_Y26_N9
\L1|cnt:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L1|count~12_combout\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|cnt:count[1]~q\);

-- Location: LCCOMB_X24_Y26_N20
\L1|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|Add0~4_combout\ = (\L1|cnt:count[2]~q\ & ((GND) # (!\L1|Add0~3\))) # (!\L1|cnt:count[2]~q\ & (\L1|Add0~3\ $ (GND)))
-- \L1|Add0~5\ = CARRY((\L1|cnt:count[2]~q\) # (!\L1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L1|cnt:count[2]~q\,
	datad => VCC,
	cin => \L1|Add0~3\,
	combout => \L1|Add0~4_combout\,
	cout => \L1|Add0~5\);

-- Location: LCCOMB_X24_Y26_N12
\L1|count~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|count~14_combout\ = (\L2|Mux0~1_combout\) # ((\L1|Add0~4_combout\ & ((\L1|LessThan0~0_combout\) # (\L1|cnt:count[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux0~1_combout\,
	datab => \L1|LessThan0~0_combout\,
	datac => \L1|cnt:count[4]~q\,
	datad => \L1|Add0~4_combout\,
	combout => \L1|count~14_combout\);

-- Location: FF_X24_Y26_N13
\L1|cnt:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L1|count~14_combout\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|cnt:count[2]~q\);

-- Location: LCCOMB_X24_Y26_N22
\L1|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|Add0~6_combout\ = (\L1|cnt:count[3]~q\ & (\L1|Add0~5\ & VCC)) # (!\L1|cnt:count[3]~q\ & (!\L1|Add0~5\))
-- \L1|Add0~7\ = CARRY((!\L1|cnt:count[3]~q\ & !\L1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L1|cnt:count[3]~q\,
	datad => VCC,
	cin => \L1|Add0~5\,
	combout => \L1|Add0~6_combout\,
	cout => \L1|Add0~7\);

-- Location: LCCOMB_X24_Y26_N30
\L1|count~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|count~15_combout\ = (\L2|Mux0~1_combout\) # ((\L1|Add0~6_combout\ & ((\L1|cnt:count[4]~q\) # (\L1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux0~1_combout\,
	datab => \L1|cnt:count[4]~q\,
	datac => \L1|Add0~6_combout\,
	datad => \L1|LessThan0~0_combout\,
	combout => \L1|count~15_combout\);

-- Location: FF_X24_Y26_N31
\L1|cnt:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L1|count~15_combout\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|cnt:count[3]~q\);

-- Location: LCCOMB_X24_Y26_N24
\L1|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|Add0~8_combout\ = \L1|Add0~7\ $ (\L1|cnt:count[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L1|cnt:count[4]~q\,
	cin => \L1|Add0~7\,
	combout => \L1|Add0~8_combout\);

-- Location: LCCOMB_X24_Y26_N6
\L1|count~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|count~11_combout\ = (!\L2|Mux0~1_combout\ & (\L1|Add0~8_combout\ & ((\L1|LessThan0~0_combout\) # (\L1|cnt:count[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux0~1_combout\,
	datab => \L1|LessThan0~0_combout\,
	datac => \L1|cnt:count[4]~q\,
	datad => \L1|Add0~8_combout\,
	combout => \L1|count~11_combout\);

-- Location: FF_X24_Y26_N7
\L1|cnt:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L1|count~11_combout\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|cnt:count[4]~q\);

-- Location: LCCOMB_X24_Y26_N26
\L1|count~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|count~13_combout\ = (\L2|Mux0~1_combout\) # ((\L1|Add0~0_combout\ & ((\L1|LessThan0~0_combout\) # (\L1|cnt:count[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux0~1_combout\,
	datab => \L1|LessThan0~0_combout\,
	datac => \L1|cnt:count[4]~q\,
	datad => \L1|Add0~0_combout\,
	combout => \L1|count~13_combout\);

-- Location: FF_X24_Y26_N27
\L1|cnt:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L1|count~13_combout\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|cnt:count[0]~q\);

-- Location: LCCOMB_X24_Y26_N0
\L1|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|LessThan0~0_combout\ = (\L1|cnt:count[0]~q\) # ((\L1|cnt:count[1]~q\) # ((\L1|cnt:count[3]~q\) # (\L1|cnt:count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|cnt:count[0]~q\,
	datab => \L1|cnt:count[1]~q\,
	datac => \L1|cnt:count[3]~q\,
	datad => \L1|cnt:count[2]~q\,
	combout => \L1|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y26_N30
\L1|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|LessThan0~1_combout\ = (\L1|LessThan0~0_combout\) # (\L1|cnt:count[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L1|LessThan0~0_combout\,
	datad => \L1|cnt:count[4]~q\,
	combout => \L1|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y26_N12
\L1|h~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|h~0_combout\ = (!\L2|Mux0~1_combout\ & (((!\L1|Add0~6_combout\ & !\L1|Add0~8_combout\)) # (!\L1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|LessThan0~1_combout\,
	datab => \L1|Add0~6_combout\,
	datac => \L2|Mux0~1_combout\,
	datad => \L1|Add0~8_combout\,
	combout => \L1|h~0_combout\);

-- Location: FF_X23_Y26_N13
\L1|h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L1|h~0_combout\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|h~q\);

-- Location: LCCOMB_X22_Y26_N24
\L2|Mux3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux3~5_combout\ = (\L2|state\(0) & (((\L2|state\(3))))) # (!\L2|state\(0) & (\en~input_o\ & (!\L2|state\(3) & !\ser_in~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \L2|state\(0),
	datac => \L2|state\(3),
	datad => \ser_in~input_o\,
	combout => \L2|Mux3~5_combout\);

-- Location: LCCOMB_X22_Y26_N18
\L2|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux6~0_combout\ = (\L2|state\(3)) # (\L2|state\(2) $ (\L2|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|state\(2),
	datab => \L2|Mux5~1_combout\,
	datad => \L2|state\(3),
	combout => \L2|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y26_N10
\L2|next_state[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|next_state\(2) = (GLOBAL(\L2|Mux4~0clkctrl_outclk\) & ((\L2|next_state\(2)))) # (!GLOBAL(\L2|Mux4~0clkctrl_outclk\) & (!\L2|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L2|Mux6~0_combout\,
	datac => \L2|next_state\(2),
	datad => \L2|Mux4~0clkctrl_outclk\,
	combout => \L2|next_state\(2));

-- Location: FF_X22_Y26_N11
\L2|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L2|next_state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|state\(2));

-- Location: LCCOMB_X22_Y26_N26
\L2|Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux1~4_combout\ = \L2|state\(3) $ (((\L2|state\(1)) # (\L2|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|state\(1),
	datac => \L2|state\(3),
	datad => \L2|state\(2),
	combout => \L2|Mux1~4_combout\);

-- Location: LCCOMB_X23_Y26_N22
\L2|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux3~2_combout\ = (\ser_in~input_o\) # (\L1|h~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ser_in~input_o\,
	datad => \L1|h~q\,
	combout => \L2|Mux3~2_combout\);

-- Location: LCCOMB_X22_Y26_N28
\L2|Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux3~3_combout\ = (\en~input_o\ & ((\L2|Mux1~4_combout\ & ((\L1|f~q\))) # (!\L2|Mux1~4_combout\ & (\L2|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \L2|Mux3~2_combout\,
	datac => \L2|Mux1~4_combout\,
	datad => \L1|f~q\,
	combout => \L2|Mux3~3_combout\);

-- Location: LCCOMB_X22_Y26_N4
\L2|Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux3~4_combout\ = (\L2|state\(0) & (!\L2|Mux3~3_combout\ & ((\L2|Mux1~4_combout\) # (!\L2|Mux3~5_combout\)))) # (!\L2|state\(0) & ((\L2|Mux1~4_combout\ & ((\L2|Mux3~3_combout\))) # (!\L2|Mux1~4_combout\ & (\L2|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux3~5_combout\,
	datab => \L2|state\(0),
	datac => \L2|Mux1~4_combout\,
	datad => \L2|Mux3~3_combout\,
	combout => \L2|Mux3~4_combout\);

-- Location: LCCOMB_X22_Y26_N14
\L2|next_state[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|next_state\(0) = (GLOBAL(\L2|Mux4~0clkctrl_outclk\) & (\L2|next_state\(0))) # (!GLOBAL(\L2|Mux4~0clkctrl_outclk\) & ((\L2|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L2|next_state\(0),
	datac => \L2|Mux3~4_combout\,
	datad => \L2|Mux4~0clkctrl_outclk\,
	combout => \L2|next_state\(0));

-- Location: FF_X22_Y26_N19
\L2|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \L2|next_state\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|state\(0));

-- Location: LCCOMB_X22_Y26_N20
\L2|Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux5~1_combout\ = (((!\L2|state\(1)) # (!\L1|f~q\)) # (!\en~input_o\)) # (!\L2|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|state\(0),
	datab => \en~input_o\,
	datac => \L1|f~q\,
	datad => \L2|state\(1),
	combout => \L2|Mux5~1_combout\);

-- Location: LCCOMB_X22_Y26_N16
\L2|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux7~0_combout\ = ((!\L2|state\(0) & ((!\L1|f~q\) # (!\en~input_o\)))) # (!\L2|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \L2|state\(0),
	datac => \L1|f~q\,
	datad => \L2|state\(1),
	combout => \L2|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y26_N2
\L2|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux7~1_combout\ = (\L2|state\(3) & (((\L2|Mux7~0_combout\ & !\L2|state\(2))))) # (!\L2|state\(3) & (!\L2|Mux5~1_combout\ & ((\L2|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|state\(3),
	datab => \L2|Mux5~1_combout\,
	datac => \L2|Mux7~0_combout\,
	datad => \L2|state\(2),
	combout => \L2|Mux7~1_combout\);

-- Location: LCCOMB_X22_Y26_N8
\L2|next_state[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|next_state\(3) = (GLOBAL(\L2|Mux4~0clkctrl_outclk\) & (\L2|next_state\(3))) # (!GLOBAL(\L2|Mux4~0clkctrl_outclk\) & ((\L2|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|next_state\(3),
	datac => \L2|Mux7~1_combout\,
	datad => \L2|Mux4~0clkctrl_outclk\,
	combout => \L2|next_state\(3));

-- Location: FF_X22_Y26_N9
\L2|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L2|next_state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|state\(3));

-- Location: LCCOMB_X23_Y26_N0
\L2|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux4~0_combout\ = (\L2|state\(3) & ((\L2|state\(2)) # ((\L2|state\(1) & \L2|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|state\(3),
	datab => \L2|state\(2),
	datac => \L2|state\(1),
	datad => \L2|state\(0),
	combout => \L2|Mux4~0_combout\);

-- Location: CLKCTRL_G11
\L2|Mux4~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \L2|Mux4~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \L2|Mux4~0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y26_N30
\L2|Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux5~2_combout\ = (\L2|state\(3) & (\L2|state\(1) & ((\L2|state\(0)) # (\L2|state\(2))))) # (!\L2|state\(3) & (((\L2|state\(0) & !\L2|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|state\(1),
	datab => \L2|state\(0),
	datac => \L2|state\(3),
	datad => \L2|state\(2),
	combout => \L2|Mux5~2_combout\);

-- Location: LCCOMB_X22_Y26_N22
\L2|Mux5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux5~4_combout\ = (\L2|state\(3) & ((\L2|state\(1)) # ((!\L2|state\(2) & \L2|state\(0))))) # (!\L2|state\(3) & (\L2|state\(2) & (\L2|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|state\(2),
	datab => \L2|state\(0),
	datac => \L2|state\(3),
	datad => \L2|state\(1),
	combout => \L2|Mux5~4_combout\);

-- Location: LCCOMB_X23_Y26_N2
\L2|Mux5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux5~3_combout\ = (\L2|state\(1) & (((\L2|process_1~0_combout\)))) # (!\L2|state\(1) & (\L1|h~q\ & (!\ser_in~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|h~q\,
	datab => \ser_in~input_o\,
	datac => \L2|state\(1),
	datad => \L2|process_1~0_combout\,
	combout => \L2|Mux5~3_combout\);

-- Location: LCCOMB_X22_Y26_N12
\L2|Mux5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux5~5_combout\ = (\L2|Mux5~4_combout\ & (\L1|f~q\ & (!\L2|Mux5~2_combout\))) # (!\L2|Mux5~4_combout\ & (((\L2|Mux5~2_combout\ & \L2|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|f~q\,
	datab => \L2|Mux5~4_combout\,
	datac => \L2|Mux5~2_combout\,
	datad => \L2|Mux5~3_combout\,
	combout => \L2|Mux5~5_combout\);

-- Location: LCCOMB_X22_Y26_N0
\L2|Mux5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux5~6_combout\ = (\L2|state\(1) & ((\L2|Mux5~2_combout\ & ((\L2|Mux5~5_combout\))) # (!\L2|Mux5~2_combout\ & ((!\L2|Mux5~5_combout\) # (!\en~input_o\))))) # (!\L2|state\(1) & (\en~input_o\ & ((\L2|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|state\(1),
	datab => \en~input_o\,
	datac => \L2|Mux5~2_combout\,
	datad => \L2|Mux5~5_combout\,
	combout => \L2|Mux5~6_combout\);

-- Location: LCCOMB_X22_Y26_N6
\L2|next_state[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|next_state\(1) = (GLOBAL(\L2|Mux4~0clkctrl_outclk\) & (\L2|next_state\(1))) # (!GLOBAL(\L2|Mux4~0clkctrl_outclk\) & ((\L2|Mux5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L2|next_state\(1),
	datac => \L2|Mux4~0clkctrl_outclk\,
	datad => \L2|Mux5~6_combout\,
	combout => \L2|next_state\(1));

-- Location: FF_X22_Y26_N7
\L2|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \L2|next_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|state\(1));

-- Location: LCCOMB_X23_Y26_N6
\L2|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux0~0_combout\ = (!\L2|state\(1) & (!\L2|state\(2) & ((\L1|h~q\) # (!\L2|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|h~q\,
	datab => \L2|state\(1),
	datac => \L2|state\(0),
	datad => \L2|state\(2),
	combout => \L2|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y26_N10
\L2|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux0~1_combout\ = (\L2|Mux1~4_combout\ & (!\L2|process_1~0_combout\)) # (!\L2|Mux1~4_combout\ & (((\L2|process_1~1_combout\ & \L2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|process_1~0_combout\,
	datab => \L2|process_1~1_combout\,
	datac => \L2|Mux0~0_combout\,
	datad => \L2|Mux1~4_combout\,
	combout => \L2|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y26_N4
\L1|count~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|count~10_combout\ = (\L1|Add0~0_combout\ & ((\L1|cnt:count[4]~q\) # (\L1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|cnt:count[4]~q\,
	datab => \L1|LessThan0~0_combout\,
	datad => \L1|Add0~0_combout\,
	combout => \L1|count~10_combout\);

-- Location: LCCOMB_X24_Y26_N14
\L1|f~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|f~0_combout\ = (\L1|cnt:count[4]~q\ & (!\L1|Add0~2_combout\ & ((!\L1|Add0~4_combout\)))) # (!\L1|cnt:count[4]~q\ & (((!\L1|Add0~2_combout\ & !\L1|Add0~4_combout\)) # (!\L1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|cnt:count[4]~q\,
	datab => \L1|Add0~2_combout\,
	datac => \L1|LessThan0~0_combout\,
	datad => \L1|Add0~4_combout\,
	combout => \L1|f~0_combout\);

-- Location: LCCOMB_X24_Y26_N2
\L1|f~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|f~1_combout\ = (\L1|cnt:count[4]~q\ & (((!\L1|Add0~6_combout\ & !\L1|Add0~8_combout\)))) # (!\L1|cnt:count[4]~q\ & (((!\L1|Add0~6_combout\ & !\L1|Add0~8_combout\)) # (!\L1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|cnt:count[4]~q\,
	datab => \L1|LessThan0~0_combout\,
	datac => \L1|Add0~6_combout\,
	datad => \L1|Add0~8_combout\,
	combout => \L1|f~1_combout\);

-- Location: LCCOMB_X24_Y26_N28
\L1|f~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L1|f~2_combout\ = (!\L2|Mux0~1_combout\ & (!\L1|count~10_combout\ & (\L1|f~0_combout\ & \L1|f~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux0~1_combout\,
	datab => \L1|count~10_combout\,
	datac => \L1|f~0_combout\,
	datad => \L1|f~1_combout\,
	combout => \L1|f~2_combout\);

-- Location: FF_X24_Y26_N29
\L1|f\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L1|f~2_combout\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|f~q\);

-- Location: LCCOMB_X21_Y26_N24
\L2|Mux1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux1~5_combout\ = (\L1|f~q\ & (\en~input_o\ & \L2|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|f~q\,
	datab => \en~input_o\,
	datad => \L2|Mux1~4_combout\,
	combout => \L2|Mux1~5_combout\);

-- Location: FF_X21_Y26_N5
\L3|shift:loc_dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L3|shift:loc_dout[7]~feeder_combout\,
	ena => \L2|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|shift:loc_dout[7]~q\);

-- Location: LCCOMB_X21_Y26_N10
\L3|shift:loc_dout[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L3|shift:loc_dout[6]~feeder_combout\ = \L3|shift:loc_dout[7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L3|shift:loc_dout[7]~q\,
	combout => \L3|shift:loc_dout[6]~feeder_combout\);

-- Location: FF_X21_Y26_N11
\L3|shift:loc_dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L3|shift:loc_dout[6]~feeder_combout\,
	ena => \L2|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|shift:loc_dout[6]~q\);

-- Location: LCCOMB_X21_Y26_N8
\L3|shift:loc_dout[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L3|shift:loc_dout[5]~feeder_combout\ = \L3|shift:loc_dout[6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \L3|shift:loc_dout[6]~q\,
	combout => \L3|shift:loc_dout[5]~feeder_combout\);

-- Location: FF_X21_Y26_N9
\L3|shift:loc_dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L3|shift:loc_dout[5]~feeder_combout\,
	ena => \L2|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|shift:loc_dout[5]~q\);

-- Location: LCCOMB_X21_Y26_N16
\L3|shift:loc_dout[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L3|shift:loc_dout[4]~feeder_combout\ = \L3|shift:loc_dout[5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L3|shift:loc_dout[5]~q\,
	combout => \L3|shift:loc_dout[4]~feeder_combout\);

-- Location: FF_X21_Y26_N17
\L3|shift:loc_dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L3|shift:loc_dout[4]~feeder_combout\,
	ena => \L2|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|shift:loc_dout[4]~q\);

-- Location: LCCOMB_X21_Y26_N12
\L3|shift:loc_dout[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L3|shift:loc_dout[3]~feeder_combout\ = \L3|shift:loc_dout[4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \L3|shift:loc_dout[4]~q\,
	combout => \L3|shift:loc_dout[3]~feeder_combout\);

-- Location: FF_X21_Y26_N13
\L3|shift:loc_dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L3|shift:loc_dout[3]~feeder_combout\,
	ena => \L2|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|shift:loc_dout[3]~q\);

-- Location: LCCOMB_X21_Y26_N28
\L3|shift:loc_dout[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L3|shift:loc_dout[2]~feeder_combout\ = \L3|shift:loc_dout[3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \L3|shift:loc_dout[3]~q\,
	combout => \L3|shift:loc_dout[2]~feeder_combout\);

-- Location: FF_X21_Y26_N29
\L3|shift:loc_dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L3|shift:loc_dout[2]~feeder_combout\,
	ena => \L2|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|shift:loc_dout[2]~q\);

-- Location: LCCOMB_X21_Y26_N14
\L3|shift:loc_dout[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L3|shift:loc_dout[1]~feeder_combout\ = \L3|shift:loc_dout[2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \L3|shift:loc_dout[2]~q\,
	combout => \L3|shift:loc_dout[1]~feeder_combout\);

-- Location: FF_X21_Y26_N15
\L3|shift:loc_dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L3|shift:loc_dout[1]~feeder_combout\,
	ena => \L2|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|shift:loc_dout[1]~q\);

-- Location: FF_X21_Y26_N25
\L3|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \L3|shift:loc_dout[1]~q\,
	sload => VCC,
	ena => \L2|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|dout\(0));

-- Location: LCCOMB_X21_Y26_N30
\L3|dout[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L3|dout[1]~feeder_combout\ = \L3|shift:loc_dout[2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \L3|shift:loc_dout[2]~q\,
	combout => \L3|dout[1]~feeder_combout\);

-- Location: FF_X21_Y26_N31
\L3|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L3|dout[1]~feeder_combout\,
	ena => \L2|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|dout\(1));

-- Location: LCCOMB_X21_Y26_N0
\L3|dout[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L3|dout[2]~feeder_combout\ = \L3|shift:loc_dout[3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \L3|shift:loc_dout[3]~q\,
	combout => \L3|dout[2]~feeder_combout\);

-- Location: FF_X21_Y26_N1
\L3|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L3|dout[2]~feeder_combout\,
	ena => \L2|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|dout\(2));

-- Location: LCCOMB_X21_Y26_N18
\L3|dout[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L3|dout[3]~feeder_combout\ = \L3|shift:loc_dout[4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \L3|shift:loc_dout[4]~q\,
	combout => \L3|dout[3]~feeder_combout\);

-- Location: FF_X21_Y26_N19
\L3|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L3|dout[3]~feeder_combout\,
	ena => \L2|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|dout\(3));

-- Location: LCCOMB_X21_Y26_N2
\L3|dout[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L3|dout[4]~feeder_combout\ = \L3|shift:loc_dout[5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L3|shift:loc_dout[5]~q\,
	combout => \L3|dout[4]~feeder_combout\);

-- Location: FF_X21_Y26_N3
\L3|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L3|dout[4]~feeder_combout\,
	ena => \L2|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|dout\(4));

-- Location: LCCOMB_X21_Y26_N6
\L3|dout[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L3|dout[5]~feeder_combout\ = \L3|shift:loc_dout[6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \L3|shift:loc_dout[6]~q\,
	combout => \L3|dout[5]~feeder_combout\);

-- Location: FF_X21_Y26_N7
\L3|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L3|dout[5]~feeder_combout\,
	ena => \L2|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|dout\(5));

-- Location: LCCOMB_X21_Y26_N22
\L3|dout[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L3|dout[6]~feeder_combout\ = \L3|shift:loc_dout[7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L3|shift:loc_dout[7]~q\,
	combout => \L3|dout[6]~feeder_combout\);

-- Location: FF_X21_Y26_N23
\L3|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L3|dout[6]~feeder_combout\,
	ena => \L2|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|dout\(6));

-- Location: LCCOMB_X21_Y26_N20
\L3|dout[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L3|dout[7]~feeder_combout\ = \ser_in~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ser_in~input_o\,
	combout => \L3|dout[7]~feeder_combout\);

-- Location: FF_X21_Y26_N21
\L3|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L3|dout[7]~feeder_combout\,
	ena => \L2|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|dout\(7));

-- Location: LCCOMB_X23_Y26_N20
\L2|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux5~0_combout\ = (!\L2|state\(2) & \L2|state\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|state\(2),
	datad => \L2|state\(3),
	combout => \L2|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y26_N10
\L2|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \L2|Mux2~0_combout\ = (\L2|process_1~0_combout\) # (((\L2|state\(0)) # (!\L2|Mux5~0_combout\)) # (!\L2|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|process_1~0_combout\,
	datab => \L2|state\(1),
	datac => \L2|state\(0),
	datad => \L2|Mux5~0_combout\,
	combout => \L2|Mux2~0_combout\);

ww_dout(0) <= \dout[0]~output_o\;

ww_dout(1) <= \dout[1]~output_o\;

ww_dout(2) <= \dout[2]~output_o\;

ww_dout(3) <= \dout[3]~output_o\;

ww_dout(4) <= \dout[4]~output_o\;

ww_dout(5) <= \dout[5]~output_o\;

ww_dout(6) <= \dout[6]~output_o\;

ww_dout(7) <= \dout[7]~output_o\;

ww_en_out <= \en_out~output_o\;
END structure;


