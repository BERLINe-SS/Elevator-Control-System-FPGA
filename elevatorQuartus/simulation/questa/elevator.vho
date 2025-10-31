-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "10/30/2025 12:10:01"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	elevator_system IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	en : IN std_logic;
	bn : IN std_logic_vector(3 DOWNTO 0);
	mv_up : BUFFER std_logic;
	mv_dn : BUFFER std_logic;
	door_open : BUFFER std_logic;
	ssd : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END elevator_system;

-- Design Ports Information
-- mv_up	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mv_dn	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- door_open	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bn[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bn[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bn[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bn[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF elevator_system IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_bn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mv_up : std_logic;
SIGNAL ww_mv_dn : std_logic;
SIGNAL ww_door_open : std_logic;
SIGNAL ww_ssd : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \ctrl|state_reg.opendoor_state~DUPLICATE_q\ : std_logic;
SIGNAL \ctrl|Selector5~0_combout\ : std_logic;
SIGNAL \ctrl|Add0~9_sumout\ : std_logic;
SIGNAL \ctrl|Add0~10\ : std_logic;
SIGNAL \ctrl|Add0~21_sumout\ : std_logic;
SIGNAL \ctrl|clk_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ctrl|Add0~22\ : std_logic;
SIGNAL \ctrl|Add0~5_sumout\ : std_logic;
SIGNAL \ctrl|clk_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ctrl|Add0~6\ : std_logic;
SIGNAL \ctrl|Add0~1_sumout\ : std_logic;
SIGNAL \ctrl|Add0~2\ : std_logic;
SIGNAL \ctrl|Add0~101_sumout\ : std_logic;
SIGNAL \ctrl|Add0~102\ : std_logic;
SIGNAL \ctrl|Add0~93_sumout\ : std_logic;
SIGNAL \ctrl|Add0~94\ : std_logic;
SIGNAL \ctrl|Add0~89_sumout\ : std_logic;
SIGNAL \ctrl|Add0~90\ : std_logic;
SIGNAL \ctrl|Add0~85_sumout\ : std_logic;
SIGNAL \ctrl|Add0~86\ : std_logic;
SIGNAL \ctrl|Add0~81_sumout\ : std_logic;
SIGNAL \ctrl|Add0~82\ : std_logic;
SIGNAL \ctrl|Add0~77_sumout\ : std_logic;
SIGNAL \ctrl|Add0~78\ : std_logic;
SIGNAL \ctrl|Add0~73_sumout\ : std_logic;
SIGNAL \ctrl|Add0~74\ : std_logic;
SIGNAL \ctrl|Add0~69_sumout\ : std_logic;
SIGNAL \ctrl|Add0~70\ : std_logic;
SIGNAL \ctrl|Add0~65_sumout\ : std_logic;
SIGNAL \ctrl|clk_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ctrl|Add0~66\ : std_logic;
SIGNAL \ctrl|Add0~61_sumout\ : std_logic;
SIGNAL \ctrl|Add0~62\ : std_logic;
SIGNAL \ctrl|Add0~57_sumout\ : std_logic;
SIGNAL \ctrl|Add0~58\ : std_logic;
SIGNAL \ctrl|Add0~53_sumout\ : std_logic;
SIGNAL \ctrl|Add0~54\ : std_logic;
SIGNAL \ctrl|Add0~37_sumout\ : std_logic;
SIGNAL \ctrl|Add0~38\ : std_logic;
SIGNAL \ctrl|Add0~49_sumout\ : std_logic;
SIGNAL \ctrl|Add0~50\ : std_logic;
SIGNAL \ctrl|Add0~45_sumout\ : std_logic;
SIGNAL \ctrl|Add0~46\ : std_logic;
SIGNAL \ctrl|Add0~41_sumout\ : std_logic;
SIGNAL \ctrl|Add0~42\ : std_logic;
SIGNAL \ctrl|Add0~33_sumout\ : std_logic;
SIGNAL \ctrl|Add0~34\ : std_logic;
SIGNAL \ctrl|Add0~29_sumout\ : std_logic;
SIGNAL \ctrl|Add0~30\ : std_logic;
SIGNAL \ctrl|Add0~25_sumout\ : std_logic;
SIGNAL \ctrl|Add0~26\ : std_logic;
SIGNAL \ctrl|Add0~97_sumout\ : std_logic;
SIGNAL \ctrl|Add0~98\ : std_logic;
SIGNAL \ctrl|Add0~17_sumout\ : std_logic;
SIGNAL \ctrl|Add0~18\ : std_logic;
SIGNAL \ctrl|Add0~13_sumout\ : std_logic;
SIGNAL \ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \ctrl|Equal0~3_combout\ : std_logic;
SIGNAL \ctrl|Equal0~1_combout\ : std_logic;
SIGNAL \ctrl|Equal0~2_combout\ : std_logic;
SIGNAL \ctrl|Equal0~4_combout\ : std_logic;
SIGNAL \ctrl|clk_1sec_enable~q\ : std_logic;
SIGNAL \ctrl|Selector2~5_combout\ : std_logic;
SIGNAL \ctrl|Selector5~1_combout\ : std_logic;
SIGNAL \ctrl|state_reg.opendoor_state~q\ : std_logic;
SIGNAL \ctrl|state_reg.down_state~DUPLICATE_q\ : std_logic;
SIGNAL \ctrl|state_out[0]~0_combout\ : std_logic;
SIGNAL \req_resolver|Equal1~1_combout\ : std_logic;
SIGNAL \req_resolver|last_direction~0_combout\ : std_logic;
SIGNAL \req_resolver|last_direction~DUPLICATE_q\ : std_logic;
SIGNAL \ctrl|state_reg.up_state~q\ : std_logic;
SIGNAL \req_resolver|Mux2~0_combout\ : std_logic;
SIGNAL \ctrl|curr_floor[3]~0_combout\ : std_logic;
SIGNAL \ctrl|Add2~0_combout\ : std_logic;
SIGNAL \ctrl|curr_floor[1]~1_combout\ : std_logic;
SIGNAL \ctrl|Add2~2_combout\ : std_logic;
SIGNAL \ctrl|curr_floor[3]~3_combout\ : std_logic;
SIGNAL \req_resolver|Equal1~0_combout\ : std_logic;
SIGNAL \bn[1]~input_o\ : std_logic;
SIGNAL \bn[2]~input_o\ : std_logic;
SIGNAL \req_resolver|request_queue~3_combout\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \bn[0]~input_o\ : std_logic;
SIGNAL \bn[3]~input_o\ : std_logic;
SIGNAL \req_resolver|en_prev~0_combout\ : std_logic;
SIGNAL \req_resolver|en_prev~q\ : std_logic;
SIGNAL \req_resolver|request_queue~2_combout\ : std_logic;
SIGNAL \req_resolver|Decoder1~1_combout\ : std_logic;
SIGNAL \req_resolver|request_queue~4_combout\ : std_logic;
SIGNAL \req_resolver|request_queue~7_combout\ : std_logic;
SIGNAL \req_resolver|Decoder1~2_combout\ : std_logic;
SIGNAL \req_resolver|request_queue~8_combout\ : std_logic;
SIGNAL \req_resolver|Decoder1~4_combout\ : std_logic;
SIGNAL \req_resolver|request_queue~13_combout\ : std_logic;
SIGNAL \req_resolver|has_request_above~2_combout\ : std_logic;
SIGNAL \req_resolver|request_queue~9_combout\ : std_logic;
SIGNAL \req_resolver|Decoder1~3_combout\ : std_logic;
SIGNAL \req_resolver|request_queue~10_combout\ : std_logic;
SIGNAL \req_resolver|request_queue~14_combout\ : std_logic;
SIGNAL \req_resolver|request_queue~15_combout\ : std_logic;
SIGNAL \req_resolver|request_queue~16_combout\ : std_logic;
SIGNAL \req_resolver|has_request_above~4_combout\ : std_logic;
SIGNAL \req_resolver|request_queue~5_combout\ : std_logic;
SIGNAL \ssd_disp|Mux4~1_combout\ : std_logic;
SIGNAL \req_resolver|request_queue~6_combout\ : std_logic;
SIGNAL \req_resolver|request_queue~11_combout\ : std_logic;
SIGNAL \req_resolver|request_queue~12_combout\ : std_logic;
SIGNAL \req_resolver|has_request_above~3_combout\ : std_logic;
SIGNAL \req_resolver|has_request_above~1_combout\ : std_logic;
SIGNAL \req_resolver|has_request_above~0_combout\ : std_logic;
SIGNAL \req_resolver|request_queue~0_combout\ : std_logic;
SIGNAL \req_resolver|request_queue~1_combout\ : std_logic;
SIGNAL \req_resolver|Mux0~0_combout\ : std_logic;
SIGNAL \req_resolver|Mux0~2_combout\ : std_logic;
SIGNAL \req_resolver|Mux0~1_combout\ : std_logic;
SIGNAL \req_resolver|Mux0~3_combout\ : std_logic;
SIGNAL \req_resolver|has_request_below~2_combout\ : std_logic;
SIGNAL \req_resolver|has_request_below~0_combout\ : std_logic;
SIGNAL \req_resolver|has_request_below~4_combout\ : std_logic;
SIGNAL \req_resolver|has_request_below~3_combout\ : std_logic;
SIGNAL \req_resolver|has_request_below~1_combout\ : std_logic;
SIGNAL \req_resolver|has_request_below~5_combout\ : std_logic;
SIGNAL \req_resolver|Mux2~1_combout\ : std_logic;
SIGNAL \req_resolver|last_direction~q\ : std_logic;
SIGNAL \req_resolver|Mux3~0_combout\ : std_logic;
SIGNAL \req_resolver|Mux3~1_combout\ : std_logic;
SIGNAL \ctrl|timer[1]~0_combout\ : std_logic;
SIGNAL \ctrl|timer[0]~2_combout\ : std_logic;
SIGNAL \ctrl|timer[1]~1_combout\ : std_logic;
SIGNAL \ctrl|timer[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ctrl|timer[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ctrl|process_1~0_combout\ : std_logic;
SIGNAL \ctrl|Selector2~2_combout\ : std_logic;
SIGNAL \ctrl|Selector2~0_combout\ : std_logic;
SIGNAL \ctrl|Selector2~3_combout\ : std_logic;
SIGNAL \ctrl|state_reg.idle_state~q\ : std_logic;
SIGNAL \ctrl|Selector2~6_combout\ : std_logic;
SIGNAL \ctrl|Selector2~7_combout\ : std_logic;
SIGNAL \ctrl|process_1~2_combout\ : std_logic;
SIGNAL \ctrl|Selector2~8_combout\ : std_logic;
SIGNAL \ctrl|state_reg.idle_state~DUPLICATE_q\ : std_logic;
SIGNAL \ctrl|Selector2~4_combout\ : std_logic;
SIGNAL \ctrl|Selector4~0_combout\ : std_logic;
SIGNAL \ctrl|Selector2~1_combout\ : std_logic;
SIGNAL \ctrl|Selector4~1_combout\ : std_logic;
SIGNAL \ctrl|state_reg.down_state~q\ : std_logic;
SIGNAL \ctrl|Selector9~0_combout\ : std_logic;
SIGNAL \req_resolver|Decoder1~0_combout\ : std_logic;
SIGNAL \ctrl|Add2~1_combout\ : std_logic;
SIGNAL \ctrl|curr_floor[2]~2_combout\ : std_logic;
SIGNAL \req_resolver|Mux1~0_combout\ : std_logic;
SIGNAL \ctrl|process_1~1_combout\ : std_logic;
SIGNAL \ctrl|Selector3~0_combout\ : std_logic;
SIGNAL \ctrl|Selector3~1_combout\ : std_logic;
SIGNAL \ctrl|Selector3~2_combout\ : std_logic;
SIGNAL \ctrl|state_reg.up_state~DUPLICATE_q\ : std_logic;
SIGNAL \ssd_disp|Mux6~0_combout\ : std_logic;
SIGNAL \ssd_disp|Mux5~0_combout\ : std_logic;
SIGNAL \ssd_disp|Mux4~0_combout\ : std_logic;
SIGNAL \ssd_disp|Mux3~0_combout\ : std_logic;
SIGNAL \ssd_disp|Mux2~0_combout\ : std_logic;
SIGNAL \ssd_disp|Mux1~0_combout\ : std_logic;
SIGNAL \ssd_disp|Mux0~0_combout\ : std_logic;
SIGNAL \ctrl|clk_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ctrl|curr_floor\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \req_resolver|request_queue\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ctrl|timer\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ctrl|ALT_INV_clk_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ctrl|ALT_INV_state_reg.opendoor_state~q\ : std_logic;
SIGNAL \ctrl|ALT_INV_curr_floor\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ctrl|ALT_INV_state_reg.down_state~q\ : std_logic;
SIGNAL \req_resolver|ALT_INV_request_queue\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \req_resolver|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_state_reg.up_state~q\ : std_logic;
SIGNAL \ssd_disp|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_en_prev~q\ : std_logic;
SIGNAL \req_resolver|ALT_INV_request_queue~2_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_request_queue~5_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_Decoder1~3_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_Selector2~3_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_state_out[0]~0_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_process_1~1_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_Decoder1~1_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_has_request_below~1_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_has_request_below~4_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_timer\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ctrl|ALT_INV_Selector2~2_combout\ : std_logic;
SIGNAL \ssd_disp|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_last_direction~q\ : std_logic;
SIGNAL \ctrl|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_Add2~2_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_has_request_above~0_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_Selector2~5_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_has_request_below~0_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_curr_floor[3]~0_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_request_queue~0_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_request_queue~3_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_request_queue~7_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_Decoder1~0_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_Decoder1~2_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_request_queue~9_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_state_reg.idle_state~q\ : std_logic;
SIGNAL \ctrl|ALT_INV_Add2~1_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_clk_1sec_enable~q\ : std_logic;
SIGNAL \req_resolver|ALT_INV_has_request_below~3_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_Selector2~4_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_has_request_below~2_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_process_1~2_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_has_request_above~1_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_has_request_below~5_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_state_reg.down_state~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_bn[3]~input_o\ : std_logic;
SIGNAL \ctrl|ALT_INV_clk_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ctrl|ALT_INV_clk_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ctrl|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_state_reg.up_state~DUPLICATE_q\ : std_logic;
SIGNAL \ctrl|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_en~input_o\ : std_logic;
SIGNAL \ctrl|ALT_INV_state_reg.opendoor_state~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_bn[1]~input_o\ : std_logic;
SIGNAL \req_resolver|ALT_INV_request_queue~14_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_state_reg.idle_state~DUPLICATE_q\ : std_logic;
SIGNAL \ctrl|ALT_INV_Selector2~6_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_has_request_above~2_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_Selector2~7_combout\ : std_logic;
SIGNAL \ALT_INV_bn[0]~input_o\ : std_logic;
SIGNAL \req_resolver|ALT_INV_Decoder1~4_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_timer[1]~0_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_timer[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ctrl|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_last_direction~DUPLICATE_q\ : std_logic;
SIGNAL \ctrl|ALT_INV_clk_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \req_resolver|ALT_INV_has_request_above~3_combout\ : std_logic;
SIGNAL \req_resolver|ALT_INV_has_request_above~4_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_timer[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_bn[2]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_en <= en;
ww_bn <= bn;
mv_up <= ww_mv_up;
mv_dn <= ww_mv_dn;
door_open <= ww_door_open;
ssd <= ww_ssd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ctrl|ALT_INV_clk_counter\(1) <= NOT \ctrl|clk_counter\(1);
\ctrl|ALT_INV_clk_counter\(17) <= NOT \ctrl|clk_counter\(17);
\ctrl|ALT_INV_clk_counter\(8) <= NOT \ctrl|clk_counter\(8);
\ctrl|ALT_INV_clk_counter\(7) <= NOT \ctrl|clk_counter\(7);
\ctrl|ALT_INV_clk_counter\(5) <= NOT \ctrl|clk_counter\(5);
\ctrl|ALT_INV_clk_counter\(13) <= NOT \ctrl|clk_counter\(13);
\ctrl|ALT_INV_clk_counter\(24) <= NOT \ctrl|clk_counter\(24);
\ctrl|ALT_INV_clk_counter\(25) <= NOT \ctrl|clk_counter\(25);
\ctrl|ALT_INV_clk_counter\(21) <= NOT \ctrl|clk_counter\(21);
\ctrl|ALT_INV_clk_counter\(22) <= NOT \ctrl|clk_counter\(22);
\ctrl|ALT_INV_clk_counter\(6) <= NOT \ctrl|clk_counter\(6);
\ctrl|ALT_INV_clk_counter\(3) <= NOT \ctrl|clk_counter\(3);
\ctrl|ALT_INV_clk_counter\(9) <= NOT \ctrl|clk_counter\(9);
\ctrl|ALT_INV_clk_counter\(2) <= NOT \ctrl|clk_counter\(2);
\ctrl|ALT_INV_clk_counter\(11) <= NOT \ctrl|clk_counter\(11);
\ctrl|ALT_INV_clk_counter\(4) <= NOT \ctrl|clk_counter\(4);
\ctrl|ALT_INV_clk_counter\(18) <= NOT \ctrl|clk_counter\(18);
\ctrl|ALT_INV_clk_counter\(14) <= NOT \ctrl|clk_counter\(14);
\ctrl|ALT_INV_clk_counter\(23) <= NOT \ctrl|clk_counter\(23);
\ctrl|ALT_INV_clk_counter\(0) <= NOT \ctrl|clk_counter\(0);
\ctrl|ALT_INV_clk_counter\(12) <= NOT \ctrl|clk_counter\(12);
\ctrl|ALT_INV_clk_counter\(15) <= NOT \ctrl|clk_counter\(15);
\ctrl|ALT_INV_clk_counter\(16) <= NOT \ctrl|clk_counter\(16);
\ctrl|ALT_INV_clk_counter\(19) <= NOT \ctrl|clk_counter\(19);
\ctrl|ALT_INV_clk_counter\(10) <= NOT \ctrl|clk_counter\(10);
\ctrl|ALT_INV_clk_counter\(20) <= NOT \ctrl|clk_counter\(20);
\ctrl|ALT_INV_state_reg.opendoor_state~q\ <= NOT \ctrl|state_reg.opendoor_state~q\;
\ctrl|ALT_INV_curr_floor\(2) <= NOT \ctrl|curr_floor\(2);
\ctrl|ALT_INV_state_reg.down_state~q\ <= NOT \ctrl|state_reg.down_state~q\;
\req_resolver|ALT_INV_request_queue\(0) <= NOT \req_resolver|request_queue\(0);
\req_resolver|ALT_INV_request_queue\(2) <= NOT \req_resolver|request_queue\(2);
\req_resolver|ALT_INV_request_queue\(3) <= NOT \req_resolver|request_queue\(3);
\req_resolver|ALT_INV_request_queue\(6) <= NOT \req_resolver|request_queue\(6);
\req_resolver|ALT_INV_request_queue\(7) <= NOT \req_resolver|request_queue\(7);
\req_resolver|ALT_INV_request_queue\(9) <= NOT \req_resolver|request_queue\(9);
\req_resolver|ALT_INV_request_queue\(8) <= NOT \req_resolver|request_queue\(8);
\req_resolver|ALT_INV_Mux0~2_combout\ <= NOT \req_resolver|Mux0~2_combout\;
\ctrl|ALT_INV_state_reg.up_state~q\ <= NOT \ctrl|state_reg.up_state~q\;
\ctrl|ALT_INV_curr_floor\(3) <= NOT \ctrl|curr_floor\(3);
\ssd_disp|ALT_INV_Mux0~0_combout\ <= NOT \ssd_disp|Mux0~0_combout\;
\req_resolver|ALT_INV_request_queue\(1) <= NOT \req_resolver|request_queue\(1);
\req_resolver|ALT_INV_Mux0~0_combout\ <= NOT \req_resolver|Mux0~0_combout\;
\req_resolver|ALT_INV_request_queue\(4) <= NOT \req_resolver|request_queue\(4);
\req_resolver|ALT_INV_request_queue\(5) <= NOT \req_resolver|request_queue\(5);
\req_resolver|ALT_INV_Mux0~1_combout\ <= NOT \req_resolver|Mux0~1_combout\;
\req_resolver|ALT_INV_Equal1~0_combout\ <= NOT \req_resolver|Equal1~0_combout\;
\ctrl|ALT_INV_curr_floor\(1) <= NOT \ctrl|curr_floor\(1);
\ctrl|ALT_INV_curr_floor\(0) <= NOT \ctrl|curr_floor\(0);
\req_resolver|ALT_INV_en_prev~q\ <= NOT \req_resolver|en_prev~q\;
\req_resolver|ALT_INV_request_queue~2_combout\ <= NOT \req_resolver|request_queue~2_combout\;
\req_resolver|ALT_INV_request_queue~5_combout\ <= NOT \req_resolver|request_queue~5_combout\;
\req_resolver|ALT_INV_Decoder1~3_combout\ <= NOT \req_resolver|Decoder1~3_combout\;
\ctrl|ALT_INV_process_1~0_combout\ <= NOT \ctrl|process_1~0_combout\;
\ctrl|ALT_INV_Selector2~3_combout\ <= NOT \ctrl|Selector2~3_combout\;
\ctrl|ALT_INV_Selector2~0_combout\ <= NOT \ctrl|Selector2~0_combout\;
\ctrl|ALT_INV_state_out[0]~0_combout\ <= NOT \ctrl|state_out[0]~0_combout\;
\req_resolver|ALT_INV_Mux0~3_combout\ <= NOT \req_resolver|Mux0~3_combout\;
\ctrl|ALT_INV_process_1~1_combout\ <= NOT \ctrl|process_1~1_combout\;
\req_resolver|ALT_INV_Decoder1~1_combout\ <= NOT \req_resolver|Decoder1~1_combout\;
\req_resolver|ALT_INV_has_request_below~1_combout\ <= NOT \req_resolver|has_request_below~1_combout\;
\req_resolver|ALT_INV_has_request_below~4_combout\ <= NOT \req_resolver|has_request_below~4_combout\;
\ctrl|ALT_INV_timer\(0) <= NOT \ctrl|timer\(0);
\ctrl|ALT_INV_Selector2~2_combout\ <= NOT \ctrl|Selector2~2_combout\;
\ssd_disp|ALT_INV_Mux4~1_combout\ <= NOT \ssd_disp|Mux4~1_combout\;
\req_resolver|ALT_INV_Mux2~1_combout\ <= NOT \req_resolver|Mux2~1_combout\;
\ctrl|ALT_INV_Selector2~1_combout\ <= NOT \ctrl|Selector2~1_combout\;
\req_resolver|ALT_INV_last_direction~q\ <= NOT \req_resolver|last_direction~q\;
\ctrl|ALT_INV_Selector5~0_combout\ <= NOT \ctrl|Selector5~0_combout\;
\ctrl|ALT_INV_Add2~2_combout\ <= NOT \ctrl|Add2~2_combout\;
\req_resolver|ALT_INV_has_request_above~0_combout\ <= NOT \req_resolver|has_request_above~0_combout\;
\ctrl|ALT_INV_Selector3~1_combout\ <= NOT \ctrl|Selector3~1_combout\;
\ctrl|ALT_INV_Selector2~5_combout\ <= NOT \ctrl|Selector2~5_combout\;
\req_resolver|ALT_INV_has_request_below~0_combout\ <= NOT \req_resolver|has_request_below~0_combout\;
\req_resolver|ALT_INV_Equal1~1_combout\ <= NOT \req_resolver|Equal1~1_combout\;
\req_resolver|ALT_INV_Mux3~0_combout\ <= NOT \req_resolver|Mux3~0_combout\;
\ctrl|ALT_INV_curr_floor[3]~0_combout\ <= NOT \ctrl|curr_floor[3]~0_combout\;
\req_resolver|ALT_INV_request_queue~0_combout\ <= NOT \req_resolver|request_queue~0_combout\;
\req_resolver|ALT_INV_request_queue~3_combout\ <= NOT \req_resolver|request_queue~3_combout\;
\req_resolver|ALT_INV_request_queue~7_combout\ <= NOT \req_resolver|request_queue~7_combout\;
\req_resolver|ALT_INV_Decoder1~0_combout\ <= NOT \req_resolver|Decoder1~0_combout\;
\req_resolver|ALT_INV_Decoder1~2_combout\ <= NOT \req_resolver|Decoder1~2_combout\;
\ctrl|ALT_INV_Selector4~0_combout\ <= NOT \ctrl|Selector4~0_combout\;
\req_resolver|ALT_INV_request_queue~9_combout\ <= NOT \req_resolver|request_queue~9_combout\;
\req_resolver|ALT_INV_Mux3~1_combout\ <= NOT \req_resolver|Mux3~1_combout\;
\ctrl|ALT_INV_state_reg.idle_state~q\ <= NOT \ctrl|state_reg.idle_state~q\;
\ctrl|ALT_INV_Add2~1_combout\ <= NOT \ctrl|Add2~1_combout\;
\req_resolver|ALT_INV_Mux1~0_combout\ <= NOT \req_resolver|Mux1~0_combout\;
\ctrl|ALT_INV_clk_1sec_enable~q\ <= NOT \ctrl|clk_1sec_enable~q\;
\req_resolver|ALT_INV_has_request_below~3_combout\ <= NOT \req_resolver|has_request_below~3_combout\;
\ctrl|ALT_INV_Selector3~0_combout\ <= NOT \ctrl|Selector3~0_combout\;
\req_resolver|ALT_INV_Mux2~0_combout\ <= NOT \req_resolver|Mux2~0_combout\;
\ctrl|ALT_INV_Selector2~4_combout\ <= NOT \ctrl|Selector2~4_combout\;
\ctrl|ALT_INV_timer\(1) <= NOT \ctrl|timer\(1);
\req_resolver|ALT_INV_has_request_below~2_combout\ <= NOT \req_resolver|has_request_below~2_combout\;
\ctrl|ALT_INV_process_1~2_combout\ <= NOT \ctrl|process_1~2_combout\;
\ctrl|ALT_INV_Add2~0_combout\ <= NOT \ctrl|Add2~0_combout\;
\req_resolver|ALT_INV_has_request_above~1_combout\ <= NOT \req_resolver|has_request_above~1_combout\;
\req_resolver|ALT_INV_has_request_below~5_combout\ <= NOT \req_resolver|has_request_below~5_combout\;
\ctrl|ALT_INV_state_reg.down_state~DUPLICATE_q\ <= NOT \ctrl|state_reg.down_state~DUPLICATE_q\;
\ALT_INV_bn[3]~input_o\ <= NOT \bn[3]~input_o\;
\ctrl|ALT_INV_clk_counter[12]~DUPLICATE_q\ <= NOT \ctrl|clk_counter[12]~DUPLICATE_q\;
\ctrl|ALT_INV_clk_counter[2]~DUPLICATE_q\ <= NOT \ctrl|clk_counter[2]~DUPLICATE_q\;
\ctrl|ALT_INV_Equal0~0_combout\ <= NOT \ctrl|Equal0~0_combout\;
\ctrl|ALT_INV_state_reg.up_state~DUPLICATE_q\ <= NOT \ctrl|state_reg.up_state~DUPLICATE_q\;
\ctrl|ALT_INV_Equal0~1_combout\ <= NOT \ctrl|Equal0~1_combout\;
\ALT_INV_en~input_o\ <= NOT \en~input_o\;
\ctrl|ALT_INV_state_reg.opendoor_state~DUPLICATE_q\ <= NOT \ctrl|state_reg.opendoor_state~DUPLICATE_q\;
\ALT_INV_bn[1]~input_o\ <= NOT \bn[1]~input_o\;
\req_resolver|ALT_INV_request_queue~14_combout\ <= NOT \req_resolver|request_queue~14_combout\;
\ctrl|ALT_INV_state_reg.idle_state~DUPLICATE_q\ <= NOT \ctrl|state_reg.idle_state~DUPLICATE_q\;
\ctrl|ALT_INV_Selector2~6_combout\ <= NOT \ctrl|Selector2~6_combout\;
\ctrl|ALT_INV_Equal0~3_combout\ <= NOT \ctrl|Equal0~3_combout\;
\req_resolver|ALT_INV_has_request_above~2_combout\ <= NOT \req_resolver|has_request_above~2_combout\;
\ctrl|ALT_INV_Selector2~7_combout\ <= NOT \ctrl|Selector2~7_combout\;
\ALT_INV_bn[0]~input_o\ <= NOT \bn[0]~input_o\;
\req_resolver|ALT_INV_Decoder1~4_combout\ <= NOT \req_resolver|Decoder1~4_combout\;
\ctrl|ALT_INV_timer[1]~0_combout\ <= NOT \ctrl|timer[1]~0_combout\;
\ctrl|ALT_INV_timer[1]~DUPLICATE_q\ <= NOT \ctrl|timer[1]~DUPLICATE_q\;
\ctrl|ALT_INV_Equal0~2_combout\ <= NOT \ctrl|Equal0~2_combout\;
\req_resolver|ALT_INV_last_direction~DUPLICATE_q\ <= NOT \req_resolver|last_direction~DUPLICATE_q\;
\ctrl|ALT_INV_clk_counter[0]~DUPLICATE_q\ <= NOT \ctrl|clk_counter[0]~DUPLICATE_q\;
\req_resolver|ALT_INV_has_request_above~3_combout\ <= NOT \req_resolver|has_request_above~3_combout\;
\req_resolver|ALT_INV_has_request_above~4_combout\ <= NOT \req_resolver|has_request_above~4_combout\;
\ctrl|ALT_INV_timer[0]~DUPLICATE_q\ <= NOT \ctrl|timer[0]~DUPLICATE_q\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_bn[2]~input_o\ <= NOT \bn[2]~input_o\;

-- Location: IOOBUF_X52_Y0_N19
\mv_up~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl|state_reg.up_state~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_mv_up);

-- Location: IOOBUF_X60_Y0_N2
\mv_dn~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl|state_reg.down_state~q\,
	devoe => ww_devoe,
	o => ww_mv_dn);

-- Location: IOOBUF_X52_Y0_N2
\door_open~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl|state_reg.opendoor_state~q\,
	devoe => ww_devoe,
	o => ww_door_open);

-- Location: IOOBUF_X89_Y8_N39
\ssd[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_disp|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(0));

-- Location: IOOBUF_X89_Y11_N79
\ssd[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_disp|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(1));

-- Location: IOOBUF_X89_Y11_N96
\ssd[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_disp|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(2));

-- Location: IOOBUF_X89_Y4_N79
\ssd[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_disp|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(3));

-- Location: IOOBUF_X89_Y13_N56
\ssd[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_disp|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(4));

-- Location: IOOBUF_X89_Y13_N39
\ssd[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_disp|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(5));

-- Location: IOOBUF_X89_Y4_N96
\ssd[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_disp|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(6));

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X40_Y0_N18
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X46_Y2_N17
\ctrl|state_reg.opendoor_state~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ctrl|Selector5~1_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|state_reg.opendoor_state~DUPLICATE_q\);

-- Location: LABCELL_X50_Y2_N48
\ctrl|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Selector5~0_combout\ = ( !\ctrl|state_reg.down_state~q\ & ( !\ctrl|state_reg.up_state~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|ALT_INV_state_reg.up_state~DUPLICATE_q\,
	dataf => \ctrl|ALT_INV_state_reg.down_state~q\,
	combout => \ctrl|Selector5~0_combout\);

-- Location: LABCELL_X43_Y2_N30
\ctrl|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~9_sumout\ = SUM(( \ctrl|clk_counter\(0) ) + ( VCC ) + ( !VCC ))
-- \ctrl|Add0~10\ = CARRY(( \ctrl|clk_counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_clk_counter\(0),
	cin => GND,
	sumout => \ctrl|Add0~9_sumout\,
	cout => \ctrl|Add0~10\);

-- Location: FF_X43_Y2_N31
\ctrl|clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~9_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(0));

-- Location: LABCELL_X43_Y2_N33
\ctrl|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~21_sumout\ = SUM(( \ctrl|clk_counter\(1) ) + ( GND ) + ( \ctrl|Add0~10\ ))
-- \ctrl|Add0~22\ = CARRY(( \ctrl|clk_counter\(1) ) + ( GND ) + ( \ctrl|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_clk_counter\(1),
	cin => \ctrl|Add0~10\,
	sumout => \ctrl|Add0~21_sumout\,
	cout => \ctrl|Add0~22\);

-- Location: FF_X43_Y2_N35
\ctrl|clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~21_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(1));

-- Location: FF_X43_Y2_N32
\ctrl|clk_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~9_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y2_N36
\ctrl|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~5_sumout\ = SUM(( \ctrl|clk_counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \ctrl|Add0~22\ ))
-- \ctrl|Add0~6\ = CARRY(( \ctrl|clk_counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \ctrl|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|ALT_INV_clk_counter[2]~DUPLICATE_q\,
	cin => \ctrl|Add0~22\,
	sumout => \ctrl|Add0~5_sumout\,
	cout => \ctrl|Add0~6\);

-- Location: FF_X43_Y2_N38
\ctrl|clk_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~5_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y2_N39
\ctrl|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~1_sumout\ = SUM(( \ctrl|clk_counter\(3) ) + ( GND ) + ( \ctrl|Add0~6\ ))
-- \ctrl|Add0~2\ = CARRY(( \ctrl|clk_counter\(3) ) + ( GND ) + ( \ctrl|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_clk_counter\(3),
	cin => \ctrl|Add0~6\,
	sumout => \ctrl|Add0~1_sumout\,
	cout => \ctrl|Add0~2\);

-- Location: FF_X43_Y2_N41
\ctrl|clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~1_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(3));

-- Location: LABCELL_X43_Y2_N42
\ctrl|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~101_sumout\ = SUM(( \ctrl|clk_counter\(4) ) + ( GND ) + ( \ctrl|Add0~2\ ))
-- \ctrl|Add0~102\ = CARRY(( \ctrl|clk_counter\(4) ) + ( GND ) + ( \ctrl|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|ALT_INV_clk_counter\(4),
	cin => \ctrl|Add0~2\,
	sumout => \ctrl|Add0~101_sumout\,
	cout => \ctrl|Add0~102\);

-- Location: FF_X43_Y2_N43
\ctrl|clk_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~101_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(4));

-- Location: LABCELL_X43_Y2_N45
\ctrl|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~93_sumout\ = SUM(( \ctrl|clk_counter\(5) ) + ( GND ) + ( \ctrl|Add0~102\ ))
-- \ctrl|Add0~94\ = CARRY(( \ctrl|clk_counter\(5) ) + ( GND ) + ( \ctrl|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|ALT_INV_clk_counter\(5),
	cin => \ctrl|Add0~102\,
	sumout => \ctrl|Add0~93_sumout\,
	cout => \ctrl|Add0~94\);

-- Location: FF_X43_Y2_N47
\ctrl|clk_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~93_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(5));

-- Location: LABCELL_X43_Y2_N48
\ctrl|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~89_sumout\ = SUM(( \ctrl|clk_counter\(6) ) + ( GND ) + ( \ctrl|Add0~94\ ))
-- \ctrl|Add0~90\ = CARRY(( \ctrl|clk_counter\(6) ) + ( GND ) + ( \ctrl|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_clk_counter\(6),
	cin => \ctrl|Add0~94\,
	sumout => \ctrl|Add0~89_sumout\,
	cout => \ctrl|Add0~90\);

-- Location: FF_X43_Y2_N50
\ctrl|clk_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~89_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(6));

-- Location: LABCELL_X43_Y2_N51
\ctrl|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~85_sumout\ = SUM(( \ctrl|clk_counter\(7) ) + ( GND ) + ( \ctrl|Add0~90\ ))
-- \ctrl|Add0~86\ = CARRY(( \ctrl|clk_counter\(7) ) + ( GND ) + ( \ctrl|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|ALT_INV_clk_counter\(7),
	cin => \ctrl|Add0~90\,
	sumout => \ctrl|Add0~85_sumout\,
	cout => \ctrl|Add0~86\);

-- Location: FF_X43_Y2_N52
\ctrl|clk_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~85_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(7));

-- Location: LABCELL_X43_Y2_N54
\ctrl|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~81_sumout\ = SUM(( \ctrl|clk_counter\(8) ) + ( GND ) + ( \ctrl|Add0~86\ ))
-- \ctrl|Add0~82\ = CARRY(( \ctrl|clk_counter\(8) ) + ( GND ) + ( \ctrl|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|ALT_INV_clk_counter\(8),
	cin => \ctrl|Add0~86\,
	sumout => \ctrl|Add0~81_sumout\,
	cout => \ctrl|Add0~82\);

-- Location: FF_X43_Y2_N56
\ctrl|clk_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~81_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(8));

-- Location: LABCELL_X43_Y2_N57
\ctrl|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~77_sumout\ = SUM(( \ctrl|clk_counter\(9) ) + ( GND ) + ( \ctrl|Add0~82\ ))
-- \ctrl|Add0~78\ = CARRY(( \ctrl|clk_counter\(9) ) + ( GND ) + ( \ctrl|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|ALT_INV_clk_counter\(9),
	cin => \ctrl|Add0~82\,
	sumout => \ctrl|Add0~77_sumout\,
	cout => \ctrl|Add0~78\);

-- Location: FF_X43_Y2_N59
\ctrl|clk_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~77_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(9));

-- Location: LABCELL_X43_Y1_N0
\ctrl|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~73_sumout\ = SUM(( \ctrl|clk_counter\(10) ) + ( GND ) + ( \ctrl|Add0~78\ ))
-- \ctrl|Add0~74\ = CARRY(( \ctrl|clk_counter\(10) ) + ( GND ) + ( \ctrl|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_clk_counter\(10),
	cin => \ctrl|Add0~78\,
	sumout => \ctrl|Add0~73_sumout\,
	cout => \ctrl|Add0~74\);

-- Location: FF_X43_Y1_N2
\ctrl|clk_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~73_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(10));

-- Location: LABCELL_X43_Y1_N3
\ctrl|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~69_sumout\ = SUM(( \ctrl|clk_counter\(11) ) + ( GND ) + ( \ctrl|Add0~74\ ))
-- \ctrl|Add0~70\ = CARRY(( \ctrl|clk_counter\(11) ) + ( GND ) + ( \ctrl|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|ALT_INV_clk_counter\(11),
	cin => \ctrl|Add0~74\,
	sumout => \ctrl|Add0~69_sumout\,
	cout => \ctrl|Add0~70\);

-- Location: FF_X43_Y1_N5
\ctrl|clk_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~69_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(11));

-- Location: LABCELL_X43_Y1_N6
\ctrl|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~65_sumout\ = SUM(( \ctrl|clk_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \ctrl|Add0~70\ ))
-- \ctrl|Add0~66\ = CARRY(( \ctrl|clk_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \ctrl|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|ALT_INV_clk_counter[12]~DUPLICATE_q\,
	cin => \ctrl|Add0~70\,
	sumout => \ctrl|Add0~65_sumout\,
	cout => \ctrl|Add0~66\);

-- Location: FF_X43_Y1_N8
\ctrl|clk_counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~65_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter[12]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y1_N9
\ctrl|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~61_sumout\ = SUM(( \ctrl|clk_counter\(13) ) + ( GND ) + ( \ctrl|Add0~66\ ))
-- \ctrl|Add0~62\ = CARRY(( \ctrl|clk_counter\(13) ) + ( GND ) + ( \ctrl|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_clk_counter\(13),
	cin => \ctrl|Add0~66\,
	sumout => \ctrl|Add0~61_sumout\,
	cout => \ctrl|Add0~62\);

-- Location: FF_X43_Y1_N11
\ctrl|clk_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~61_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(13));

-- Location: LABCELL_X43_Y1_N12
\ctrl|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~57_sumout\ = SUM(( \ctrl|clk_counter\(14) ) + ( GND ) + ( \ctrl|Add0~62\ ))
-- \ctrl|Add0~58\ = CARRY(( \ctrl|clk_counter\(14) ) + ( GND ) + ( \ctrl|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|ALT_INV_clk_counter\(14),
	cin => \ctrl|Add0~62\,
	sumout => \ctrl|Add0~57_sumout\,
	cout => \ctrl|Add0~58\);

-- Location: FF_X43_Y1_N14
\ctrl|clk_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~57_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(14));

-- Location: LABCELL_X43_Y1_N15
\ctrl|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~53_sumout\ = SUM(( \ctrl|clk_counter\(15) ) + ( GND ) + ( \ctrl|Add0~58\ ))
-- \ctrl|Add0~54\ = CARRY(( \ctrl|clk_counter\(15) ) + ( GND ) + ( \ctrl|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_clk_counter\(15),
	cin => \ctrl|Add0~58\,
	sumout => \ctrl|Add0~53_sumout\,
	cout => \ctrl|Add0~54\);

-- Location: FF_X43_Y1_N17
\ctrl|clk_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~53_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(15));

-- Location: LABCELL_X43_Y1_N18
\ctrl|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~37_sumout\ = SUM(( \ctrl|clk_counter\(16) ) + ( GND ) + ( \ctrl|Add0~54\ ))
-- \ctrl|Add0~38\ = CARRY(( \ctrl|clk_counter\(16) ) + ( GND ) + ( \ctrl|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_clk_counter\(16),
	cin => \ctrl|Add0~54\,
	sumout => \ctrl|Add0~37_sumout\,
	cout => \ctrl|Add0~38\);

-- Location: FF_X43_Y1_N20
\ctrl|clk_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~37_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(16));

-- Location: LABCELL_X43_Y1_N21
\ctrl|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~49_sumout\ = SUM(( \ctrl|clk_counter\(17) ) + ( GND ) + ( \ctrl|Add0~38\ ))
-- \ctrl|Add0~50\ = CARRY(( \ctrl|clk_counter\(17) ) + ( GND ) + ( \ctrl|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|ALT_INV_clk_counter\(17),
	cin => \ctrl|Add0~38\,
	sumout => \ctrl|Add0~49_sumout\,
	cout => \ctrl|Add0~50\);

-- Location: FF_X43_Y1_N23
\ctrl|clk_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~49_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(17));

-- Location: LABCELL_X43_Y1_N24
\ctrl|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~45_sumout\ = SUM(( \ctrl|clk_counter\(18) ) + ( GND ) + ( \ctrl|Add0~50\ ))
-- \ctrl|Add0~46\ = CARRY(( \ctrl|clk_counter\(18) ) + ( GND ) + ( \ctrl|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_clk_counter\(18),
	cin => \ctrl|Add0~50\,
	sumout => \ctrl|Add0~45_sumout\,
	cout => \ctrl|Add0~46\);

-- Location: FF_X43_Y1_N26
\ctrl|clk_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~45_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(18));

-- Location: LABCELL_X43_Y1_N27
\ctrl|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~41_sumout\ = SUM(( \ctrl|clk_counter\(19) ) + ( GND ) + ( \ctrl|Add0~46\ ))
-- \ctrl|Add0~42\ = CARRY(( \ctrl|clk_counter\(19) ) + ( GND ) + ( \ctrl|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|ALT_INV_clk_counter\(19),
	cin => \ctrl|Add0~46\,
	sumout => \ctrl|Add0~41_sumout\,
	cout => \ctrl|Add0~42\);

-- Location: FF_X43_Y1_N29
\ctrl|clk_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~41_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(19));

-- Location: LABCELL_X43_Y1_N30
\ctrl|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~33_sumout\ = SUM(( \ctrl|clk_counter\(20) ) + ( GND ) + ( \ctrl|Add0~42\ ))
-- \ctrl|Add0~34\ = CARRY(( \ctrl|clk_counter\(20) ) + ( GND ) + ( \ctrl|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|ALT_INV_clk_counter\(20),
	cin => \ctrl|Add0~42\,
	sumout => \ctrl|Add0~33_sumout\,
	cout => \ctrl|Add0~34\);

-- Location: FF_X43_Y1_N32
\ctrl|clk_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~33_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(20));

-- Location: LABCELL_X43_Y1_N33
\ctrl|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~29_sumout\ = SUM(( \ctrl|clk_counter\(21) ) + ( GND ) + ( \ctrl|Add0~34\ ))
-- \ctrl|Add0~30\ = CARRY(( \ctrl|clk_counter\(21) ) + ( GND ) + ( \ctrl|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_clk_counter\(21),
	cin => \ctrl|Add0~34\,
	sumout => \ctrl|Add0~29_sumout\,
	cout => \ctrl|Add0~30\);

-- Location: FF_X43_Y1_N35
\ctrl|clk_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~29_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(21));

-- Location: LABCELL_X43_Y1_N36
\ctrl|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~25_sumout\ = SUM(( \ctrl|clk_counter\(22) ) + ( GND ) + ( \ctrl|Add0~30\ ))
-- \ctrl|Add0~26\ = CARRY(( \ctrl|clk_counter\(22) ) + ( GND ) + ( \ctrl|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_clk_counter\(22),
	cin => \ctrl|Add0~30\,
	sumout => \ctrl|Add0~25_sumout\,
	cout => \ctrl|Add0~26\);

-- Location: FF_X43_Y1_N38
\ctrl|clk_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~25_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(22));

-- Location: LABCELL_X43_Y1_N39
\ctrl|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~97_sumout\ = SUM(( \ctrl|clk_counter\(23) ) + ( GND ) + ( \ctrl|Add0~26\ ))
-- \ctrl|Add0~98\ = CARRY(( \ctrl|clk_counter\(23) ) + ( GND ) + ( \ctrl|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_clk_counter\(23),
	cin => \ctrl|Add0~26\,
	sumout => \ctrl|Add0~97_sumout\,
	cout => \ctrl|Add0~98\);

-- Location: FF_X43_Y1_N40
\ctrl|clk_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~97_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(23));

-- Location: LABCELL_X43_Y1_N42
\ctrl|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~17_sumout\ = SUM(( \ctrl|clk_counter\(24) ) + ( GND ) + ( \ctrl|Add0~98\ ))
-- \ctrl|Add0~18\ = CARRY(( \ctrl|clk_counter\(24) ) + ( GND ) + ( \ctrl|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|ALT_INV_clk_counter\(24),
	cin => \ctrl|Add0~98\,
	sumout => \ctrl|Add0~17_sumout\,
	cout => \ctrl|Add0~18\);

-- Location: FF_X43_Y1_N44
\ctrl|clk_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~17_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(24));

-- Location: LABCELL_X43_Y1_N45
\ctrl|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add0~13_sumout\ = SUM(( \ctrl|clk_counter\(25) ) + ( GND ) + ( \ctrl|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_clk_counter\(25),
	cin => \ctrl|Add0~18\,
	sumout => \ctrl|Add0~13_sumout\);

-- Location: FF_X43_Y1_N47
\ctrl|clk_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~13_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(25));

-- Location: LABCELL_X43_Y2_N0
\ctrl|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Equal0~0_combout\ = ( \ctrl|clk_counter\(21) & ( \ctrl|clk_counter\(25) & ( (\ctrl|clk_counter\(1) & (\ctrl|clk_counter[0]~DUPLICATE_q\ & (!\ctrl|clk_counter\(24) & \ctrl|clk_counter\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_clk_counter\(1),
	datab => \ctrl|ALT_INV_clk_counter[0]~DUPLICATE_q\,
	datac => \ctrl|ALT_INV_clk_counter\(24),
	datad => \ctrl|ALT_INV_clk_counter\(22),
	datae => \ctrl|ALT_INV_clk_counter\(21),
	dataf => \ctrl|ALT_INV_clk_counter\(25),
	combout => \ctrl|Equal0~0_combout\);

-- Location: FF_X43_Y2_N37
\ctrl|clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~5_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(2));

-- Location: LABCELL_X43_Y2_N24
\ctrl|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Equal0~3_combout\ = ( \ctrl|clk_counter\(4) & ( \ctrl|clk_counter\(23) & ( (\ctrl|clk_counter\(6) & (\ctrl|clk_counter\(5) & (!\ctrl|clk_counter\(8) & !\ctrl|clk_counter\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_clk_counter\(6),
	datab => \ctrl|ALT_INV_clk_counter\(5),
	datac => \ctrl|ALT_INV_clk_counter\(8),
	datad => \ctrl|ALT_INV_clk_counter\(7),
	datae => \ctrl|ALT_INV_clk_counter\(4),
	dataf => \ctrl|ALT_INV_clk_counter\(23),
	combout => \ctrl|Equal0~3_combout\);

-- Location: LABCELL_X43_Y1_N48
\ctrl|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Equal0~1_combout\ = ( \ctrl|clk_counter\(19) & ( !\ctrl|clk_counter\(16) & ( (\ctrl|clk_counter\(17) & (\ctrl|clk_counter\(20) & (!\ctrl|clk_counter\(18) & \ctrl|clk_counter\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_clk_counter\(17),
	datab => \ctrl|ALT_INV_clk_counter\(20),
	datac => \ctrl|ALT_INV_clk_counter\(18),
	datad => \ctrl|ALT_INV_clk_counter\(15),
	datae => \ctrl|ALT_INV_clk_counter\(19),
	dataf => \ctrl|ALT_INV_clk_counter\(16),
	combout => \ctrl|Equal0~1_combout\);

-- Location: FF_X43_Y1_N7
\ctrl|clk_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Add0~65_sumout\,
	clrn => \rst~input_o\,
	sclr => \ctrl|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_counter\(12));

-- Location: LABCELL_X43_Y1_N54
\ctrl|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Equal0~2_combout\ = ( !\ctrl|clk_counter\(10) & ( !\ctrl|clk_counter\(9) & ( (!\ctrl|clk_counter\(11) & (\ctrl|clk_counter\(14) & (\ctrl|clk_counter\(12) & \ctrl|clk_counter\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_clk_counter\(11),
	datab => \ctrl|ALT_INV_clk_counter\(14),
	datac => \ctrl|ALT_INV_clk_counter\(12),
	datad => \ctrl|ALT_INV_clk_counter\(13),
	datae => \ctrl|ALT_INV_clk_counter\(10),
	dataf => \ctrl|ALT_INV_clk_counter\(9),
	combout => \ctrl|Equal0~2_combout\);

-- Location: LABCELL_X43_Y2_N9
\ctrl|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Equal0~4_combout\ = ( \ctrl|Equal0~1_combout\ & ( \ctrl|Equal0~2_combout\ & ( (\ctrl|Equal0~0_combout\ & (\ctrl|clk_counter\(2) & (\ctrl|clk_counter\(3) & \ctrl|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_Equal0~0_combout\,
	datab => \ctrl|ALT_INV_clk_counter\(2),
	datac => \ctrl|ALT_INV_clk_counter\(3),
	datad => \ctrl|ALT_INV_Equal0~3_combout\,
	datae => \ctrl|ALT_INV_Equal0~1_combout\,
	dataf => \ctrl|ALT_INV_Equal0~2_combout\,
	combout => \ctrl|Equal0~4_combout\);

-- Location: FF_X45_Y2_N17
\ctrl|clk_1sec_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ctrl|Equal0~4_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|clk_1sec_enable~q\);

-- Location: FF_X43_Y2_N14
\ctrl|timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|timer[1]~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|timer\(1));

-- Location: LABCELL_X48_Y2_N21
\ctrl|Selector2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Selector2~5_combout\ = ( \ctrl|timer\(1) & ( \ctrl|clk_1sec_enable~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|ALT_INV_clk_1sec_enable~q\,
	dataf => \ctrl|ALT_INV_timer\(1),
	combout => \ctrl|Selector2~5_combout\);

-- Location: LABCELL_X45_Y2_N48
\ctrl|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Selector5~1_combout\ = ( \req_resolver|Mux1~0_combout\ & ( \ctrl|Selector2~5_combout\ & ( (!\ctrl|state_reg.idle_state~DUPLICATE_q\) # ((!\ctrl|Selector5~0_combout\ & \ctrl|process_1~0_combout\)) ) ) ) # ( \req_resolver|Mux1~0_combout\ & ( 
-- !\ctrl|Selector2~5_combout\ & ( ((!\ctrl|state_reg.idle_state~DUPLICATE_q\) # ((!\ctrl|Selector5~0_combout\ & \ctrl|process_1~0_combout\))) # (\ctrl|state_reg.opendoor_state~DUPLICATE_q\) ) ) ) # ( !\req_resolver|Mux1~0_combout\ & ( 
-- !\ctrl|Selector2~5_combout\ & ( \ctrl|state_reg.opendoor_state~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111101011111110100000000000000001111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_state_reg.opendoor_state~DUPLICATE_q\,
	datab => \ctrl|ALT_INV_Selector5~0_combout\,
	datac => \ctrl|ALT_INV_state_reg.idle_state~DUPLICATE_q\,
	datad => \ctrl|ALT_INV_process_1~0_combout\,
	datae => \req_resolver|ALT_INV_Mux1~0_combout\,
	dataf => \ctrl|ALT_INV_Selector2~5_combout\,
	combout => \ctrl|Selector5~1_combout\);

-- Location: FF_X46_Y2_N16
\ctrl|state_reg.opendoor_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ctrl|Selector5~1_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|state_reg.opendoor_state~q\);

-- Location: FF_X45_Y2_N14
\ctrl|state_reg.down_state~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Selector4~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|state_reg.down_state~DUPLICATE_q\);

-- Location: LABCELL_X45_Y2_N54
\ctrl|state_out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|state_out[0]~0_combout\ = ( !\ctrl|state_reg.up_state~DUPLICATE_q\ & ( !\ctrl|state_reg.opendoor_state~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|ALT_INV_state_reg.opendoor_state~DUPLICATE_q\,
	dataf => \ctrl|ALT_INV_state_reg.up_state~DUPLICATE_q\,
	combout => \ctrl|state_out[0]~0_combout\);

-- Location: LABCELL_X46_Y2_N51
\req_resolver|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|Equal1~1_combout\ = ( !\ctrl|state_reg.opendoor_state~DUPLICATE_q\ & ( !\ctrl|state_reg.down_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|ALT_INV_state_reg.down_state~q\,
	dataf => \ctrl|ALT_INV_state_reg.opendoor_state~DUPLICATE_q\,
	combout => \req_resolver|Equal1~1_combout\);

-- Location: LABCELL_X48_Y2_N57
\req_resolver|last_direction~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|last_direction~0_combout\ = ( \req_resolver|Equal1~1_combout\ & ( (\req_resolver|last_direction~DUPLICATE_q\ & \ctrl|state_out[0]~0_combout\) ) ) # ( !\req_resolver|Equal1~1_combout\ & ( (\ctrl|state_out[0]~0_combout\) # 
-- (\req_resolver|last_direction~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \req_resolver|ALT_INV_last_direction~DUPLICATE_q\,
	datac => \ctrl|ALT_INV_state_out[0]~0_combout\,
	dataf => \req_resolver|ALT_INV_Equal1~1_combout\,
	combout => \req_resolver|last_direction~0_combout\);

-- Location: FF_X46_Y2_N40
\req_resolver|last_direction~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \req_resolver|last_direction~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \req_resolver|last_direction~DUPLICATE_q\);

-- Location: FF_X46_Y2_N13
\ctrl|state_reg.up_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Selector3~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|state_reg.up_state~q\);

-- Location: LABCELL_X46_Y2_N24
\req_resolver|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|Mux2~0_combout\ = ( \ctrl|state_reg.up_state~q\ & ( (!\ctrl|state_reg.opendoor_state~DUPLICATE_q\ & !\ctrl|state_reg.down_state~q\) ) ) # ( !\ctrl|state_reg.up_state~q\ & ( (!\ctrl|state_reg.opendoor_state~DUPLICATE_q\ & 
-- (!\ctrl|state_reg.down_state~q\ & !\req_resolver|last_direction~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|ALT_INV_state_reg.opendoor_state~DUPLICATE_q\,
	datac => \ctrl|ALT_INV_state_reg.down_state~q\,
	datad => \req_resolver|ALT_INV_last_direction~DUPLICATE_q\,
	dataf => \ctrl|ALT_INV_state_reg.up_state~q\,
	combout => \req_resolver|Mux2~0_combout\);

-- Location: LABCELL_X45_Y2_N0
\ctrl|curr_floor[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|curr_floor[3]~0_combout\ = ( \ctrl|timer[1]~DUPLICATE_q\ & ( (\ctrl|state_reg.idle_state~DUPLICATE_q\ & (\ctrl|clk_1sec_enable~q\ & (\rst~input_o\ & !\ctrl|state_reg.opendoor_state~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_state_reg.idle_state~DUPLICATE_q\,
	datab => \ctrl|ALT_INV_clk_1sec_enable~q\,
	datac => \ALT_INV_rst~input_o\,
	datad => \ctrl|ALT_INV_state_reg.opendoor_state~DUPLICATE_q\,
	dataf => \ctrl|ALT_INV_timer[1]~DUPLICATE_q\,
	combout => \ctrl|curr_floor[3]~0_combout\);

-- Location: LABCELL_X50_Y2_N57
\ctrl|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add2~0_combout\ = ( \ctrl|curr_floor\(0) & ( !\ctrl|curr_floor\(1) $ (\ctrl|state_reg.up_state~DUPLICATE_q\) ) ) # ( !\ctrl|curr_floor\(0) & ( !\ctrl|curr_floor\(1) $ (!\ctrl|state_reg.up_state~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(1),
	datad => \ctrl|ALT_INV_state_reg.up_state~DUPLICATE_q\,
	dataf => \ctrl|ALT_INV_curr_floor\(0),
	combout => \ctrl|Add2~0_combout\);

-- Location: LABCELL_X50_Y2_N0
\ctrl|curr_floor[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|curr_floor[1]~1_combout\ = ( \ctrl|Add2~0_combout\ & ( \ctrl|curr_floor\(1) & ( (!\ctrl|curr_floor[3]~0_combout\) # ((!\req_resolver|Decoder1~0_combout\ & (!\ctrl|state_reg.down_state~q\ & \ctrl|curr_floor\(3))) # (\req_resolver|Decoder1~0_combout\ 
-- & (\ctrl|state_reg.down_state~q\ & !\ctrl|curr_floor\(3)))) ) ) ) # ( !\ctrl|Add2~0_combout\ & ( \ctrl|curr_floor\(1) ) ) # ( !\ctrl|Add2~0_combout\ & ( !\ctrl|curr_floor\(1) & ( (\ctrl|curr_floor[3]~0_combout\ & ((!\req_resolver|Decoder1~0_combout\ & 
-- ((!\ctrl|curr_floor\(3)) # (\ctrl|state_reg.down_state~q\))) # (\req_resolver|Decoder1~0_combout\ & ((!\ctrl|state_reg.down_state~q\) # (\ctrl|curr_floor\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000111000000000000000011111111111111111111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_Decoder1~0_combout\,
	datab => \ctrl|ALT_INV_state_reg.down_state~q\,
	datac => \ctrl|ALT_INV_curr_floor[3]~0_combout\,
	datad => \ctrl|ALT_INV_curr_floor\(3),
	datae => \ctrl|ALT_INV_Add2~0_combout\,
	dataf => \ctrl|ALT_INV_curr_floor\(1),
	combout => \ctrl|curr_floor[1]~1_combout\);

-- Location: FF_X47_Y2_N5
\ctrl|curr_floor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ctrl|curr_floor[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|curr_floor\(1));

-- Location: LABCELL_X50_Y2_N21
\ctrl|Add2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add2~2_combout\ = ( \ctrl|curr_floor\(0) & ( !\ctrl|curr_floor\(3) $ (((\ctrl|curr_floor\(2) & (\ctrl|curr_floor\(1) & \ctrl|state_reg.up_state~DUPLICATE_q\)))) ) ) # ( !\ctrl|curr_floor\(0) & ( !\ctrl|curr_floor\(3) $ (((!\ctrl|curr_floor\(2) & 
-- (!\ctrl|curr_floor\(1) & !\ctrl|state_reg.up_state~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100011110000011110001111000011110000111000011111000011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(2),
	datab => \ctrl|ALT_INV_curr_floor\(1),
	datac => \ctrl|ALT_INV_curr_floor\(3),
	datad => \ctrl|ALT_INV_state_reg.up_state~DUPLICATE_q\,
	dataf => \ctrl|ALT_INV_curr_floor\(0),
	combout => \ctrl|Add2~2_combout\);

-- Location: LABCELL_X50_Y2_N42
\ctrl|curr_floor[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|curr_floor[3]~3_combout\ = ( \ctrl|curr_floor[3]~0_combout\ & ( (!\ctrl|state_reg.down_state~q\ & ((!\ctrl|Add2~2_combout\) # ((\ctrl|curr_floor\(3) & !\req_resolver|Decoder1~0_combout\)))) # (\ctrl|state_reg.down_state~q\ & (!\ctrl|Add2~2_combout\ 
-- & ((!\req_resolver|Decoder1~0_combout\) # (\ctrl|curr_floor\(3))))) ) ) # ( !\ctrl|curr_floor[3]~0_combout\ & ( \ctrl|curr_floor\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111011001000001111101100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_state_reg.down_state~q\,
	datab => \ctrl|ALT_INV_curr_floor\(3),
	datac => \req_resolver|ALT_INV_Decoder1~0_combout\,
	datad => \ctrl|ALT_INV_Add2~2_combout\,
	dataf => \ctrl|ALT_INV_curr_floor[3]~0_combout\,
	combout => \ctrl|curr_floor[3]~3_combout\);

-- Location: FF_X47_Y2_N26
\ctrl|curr_floor[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ctrl|curr_floor[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|curr_floor\(3));

-- Location: LABCELL_X46_Y2_N45
\req_resolver|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|Equal1~0_combout\ = ( !\ctrl|state_reg.opendoor_state~DUPLICATE_q\ & ( (!\ctrl|state_reg.up_state~DUPLICATE_q\) # (!\ctrl|state_reg.down_state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_state_reg.up_state~DUPLICATE_q\,
	datad => \ctrl|ALT_INV_state_reg.down_state~q\,
	dataf => \ctrl|ALT_INV_state_reg.opendoor_state~DUPLICATE_q\,
	combout => \req_resolver|Equal1~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\bn[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bn(1),
	o => \bn[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\bn[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bn(2),
	o => \bn[2]~input_o\);

-- Location: LABCELL_X48_Y1_N48
\req_resolver|request_queue~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|request_queue~3_combout\ = ( !\bn[2]~input_o\ & ( !\bn[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_bn[1]~input_o\,
	datae => \ALT_INV_bn[2]~input_o\,
	combout => \req_resolver|request_queue~3_combout\);

-- Location: IOIBUF_X36_Y0_N1
\en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\bn[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bn(0),
	o => \bn[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\bn[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bn(3),
	o => \bn[3]~input_o\);

-- Location: LABCELL_X48_Y1_N15
\req_resolver|en_prev~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|en_prev~0_combout\ = ( !\en~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_en~input_o\,
	combout => \req_resolver|en_prev~0_combout\);

-- Location: FF_X48_Y1_N17
\req_resolver|en_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \req_resolver|en_prev~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \req_resolver|en_prev~q\);

-- Location: LABCELL_X48_Y1_N57
\req_resolver|request_queue~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|request_queue~2_combout\ = ( !\req_resolver|en_prev~q\ & ( (!\en~input_o\ & (\bn[0]~input_o\ & !\bn[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	datab => \ALT_INV_bn[0]~input_o\,
	datac => \ALT_INV_bn[3]~input_o\,
	dataf => \req_resolver|ALT_INV_en_prev~q\,
	combout => \req_resolver|request_queue~2_combout\);

-- Location: LABCELL_X50_Y2_N12
\req_resolver|Decoder1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|Decoder1~1_combout\ = ( \ctrl|curr_floor\(0) & ( (!\ctrl|curr_floor\(1) & !\ctrl|curr_floor\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(1),
	datad => \ctrl|ALT_INV_curr_floor\(2),
	dataf => \ctrl|ALT_INV_curr_floor\(0),
	combout => \req_resolver|Decoder1~1_combout\);

-- Location: LABCELL_X48_Y2_N36
\req_resolver|request_queue~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|request_queue~4_combout\ = ( \req_resolver|request_queue~2_combout\ & ( \req_resolver|Decoder1~1_combout\ & ( (!\req_resolver|Equal1~0_combout\ & (\ctrl|curr_floor\(3) & ((\req_resolver|request_queue~3_combout\) # 
-- (\req_resolver|request_queue\(1))))) # (\req_resolver|Equal1~0_combout\ & (((\req_resolver|request_queue~3_combout\)) # (\req_resolver|request_queue\(1)))) ) ) ) # ( !\req_resolver|request_queue~2_combout\ & ( \req_resolver|Decoder1~1_combout\ & ( 
-- (\req_resolver|request_queue\(1) & ((\ctrl|curr_floor\(3)) # (\req_resolver|Equal1~0_combout\))) ) ) ) # ( \req_resolver|request_queue~2_combout\ & ( !\req_resolver|Decoder1~1_combout\ & ( (\req_resolver|request_queue~3_combout\) # 
-- (\req_resolver|request_queue\(1)) ) ) ) # ( !\req_resolver|request_queue~2_combout\ & ( !\req_resolver|Decoder1~1_combout\ & ( \req_resolver|request_queue\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100111111111100010011000100110001001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_Equal1~0_combout\,
	datab => \req_resolver|ALT_INV_request_queue\(1),
	datac => \ctrl|ALT_INV_curr_floor\(3),
	datad => \req_resolver|ALT_INV_request_queue~3_combout\,
	datae => \req_resolver|ALT_INV_request_queue~2_combout\,
	dataf => \req_resolver|ALT_INV_Decoder1~1_combout\,
	combout => \req_resolver|request_queue~4_combout\);

-- Location: FF_X47_Y2_N14
\req_resolver|request_queue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \req_resolver|request_queue~4_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \req_resolver|request_queue\(1));

-- Location: LABCELL_X48_Y1_N24
\req_resolver|request_queue~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|request_queue~7_combout\ = ( !\bn[2]~input_o\ & ( !\req_resolver|en_prev~q\ & ( (!\en~input_o\ & (\bn[0]~input_o\ & (\bn[1]~input_o\ & !\bn[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	datab => \ALT_INV_bn[0]~input_o\,
	datac => \ALT_INV_bn[1]~input_o\,
	datad => \ALT_INV_bn[3]~input_o\,
	datae => \ALT_INV_bn[2]~input_o\,
	dataf => \req_resolver|ALT_INV_en_prev~q\,
	combout => \req_resolver|request_queue~7_combout\);

-- Location: LABCELL_X50_Y2_N24
\req_resolver|Decoder1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|Decoder1~2_combout\ = ( \ctrl|curr_floor\(0) & ( !\ctrl|curr_floor\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|ALT_INV_curr_floor\(2),
	dataf => \ctrl|ALT_INV_curr_floor\(0),
	combout => \req_resolver|Decoder1~2_combout\);

-- Location: LABCELL_X50_Y2_N6
\req_resolver|request_queue~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|request_queue~8_combout\ = ( \req_resolver|request_queue~7_combout\ & ( \req_resolver|Decoder1~2_combout\ & ( ((!\ctrl|curr_floor\(1)) # (\ctrl|curr_floor\(3))) # (\req_resolver|Equal1~0_combout\) ) ) ) # ( 
-- !\req_resolver|request_queue~7_combout\ & ( \req_resolver|Decoder1~2_combout\ & ( (\req_resolver|request_queue\(3) & (((!\ctrl|curr_floor\(1)) # (\ctrl|curr_floor\(3))) # (\req_resolver|Equal1~0_combout\))) ) ) ) # ( \req_resolver|request_queue~7_combout\ 
-- & ( !\req_resolver|Decoder1~2_combout\ ) ) # ( !\req_resolver|request_queue~7_combout\ & ( !\req_resolver|Decoder1~2_combout\ & ( \req_resolver|request_queue\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110001001100111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_Equal1~0_combout\,
	datab => \req_resolver|ALT_INV_request_queue\(3),
	datac => \ctrl|ALT_INV_curr_floor\(1),
	datad => \ctrl|ALT_INV_curr_floor\(3),
	datae => \req_resolver|ALT_INV_request_queue~7_combout\,
	dataf => \req_resolver|ALT_INV_Decoder1~2_combout\,
	combout => \req_resolver|request_queue~8_combout\);

-- Location: FF_X47_Y2_N20
\req_resolver|request_queue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \req_resolver|request_queue~8_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \req_resolver|request_queue\(3));

-- Location: LABCELL_X50_Y2_N51
\req_resolver|Decoder1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|Decoder1~4_combout\ = ( !\req_resolver|Equal1~0_combout\ & ( (\ctrl|curr_floor\(2) & (!\ctrl|curr_floor\(3) & \ctrl|curr_floor\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(2),
	datac => \ctrl|ALT_INV_curr_floor\(3),
	datad => \ctrl|ALT_INV_curr_floor\(1),
	dataf => \req_resolver|ALT_INV_Equal1~0_combout\,
	combout => \req_resolver|Decoder1~4_combout\);

-- Location: LABCELL_X48_Y2_N48
\req_resolver|request_queue~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|request_queue~13_combout\ = ( \req_resolver|request_queue\(7) & ( \req_resolver|Decoder1~4_combout\ & ( !\ctrl|curr_floor\(0) ) ) ) # ( !\req_resolver|request_queue\(7) & ( \req_resolver|Decoder1~4_combout\ & ( (!\ctrl|curr_floor\(0) & 
-- (\bn[2]~input_o\ & (\req_resolver|request_queue~2_combout\ & \bn[1]~input_o\))) ) ) ) # ( \req_resolver|request_queue\(7) & ( !\req_resolver|Decoder1~4_combout\ ) ) # ( !\req_resolver|request_queue\(7) & ( !\req_resolver|Decoder1~4_combout\ & ( 
-- (\bn[2]~input_o\ & (\req_resolver|request_queue~2_combout\ & \bn[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111111111111100000000000000101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(0),
	datab => \ALT_INV_bn[2]~input_o\,
	datac => \req_resolver|ALT_INV_request_queue~2_combout\,
	datad => \ALT_INV_bn[1]~input_o\,
	datae => \req_resolver|ALT_INV_request_queue\(7),
	dataf => \req_resolver|ALT_INV_Decoder1~4_combout\,
	combout => \req_resolver|request_queue~13_combout\);

-- Location: FF_X48_Y2_N50
\req_resolver|request_queue[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \req_resolver|request_queue~13_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \req_resolver|request_queue\(7));

-- Location: MLABCELL_X47_Y2_N33
\req_resolver|has_request_above~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|has_request_above~2_combout\ = ( \ctrl|curr_floor\(2) & ( \req_resolver|request_queue\(7) & ( (\ctrl|curr_floor\(1) & \ctrl|curr_floor\(0)) ) ) ) # ( \ctrl|curr_floor\(2) & ( !\req_resolver|request_queue\(7) ) ) # ( !\ctrl|curr_floor\(2) & ( 
-- !\req_resolver|request_queue\(7) & ( (!\ctrl|curr_floor\(1) & (!\req_resolver|request_queue\(3) & ((!\req_resolver|request_queue\(1)) # (\ctrl|curr_floor\(0))))) # (\ctrl|curr_floor\(1) & (((!\req_resolver|request_queue\(3)) # (\ctrl|curr_floor\(0))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111100000101111111111111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(1),
	datab => \req_resolver|ALT_INV_request_queue\(1),
	datac => \ctrl|ALT_INV_curr_floor\(0),
	datad => \req_resolver|ALT_INV_request_queue\(3),
	datae => \ctrl|ALT_INV_curr_floor\(2),
	dataf => \req_resolver|ALT_INV_request_queue\(7),
	combout => \req_resolver|has_request_above~2_combout\);

-- Location: LABCELL_X48_Y1_N33
\req_resolver|request_queue~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|request_queue~9_combout\ = ( \bn[2]~input_o\ & ( !\req_resolver|en_prev~q\ & ( (!\en~input_o\ & (!\bn[0]~input_o\ & !\bn[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	datab => \ALT_INV_bn[0]~input_o\,
	datac => \ALT_INV_bn[3]~input_o\,
	datae => \ALT_INV_bn[2]~input_o\,
	dataf => \req_resolver|ALT_INV_en_prev~q\,
	combout => \req_resolver|request_queue~9_combout\);

-- Location: LABCELL_X48_Y2_N18
\req_resolver|Decoder1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|Decoder1~3_combout\ = ( !\req_resolver|Equal1~0_combout\ & ( (!\ctrl|curr_floor\(1) & (!\ctrl|curr_floor\(3) & \ctrl|curr_floor\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|ALT_INV_curr_floor\(1),
	datac => \ctrl|ALT_INV_curr_floor\(3),
	datad => \ctrl|ALT_INV_curr_floor\(2),
	dataf => \req_resolver|ALT_INV_Equal1~0_combout\,
	combout => \req_resolver|Decoder1~3_combout\);

-- Location: LABCELL_X48_Y2_N33
\req_resolver|request_queue~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|request_queue~10_combout\ = ( \req_resolver|Decoder1~3_combout\ & ( (\ctrl|curr_floor\(0) & (((\req_resolver|request_queue~9_combout\ & !\bn[1]~input_o\)) # (\req_resolver|request_queue\(4)))) ) ) # ( !\req_resolver|Decoder1~3_combout\ & ( 
-- ((\req_resolver|request_queue~9_combout\ & !\bn[1]~input_o\)) # (\req_resolver|request_queue\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001111001111110000111100010101000001010001010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(0),
	datab => \req_resolver|ALT_INV_request_queue~9_combout\,
	datac => \req_resolver|ALT_INV_request_queue\(4),
	datad => \ALT_INV_bn[1]~input_o\,
	dataf => \req_resolver|ALT_INV_Decoder1~3_combout\,
	combout => \req_resolver|request_queue~10_combout\);

-- Location: FF_X47_Y2_N8
\req_resolver|request_queue[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \req_resolver|request_queue~10_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \req_resolver|request_queue\(4));

-- Location: LABCELL_X48_Y1_N36
\req_resolver|request_queue~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|request_queue~14_combout\ = ( !\bn[2]~input_o\ & ( !\req_resolver|en_prev~q\ & ( (!\en~input_o\ & (\bn[3]~input_o\ & !\bn[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	datab => \ALT_INV_bn[3]~input_o\,
	datac => \ALT_INV_bn[1]~input_o\,
	datae => \ALT_INV_bn[2]~input_o\,
	dataf => \req_resolver|ALT_INV_en_prev~q\,
	combout => \req_resolver|request_queue~14_combout\);

-- Location: LABCELL_X48_Y2_N0
\req_resolver|request_queue~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|request_queue~15_combout\ = ( \bn[0]~input_o\ & ( \req_resolver|Decoder1~1_combout\ & ( (!\req_resolver|Equal1~0_combout\ & (!\ctrl|curr_floor\(3) & ((\req_resolver|request_queue~14_combout\) # (\req_resolver|request_queue\(9))))) # 
-- (\req_resolver|Equal1~0_combout\ & (((\req_resolver|request_queue~14_combout\) # (\req_resolver|request_queue\(9))))) ) ) ) # ( !\bn[0]~input_o\ & ( \req_resolver|Decoder1~1_combout\ & ( (\req_resolver|request_queue\(9) & ((!\ctrl|curr_floor\(3)) # 
-- (\req_resolver|Equal1~0_combout\))) ) ) ) # ( \bn[0]~input_o\ & ( !\req_resolver|Decoder1~1_combout\ & ( (\req_resolver|request_queue~14_combout\) # (\req_resolver|request_queue\(9)) ) ) ) # ( !\bn[0]~input_o\ & ( !\req_resolver|Decoder1~1_combout\ & ( 
-- \req_resolver|request_queue\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011111111111100001101000011010000110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_Equal1~0_combout\,
	datab => \ctrl|ALT_INV_curr_floor\(3),
	datac => \req_resolver|ALT_INV_request_queue\(9),
	datad => \req_resolver|ALT_INV_request_queue~14_combout\,
	datae => \ALT_INV_bn[0]~input_o\,
	dataf => \req_resolver|ALT_INV_Decoder1~1_combout\,
	combout => \req_resolver|request_queue~15_combout\);

-- Location: FF_X47_Y2_N56
\req_resolver|request_queue[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \req_resolver|request_queue~15_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \req_resolver|request_queue\(9));

-- Location: LABCELL_X48_Y2_N6
\req_resolver|request_queue~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|request_queue~16_combout\ = ( \ctrl|curr_floor\(3) & ( \req_resolver|Decoder1~0_combout\ & ( (\req_resolver|Equal1~0_combout\ & (((!\bn[0]~input_o\ & \req_resolver|request_queue~14_combout\)) # (\req_resolver|request_queue\(8)))) ) ) ) # ( 
-- !\ctrl|curr_floor\(3) & ( \req_resolver|Decoder1~0_combout\ & ( ((!\bn[0]~input_o\ & \req_resolver|request_queue~14_combout\)) # (\req_resolver|request_queue\(8)) ) ) ) # ( \ctrl|curr_floor\(3) & ( !\req_resolver|Decoder1~0_combout\ & ( ((!\bn[0]~input_o\ 
-- & \req_resolver|request_queue~14_combout\)) # (\req_resolver|request_queue\(8)) ) ) ) # ( !\ctrl|curr_floor\(3) & ( !\req_resolver|Decoder1~0_combout\ & ( ((!\bn[0]~input_o\ & \req_resolver|request_queue~14_combout\)) # (\req_resolver|request_queue\(8)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111011101010101011101110101010101110111010000010100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_request_queue\(8),
	datab => \ALT_INV_bn[0]~input_o\,
	datac => \req_resolver|ALT_INV_Equal1~0_combout\,
	datad => \req_resolver|ALT_INV_request_queue~14_combout\,
	datae => \ctrl|ALT_INV_curr_floor\(3),
	dataf => \req_resolver|ALT_INV_Decoder1~0_combout\,
	combout => \req_resolver|request_queue~16_combout\);

-- Location: FF_X47_Y2_N50
\req_resolver|request_queue[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \req_resolver|request_queue~16_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \req_resolver|request_queue\(8));

-- Location: MLABCELL_X47_Y2_N27
\req_resolver|has_request_above~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|has_request_above~4_combout\ = ( !\req_resolver|request_queue\(8) & ( !\req_resolver|request_queue\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \req_resolver|ALT_INV_request_queue\(9),
	dataf => \req_resolver|ALT_INV_request_queue\(8),
	combout => \req_resolver|has_request_above~4_combout\);

-- Location: LABCELL_X48_Y1_N18
\req_resolver|request_queue~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|request_queue~5_combout\ = ( !\bn[2]~input_o\ & ( !\req_resolver|en_prev~q\ & ( (!\en~input_o\ & (!\bn[0]~input_o\ & (\bn[1]~input_o\ & !\bn[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	datab => \ALT_INV_bn[0]~input_o\,
	datac => \ALT_INV_bn[1]~input_o\,
	datad => \ALT_INV_bn[3]~input_o\,
	datae => \ALT_INV_bn[2]~input_o\,
	dataf => \req_resolver|ALT_INV_en_prev~q\,
	combout => \req_resolver|request_queue~5_combout\);

-- Location: LABCELL_X48_Y2_N54
\ssd_disp|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ssd_disp|Mux4~1_combout\ = ( !\ctrl|curr_floor\(0) & ( !\ctrl|curr_floor\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|ALT_INV_curr_floor\(2),
	dataf => \ctrl|ALT_INV_curr_floor\(0),
	combout => \ssd_disp|Mux4~1_combout\);

-- Location: LABCELL_X48_Y2_N12
\req_resolver|request_queue~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|request_queue~6_combout\ = ( \ssd_disp|Mux4~1_combout\ & ( \req_resolver|Equal1~0_combout\ & ( (\req_resolver|request_queue~5_combout\) # (\req_resolver|request_queue\(2)) ) ) ) # ( !\ssd_disp|Mux4~1_combout\ & ( 
-- \req_resolver|Equal1~0_combout\ & ( (\req_resolver|request_queue~5_combout\) # (\req_resolver|request_queue\(2)) ) ) ) # ( \ssd_disp|Mux4~1_combout\ & ( !\req_resolver|Equal1~0_combout\ & ( (!\ctrl|curr_floor\(3) & (!\ctrl|curr_floor\(1) & 
-- ((\req_resolver|request_queue~5_combout\) # (\req_resolver|request_queue\(2))))) # (\ctrl|curr_floor\(3) & (((\req_resolver|request_queue~5_combout\) # (\req_resolver|request_queue\(2))))) ) ) ) # ( !\ssd_disp|Mux4~1_combout\ & ( 
-- !\req_resolver|Equal1~0_combout\ & ( (\req_resolver|request_queue~5_combout\) # (\req_resolver|request_queue\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011011101110100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(3),
	datab => \ctrl|ALT_INV_curr_floor\(1),
	datac => \req_resolver|ALT_INV_request_queue\(2),
	datad => \req_resolver|ALT_INV_request_queue~5_combout\,
	datae => \ssd_disp|ALT_INV_Mux4~1_combout\,
	dataf => \req_resolver|ALT_INV_Equal1~0_combout\,
	combout => \req_resolver|request_queue~6_combout\);

-- Location: FF_X47_Y2_N38
\req_resolver|request_queue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \req_resolver|request_queue~6_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \req_resolver|request_queue\(2));

-- Location: LABCELL_X48_Y2_N42
\req_resolver|request_queue~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|request_queue~11_combout\ = ( \req_resolver|request_queue~2_combout\ & ( \req_resolver|Decoder1~3_combout\ & ( (!\ctrl|curr_floor\(0) & (((\bn[2]~input_o\ & !\bn[1]~input_o\)) # (\req_resolver|request_queue\(5)))) ) ) ) # ( 
-- !\req_resolver|request_queue~2_combout\ & ( \req_resolver|Decoder1~3_combout\ & ( (\req_resolver|request_queue\(5) & !\ctrl|curr_floor\(0)) ) ) ) # ( \req_resolver|request_queue~2_combout\ & ( !\req_resolver|Decoder1~3_combout\ & ( ((\bn[2]~input_o\ & 
-- !\bn[1]~input_o\)) # (\req_resolver|request_queue\(5)) ) ) ) # ( !\req_resolver|request_queue~2_combout\ & ( !\req_resolver|Decoder1~3_combout\ & ( \req_resolver|request_queue\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011011101110011001100110000001100000111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bn[2]~input_o\,
	datab => \req_resolver|ALT_INV_request_queue\(5),
	datac => \ctrl|ALT_INV_curr_floor\(0),
	datad => \ALT_INV_bn[1]~input_o\,
	datae => \req_resolver|ALT_INV_request_queue~2_combout\,
	dataf => \req_resolver|ALT_INV_Decoder1~3_combout\,
	combout => \req_resolver|request_queue~11_combout\);

-- Location: FF_X47_Y2_N59
\req_resolver|request_queue[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \req_resolver|request_queue~11_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \req_resolver|request_queue\(5));

-- Location: LABCELL_X48_Y2_N30
\req_resolver|request_queue~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|request_queue~12_combout\ = ( \req_resolver|Decoder1~4_combout\ & ( (\ctrl|curr_floor\(0) & (((\req_resolver|request_queue~9_combout\ & \bn[1]~input_o\)) # (\req_resolver|request_queue\(6)))) ) ) # ( !\req_resolver|Decoder1~4_combout\ & ( 
-- ((\req_resolver|request_queue~9_combout\ & \bn[1]~input_o\)) # (\req_resolver|request_queue\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100000001010101010000000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(0),
	datab => \req_resolver|ALT_INV_request_queue~9_combout\,
	datac => \ALT_INV_bn[1]~input_o\,
	datad => \req_resolver|ALT_INV_request_queue\(6),
	dataf => \req_resolver|ALT_INV_Decoder1~4_combout\,
	combout => \req_resolver|request_queue~12_combout\);

-- Location: FF_X48_Y2_N32
\req_resolver|request_queue[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \req_resolver|request_queue~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \req_resolver|request_queue\(6));

-- Location: MLABCELL_X47_Y2_N57
\req_resolver|has_request_above~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|has_request_above~3_combout\ = ( \req_resolver|request_queue\(5) & ( \req_resolver|request_queue\(6) & ( (\ctrl|curr_floor\(1) & \ctrl|curr_floor\(2)) ) ) ) # ( !\req_resolver|request_queue\(5) & ( \req_resolver|request_queue\(6) & ( 
-- (\ctrl|curr_floor\(1) & \ctrl|curr_floor\(2)) ) ) ) # ( \req_resolver|request_queue\(5) & ( !\req_resolver|request_queue\(6) & ( (\ctrl|curr_floor\(2) & ((\ctrl|curr_floor\(1)) # (\ctrl|curr_floor\(0)))) ) ) ) # ( !\req_resolver|request_queue\(5) & ( 
-- !\req_resolver|request_queue\(6) & ( (!\req_resolver|request_queue\(2)) # ((\ctrl|curr_floor\(2)) # (\ctrl|curr_floor\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111111000000000011111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_request_queue\(2),
	datab => \ctrl|ALT_INV_curr_floor\(0),
	datac => \ctrl|ALT_INV_curr_floor\(1),
	datad => \ctrl|ALT_INV_curr_floor\(2),
	datae => \req_resolver|ALT_INV_request_queue\(5),
	dataf => \req_resolver|ALT_INV_request_queue\(6),
	combout => \req_resolver|has_request_above~3_combout\);

-- Location: LABCELL_X46_Y2_N36
\req_resolver|has_request_above~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|has_request_above~1_combout\ = ( \req_resolver|has_request_above~4_combout\ & ( \req_resolver|has_request_above~3_combout\ & ( (!\ctrl|curr_floor\(3) & ((!\req_resolver|has_request_above~2_combout\) # ((!\ctrl|curr_floor\(2) & 
-- \req_resolver|request_queue\(4))))) ) ) ) # ( !\req_resolver|has_request_above~4_combout\ & ( \req_resolver|has_request_above~3_combout\ & ( !\ctrl|curr_floor\(3) ) ) ) # ( \req_resolver|has_request_above~4_combout\ & ( 
-- !\req_resolver|has_request_above~3_combout\ & ( !\ctrl|curr_floor\(3) ) ) ) # ( !\req_resolver|has_request_above~4_combout\ & ( !\req_resolver|has_request_above~3_combout\ & ( !\ctrl|curr_floor\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(2),
	datab => \ctrl|ALT_INV_curr_floor\(3),
	datac => \req_resolver|ALT_INV_has_request_above~2_combout\,
	datad => \req_resolver|ALT_INV_request_queue\(4),
	datae => \req_resolver|ALT_INV_has_request_above~4_combout\,
	dataf => \req_resolver|ALT_INV_has_request_above~3_combout\,
	combout => \req_resolver|has_request_above~1_combout\);

-- Location: MLABCELL_X47_Y2_N24
\req_resolver|has_request_above~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|has_request_above~0_combout\ = ( !\ctrl|curr_floor\(1) & ( (\req_resolver|request_queue\(9) & (!\ctrl|curr_floor\(0) & !\ctrl|curr_floor\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_request_queue\(9),
	datab => \ctrl|ALT_INV_curr_floor\(0),
	datac => \ctrl|ALT_INV_curr_floor\(2),
	dataf => \ctrl|ALT_INV_curr_floor\(1),
	combout => \req_resolver|has_request_above~0_combout\);

-- Location: LABCELL_X48_Y1_N6
\req_resolver|request_queue~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|request_queue~0_combout\ = ( !\bn[2]~input_o\ & ( !\req_resolver|en_prev~q\ & ( (!\bn[0]~input_o\ & (!\en~input_o\ & !\bn[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_bn[0]~input_o\,
	datac => \ALT_INV_en~input_o\,
	datad => \ALT_INV_bn[3]~input_o\,
	datae => \ALT_INV_bn[2]~input_o\,
	dataf => \req_resolver|ALT_INV_en_prev~q\,
	combout => \req_resolver|request_queue~0_combout\);

-- Location: LABCELL_X48_Y1_N3
\req_resolver|request_queue~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|request_queue~1_combout\ = ( \req_resolver|request_queue\(0) & ( \req_resolver|Decoder1~0_combout\ & ( (\req_resolver|Equal1~0_combout\) # (\ctrl|curr_floor\(3)) ) ) ) # ( !\req_resolver|request_queue\(0) & ( 
-- \req_resolver|Decoder1~0_combout\ & ( (!\bn[1]~input_o\ & (\req_resolver|request_queue~0_combout\ & ((\req_resolver|Equal1~0_combout\) # (\ctrl|curr_floor\(3))))) ) ) ) # ( \req_resolver|request_queue\(0) & ( !\req_resolver|Decoder1~0_combout\ ) ) # ( 
-- !\req_resolver|request_queue\(0) & ( !\req_resolver|Decoder1~0_combout\ & ( (!\bn[1]~input_o\ & \req_resolver|request_queue~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010111111111111111100000010001000100000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bn[1]~input_o\,
	datab => \req_resolver|ALT_INV_request_queue~0_combout\,
	datac => \ctrl|ALT_INV_curr_floor\(3),
	datad => \req_resolver|ALT_INV_Equal1~0_combout\,
	datae => \req_resolver|ALT_INV_request_queue\(0),
	dataf => \req_resolver|ALT_INV_Decoder1~0_combout\,
	combout => \req_resolver|request_queue~1_combout\);

-- Location: FF_X47_Y2_N32
\req_resolver|request_queue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \req_resolver|request_queue~1_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \req_resolver|request_queue\(0));

-- Location: MLABCELL_X47_Y2_N21
\req_resolver|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|Mux0~0_combout\ = ( \ctrl|curr_floor\(0) & ( \req_resolver|request_queue\(3) & ( (\ctrl|curr_floor\(1)) # (\req_resolver|request_queue\(1)) ) ) ) # ( !\ctrl|curr_floor\(0) & ( \req_resolver|request_queue\(3) & ( (!\ctrl|curr_floor\(1) & 
-- ((\req_resolver|request_queue\(0)))) # (\ctrl|curr_floor\(1) & (\req_resolver|request_queue\(2))) ) ) ) # ( \ctrl|curr_floor\(0) & ( !\req_resolver|request_queue\(3) & ( (\req_resolver|request_queue\(1) & !\ctrl|curr_floor\(1)) ) ) ) # ( 
-- !\ctrl|curr_floor\(0) & ( !\req_resolver|request_queue\(3) & ( (!\ctrl|curr_floor\(1) & ((\req_resolver|request_queue\(0)))) # (\ctrl|curr_floor\(1) & (\req_resolver|request_queue\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000011110000000000110011010101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_request_queue\(2),
	datab => \req_resolver|ALT_INV_request_queue\(0),
	datac => \req_resolver|ALT_INV_request_queue\(1),
	datad => \ctrl|ALT_INV_curr_floor\(1),
	datae => \ctrl|ALT_INV_curr_floor\(0),
	dataf => \req_resolver|ALT_INV_request_queue\(3),
	combout => \req_resolver|Mux0~0_combout\);

-- Location: MLABCELL_X47_Y2_N9
\req_resolver|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|Mux0~2_combout\ = ( !\ctrl|curr_floor\(2) & ( !\ctrl|curr_floor\(1) & ( (\ctrl|curr_floor\(3) & ((!\ctrl|curr_floor\(0) & (\req_resolver|request_queue\(8))) # (\ctrl|curr_floor\(0) & ((\req_resolver|request_queue\(9)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_request_queue\(8),
	datab => \ctrl|ALT_INV_curr_floor\(0),
	datac => \ctrl|ALT_INV_curr_floor\(3),
	datad => \req_resolver|ALT_INV_request_queue\(9),
	datae => \ctrl|ALT_INV_curr_floor\(2),
	dataf => \ctrl|ALT_INV_curr_floor\(1),
	combout => \req_resolver|Mux0~2_combout\);

-- Location: MLABCELL_X47_Y2_N39
\req_resolver|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|Mux0~1_combout\ = ( \req_resolver|request_queue\(7) & ( \ctrl|curr_floor\(0) & ( (\ctrl|curr_floor\(1)) # (\req_resolver|request_queue\(5)) ) ) ) # ( !\req_resolver|request_queue\(7) & ( \ctrl|curr_floor\(0) & ( 
-- (\req_resolver|request_queue\(5) & !\ctrl|curr_floor\(1)) ) ) ) # ( \req_resolver|request_queue\(7) & ( !\ctrl|curr_floor\(0) & ( (!\ctrl|curr_floor\(1) & ((\req_resolver|request_queue\(4)))) # (\ctrl|curr_floor\(1) & (\req_resolver|request_queue\(6))) ) 
-- ) ) # ( !\req_resolver|request_queue\(7) & ( !\ctrl|curr_floor\(0) & ( (!\ctrl|curr_floor\(1) & ((\req_resolver|request_queue\(4)))) # (\ctrl|curr_floor\(1) & (\req_resolver|request_queue\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_request_queue\(6),
	datab => \req_resolver|ALT_INV_request_queue\(5),
	datac => \req_resolver|ALT_INV_request_queue\(4),
	datad => \ctrl|ALT_INV_curr_floor\(1),
	datae => \req_resolver|ALT_INV_request_queue\(7),
	dataf => \ctrl|ALT_INV_curr_floor\(0),
	combout => \req_resolver|Mux0~1_combout\);

-- Location: MLABCELL_X47_Y2_N42
\req_resolver|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|Mux0~3_combout\ = ( \req_resolver|Mux0~1_combout\ & ( (!\req_resolver|Mux0~2_combout\ & (((!\ctrl|curr_floor\(2) & !\req_resolver|Mux0~0_combout\)) # (\ctrl|curr_floor\(3)))) ) ) # ( !\req_resolver|Mux0~1_combout\ & ( 
-- (!\req_resolver|Mux0~2_combout\ & (((!\req_resolver|Mux0~0_combout\) # (\ctrl|curr_floor\(3))) # (\ctrl|curr_floor\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000111101110000000010110011000000001011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(2),
	datab => \ctrl|ALT_INV_curr_floor\(3),
	datac => \req_resolver|ALT_INV_Mux0~0_combout\,
	datad => \req_resolver|ALT_INV_Mux0~2_combout\,
	dataf => \req_resolver|ALT_INV_Mux0~1_combout\,
	combout => \req_resolver|Mux0~3_combout\);

-- Location: LABCELL_X46_Y2_N54
\req_resolver|has_request_below~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|has_request_below~2_combout\ = ( \ctrl|curr_floor\(2) & ( \ctrl|curr_floor\(0) & ( (!\req_resolver|request_queue\(0) & ((!\req_resolver|request_queue\(8)) # (!\ctrl|curr_floor\(3)))) ) ) ) # ( !\ctrl|curr_floor\(2) & ( \ctrl|curr_floor\(0) & 
-- ( (!\req_resolver|request_queue\(0) & ((!\req_resolver|request_queue\(8)) # (!\ctrl|curr_floor\(3)))) ) ) ) # ( \ctrl|curr_floor\(2) & ( !\ctrl|curr_floor\(0) & ( (!\req_resolver|request_queue\(0) & ((!\req_resolver|request_queue\(8)) # 
-- (!\ctrl|curr_floor\(3)))) ) ) ) # ( !\ctrl|curr_floor\(2) & ( !\ctrl|curr_floor\(0) & ( (!\ctrl|curr_floor\(1)) # ((!\req_resolver|request_queue\(0) & ((!\req_resolver|request_queue\(8)) # (!\ctrl|curr_floor\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111000101010101000100010101010100010001010101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_request_queue\(0),
	datab => \req_resolver|ALT_INV_request_queue\(8),
	datac => \ctrl|ALT_INV_curr_floor\(1),
	datad => \ctrl|ALT_INV_curr_floor\(3),
	datae => \ctrl|ALT_INV_curr_floor\(2),
	dataf => \ctrl|ALT_INV_curr_floor\(0),
	combout => \req_resolver|has_request_below~2_combout\);

-- Location: MLABCELL_X47_Y2_N45
\req_resolver|has_request_below~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|has_request_below~0_combout\ = ( \req_resolver|request_queue\(3) & ( (!\ctrl|curr_floor\(2) & !\ctrl|curr_floor\(3)) ) ) # ( !\req_resolver|request_queue\(3) & ( (!\ctrl|curr_floor\(2) & ((!\ctrl|curr_floor\(3)) # 
-- ((!\req_resolver|request_queue\(1) & !\req_resolver|request_queue\(2))))) # (\ctrl|curr_floor\(2) & (((!\req_resolver|request_queue\(1) & !\req_resolver|request_queue\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010001000111110001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(2),
	datab => \ctrl|ALT_INV_curr_floor\(3),
	datac => \req_resolver|ALT_INV_request_queue\(1),
	datad => \req_resolver|ALT_INV_request_queue\(2),
	dataf => \req_resolver|ALT_INV_request_queue\(3),
	combout => \req_resolver|has_request_below~0_combout\);

-- Location: MLABCELL_X47_Y2_N51
\req_resolver|has_request_below~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|has_request_below~4_combout\ = ( \ctrl|curr_floor\(2) & ( \ctrl|curr_floor\(3) & ( (\req_resolver|request_queue\(5)) # (\req_resolver|request_queue\(4)) ) ) ) # ( !\ctrl|curr_floor\(2) & ( \ctrl|curr_floor\(3) & ( 
-- (\req_resolver|request_queue\(5)) # (\req_resolver|request_queue\(4)) ) ) ) # ( \ctrl|curr_floor\(2) & ( !\ctrl|curr_floor\(3) & ( (!\req_resolver|request_queue\(4) & (((\req_resolver|request_queue\(5) & \ctrl|curr_floor\(1))))) # 
-- (\req_resolver|request_queue\(4) & (((\ctrl|curr_floor\(1))) # (\ctrl|curr_floor\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(0),
	datab => \req_resolver|ALT_INV_request_queue\(4),
	datac => \req_resolver|ALT_INV_request_queue\(5),
	datad => \ctrl|ALT_INV_curr_floor\(1),
	datae => \ctrl|ALT_INV_curr_floor\(2),
	dataf => \ctrl|ALT_INV_curr_floor\(3),
	combout => \req_resolver|has_request_below~4_combout\);

-- Location: MLABCELL_X47_Y2_N15
\req_resolver|has_request_below~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|has_request_below~3_combout\ = ( \ctrl|curr_floor\(2) & ( !\req_resolver|request_queue\(6) & ( (!\req_resolver|request_queue\(9) & (!\req_resolver|request_queue\(0) & !\req_resolver|request_queue\(7))) ) ) ) # ( !\ctrl|curr_floor\(2) & ( 
-- !\req_resolver|request_queue\(6) & ( (!\req_resolver|request_queue\(0) & (!\req_resolver|request_queue\(7) & ((!\req_resolver|request_queue\(9)) # (!\ctrl|curr_floor\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_request_queue\(9),
	datab => \req_resolver|ALT_INV_request_queue\(0),
	datac => \req_resolver|ALT_INV_request_queue\(7),
	datad => \ctrl|ALT_INV_curr_floor\(1),
	datae => \ctrl|ALT_INV_curr_floor\(2),
	dataf => \req_resolver|ALT_INV_request_queue\(6),
	combout => \req_resolver|has_request_below~3_combout\);

-- Location: MLABCELL_X47_Y2_N0
\req_resolver|has_request_below~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|has_request_below~1_combout\ = ( \ctrl|curr_floor\(2) & ( \ctrl|curr_floor\(0) & ( (\ctrl|curr_floor\(1) & (((\req_resolver|request_queue\(1)) # (\req_resolver|request_queue\(6))) # (\req_resolver|request_queue\(2)))) ) ) ) # ( 
-- !\ctrl|curr_floor\(2) & ( \ctrl|curr_floor\(0) & ( (\ctrl|curr_floor\(1) & ((\req_resolver|request_queue\(1)) # (\req_resolver|request_queue\(2)))) ) ) ) # ( \ctrl|curr_floor\(2) & ( !\ctrl|curr_floor\(0) & ( (\ctrl|curr_floor\(1) & 
-- \req_resolver|request_queue\(1)) ) ) ) # ( !\ctrl|curr_floor\(2) & ( !\ctrl|curr_floor\(0) & ( (\ctrl|curr_floor\(1) & \req_resolver|request_queue\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000011110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_request_queue\(2),
	datab => \req_resolver|ALT_INV_request_queue\(6),
	datac => \ctrl|ALT_INV_curr_floor\(1),
	datad => \req_resolver|ALT_INV_request_queue\(1),
	datae => \ctrl|ALT_INV_curr_floor\(2),
	dataf => \ctrl|ALT_INV_curr_floor\(0),
	combout => \req_resolver|has_request_below~1_combout\);

-- Location: LABCELL_X46_Y2_N6
\req_resolver|has_request_below~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|has_request_below~5_combout\ = ( \req_resolver|has_request_below~3_combout\ & ( !\req_resolver|has_request_below~1_combout\ & ( (\req_resolver|has_request_below~2_combout\ & (\req_resolver|has_request_below~0_combout\ & 
-- !\req_resolver|has_request_below~4_combout\)) ) ) ) # ( !\req_resolver|has_request_below~3_combout\ & ( !\req_resolver|has_request_below~1_combout\ & ( (\req_resolver|has_request_below~2_combout\ & (!\ctrl|curr_floor\(3) & 
-- (\req_resolver|has_request_below~0_combout\ & !\req_resolver|has_request_below~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_has_request_below~2_combout\,
	datab => \ctrl|ALT_INV_curr_floor\(3),
	datac => \req_resolver|ALT_INV_has_request_below~0_combout\,
	datad => \req_resolver|ALT_INV_has_request_below~4_combout\,
	datae => \req_resolver|ALT_INV_has_request_below~3_combout\,
	dataf => \req_resolver|ALT_INV_has_request_below~1_combout\,
	combout => \req_resolver|has_request_below~5_combout\);

-- Location: LABCELL_X46_Y2_N30
\req_resolver|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|Mux2~1_combout\ = ( \req_resolver|Mux0~3_combout\ & ( \req_resolver|has_request_below~5_combout\ & ( (!\req_resolver|Mux2~0_combout\ & (\ctrl|state_out[0]~0_combout\ & ((\req_resolver|has_request_above~0_combout\) # 
-- (\req_resolver|has_request_above~1_combout\)))) # (\req_resolver|Mux2~0_combout\ & (((\req_resolver|has_request_above~0_combout\) # (\req_resolver|has_request_above~1_combout\)))) ) ) ) # ( \req_resolver|Mux0~3_combout\ & ( 
-- !\req_resolver|has_request_below~5_combout\ & ( (\req_resolver|Mux2~0_combout\ & ((\req_resolver|has_request_above~0_combout\) # (\req_resolver|has_request_above~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101010100000000000000000000011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_Mux2~0_combout\,
	datab => \ctrl|ALT_INV_state_out[0]~0_combout\,
	datac => \req_resolver|ALT_INV_has_request_above~1_combout\,
	datad => \req_resolver|ALT_INV_has_request_above~0_combout\,
	datae => \req_resolver|ALT_INV_Mux0~3_combout\,
	dataf => \req_resolver|ALT_INV_has_request_below~5_combout\,
	combout => \req_resolver|Mux2~1_combout\);

-- Location: FF_X46_Y2_N41
\req_resolver|last_direction\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \req_resolver|last_direction~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \req_resolver|last_direction~q\);

-- Location: LABCELL_X46_Y2_N27
\req_resolver|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|Mux3~0_combout\ = ( \req_resolver|last_direction~q\ & ( (!\ctrl|state_reg.opendoor_state~DUPLICATE_q\ & !\ctrl|state_reg.up_state~q\) ) ) # ( !\req_resolver|last_direction~q\ & ( (!\ctrl|state_reg.opendoor_state~DUPLICATE_q\ & 
-- (!\ctrl|state_reg.up_state~q\ & \ctrl|state_reg.down_state~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|ALT_INV_state_reg.opendoor_state~DUPLICATE_q\,
	datac => \ctrl|ALT_INV_state_reg.up_state~q\,
	datad => \ctrl|ALT_INV_state_reg.down_state~q\,
	dataf => \req_resolver|ALT_INV_last_direction~q\,
	combout => \req_resolver|Mux3~0_combout\);

-- Location: LABCELL_X46_Y2_N0
\req_resolver|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|Mux3~1_combout\ = ( \req_resolver|Mux0~3_combout\ & ( !\req_resolver|has_request_below~5_combout\ & ( ((\req_resolver|Equal1~1_combout\ & (!\req_resolver|has_request_above~1_combout\ & !\req_resolver|has_request_above~0_combout\))) # 
-- (\req_resolver|Mux3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_Equal1~1_combout\,
	datab => \req_resolver|ALT_INV_Mux3~0_combout\,
	datac => \req_resolver|ALT_INV_has_request_above~1_combout\,
	datad => \req_resolver|ALT_INV_has_request_above~0_combout\,
	datae => \req_resolver|ALT_INV_Mux0~3_combout\,
	dataf => \req_resolver|ALT_INV_has_request_below~5_combout\,
	combout => \req_resolver|Mux3~1_combout\);

-- Location: LABCELL_X43_Y2_N18
\ctrl|timer[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|timer[1]~0_combout\ = ( \req_resolver|Mux2~1_combout\ & ( \req_resolver|Mux3~1_combout\ & ( (!\ctrl|state_reg.up_state~DUPLICATE_q\ & (\ctrl|state_reg.down_state~DUPLICATE_q\ & ((!\ctrl|process_1~0_combout\) # (!\req_resolver|Mux1~0_combout\)))) # 
-- (\ctrl|state_reg.up_state~DUPLICATE_q\ & (((!\ctrl|process_1~0_combout\) # (!\req_resolver|Mux1~0_combout\)))) ) ) ) # ( !\req_resolver|Mux2~1_combout\ & ( \req_resolver|Mux3~1_combout\ & ( (\ctrl|state_reg.down_state~DUPLICATE_q\ & 
-- ((!\ctrl|process_1~0_combout\) # (!\req_resolver|Mux1~0_combout\))) ) ) ) # ( \req_resolver|Mux2~1_combout\ & ( !\req_resolver|Mux3~1_combout\ & ( (\ctrl|state_reg.up_state~DUPLICATE_q\ & (!\ctrl|state_reg.down_state~DUPLICATE_q\ & 
-- ((!\ctrl|process_1~0_combout\) # (!\req_resolver|Mux1~0_combout\)))) ) ) ) # ( !\req_resolver|Mux2~1_combout\ & ( !\req_resolver|Mux3~1_combout\ & ( (!\ctrl|process_1~0_combout\ & (\req_resolver|Mux1~0_combout\ & ((\ctrl|state_reg.down_state~DUPLICATE_q\) 
-- # (\ctrl|state_reg.up_state~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110000010001000100000000110011001100000111011101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_state_reg.up_state~DUPLICATE_q\,
	datab => \ctrl|ALT_INV_state_reg.down_state~DUPLICATE_q\,
	datac => \ctrl|ALT_INV_process_1~0_combout\,
	datad => \req_resolver|ALT_INV_Mux1~0_combout\,
	datae => \req_resolver|ALT_INV_Mux2~1_combout\,
	dataf => \req_resolver|ALT_INV_Mux3~1_combout\,
	combout => \ctrl|timer[1]~0_combout\);

-- Location: LABCELL_X43_Y2_N15
\ctrl|timer[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|timer[0]~2_combout\ = ( \ctrl|timer[1]~0_combout\ & ( (!\ctrl|clk_1sec_enable~q\ & ((\ctrl|timer\(0)))) # (\ctrl|clk_1sec_enable~q\ & (!\ctrl|timer\(1) & !\ctrl|timer\(0))) ) ) # ( !\ctrl|timer[1]~0_combout\ & ( (\ctrl|state_reg.opendoor_state~q\ & 
-- ((!\ctrl|clk_1sec_enable~q\ & ((\ctrl|timer\(0)))) # (\ctrl|clk_1sec_enable~q\ & (!\ctrl|timer\(1) & !\ctrl|timer\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000100000100000100010000110000110011000011000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_state_reg.opendoor_state~q\,
	datab => \ctrl|ALT_INV_clk_1sec_enable~q\,
	datac => \ctrl|ALT_INV_timer\(1),
	datad => \ctrl|ALT_INV_timer\(0),
	dataf => \ctrl|ALT_INV_timer[1]~0_combout\,
	combout => \ctrl|timer[0]~2_combout\);

-- Location: FF_X43_Y2_N16
\ctrl|timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|timer[0]~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|timer\(0));

-- Location: LABCELL_X43_Y2_N12
\ctrl|timer[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|timer[1]~1_combout\ = ( \ctrl|timer[1]~0_combout\ & ( (!\ctrl|clk_1sec_enable~q\ & ((\ctrl|timer\(1)))) # (\ctrl|clk_1sec_enable~q\ & (\ctrl|timer\(0) & !\ctrl|timer\(1))) ) ) # ( !\ctrl|timer[1]~0_combout\ & ( (\ctrl|state_reg.opendoor_state~q\ & 
-- ((!\ctrl|clk_1sec_enable~q\ & ((\ctrl|timer\(1)))) # (\ctrl|clk_1sec_enable~q\ & (\ctrl|timer\(0) & !\ctrl|timer\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000100000000010100010000000011110011000000001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_state_reg.opendoor_state~q\,
	datab => \ctrl|ALT_INV_clk_1sec_enable~q\,
	datac => \ctrl|ALT_INV_timer\(0),
	datad => \ctrl|ALT_INV_timer\(1),
	dataf => \ctrl|ALT_INV_timer[1]~0_combout\,
	combout => \ctrl|timer[1]~1_combout\);

-- Location: FF_X43_Y2_N13
\ctrl|timer[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|timer[1]~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|timer[1]~DUPLICATE_q\);

-- Location: FF_X43_Y2_N17
\ctrl|timer[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|timer[0]~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|timer[0]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y2_N27
\ctrl|process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|process_1~0_combout\ = ( !\ctrl|timer[0]~DUPLICATE_q\ & ( !\ctrl|timer[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|ALT_INV_timer[1]~DUPLICATE_q\,
	dataf => \ctrl|ALT_INV_timer[0]~DUPLICATE_q\,
	combout => \ctrl|process_1~0_combout\);

-- Location: LABCELL_X45_Y2_N21
\ctrl|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Selector2~2_combout\ = ( \req_resolver|Mux3~1_combout\ & ( (\ctrl|state_reg.up_state~DUPLICATE_q\ & ((!\req_resolver|Mux2~1_combout\) # ((\ctrl|process_1~0_combout\ & \req_resolver|Mux1~0_combout\)))) ) ) # ( !\req_resolver|Mux3~1_combout\ & ( 
-- (\ctrl|state_reg.up_state~DUPLICATE_q\ & ((!\req_resolver|Mux1~0_combout\ & ((!\req_resolver|Mux2~1_combout\))) # (\req_resolver|Mux1~0_combout\ & (\ctrl|process_1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100000001000011010000000100001111000000010000111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_process_1~0_combout\,
	datab => \req_resolver|ALT_INV_Mux1~0_combout\,
	datac => \ctrl|ALT_INV_state_reg.up_state~DUPLICATE_q\,
	datad => \req_resolver|ALT_INV_Mux2~1_combout\,
	dataf => \req_resolver|ALT_INV_Mux3~1_combout\,
	combout => \ctrl|Selector2~2_combout\);

-- Location: LABCELL_X45_Y2_N6
\ctrl|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Selector2~0_combout\ = ( \ctrl|timer[1]~DUPLICATE_q\ & ( (\ctrl|clk_1sec_enable~q\ & \ctrl|state_reg.opendoor_state~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|ALT_INV_clk_1sec_enable~q\,
	datac => \ctrl|ALT_INV_state_reg.opendoor_state~DUPLICATE_q\,
	dataf => \ctrl|ALT_INV_timer[1]~DUPLICATE_q\,
	combout => \ctrl|Selector2~0_combout\);

-- Location: LABCELL_X45_Y2_N3
\ctrl|Selector2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Selector2~3_combout\ = ( \req_resolver|Mux1~0_combout\ & ( !\ctrl|Selector2~0_combout\ ) ) # ( !\req_resolver|Mux1~0_combout\ & ( (\ctrl|state_reg.idle_state~DUPLICATE_q\ & !\ctrl|Selector2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_state_reg.idle_state~DUPLICATE_q\,
	datac => \ctrl|ALT_INV_Selector2~0_combout\,
	dataf => \req_resolver|ALT_INV_Mux1~0_combout\,
	combout => \ctrl|Selector2~3_combout\);

-- Location: FF_X45_Y2_N32
\ctrl|state_reg.idle_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Selector2~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|state_reg.idle_state~q\);

-- Location: LABCELL_X45_Y2_N24
\ctrl|Selector2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Selector2~6_combout\ = ( \ctrl|state_reg.idle_state~q\ & ( (\req_resolver|Mux3~1_combout\) # (\ctrl|Selector2~3_combout\) ) ) # ( !\ctrl|state_reg.idle_state~q\ & ( (!\ctrl|Selector2~3_combout\ & \req_resolver|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_Selector2~3_combout\,
	datad => \req_resolver|ALT_INV_Mux3~1_combout\,
	dataf => \ctrl|ALT_INV_state_reg.idle_state~q\,
	combout => \ctrl|Selector2~6_combout\);

-- Location: LABCELL_X45_Y2_N36
\ctrl|Selector2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Selector2~7_combout\ = ( \req_resolver|Mux3~1_combout\ & ( \req_resolver|Mux2~1_combout\ & ( (!\ctrl|Selector2~3_combout\) # ((\req_resolver|Mux1~0_combout\ & (\ctrl|state_reg.down_state~DUPLICATE_q\ & \ctrl|process_1~0_combout\))) ) ) ) # ( 
-- !\req_resolver|Mux3~1_combout\ & ( \req_resolver|Mux2~1_combout\ & ( (!\ctrl|Selector2~3_combout\) # (\ctrl|state_reg.down_state~DUPLICATE_q\) ) ) ) # ( \req_resolver|Mux3~1_combout\ & ( !\req_resolver|Mux2~1_combout\ & ( (\req_resolver|Mux1~0_combout\ & 
-- (\ctrl|state_reg.down_state~DUPLICATE_q\ & \ctrl|process_1~0_combout\)) ) ) ) # ( !\req_resolver|Mux3~1_combout\ & ( !\req_resolver|Mux2~1_combout\ & ( (\ctrl|state_reg.down_state~DUPLICATE_q\ & ((!\req_resolver|Mux1~0_combout\) # 
-- (\ctrl|process_1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000110011000000000001000111110011111100111111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_Mux1~0_combout\,
	datab => \ctrl|ALT_INV_state_reg.down_state~DUPLICATE_q\,
	datac => \ctrl|ALT_INV_Selector2~3_combout\,
	datad => \ctrl|ALT_INV_process_1~0_combout\,
	datae => \req_resolver|ALT_INV_Mux3~1_combout\,
	dataf => \req_resolver|ALT_INV_Mux2~1_combout\,
	combout => \ctrl|Selector2~7_combout\);

-- Location: LABCELL_X46_Y2_N48
\ctrl|process_1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|process_1~2_combout\ = ( !\req_resolver|Mux2~1_combout\ & ( (!\req_resolver|Mux1~0_combout\ & !\req_resolver|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \req_resolver|ALT_INV_Mux1~0_combout\,
	datad => \req_resolver|ALT_INV_Mux3~1_combout\,
	dataf => \req_resolver|ALT_INV_Mux2~1_combout\,
	combout => \ctrl|process_1~2_combout\);

-- Location: LABCELL_X45_Y2_N30
\ctrl|Selector2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Selector2~8_combout\ = ( \ctrl|Selector2~7_combout\ & ( \ctrl|process_1~2_combout\ & ( (!\ctrl|Selector2~2_combout\ & !\ctrl|state_reg.down_state~DUPLICATE_q\) ) ) ) # ( !\ctrl|Selector2~7_combout\ & ( \ctrl|process_1~2_combout\ & ( 
-- (!\ctrl|Selector2~2_combout\ & ((!\ctrl|Selector2~4_combout\ & ((\ctrl|Selector2~6_combout\))) # (\ctrl|Selector2~4_combout\ & (!\ctrl|state_reg.down_state~DUPLICATE_q\)))) ) ) ) # ( \ctrl|Selector2~7_combout\ & ( !\ctrl|process_1~2_combout\ ) ) # ( 
-- !\ctrl|Selector2~7_combout\ & ( !\ctrl|process_1~2_combout\ & ( ((\ctrl|Selector2~4_combout\) # (\ctrl|Selector2~6_combout\)) # (\ctrl|Selector2~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111111111111111111100001010100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_Selector2~2_combout\,
	datab => \ctrl|ALT_INV_state_reg.down_state~DUPLICATE_q\,
	datac => \ctrl|ALT_INV_Selector2~6_combout\,
	datad => \ctrl|ALT_INV_Selector2~4_combout\,
	datae => \ctrl|ALT_INV_Selector2~7_combout\,
	dataf => \ctrl|ALT_INV_process_1~2_combout\,
	combout => \ctrl|Selector2~8_combout\);

-- Location: FF_X45_Y2_N31
\ctrl|state_reg.idle_state~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Selector2~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|state_reg.idle_state~DUPLICATE_q\);

-- Location: LABCELL_X45_Y2_N18
\ctrl|Selector2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Selector2~4_combout\ = ( !\ctrl|state_reg.idle_state~DUPLICATE_q\ & ( \req_resolver|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \req_resolver|ALT_INV_Mux1~0_combout\,
	dataf => \ctrl|ALT_INV_state_reg.idle_state~DUPLICATE_q\,
	combout => \ctrl|Selector2~4_combout\);

-- Location: LABCELL_X45_Y2_N9
\ctrl|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Selector4~0_combout\ = ( \req_resolver|Mux2~1_combout\ & ( (\ctrl|state_reg.down_state~DUPLICATE_q\ & \ctrl|Selector2~3_combout\) ) ) # ( !\req_resolver|Mux2~1_combout\ & ( (!\ctrl|Selector2~3_combout\ & (\req_resolver|Mux3~1_combout\)) # 
-- (\ctrl|Selector2~3_combout\ & ((\ctrl|state_reg.down_state~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_Mux3~1_combout\,
	datac => \ctrl|ALT_INV_state_reg.down_state~DUPLICATE_q\,
	datad => \ctrl|ALT_INV_Selector2~3_combout\,
	dataf => \req_resolver|ALT_INV_Mux2~1_combout\,
	combout => \ctrl|Selector4~0_combout\);

-- Location: LABCELL_X45_Y2_N42
\ctrl|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Selector2~1_combout\ = ( \ctrl|state_reg.down_state~DUPLICATE_q\ & ( (!\req_resolver|Mux1~0_combout\ & (((!\req_resolver|Mux3~1_combout\)))) # (\req_resolver|Mux1~0_combout\ & (((\req_resolver|Mux2~1_combout\ & !\req_resolver|Mux3~1_combout\)) # 
-- (\ctrl|process_1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011111000100011101111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_process_1~0_combout\,
	datab => \req_resolver|ALT_INV_Mux1~0_combout\,
	datac => \req_resolver|ALT_INV_Mux2~1_combout\,
	datad => \req_resolver|ALT_INV_Mux3~1_combout\,
	dataf => \ctrl|ALT_INV_state_reg.down_state~DUPLICATE_q\,
	combout => \ctrl|Selector2~1_combout\);

-- Location: LABCELL_X45_Y2_N12
\ctrl|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Selector4~1_combout\ = ( \ctrl|process_1~2_combout\ & ( !\ctrl|Selector2~1_combout\ & ( (!\ctrl|Selector2~4_combout\ & (!\ctrl|Selector2~2_combout\ & \ctrl|Selector4~0_combout\)) ) ) ) # ( !\ctrl|process_1~2_combout\ & ( !\ctrl|Selector2~1_combout\ 
-- & ( (!\ctrl|Selector2~2_combout\ & (!\ctrl|Selector2~4_combout\ & ((\ctrl|Selector4~0_combout\)))) # (\ctrl|Selector2~2_combout\ & (((!\ctrl|process_1~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010101100000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_Selector2~4_combout\,
	datab => \ctrl|ALT_INV_process_1~1_combout\,
	datac => \ctrl|ALT_INV_Selector2~2_combout\,
	datad => \ctrl|ALT_INV_Selector4~0_combout\,
	datae => \ctrl|ALT_INV_process_1~2_combout\,
	dataf => \ctrl|ALT_INV_Selector2~1_combout\,
	combout => \ctrl|Selector4~1_combout\);

-- Location: FF_X45_Y2_N13
\ctrl|state_reg.down_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Selector4~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|state_reg.down_state~q\);

-- Location: LABCELL_X48_Y2_N24
\ctrl|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Selector9~0_combout\ = ( \ctrl|curr_floor\(0) & ( \req_resolver|Decoder1~0_combout\ & ( (!\ctrl|Selector2~5_combout\) # ((!\ctrl|state_reg.down_state~q\ & (!\ctrl|state_reg.up_state~DUPLICATE_q\)) # (\ctrl|state_reg.down_state~q\ & 
-- ((!\ctrl|curr_floor\(3))))) ) ) ) # ( !\ctrl|curr_floor\(0) & ( \req_resolver|Decoder1~0_combout\ & ( (\ctrl|Selector2~5_combout\ & ((!\ctrl|state_reg.down_state~q\ & (\ctrl|state_reg.up_state~DUPLICATE_q\)) # (\ctrl|state_reg.down_state~q\ & 
-- ((\ctrl|curr_floor\(3)))))) ) ) ) # ( \ctrl|curr_floor\(0) & ( !\req_resolver|Decoder1~0_combout\ & ( (!\ctrl|Selector2~5_combout\) # ((!\ctrl|state_reg.down_state~q\ & ((!\ctrl|state_reg.up_state~DUPLICATE_q\) # (\ctrl|curr_floor\(3))))) ) ) ) # ( 
-- !\ctrl|curr_floor\(0) & ( !\req_resolver|Decoder1~0_combout\ & ( (\ctrl|Selector2~5_combout\ & (((\ctrl|state_reg.up_state~DUPLICATE_q\ & !\ctrl|curr_floor\(3))) # (\ctrl|state_reg.down_state~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000101111110001111101000000010000001111111110111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_state_reg.down_state~q\,
	datab => \ctrl|ALT_INV_state_reg.up_state~DUPLICATE_q\,
	datac => \ctrl|ALT_INV_Selector2~5_combout\,
	datad => \ctrl|ALT_INV_curr_floor\(3),
	datae => \ctrl|ALT_INV_curr_floor\(0),
	dataf => \req_resolver|ALT_INV_Decoder1~0_combout\,
	combout => \ctrl|Selector9~0_combout\);

-- Location: FF_X48_Y2_N26
\ctrl|curr_floor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Selector9~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|curr_floor\(0));

-- Location: LABCELL_X50_Y2_N27
\req_resolver|Decoder1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|Decoder1~0_combout\ = ( !\ctrl|curr_floor\(1) & ( (!\ctrl|curr_floor\(2) & !\ctrl|curr_floor\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(2),
	datad => \ctrl|ALT_INV_curr_floor\(0),
	dataf => \ctrl|ALT_INV_curr_floor\(1),
	combout => \req_resolver|Decoder1~0_combout\);

-- Location: LABCELL_X50_Y2_N36
\ctrl|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Add2~1_combout\ = ( \ctrl|curr_floor\(1) & ( !\ctrl|curr_floor\(2) $ (((\ctrl|curr_floor\(0) & \ctrl|state_reg.up_state~DUPLICATE_q\))) ) ) # ( !\ctrl|curr_floor\(1) & ( !\ctrl|curr_floor\(2) $ (((!\ctrl|curr_floor\(0) & 
-- !\ctrl|state_reg.up_state~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000011111010000001011111101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(0),
	datac => \ctrl|ALT_INV_state_reg.up_state~DUPLICATE_q\,
	datad => \ctrl|ALT_INV_curr_floor\(2),
	dataf => \ctrl|ALT_INV_curr_floor\(1),
	combout => \ctrl|Add2~1_combout\);

-- Location: LABCELL_X50_Y2_N3
\ctrl|curr_floor[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|curr_floor[2]~2_combout\ = ( \ctrl|Add2~1_combout\ & ( \ctrl|curr_floor\(2) & ( (!\ctrl|curr_floor[3]~0_combout\) # ((!\req_resolver|Decoder1~0_combout\ & (!\ctrl|state_reg.down_state~q\ & \ctrl|curr_floor\(3))) # (\req_resolver|Decoder1~0_combout\ 
-- & (\ctrl|state_reg.down_state~q\ & !\ctrl|curr_floor\(3)))) ) ) ) # ( !\ctrl|Add2~1_combout\ & ( \ctrl|curr_floor\(2) ) ) # ( !\ctrl|Add2~1_combout\ & ( !\ctrl|curr_floor\(2) & ( (\ctrl|curr_floor[3]~0_combout\ & ((!\req_resolver|Decoder1~0_combout\ & 
-- ((!\ctrl|curr_floor\(3)) # (\ctrl|state_reg.down_state~q\))) # (\req_resolver|Decoder1~0_combout\ & ((!\ctrl|state_reg.down_state~q\) # (\ctrl|curr_floor\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100111000000000000000011111111111111111111111100011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \req_resolver|ALT_INV_Decoder1~0_combout\,
	datab => \ctrl|ALT_INV_state_reg.down_state~q\,
	datac => \ctrl|ALT_INV_curr_floor\(3),
	datad => \ctrl|ALT_INV_curr_floor[3]~0_combout\,
	datae => \ctrl|ALT_INV_Add2~1_combout\,
	dataf => \ctrl|ALT_INV_curr_floor\(2),
	combout => \ctrl|curr_floor[2]~2_combout\);

-- Location: FF_X47_Y2_N2
\ctrl|curr_floor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ctrl|curr_floor[2]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|curr_floor\(2));

-- Location: LABCELL_X46_Y2_N18
\req_resolver|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \req_resolver|Mux1~0_combout\ = ( \req_resolver|Mux0~0_combout\ & ( \req_resolver|Mux0~1_combout\ & ( (\req_resolver|Equal1~0_combout\ & ((!\ctrl|curr_floor\(3)) # (\req_resolver|Mux0~2_combout\))) ) ) ) # ( !\req_resolver|Mux0~0_combout\ & ( 
-- \req_resolver|Mux0~1_combout\ & ( (\req_resolver|Equal1~0_combout\ & (((\ctrl|curr_floor\(2) & !\ctrl|curr_floor\(3))) # (\req_resolver|Mux0~2_combout\))) ) ) ) # ( \req_resolver|Mux0~0_combout\ & ( !\req_resolver|Mux0~1_combout\ & ( 
-- (\req_resolver|Equal1~0_combout\ & (((!\ctrl|curr_floor\(2) & !\ctrl|curr_floor\(3))) # (\req_resolver|Mux0~2_combout\))) ) ) ) # ( !\req_resolver|Mux0~0_combout\ & ( !\req_resolver|Mux0~1_combout\ & ( (\req_resolver|Mux0~2_combout\ & 
-- \req_resolver|Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001000111100000000010011110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(2),
	datab => \ctrl|ALT_INV_curr_floor\(3),
	datac => \req_resolver|ALT_INV_Mux0~2_combout\,
	datad => \req_resolver|ALT_INV_Equal1~0_combout\,
	datae => \req_resolver|ALT_INV_Mux0~0_combout\,
	dataf => \req_resolver|ALT_INV_Mux0~1_combout\,
	combout => \req_resolver|Mux1~0_combout\);

-- Location: LABCELL_X45_Y2_N45
\ctrl|process_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|process_1~1_combout\ = ( \ctrl|process_1~0_combout\ & ( \req_resolver|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \req_resolver|ALT_INV_Mux1~0_combout\,
	dataf => \ctrl|ALT_INV_process_1~0_combout\,
	combout => \ctrl|process_1~1_combout\);

-- Location: LABCELL_X45_Y2_N57
\ctrl|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Selector3~0_combout\ = ( \ctrl|process_1~0_combout\ & ( (!\ctrl|Selector2~0_combout\ & (((\ctrl|state_reg.idle_state~DUPLICATE_q\ & !\ctrl|state_reg.up_state~DUPLICATE_q\)) # (\req_resolver|Mux1~0_combout\))) ) ) # ( !\ctrl|process_1~0_combout\ & ( 
-- (!\ctrl|state_reg.up_state~DUPLICATE_q\ & (!\ctrl|Selector2~0_combout\ & ((\req_resolver|Mux1~0_combout\) # (\ctrl|state_reg.idle_state~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000010000001100000001000000111100000100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_state_reg.idle_state~DUPLICATE_q\,
	datab => \ctrl|ALT_INV_state_reg.up_state~DUPLICATE_q\,
	datac => \ctrl|ALT_INV_Selector2~0_combout\,
	datad => \req_resolver|ALT_INV_Mux1~0_combout\,
	dataf => \ctrl|ALT_INV_process_1~0_combout\,
	combout => \ctrl|Selector3~0_combout\);

-- Location: LABCELL_X46_Y2_N42
\ctrl|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Selector3~1_combout\ = ( \ctrl|state_reg.up_state~q\ & ( (\req_resolver|Mux1~0_combout\ & !\ctrl|process_1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \req_resolver|ALT_INV_Mux1~0_combout\,
	datad => \ctrl|ALT_INV_process_1~0_combout\,
	dataf => \ctrl|ALT_INV_state_reg.up_state~q\,
	combout => \ctrl|Selector3~1_combout\);

-- Location: LABCELL_X46_Y2_N12
\ctrl|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Selector3~2_combout\ = ( \req_resolver|Mux3~1_combout\ & ( \req_resolver|Mux2~1_combout\ & ( !\ctrl|Selector3~0_combout\ ) ) ) # ( !\req_resolver|Mux3~1_combout\ & ( \req_resolver|Mux2~1_combout\ & ( (!\ctrl|Selector3~0_combout\) # 
-- (((!\ctrl|process_1~1_combout\ & \ctrl|state_reg.down_state~q\)) # (\ctrl|Selector3~1_combout\)) ) ) ) # ( !\req_resolver|Mux3~1_combout\ & ( !\req_resolver|Mux2~1_combout\ & ( \ctrl|Selector3~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000011001110111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_process_1~1_combout\,
	datab => \ctrl|ALT_INV_Selector3~0_combout\,
	datac => \ctrl|ALT_INV_state_reg.down_state~q\,
	datad => \ctrl|ALT_INV_Selector3~1_combout\,
	datae => \req_resolver|ALT_INV_Mux3~1_combout\,
	dataf => \req_resolver|ALT_INV_Mux2~1_combout\,
	combout => \ctrl|Selector3~2_combout\);

-- Location: FF_X46_Y2_N14
\ctrl|state_reg.up_state~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ctrl|Selector3~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|state_reg.up_state~DUPLICATE_q\);

-- Location: LABCELL_X50_Y2_N54
\ssd_disp|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ssd_disp|Mux6~0_combout\ = ( !\ctrl|curr_floor\(3) & ( (!\ctrl|curr_floor\(1) & (!\ctrl|curr_floor\(2) $ (!\ctrl|curr_floor\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(1),
	datac => \ctrl|ALT_INV_curr_floor\(2),
	datad => \ctrl|ALT_INV_curr_floor\(0),
	dataf => \ctrl|ALT_INV_curr_floor\(3),
	combout => \ssd_disp|Mux6~0_combout\);

-- Location: LABCELL_X50_Y2_N18
\ssd_disp|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ssd_disp|Mux5~0_combout\ = ( \ctrl|curr_floor\(0) & ( (\ctrl|curr_floor\(2) & !\ctrl|curr_floor\(1)) ) ) # ( !\ctrl|curr_floor\(0) & ( (\ctrl|curr_floor\(2) & \ctrl|curr_floor\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(2),
	datab => \ctrl|ALT_INV_curr_floor\(1),
	dataf => \ctrl|ALT_INV_curr_floor\(0),
	combout => \ssd_disp|Mux5~0_combout\);

-- Location: LABCELL_X50_Y2_N30
\ssd_disp|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ssd_disp|Mux4~0_combout\ = ( \ctrl|curr_floor\(1) & ( (!\ctrl|curr_floor\(2) & !\ctrl|curr_floor\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(2),
	datac => \ctrl|ALT_INV_curr_floor\(0),
	dataf => \ctrl|ALT_INV_curr_floor\(1),
	combout => \ssd_disp|Mux4~0_combout\);

-- Location: LABCELL_X50_Y2_N15
\ssd_disp|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ssd_disp|Mux3~0_combout\ = ( !\ctrl|curr_floor\(3) & ( (!\ctrl|curr_floor\(1) & (!\ctrl|curr_floor\(2) $ (!\ctrl|curr_floor\(0)))) # (\ctrl|curr_floor\(1) & (\ctrl|curr_floor\(2) & \ctrl|curr_floor\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010011001001000101001100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(1),
	datab => \ctrl|ALT_INV_curr_floor\(2),
	datad => \ctrl|ALT_INV_curr_floor\(0),
	dataf => \ctrl|ALT_INV_curr_floor\(3),
	combout => \ssd_disp|Mux3~0_combout\);

-- Location: LABCELL_X50_Y2_N33
\ssd_disp|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ssd_disp|Mux2~0_combout\ = ( \ctrl|curr_floor\(1) & ( \ctrl|curr_floor\(0) ) ) # ( !\ctrl|curr_floor\(1) & ( (\ctrl|curr_floor\(0)) # (\ctrl|curr_floor\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(2),
	datad => \ctrl|ALT_INV_curr_floor\(0),
	dataf => \ctrl|ALT_INV_curr_floor\(1),
	combout => \ssd_disp|Mux2~0_combout\);

-- Location: LABCELL_X50_Y2_N45
\ssd_disp|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ssd_disp|Mux1~0_combout\ = ( \ctrl|curr_floor\(1) & ( (!\ctrl|curr_floor\(3) & ((!\ctrl|curr_floor\(2)) # (\ctrl|curr_floor\(0)))) ) ) # ( !\ctrl|curr_floor\(1) & ( (!\ctrl|curr_floor\(3) & (!\ctrl|curr_floor\(2) & \ctrl|curr_floor\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|ALT_INV_curr_floor\(3),
	datac => \ctrl|ALT_INV_curr_floor\(2),
	datad => \ctrl|ALT_INV_curr_floor\(0),
	dataf => \ctrl|ALT_INV_curr_floor\(1),
	combout => \ssd_disp|Mux1~0_combout\);

-- Location: LABCELL_X50_Y2_N39
\ssd_disp|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ssd_disp|Mux0~0_combout\ = ( \ctrl|curr_floor\(3) ) # ( !\ctrl|curr_floor\(3) & ( (!\ctrl|curr_floor\(2) & ((\ctrl|curr_floor\(1)))) # (\ctrl|curr_floor\(2) & ((!\ctrl|curr_floor\(0)) # (!\ctrl|curr_floor\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111000111110001111100011111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_curr_floor\(0),
	datab => \ctrl|ALT_INV_curr_floor\(2),
	datac => \ctrl|ALT_INV_curr_floor\(1),
	dataf => \ctrl|ALT_INV_curr_floor\(3),
	combout => \ssd_disp|Mux0~0_combout\);

-- Location: MLABCELL_X21_Y25_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


