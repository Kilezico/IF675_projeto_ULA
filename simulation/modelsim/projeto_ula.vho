-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/03/2024 13:09:28"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	circuitoPrincipal IS
    PORT (
	Sinal : OUT std_logic;
	A : IN std_logic_vector(4 DOWNTO 0);
	B : IN std_logic_vector(4 DOWNTO 0);
	sel : IN std_logic_vector(2 DOWNTO 0);
	Status : OUT std_logic;
	displaySinal : OUT std_logic;
	dispalyF1 : OUT std_logic_vector(6 DOWNTO 0);
	displayA0 : OUT std_logic_vector(6 DOWNTO 0);
	displayA1 : OUT std_logic_vector(6 DOWNTO 0);
	displayB0 : OUT std_logic_vector(6 DOWNTO 0);
	displayB1 : OUT std_logic_vector(6 DOWNTO 0);
	displayF0 : OUT std_logic_vector(6 DOWNTO 0);
	F : OUT std_logic_vector(4 DOWNTO 0);
	LED_A : OUT std_logic_vector(4 DOWNTO 0);
	LED_B : OUT std_logic_vector(4 DOWNTO 0);
	LED_sel : OUT std_logic_vector(2 DOWNTO 0)
	);
END circuitoPrincipal;

-- Design Ports Information
-- Sinal	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Status	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displaySinal	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispalyF1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispalyF1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispalyF1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispalyF1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispalyF1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispalyF1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispalyF1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayA0[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayA0[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayA0[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayA0[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayA0[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayA0[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayA0[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayA1[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayA1[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayA1[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayA1[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayA1[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayA1[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayA1[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayB0[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayB0[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayB0[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayB0[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayB0[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayB0[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayB0[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayB1[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayB1[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayB1[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayB1[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayB1[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayB1[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayB1[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayF0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayF0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayF0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayF0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayF0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayF0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayF0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_A[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_A[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_A[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_A[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_A[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_B[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_B[3]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_B[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_B[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_B[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_sel[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_sel[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_sel[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF circuitoPrincipal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Sinal : std_logic;
SIGNAL ww_A : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Status : std_logic;
SIGNAL ww_displaySinal : std_logic;
SIGNAL ww_dispalyF1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_displayA0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_displayA1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_displayB0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_displayB1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_displayF0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_LED_A : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_LED_B : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_LED_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL \Sinal~output_o\ : std_logic;
SIGNAL \Status~output_o\ : std_logic;
SIGNAL \displaySinal~output_o\ : std_logic;
SIGNAL \dispalyF1[6]~output_o\ : std_logic;
SIGNAL \dispalyF1[5]~output_o\ : std_logic;
SIGNAL \dispalyF1[4]~output_o\ : std_logic;
SIGNAL \dispalyF1[3]~output_o\ : std_logic;
SIGNAL \dispalyF1[2]~output_o\ : std_logic;
SIGNAL \dispalyF1[1]~output_o\ : std_logic;
SIGNAL \dispalyF1[0]~output_o\ : std_logic;
SIGNAL \displayA0[6]~output_o\ : std_logic;
SIGNAL \displayA0[5]~output_o\ : std_logic;
SIGNAL \displayA0[4]~output_o\ : std_logic;
SIGNAL \displayA0[3]~output_o\ : std_logic;
SIGNAL \displayA0[2]~output_o\ : std_logic;
SIGNAL \displayA0[1]~output_o\ : std_logic;
SIGNAL \displayA0[0]~output_o\ : std_logic;
SIGNAL \displayA1[6]~output_o\ : std_logic;
SIGNAL \displayA1[5]~output_o\ : std_logic;
SIGNAL \displayA1[4]~output_o\ : std_logic;
SIGNAL \displayA1[3]~output_o\ : std_logic;
SIGNAL \displayA1[2]~output_o\ : std_logic;
SIGNAL \displayA1[1]~output_o\ : std_logic;
SIGNAL \displayA1[0]~output_o\ : std_logic;
SIGNAL \displayB0[6]~output_o\ : std_logic;
SIGNAL \displayB0[5]~output_o\ : std_logic;
SIGNAL \displayB0[4]~output_o\ : std_logic;
SIGNAL \displayB0[3]~output_o\ : std_logic;
SIGNAL \displayB0[2]~output_o\ : std_logic;
SIGNAL \displayB0[1]~output_o\ : std_logic;
SIGNAL \displayB0[0]~output_o\ : std_logic;
SIGNAL \displayB1[6]~output_o\ : std_logic;
SIGNAL \displayB1[5]~output_o\ : std_logic;
SIGNAL \displayB1[4]~output_o\ : std_logic;
SIGNAL \displayB1[3]~output_o\ : std_logic;
SIGNAL \displayB1[2]~output_o\ : std_logic;
SIGNAL \displayB1[1]~output_o\ : std_logic;
SIGNAL \displayB1[0]~output_o\ : std_logic;
SIGNAL \displayF0[6]~output_o\ : std_logic;
SIGNAL \displayF0[5]~output_o\ : std_logic;
SIGNAL \displayF0[4]~output_o\ : std_logic;
SIGNAL \displayF0[3]~output_o\ : std_logic;
SIGNAL \displayF0[2]~output_o\ : std_logic;
SIGNAL \displayF0[1]~output_o\ : std_logic;
SIGNAL \displayF0[0]~output_o\ : std_logic;
SIGNAL \F[4]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \LED_A[4]~output_o\ : std_logic;
SIGNAL \LED_A[3]~output_o\ : std_logic;
SIGNAL \LED_A[2]~output_o\ : std_logic;
SIGNAL \LED_A[1]~output_o\ : std_logic;
SIGNAL \LED_A[0]~output_o\ : std_logic;
SIGNAL \LED_B[4]~output_o\ : std_logic;
SIGNAL \LED_B[3]~output_o\ : std_logic;
SIGNAL \LED_B[2]~output_o\ : std_logic;
SIGNAL \LED_B[1]~output_o\ : std_logic;
SIGNAL \LED_B[0]~output_o\ : std_logic;
SIGNAL \LED_sel[2]~output_o\ : std_logic;
SIGNAL \LED_sel[1]~output_o\ : std_logic;
SIGNAL \LED_sel[0]~output_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \inst|inst2|inst[4]~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst|inst10|inst|inst1|inst2[4]~0_combout\ : std_logic;
SIGNAL \inst|inst10|inst|inst1|inst3[2]~1_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst|inst10|inst1|inst|inst1|inst4|inst4|inst1~combout\ : std_logic;
SIGNAL \inst|inst10|inst|inst1|inst3[1]~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \inst|inst9|inst1|inst1|inst3[1]~2_combout\ : std_logic;
SIGNAL \inst|inst9|inst7|inst|inst4|inst5~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst|inst9|inst1|inst1|inst3[2]~1_combout\ : std_logic;
SIGNAL \inst|inst9|inst7|inst|inst5|inst5~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst|inst9|inst1|inst1|inst3[3]~0_combout\ : std_logic;
SIGNAL \inst|inst9|inst2|inst1|inst5|inst4|inst1~combout\ : std_logic;
SIGNAL \inst|inst10|inst|inst|inst1|inst6|inst4|inst~combout\ : std_logic;
SIGNAL \inst|inst10|inst|inst1|inst3[3]~2_combout\ : std_logic;
SIGNAL \inst|inst9|inst7|inst|inst6|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst10|inst1|inst7~0_combout\ : std_logic;
SIGNAL \inst|inst9|inst2|inst1|inst7|inst4|inst~combout\ : std_logic;
SIGNAL \inst|inst9|inst7|outruonome|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst10|inst2|inst|inst4|inst5~2_combout\ : std_logic;
SIGNAL \inst|inst10|inst2|inst|inst4|inst5~3_combout\ : std_logic;
SIGNAL \inst|inst10|inst2|inst|inst5|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst10|inst2|inst|inst5|inst5~1_combout\ : std_logic;
SIGNAL \inst|inst10|inst2|inst|inst6|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst10|inst2|outruonome|inst3~2_combout\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \inst|inst1|inst16~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst|inst33~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst|inst33~1_combout\ : std_logic;
SIGNAL \inst|inst10|inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst|inst33~2_combout\ : std_logic;
SIGNAL \inst|inst|inst16~7_combout\ : std_logic;
SIGNAL \inst|inst5|inst|inst21~1_combout\ : std_logic;
SIGNAL \inst|inst10|inst|inst1|inst2[4]~1_combout\ : std_logic;
SIGNAL \inst|inst5|inst|inst21~0_combout\ : std_logic;
SIGNAL \inst|inst|inst16~6_combout\ : std_logic;
SIGNAL \inst|inst|inst16~4_combout\ : std_logic;
SIGNAL \inst|inst|inst16~5_combout\ : std_logic;
SIGNAL \inst12|inst3~combout\ : std_logic;
SIGNAL \inst|inst10|inst2|inst|inst6|inst4|inst~combout\ : std_logic;
SIGNAL \inst|inst2|inst[4]~1_combout\ : std_logic;
SIGNAL \inst|inst10|inst4|inst|inst1|inst4|inst4|inst1~combout\ : std_logic;
SIGNAL \inst|inst10|inst4|inst|inst1|inst5|inst4|inst1~combout\ : std_logic;
SIGNAL \inst|inst2|inst16[3]~1_combout\ : std_logic;
SIGNAL \inst|inst9|inst7|inst|inst6|inst4|inst~combout\ : std_logic;
SIGNAL \inst|inst9|inst7|inst|inst5|inst4|inst~combout\ : std_logic;
SIGNAL \inst|inst9|inst3|inst|inst1|inst4|inst4|inst1~combout\ : std_logic;
SIGNAL \inst|inst9|inst3|inst|inst1|inst5|inst4|inst1~combout\ : std_logic;
SIGNAL \inst|inst2|inst6[3]~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[3]~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[3]~2_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[3]~3_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[3]~4_combout\ : std_logic;
SIGNAL \inst|inst10|inst2|inst|inst5|inst4|inst~combout\ : std_logic;
SIGNAL \inst|inst2|inst16[2]~5_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[2]~7_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[2]~8_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[2]~6_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[2]~9_combout\ : std_logic;
SIGNAL \inst|inst10|inst4|inst|inst1|inst7|inst4|inst~combout\ : std_logic;
SIGNAL \inst|inst2|inst[4]~2_combout\ : std_logic;
SIGNAL \inst|inst9|inst3|inst|inst1|inst6|inst4|inst1~combout\ : std_logic;
SIGNAL \inst|inst2|inst16[4]~14_combout\ : std_logic;
SIGNAL \inst|inst2|inst[4]~3_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[4]~11_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[4]~12_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[4]~10_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[4]~13_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[4]~15_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[1]~23_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[1]~24_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[1]~17_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[1]~18_combout\ : std_logic;
SIGNAL \inst|inst10|inst2|inst|inst4|inst4|inst~2_combout\ : std_logic;
SIGNAL \inst|inst5|inst|inst99~combout\ : std_logic;
SIGNAL \inst|inst2|inst16[1]~16_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[1]~19_combout\ : std_logic;
SIGNAL \inst3|inst|instor[1]~0_combout\ : std_logic;
SIGNAL \inst12|inst[4]~8_combout\ : std_logic;
SIGNAL \inst6|inst5[6]~10_combout\ : std_logic;
SIGNAL \inst6|inst5[5]~11_combout\ : std_logic;
SIGNAL \inst6|inst5[5]~15_combout\ : std_logic;
SIGNAL \inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst1|inst|inst1|inst4|inst|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst|inst1|inst5|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst5[3]~12_combout\ : std_logic;
SIGNAL \inst6|inst5[3]~16_combout\ : std_logic;
SIGNAL \inst1|inst1|inst9~combout\ : std_logic;
SIGNAL \inst6|inst5[1]~13_combout\ : std_logic;
SIGNAL \inst6|inst5[0]~14_combout\ : std_logic;
SIGNAL \inst6|inst5[0]~17_combout\ : std_logic;
SIGNAL \inst7|inst5[6]~10_combout\ : std_logic;
SIGNAL \inst7|inst5[5]~11_combout\ : std_logic;
SIGNAL \inst7|inst5[5]~15_combout\ : std_logic;
SIGNAL \inst2|inst|inst1|inst5|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst1|inst4|inst|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst5[3]~12_combout\ : std_logic;
SIGNAL \inst7|inst5[3]~16_combout\ : std_logic;
SIGNAL \inst2|inst1|inst9~combout\ : std_logic;
SIGNAL \inst7|inst5[1]~13_combout\ : std_logic;
SIGNAL \inst7|inst5[0]~14_combout\ : std_logic;
SIGNAL \inst7|inst5[0]~17_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[0]~21_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[0]~20_combout\ : std_logic;
SIGNAL \inst|inst2|inst16[0]~22_combout\ : std_logic;
SIGNAL \inst3|inst1|inst9~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst1|inst5|inst4|inst~combout\ : std_logic;
SIGNAL \inst3|inst|inst1|inst4|inst|inst~0_combout\ : std_logic;
SIGNAL \inst12|inst1[6]~4_combout\ : std_logic;
SIGNAL \inst12|inst1[5]~5_combout\ : std_logic;
SIGNAL \inst12|inst1[5]~9_combout\ : std_logic;
SIGNAL \inst12|inst1[0]~6_combout\ : std_logic;
SIGNAL \inst12|inst1[3]~7_combout\ : std_logic;
SIGNAL \inst12|inst1[1]~8_combout\ : std_logic;
SIGNAL \inst3|inst|instor\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst10|inst1|inst1|inst2\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst7|inst6\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|inst5|inst2|inst1|inst\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|inst5\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst12|inst\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst6|inst6\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst7|inst5\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst12|inst1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|inst2|ALT_INV_inst[4]~0_combout\ : std_logic;
SIGNAL \inst12|ALT_INV_inst[4]~8_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Sinal <= ww_Sinal;
ww_A <= A;
ww_B <= B;
ww_sel <= sel;
Status <= ww_Status;
displaySinal <= ww_displaySinal;
dispalyF1 <= ww_dispalyF1;
displayA0 <= ww_displayA0;
displayA1 <= ww_displayA1;
displayB0 <= ww_displayB0;
displayB1 <= ww_displayB1;
displayF0 <= ww_displayF0;
F <= ww_F;
LED_A <= ww_LED_A;
LED_B <= ww_LED_B;
LED_sel <= ww_LED_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|inst2|ALT_INV_inst[4]~0_combout\ <= NOT \inst|inst2|inst[4]~0_combout\;
\inst12|ALT_INV_inst[4]~8_combout\ <= NOT \inst12|inst[4]~8_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N23
\Sinal~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst16~0_combout\,
	devoe => ww_devoe,
	o => \Sinal~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Status~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst16~5_combout\,
	devoe => ww_devoe,
	o => \Status~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\displaySinal~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst3~combout\,
	devoe => ww_devoe,
	o => \displaySinal~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\dispalyF1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst\(6),
	devoe => ww_devoe,
	o => \dispalyF1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\dispalyF1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst\(5),
	devoe => ww_devoe,
	o => \dispalyF1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\dispalyF1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|ALT_INV_inst[4]~8_combout\,
	devoe => ww_devoe,
	o => \dispalyF1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\dispalyF1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst\(3),
	devoe => ww_devoe,
	o => \dispalyF1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\dispalyF1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst\(2),
	devoe => ww_devoe,
	o => \dispalyF1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\dispalyF1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|ALT_INV_inst[4]~0_combout\,
	devoe => ww_devoe,
	o => \dispalyF1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\dispalyF1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst\(3),
	devoe => ww_devoe,
	o => \dispalyF1[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\displayA0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5\(6),
	devoe => ww_devoe,
	o => \displayA0[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\displayA0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5[5]~15_combout\,
	devoe => ww_devoe,
	o => \displayA0[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\displayA0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5\(4),
	devoe => ww_devoe,
	o => \displayA0[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\displayA0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5[3]~16_combout\,
	devoe => ww_devoe,
	o => \displayA0[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\displayA0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5\(2),
	devoe => ww_devoe,
	o => \displayA0[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\displayA0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5[1]~13_combout\,
	devoe => ww_devoe,
	o => \displayA0[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\displayA0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5[0]~17_combout\,
	devoe => ww_devoe,
	o => \displayA0[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\displayA1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displayA1[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\displayA1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst6\(5),
	devoe => ww_devoe,
	o => \displayA1[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\displayA1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst6\(5),
	devoe => ww_devoe,
	o => \displayA1[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\displayA1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst6\(5),
	devoe => ww_devoe,
	o => \displayA1[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\displayA1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst2~0_combout\,
	devoe => ww_devoe,
	o => \displayA1[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\displayA1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst2~0_combout\,
	devoe => ww_devoe,
	o => \displayA1[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\displayA1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst6\(5),
	devoe => ww_devoe,
	o => \displayA1[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\displayB0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5\(6),
	devoe => ww_devoe,
	o => \displayB0[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\displayB0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5[5]~15_combout\,
	devoe => ww_devoe,
	o => \displayB0[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\displayB0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5\(4),
	devoe => ww_devoe,
	o => \displayB0[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\displayB0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5[3]~16_combout\,
	devoe => ww_devoe,
	o => \displayB0[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\displayB0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5\(2),
	devoe => ww_devoe,
	o => \displayB0[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\displayB0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5[1]~13_combout\,
	devoe => ww_devoe,
	o => \displayB0[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\displayB0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5[0]~17_combout\,
	devoe => ww_devoe,
	o => \displayB0[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\displayB1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \displayB1[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\displayB1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst6\(5),
	devoe => ww_devoe,
	o => \displayB1[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\displayB1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst6\(5),
	devoe => ww_devoe,
	o => \displayB1[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\displayB1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst6\(5),
	devoe => ww_devoe,
	o => \displayB1[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\displayB1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst2~0_combout\,
	devoe => ww_devoe,
	o => \displayB1[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\displayB1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst2~0_combout\,
	devoe => ww_devoe,
	o => \displayB1[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\displayB1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst6\(5),
	devoe => ww_devoe,
	o => \displayB1[0]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\displayF0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst1\(6),
	devoe => ww_devoe,
	o => \displayF0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\displayF0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst1[5]~9_combout\,
	devoe => ww_devoe,
	o => \displayF0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\displayF0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst1\(4),
	devoe => ww_devoe,
	o => \displayF0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\displayF0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst1[3]~7_combout\,
	devoe => ww_devoe,
	o => \displayF0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\displayF0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst1\(2),
	devoe => ww_devoe,
	o => \displayF0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\displayF0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst1[1]~8_combout\,
	devoe => ww_devoe,
	o => \displayF0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\displayF0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst1\(0),
	devoe => ww_devoe,
	o => \displayF0[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\F[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst16[4]~15_combout\,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\F[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst16[3]~4_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\F[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst16[2]~9_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\F[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst16[1]~19_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\F[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst16[0]~22_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LED_A[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~input_o\,
	devoe => ww_devoe,
	o => \LED_A[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LED_A[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[3]~input_o\,
	devoe => ww_devoe,
	o => \LED_A[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LED_A[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[2]~input_o\,
	devoe => ww_devoe,
	o => \LED_A[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LED_A[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[1]~input_o\,
	devoe => ww_devoe,
	o => \LED_A[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LED_A[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[0]~input_o\,
	devoe => ww_devoe,
	o => \LED_A[0]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LED_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[4]~input_o\,
	devoe => ww_devoe,
	o => \LED_B[4]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LED_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[3]~input_o\,
	devoe => ww_devoe,
	o => \LED_B[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LED_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[2]~input_o\,
	devoe => ww_devoe,
	o => \LED_B[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LED_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[1]~input_o\,
	devoe => ww_devoe,
	o => \LED_B[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LED_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[0]~input_o\,
	devoe => ww_devoe,
	o => \LED_B[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LED_sel[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel[2]~input_o\,
	devoe => ww_devoe,
	o => \LED_sel[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LED_sel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel[1]~input_o\,
	devoe => ww_devoe,
	o => \LED_sel[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LED_sel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel[0]~input_o\,
	devoe => ww_devoe,
	o => \LED_sel[0]~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: LCCOMB_X109_Y12_N8
\inst|inst2|inst[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst[4]~0_combout\ = (!\sel[1]~input_o\ & !\sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel[1]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \inst|inst2|inst[4]~0_combout\);

-- Location: IOIBUF_X115_Y14_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X109_Y10_N16
\inst|inst10|inst|inst1|inst2[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst|inst1|inst2[4]~0_combout\ = (\A[1]~input_o\) # ((\A[0]~input_o\) # ((\A[3]~input_o\) # (\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst|inst10|inst|inst1|inst2[4]~0_combout\);

-- Location: LCCOMB_X109_Y10_N20
\inst|inst10|inst|inst1|inst3[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst|inst1|inst3[2]~1_combout\ = \A[2]~input_o\ $ (((\A[4]~input_o\ & ((\A[1]~input_o\) # (\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst|inst10|inst|inst1|inst3[2]~1_combout\);

-- Location: IOIBUF_X115_Y15_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X108_Y10_N0
\inst|inst10|inst1|inst|inst1|inst4|inst4|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst1|inst|inst1|inst4|inst4|inst1~combout\ = (\B[0]~input_o\) # (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \inst|inst10|inst1|inst|inst1|inst4|inst4|inst1~combout\);

-- Location: LCCOMB_X109_Y10_N2
\inst|inst10|inst|inst1|inst3[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst|inst1|inst3[1]~0_combout\ = \A[1]~input_o\ $ (((\A[0]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[4]~input_o\,
	combout => \inst|inst10|inst|inst1|inst3[1]~0_combout\);

-- Location: IOIBUF_X115_Y5_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X108_Y10_N24
\inst|inst9|inst1|inst1|inst3[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|inst1|inst1|inst3[1]~2_combout\ = \B[1]~input_o\ $ (((\B[0]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[4]~input_o\,
	combout => \inst|inst9|inst1|inst1|inst3[1]~2_combout\);

-- Location: LCCOMB_X108_Y12_N26
\inst|inst9|inst7|inst|inst4|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|inst7|inst|inst4|inst5~0_combout\ = (\A[0]~input_o\ & ((\inst|inst9|inst1|inst1|inst3[1]~2_combout\ & (\inst|inst10|inst|inst1|inst3[1]~0_combout\)) # (!\inst|inst9|inst1|inst1|inst3[1]~2_combout\ & ((\B[0]~input_o\))))) # (!\A[0]~input_o\ & 
-- (\inst|inst10|inst|inst1|inst3[1]~0_combout\ & (\inst|inst9|inst1|inst1|inst3[1]~2_combout\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst|inst1|inst3[1]~0_combout\,
	datab => \A[0]~input_o\,
	datac => \inst|inst9|inst1|inst1|inst3[1]~2_combout\,
	datad => \B[0]~input_o\,
	combout => \inst|inst9|inst7|inst|inst4|inst5~0_combout\);

-- Location: IOIBUF_X115_Y16_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X108_Y12_N24
\inst|inst9|inst1|inst1|inst3[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|inst1|inst1|inst3[2]~1_combout\ = \B[2]~input_o\ $ (((\B[4]~input_o\ & ((\B[1]~input_o\) # (\B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|inst9|inst1|inst1|inst3[2]~1_combout\);

-- Location: LCCOMB_X108_Y12_N20
\inst|inst9|inst7|inst|inst5|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|inst7|inst|inst5|inst5~0_combout\ = (\inst|inst10|inst|inst1|inst3[2]~1_combout\ & ((\inst|inst9|inst7|inst|inst4|inst5~0_combout\) # (\inst|inst10|inst1|inst|inst1|inst4|inst4|inst1~combout\ $ (\inst|inst9|inst1|inst1|inst3[2]~1_combout\)))) 
-- # (!\inst|inst10|inst|inst1|inst3[2]~1_combout\ & (\inst|inst9|inst7|inst|inst4|inst5~0_combout\ & (\inst|inst10|inst1|inst|inst1|inst4|inst4|inst1~combout\ $ (\inst|inst9|inst1|inst1|inst3[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst|inst1|inst3[2]~1_combout\,
	datab => \inst|inst10|inst1|inst|inst1|inst4|inst4|inst1~combout\,
	datac => \inst|inst9|inst7|inst|inst4|inst5~0_combout\,
	datad => \inst|inst9|inst1|inst1|inst3[2]~1_combout\,
	combout => \inst|inst9|inst7|inst|inst5|inst5~0_combout\);

-- Location: IOIBUF_X115_Y4_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X108_Y10_N10
\inst|inst9|inst1|inst1|inst3[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|inst1|inst1|inst3[3]~0_combout\ = \B[3]~input_o\ $ (((\B[4]~input_o\ & ((\inst|inst10|inst1|inst|inst1|inst4|inst4|inst1~combout\) # (\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \inst|inst10|inst1|inst|inst1|inst4|inst4|inst1~combout\,
	datad => \B[2]~input_o\,
	combout => \inst|inst9|inst1|inst1|inst3[3]~0_combout\);

-- Location: LCCOMB_X108_Y10_N12
\inst|inst9|inst2|inst1|inst5|inst4|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|inst2|inst1|inst5|inst4|inst1~combout\ = (\B[0]~input_o\) # ((\B[1]~input_o\) # (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst|inst9|inst2|inst1|inst5|inst4|inst1~combout\);

-- Location: LCCOMB_X109_Y10_N6
\inst|inst10|inst|inst|inst1|inst6|inst4|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst|inst|inst1|inst6|inst4|inst~combout\ = \A[3]~input_o\ $ (((\A[1]~input_o\) # ((\A[0]~input_o\) # (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst|inst10|inst|inst|inst1|inst6|inst4|inst~combout\);

-- Location: LCCOMB_X109_Y10_N0
\inst|inst10|inst|inst1|inst3[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst|inst1|inst3[3]~2_combout\ = (\A[4]~input_o\ & (\inst|inst10|inst|inst|inst1|inst6|inst4|inst~combout\)) # (!\A[4]~input_o\ & ((\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst|inst|inst1|inst6|inst4|inst~combout\,
	datab => \A[3]~input_o\,
	datac => \A[4]~input_o\,
	combout => \inst|inst10|inst|inst1|inst3[3]~2_combout\);

-- Location: LCCOMB_X109_Y14_N26
\inst|inst9|inst7|inst|inst6|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|inst7|inst|inst6|inst5~0_combout\ = (\inst|inst9|inst7|inst|inst5|inst5~0_combout\ & ((\inst|inst10|inst|inst1|inst3[3]~2_combout\) # (\inst|inst9|inst1|inst1|inst3[3]~0_combout\ $ (\inst|inst9|inst2|inst1|inst5|inst4|inst1~combout\)))) # 
-- (!\inst|inst9|inst7|inst|inst5|inst5~0_combout\ & (\inst|inst10|inst|inst1|inst3[3]~2_combout\ & (\inst|inst9|inst1|inst1|inst3[3]~0_combout\ $ (\inst|inst9|inst2|inst1|inst5|inst4|inst1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|inst7|inst|inst5|inst5~0_combout\,
	datab => \inst|inst9|inst1|inst1|inst3[3]~0_combout\,
	datac => \inst|inst9|inst2|inst1|inst5|inst4|inst1~combout\,
	datad => \inst|inst10|inst|inst1|inst3[3]~2_combout\,
	combout => \inst|inst9|inst7|inst|inst6|inst5~0_combout\);

-- Location: LCCOMB_X108_Y10_N14
\inst|inst10|inst1|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst1|inst7~0_combout\ = (\B[3]~input_o\) # (((\B[1]~input_o\) # (\B[2]~input_o\)) # (!\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst|inst10|inst1|inst7~0_combout\);

-- Location: LCCOMB_X108_Y14_N8
\inst|inst10|inst1|inst1|inst2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst1|inst1|inst2\(4) = (\B[4]~input_o\ & ((\B[0]~input_o\) # (\inst|inst10|inst1|inst7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[0]~input_o\,
	datac => \inst|inst10|inst1|inst7~0_combout\,
	combout => \inst|inst10|inst1|inst1|inst2\(4));

-- Location: LCCOMB_X109_Y14_N0
\inst|inst9|inst2|inst1|inst7|inst4|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|inst2|inst1|inst7|inst4|inst~combout\ = \inst|inst10|inst1|inst1|inst2\(4) $ (((\inst|inst9|inst1|inst1|inst3[3]~0_combout\) # (\inst|inst9|inst2|inst1|inst5|inst4|inst1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst9|inst1|inst1|inst3[3]~0_combout\,
	datac => \inst|inst9|inst2|inst1|inst5|inst4|inst1~combout\,
	datad => \inst|inst10|inst1|inst1|inst2\(4),
	combout => \inst|inst9|inst2|inst1|inst7|inst4|inst~combout\);

-- Location: LCCOMB_X109_Y14_N28
\inst|inst9|inst7|outruonome|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|inst7|outruonome|inst3~0_combout\ = (\inst|inst9|inst7|inst|inst6|inst5~0_combout\ & (\A[4]~input_o\ & (\inst|inst10|inst|inst1|inst2[4]~0_combout\ & \inst|inst9|inst2|inst1|inst7|inst4|inst~combout\))) # 
-- (!\inst|inst9|inst7|inst|inst6|inst5~0_combout\ & ((\inst|inst9|inst2|inst1|inst7|inst4|inst~combout\) # ((\A[4]~input_o\ & \inst|inst10|inst|inst1|inst2[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \inst|inst10|inst|inst1|inst2[4]~0_combout\,
	datac => \inst|inst9|inst7|inst|inst6|inst5~0_combout\,
	datad => \inst|inst9|inst2|inst1|inst7|inst4|inst~combout\,
	combout => \inst|inst9|inst7|outruonome|inst3~0_combout\);

-- Location: LCCOMB_X108_Y12_N6
\inst|inst10|inst2|inst|inst4|inst5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst2|inst|inst4|inst5~2_combout\ = \B[1]~input_o\ $ (((\B[4]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|inst10|inst2|inst|inst4|inst5~2_combout\);

-- Location: LCCOMB_X108_Y12_N18
\inst|inst10|inst2|inst|inst4|inst5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst2|inst|inst4|inst5~3_combout\ = (\inst|inst10|inst|inst1|inst3[1]~0_combout\ & ((\inst|inst10|inst2|inst|inst4|inst5~2_combout\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\inst|inst10|inst|inst1|inst3[1]~0_combout\ & (\B[0]~input_o\ & 
-- (\A[0]~input_o\ & \inst|inst10|inst2|inst|inst4|inst5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst|inst1|inst3[1]~0_combout\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \inst|inst10|inst2|inst|inst4|inst5~2_combout\,
	combout => \inst|inst10|inst2|inst|inst4|inst5~3_combout\);

-- Location: LCCOMB_X108_Y10_N6
\inst|inst10|inst2|inst|inst5|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst2|inst|inst5|inst5~0_combout\ = (\B[4]~input_o\ & ((\B[1]~input_o\) # (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[4]~input_o\,
	combout => \inst|inst10|inst2|inst|inst5|inst5~0_combout\);

-- Location: LCCOMB_X108_Y12_N8
\inst|inst10|inst2|inst|inst5|inst5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst2|inst|inst5|inst5~1_combout\ = (\inst|inst10|inst|inst1|inst3[2]~1_combout\ & ((\inst|inst10|inst2|inst|inst4|inst5~3_combout\) # (\B[2]~input_o\ $ (\inst|inst10|inst2|inst|inst5|inst5~0_combout\)))) # 
-- (!\inst|inst10|inst|inst1|inst3[2]~1_combout\ & (\inst|inst10|inst2|inst|inst4|inst5~3_combout\ & (\B[2]~input_o\ $ (\inst|inst10|inst2|inst|inst5|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst|inst1|inst3[2]~1_combout\,
	datab => \inst|inst10|inst2|inst|inst4|inst5~3_combout\,
	datac => \B[2]~input_o\,
	datad => \inst|inst10|inst2|inst|inst5|inst5~0_combout\,
	combout => \inst|inst10|inst2|inst|inst5|inst5~1_combout\);

-- Location: LCCOMB_X108_Y10_N18
\inst|inst5|inst2|inst1|inst[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst5|inst2|inst1|inst\(3) = (!\B[4]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst|inst5|inst2|inst1|inst\(3));

-- Location: LCCOMB_X108_Y10_N28
\inst|inst10|inst1|inst1|inst2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst1|inst1|inst2\(3) = (\B[4]~input_o\ & (\B[3]~input_o\ $ (((\inst|inst10|inst1|inst|inst1|inst4|inst4|inst1~combout\) # (\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \inst|inst10|inst1|inst|inst1|inst4|inst4|inst1~combout\,
	datad => \B[2]~input_o\,
	combout => \inst|inst10|inst1|inst1|inst2\(3));

-- Location: LCCOMB_X109_Y12_N28
\inst|inst10|inst2|inst|inst6|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst2|inst|inst6|inst5~0_combout\ = (\inst|inst10|inst2|inst|inst5|inst5~1_combout\ & ((\inst|inst5|inst2|inst1|inst\(3)) # ((\inst|inst10|inst1|inst1|inst2\(3)) # (\inst|inst10|inst|inst1|inst3[3]~2_combout\)))) # 
-- (!\inst|inst10|inst2|inst|inst5|inst5~1_combout\ & (\inst|inst10|inst|inst1|inst3[3]~2_combout\ & ((\inst|inst5|inst2|inst1|inst\(3)) # (\inst|inst10|inst1|inst1|inst2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst2|inst|inst5|inst5~1_combout\,
	datab => \inst|inst5|inst2|inst1|inst\(3),
	datac => \inst|inst10|inst1|inst1|inst2\(3),
	datad => \inst|inst10|inst|inst1|inst3[3]~2_combout\,
	combout => \inst|inst10|inst2|inst|inst6|inst5~0_combout\);

-- Location: LCCOMB_X109_Y12_N4
\inst|inst10|inst2|outruonome|inst3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst2|outruonome|inst3~2_combout\ = (\inst|inst10|inst2|inst|inst6|inst5~0_combout\ & (\inst|inst10|inst|inst1|inst2[4]~0_combout\ & (\inst|inst10|inst1|inst1|inst2\(4) & \A[4]~input_o\))) # (!\inst|inst10|inst2|inst|inst6|inst5~0_combout\ & 
-- ((\inst|inst10|inst1|inst1|inst2\(4)) # ((\inst|inst10|inst|inst1|inst2[4]~0_combout\ & \A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst|inst1|inst2[4]~0_combout\,
	datab => \inst|inst10|inst2|inst|inst6|inst5~0_combout\,
	datac => \inst|inst10|inst1|inst1|inst2\(4),
	datad => \A[4]~input_o\,
	combout => \inst|inst10|inst2|outruonome|inst3~2_combout\);

-- Location: IOIBUF_X115_Y17_N1
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: LCCOMB_X108_Y14_N26
\inst|inst1|inst16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst16~0_combout\ = (\inst|inst2|inst[4]~0_combout\ & ((\sel[0]~input_o\ & (\inst|inst9|inst7|outruonome|inst3~0_combout\)) # (!\sel[0]~input_o\ & ((\inst|inst10|inst2|outruonome|inst3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst[4]~0_combout\,
	datab => \inst|inst9|inst7|outruonome|inst3~0_combout\,
	datac => \inst|inst10|inst2|outruonome|inst3~2_combout\,
	datad => \sel[0]~input_o\,
	combout => \inst|inst1|inst16~0_combout\);

-- Location: LCCOMB_X108_Y12_N28
\inst|inst5|inst|inst33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst5|inst|inst33~0_combout\ = (\inst|inst10|inst|inst1|inst3[1]~0_combout\ & (((\A[0]~input_o\ & !\B[0]~input_o\)) # (!\inst|inst9|inst1|inst1|inst3[1]~2_combout\))) # (!\inst|inst10|inst|inst1|inst3[1]~0_combout\ & (\A[0]~input_o\ & 
-- (!\inst|inst9|inst1|inst1|inst3[1]~2_combout\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst|inst1|inst3[1]~0_combout\,
	datab => \A[0]~input_o\,
	datac => \inst|inst9|inst1|inst1|inst3[1]~2_combout\,
	datad => \B[0]~input_o\,
	combout => \inst|inst5|inst|inst33~0_combout\);

-- Location: LCCOMB_X108_Y12_N22
\inst|inst5|inst|inst33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst5|inst|inst33~1_combout\ = (\inst|inst10|inst|inst1|inst3[2]~1_combout\ & ((\inst|inst5|inst|inst33~0_combout\) # (!\inst|inst9|inst1|inst1|inst3[2]~1_combout\))) # (!\inst|inst10|inst|inst1|inst3[2]~1_combout\ & 
-- (\inst|inst5|inst|inst33~0_combout\ & !\inst|inst9|inst1|inst1|inst3[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst|inst1|inst3[2]~1_combout\,
	datab => \inst|inst5|inst|inst33~0_combout\,
	datad => \inst|inst9|inst1|inst1|inst3[2]~1_combout\,
	combout => \inst|inst5|inst|inst33~1_combout\);

-- Location: LCCOMB_X109_Y12_N2
\inst|inst10|inst2|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst2|inst2~0_combout\ = \inst|inst10|inst1|inst1|inst2\(4) $ (((\inst|inst10|inst|inst1|inst2[4]~0_combout\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst|inst1|inst2[4]~0_combout\,
	datac => \inst|inst10|inst1|inst1|inst2\(4),
	datad => \A[4]~input_o\,
	combout => \inst|inst10|inst2|inst2~0_combout\);

-- Location: LCCOMB_X109_Y12_N0
\inst|inst5|inst|inst33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst5|inst|inst33~2_combout\ = (!\inst|inst10|inst2|inst2~0_combout\ & ((\inst|inst9|inst1|inst1|inst3[3]~0_combout\ & (\inst|inst10|inst|inst1|inst3[3]~2_combout\ & \inst|inst5|inst|inst33~1_combout\)) # 
-- (!\inst|inst9|inst1|inst1|inst3[3]~0_combout\ & ((\inst|inst10|inst|inst1|inst3[3]~2_combout\) # (\inst|inst5|inst|inst33~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|inst1|inst1|inst3[3]~0_combout\,
	datab => \inst|inst10|inst|inst1|inst3[3]~2_combout\,
	datac => \inst|inst5|inst|inst33~1_combout\,
	datad => \inst|inst10|inst2|inst2~0_combout\,
	combout => \inst|inst5|inst|inst33~2_combout\);

-- Location: LCCOMB_X109_Y12_N30
\inst|inst|inst16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst16~7_combout\ = (\inst|inst5|inst|inst33~2_combout\) # ((\inst|inst10|inst1|inst1|inst2\(4) & ((!\A[4]~input_o\) # (!\inst|inst10|inst|inst1|inst2[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst|inst1|inst2[4]~0_combout\,
	datab => \inst|inst5|inst|inst33~2_combout\,
	datac => \inst|inst10|inst1|inst1|inst2\(4),
	datad => \A[4]~input_o\,
	combout => \inst|inst|inst16~7_combout\);

-- Location: LCCOMB_X108_Y12_N10
\inst|inst5|inst|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst5|inst|inst21~1_combout\ = (\inst|inst10|inst|inst1|inst3[2]~1_combout\ & (\inst|inst9|inst1|inst1|inst3[2]~1_combout\ & (\inst|inst9|inst1|inst1|inst3[1]~2_combout\ $ (!\inst|inst10|inst|inst1|inst3[1]~0_combout\)))) # 
-- (!\inst|inst10|inst|inst1|inst3[2]~1_combout\ & (!\inst|inst9|inst1|inst1|inst3[2]~1_combout\ & (\inst|inst9|inst1|inst1|inst3[1]~2_combout\ $ (!\inst|inst10|inst|inst1|inst3[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst|inst1|inst3[2]~1_combout\,
	datab => \inst|inst9|inst1|inst1|inst3[2]~1_combout\,
	datac => \inst|inst9|inst1|inst1|inst3[1]~2_combout\,
	datad => \inst|inst10|inst|inst1|inst3[1]~0_combout\,
	combout => \inst|inst5|inst|inst21~1_combout\);

-- Location: LCCOMB_X109_Y14_N6
\inst|inst10|inst|inst1|inst2[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst|inst1|inst2[4]~1_combout\ = (\inst|inst10|inst|inst1|inst2[4]~0_combout\ & \A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst10|inst|inst1|inst2[4]~0_combout\,
	datac => \A[4]~input_o\,
	combout => \inst|inst10|inst|inst1|inst2[4]~1_combout\);

-- Location: LCCOMB_X109_Y12_N22
\inst|inst5|inst|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst5|inst|inst21~0_combout\ = (\inst|inst9|inst1|inst1|inst3[3]~0_combout\ & (\inst|inst10|inst|inst1|inst3[3]~2_combout\ & (\inst|inst10|inst1|inst1|inst2\(4) $ (!\inst|inst10|inst|inst1|inst2[4]~1_combout\)))) # 
-- (!\inst|inst9|inst1|inst1|inst3[3]~0_combout\ & (!\inst|inst10|inst|inst1|inst3[3]~2_combout\ & (\inst|inst10|inst1|inst1|inst2\(4) $ (!\inst|inst10|inst|inst1|inst2[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|inst1|inst1|inst3[3]~0_combout\,
	datab => \inst|inst10|inst|inst1|inst3[3]~2_combout\,
	datac => \inst|inst10|inst1|inst1|inst2\(4),
	datad => \inst|inst10|inst|inst1|inst2[4]~1_combout\,
	combout => \inst|inst5|inst|inst21~0_combout\);

-- Location: LCCOMB_X108_Y12_N4
\inst|inst|inst16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst16~6_combout\ = (\inst|inst5|inst|inst21~1_combout\ & (\inst|inst5|inst|inst21~0_combout\ & (\A[0]~input_o\ $ (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst|inst21~1_combout\,
	datab => \inst|inst5|inst|inst21~0_combout\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|inst|inst16~6_combout\);

-- Location: LCCOMB_X109_Y12_N18
\inst|inst|inst16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst16~4_combout\ = (\sel[0]~input_o\ & ((\inst|inst|inst16~6_combout\ & ((!\sel[2]~input_o\))) # (!\inst|inst|inst16~6_combout\ & (!\inst|inst|inst16~7_combout\ & \sel[2]~input_o\)))) # (!\sel[0]~input_o\ & (\inst|inst|inst16~7_combout\ & 
-- ((\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst16~7_combout\,
	datab => \inst|inst|inst16~6_combout\,
	datac => \sel[0]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \inst|inst|inst16~4_combout\);

-- Location: LCCOMB_X108_Y14_N4
\inst|inst|inst16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst16~5_combout\ = (\inst|inst|inst16~4_combout\ & (\sel[1]~input_o\ $ (\sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \inst|inst|inst16~4_combout\,
	combout => \inst|inst|inst16~5_combout\);

-- Location: LCCOMB_X108_Y14_N30
\inst12|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3~combout\ = ((\sel[0]~input_o\ & (!\inst|inst9|inst7|outruonome|inst3~0_combout\)) # (!\sel[0]~input_o\ & ((!\inst|inst10|inst2|outruonome|inst3~2_combout\)))) # (!\inst|inst2|inst[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst[4]~0_combout\,
	datab => \inst|inst9|inst7|outruonome|inst3~0_combout\,
	datac => \inst|inst10|inst2|outruonome|inst3~2_combout\,
	datad => \sel[0]~input_o\,
	combout => \inst12|inst3~combout\);

-- Location: LCCOMB_X109_Y12_N12
\inst|inst10|inst2|inst|inst6|inst4|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst2|inst|inst6|inst4|inst~combout\ = \inst|inst10|inst2|inst|inst5|inst5~1_combout\ $ (\inst|inst10|inst|inst1|inst3[3]~2_combout\ $ (((\inst|inst5|inst2|inst1|inst\(3)) # (\inst|inst10|inst1|inst1|inst2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst2|inst|inst5|inst5~1_combout\,
	datab => \inst|inst5|inst2|inst1|inst\(3),
	datac => \inst|inst10|inst1|inst1|inst2\(3),
	datad => \inst|inst10|inst|inst1|inst3[3]~2_combout\,
	combout => \inst|inst10|inst2|inst|inst6|inst4|inst~combout\);

-- Location: LCCOMB_X108_Y14_N0
\inst|inst2|inst[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst[4]~1_combout\ = (!\sel[1]~input_o\ & (!\sel[2]~input_o\ & !\sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|inst2|inst[4]~1_combout\);

-- Location: LCCOMB_X108_Y12_N12
\inst|inst10|inst4|inst|inst1|inst4|inst4|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst4|inst|inst1|inst4|inst4|inst1~combout\ = (\A[0]~input_o\ & ((\inst|inst10|inst|inst1|inst3[1]~0_combout\ $ (!\inst|inst9|inst1|inst1|inst3[1]~2_combout\)) # (!\B[0]~input_o\))) # (!\A[0]~input_o\ & ((\B[0]~input_o\) # 
-- (\inst|inst10|inst|inst1|inst3[1]~0_combout\ $ (\inst|inst9|inst1|inst1|inst3[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst|inst1|inst3[1]~0_combout\,
	datab => \A[0]~input_o\,
	datac => \inst|inst9|inst1|inst1|inst3[1]~2_combout\,
	datad => \B[0]~input_o\,
	combout => \inst|inst10|inst4|inst|inst1|inst4|inst4|inst1~combout\);

-- Location: LCCOMB_X108_Y12_N30
\inst|inst10|inst4|inst|inst1|inst5|inst4|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst4|inst|inst1|inst5|inst4|inst1~combout\ = (\inst|inst10|inst4|inst|inst1|inst4|inst4|inst1~combout\) # (\inst|inst9|inst1|inst1|inst3[2]~1_combout\ $ (\inst|inst10|inst2|inst|inst4|inst5~3_combout\ $ 
-- (\inst|inst10|inst|inst1|inst3[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst4|inst|inst1|inst4|inst4|inst1~combout\,
	datab => \inst|inst9|inst1|inst1|inst3[2]~1_combout\,
	datac => \inst|inst10|inst2|inst|inst4|inst5~3_combout\,
	datad => \inst|inst10|inst|inst1|inst3[2]~1_combout\,
	combout => \inst|inst10|inst4|inst|inst1|inst5|inst4|inst1~combout\);

-- Location: LCCOMB_X109_Y12_N6
\inst|inst2|inst16[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[3]~1_combout\ = (\inst|inst2|inst[4]~1_combout\ & (\inst|inst10|inst2|inst|inst6|inst4|inst~combout\ $ (((\inst|inst10|inst2|outruonome|inst3~2_combout\ & \inst|inst10|inst4|inst|inst1|inst5|inst4|inst1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst2|inst|inst6|inst4|inst~combout\,
	datab => \inst|inst2|inst[4]~1_combout\,
	datac => \inst|inst10|inst2|outruonome|inst3~2_combout\,
	datad => \inst|inst10|inst4|inst|inst1|inst5|inst4|inst1~combout\,
	combout => \inst|inst2|inst16[3]~1_combout\);

-- Location: LCCOMB_X109_Y14_N10
\inst|inst9|inst7|inst|inst6|inst4|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|inst7|inst|inst6|inst4|inst~combout\ = \inst|inst9|inst7|inst|inst5|inst5~0_combout\ $ (\inst|inst9|inst1|inst1|inst3[3]~0_combout\ $ (\inst|inst9|inst2|inst1|inst5|inst4|inst1~combout\ $ (\inst|inst10|inst|inst1|inst3[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|inst7|inst|inst5|inst5~0_combout\,
	datab => \inst|inst9|inst1|inst1|inst3[3]~0_combout\,
	datac => \inst|inst9|inst2|inst1|inst5|inst4|inst1~combout\,
	datad => \inst|inst10|inst|inst1|inst3[3]~2_combout\,
	combout => \inst|inst9|inst7|inst|inst6|inst4|inst~combout\);

-- Location: LCCOMB_X108_Y12_N2
\inst|inst9|inst7|inst|inst5|inst4|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|inst7|inst|inst5|inst4|inst~combout\ = \inst|inst10|inst|inst1|inst3[2]~1_combout\ $ (\inst|inst10|inst1|inst|inst1|inst4|inst4|inst1~combout\ $ (\inst|inst9|inst7|inst|inst4|inst5~0_combout\ $ (\inst|inst9|inst1|inst1|inst3[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst|inst1|inst3[2]~1_combout\,
	datab => \inst|inst10|inst1|inst|inst1|inst4|inst4|inst1~combout\,
	datac => \inst|inst9|inst7|inst|inst4|inst5~0_combout\,
	datad => \inst|inst9|inst1|inst1|inst3[2]~1_combout\,
	combout => \inst|inst9|inst7|inst|inst5|inst4|inst~combout\);

-- Location: LCCOMB_X108_Y12_N16
\inst|inst9|inst3|inst|inst1|inst4|inst4|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|inst3|inst|inst1|inst4|inst4|inst1~combout\ = (\inst|inst10|inst|inst1|inst3[1]~0_combout\ & ((\A[0]~input_o\ $ (\B[0]~input_o\)) # (!\inst|inst9|inst1|inst1|inst3[1]~2_combout\))) # (!\inst|inst10|inst|inst1|inst3[1]~0_combout\ & 
-- ((\inst|inst9|inst1|inst1|inst3[1]~2_combout\) # (\A[0]~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst|inst1|inst3[1]~0_combout\,
	datab => \A[0]~input_o\,
	datac => \inst|inst9|inst1|inst1|inst3[1]~2_combout\,
	datad => \B[0]~input_o\,
	combout => \inst|inst9|inst3|inst|inst1|inst4|inst4|inst1~combout\);

-- Location: LCCOMB_X109_Y14_N4
\inst|inst9|inst3|inst|inst1|inst5|inst4|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|inst3|inst|inst1|inst5|inst4|inst1~combout\ = (\inst|inst9|inst7|inst|inst5|inst4|inst~combout\) # (\inst|inst9|inst3|inst|inst1|inst4|inst4|inst1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst9|inst7|inst|inst5|inst4|inst~combout\,
	datad => \inst|inst9|inst3|inst|inst1|inst4|inst4|inst1~combout\,
	combout => \inst|inst9|inst3|inst|inst1|inst5|inst4|inst1~combout\);

-- Location: LCCOMB_X109_Y14_N16
\inst|inst2|inst6[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst6[3]~0_combout\ = (!\sel[1]~input_o\ & (!\sel[2]~input_o\ & \sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|inst2|inst6[3]~0_combout\);

-- Location: LCCOMB_X109_Y14_N22
\inst|inst2|inst16[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[3]~0_combout\ = (\inst|inst2|inst6[3]~0_combout\ & (\inst|inst9|inst7|inst|inst6|inst4|inst~combout\ $ (((\inst|inst9|inst7|outruonome|inst3~0_combout\ & \inst|inst9|inst3|inst|inst1|inst5|inst4|inst1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|inst7|inst|inst6|inst4|inst~combout\,
	datab => \inst|inst9|inst7|outruonome|inst3~0_combout\,
	datac => \inst|inst9|inst3|inst|inst1|inst5|inst4|inst1~combout\,
	datad => \inst|inst2|inst6[3]~0_combout\,
	combout => \inst|inst2|inst16[3]~0_combout\);

-- Location: LCCOMB_X106_Y13_N0
\inst|inst2|inst16[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[3]~2_combout\ = (\sel[2]~input_o\ & ((\A[3]~input_o\ & (\B[3]~input_o\ $ (\sel[0]~input_o\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \inst|inst2|inst16[3]~2_combout\);

-- Location: LCCOMB_X109_Y12_N16
\inst|inst2|inst16[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[3]~3_combout\ = (\inst|inst2|inst16[3]~2_combout\) # ((!\sel[2]~input_o\ & (!\sel[0]~input_o\ & \inst|inst9|inst1|inst1|inst3[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst16[3]~2_combout\,
	datab => \sel[2]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \inst|inst9|inst1|inst1|inst3[3]~0_combout\,
	combout => \inst|inst2|inst16[3]~3_combout\);

-- Location: LCCOMB_X109_Y12_N10
\inst|inst2|inst16[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[3]~4_combout\ = (\inst|inst2|inst16[3]~1_combout\) # ((\inst|inst2|inst16[3]~0_combout\) # ((\sel[1]~input_o\ & \inst|inst2|inst16[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst16[3]~1_combout\,
	datab => \inst|inst2|inst16[3]~0_combout\,
	datac => \sel[1]~input_o\,
	datad => \inst|inst2|inst16[3]~3_combout\,
	combout => \inst|inst2|inst16[3]~4_combout\);

-- Location: LCCOMB_X108_Y12_N0
\inst|inst10|inst2|inst|inst5|inst4|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst2|inst|inst5|inst4|inst~combout\ = \inst|inst10|inst|inst1|inst3[2]~1_combout\ $ (\inst|inst10|inst2|inst|inst4|inst5~3_combout\ $ (\inst|inst9|inst1|inst1|inst3[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst|inst1|inst3[2]~1_combout\,
	datab => \inst|inst10|inst2|inst|inst4|inst5~3_combout\,
	datad => \inst|inst9|inst1|inst1|inst3[2]~1_combout\,
	combout => \inst|inst10|inst2|inst|inst5|inst4|inst~combout\);

-- Location: LCCOMB_X108_Y14_N18
\inst|inst2|inst16[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[2]~5_combout\ = (\inst|inst2|inst[4]~1_combout\ & (\inst|inst10|inst2|inst|inst5|inst4|inst~combout\ $ (((\inst|inst10|inst2|outruonome|inst3~2_combout\ & \inst|inst10|inst4|inst|inst1|inst4|inst4|inst1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst2|outruonome|inst3~2_combout\,
	datab => \inst|inst10|inst4|inst|inst1|inst4|inst4|inst1~combout\,
	datac => \inst|inst10|inst2|inst|inst5|inst4|inst~combout\,
	datad => \inst|inst2|inst[4]~1_combout\,
	combout => \inst|inst2|inst16[2]~5_combout\);

-- Location: LCCOMB_X108_Y14_N12
\inst|inst2|inst16[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[2]~7_combout\ = (\sel[2]~input_o\ & ((\A[2]~input_o\ & (\B[2]~input_o\ $ (\sel[0]~input_o\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|inst2|inst16[2]~7_combout\);

-- Location: LCCOMB_X108_Y14_N14
\inst|inst2|inst16[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[2]~8_combout\ = (\inst|inst2|inst16[2]~7_combout\) # ((\inst|inst9|inst1|inst1|inst3[2]~1_combout\ & (!\sel[2]~input_o\ & !\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst16[2]~7_combout\,
	datab => \inst|inst9|inst1|inst1|inst3[2]~1_combout\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|inst2|inst16[2]~8_combout\);

-- Location: LCCOMB_X109_Y14_N24
\inst|inst2|inst16[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[2]~6_combout\ = (\inst|inst2|inst6[3]~0_combout\ & (\inst|inst9|inst7|inst|inst5|inst4|inst~combout\ $ (((\inst|inst9|inst3|inst|inst1|inst4|inst4|inst1~combout\ & \inst|inst9|inst7|outruonome|inst3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|inst3|inst|inst1|inst4|inst4|inst1~combout\,
	datab => \inst|inst9|inst7|outruonome|inst3~0_combout\,
	datac => \inst|inst9|inst7|inst|inst5|inst4|inst~combout\,
	datad => \inst|inst2|inst6[3]~0_combout\,
	combout => \inst|inst2|inst16[2]~6_combout\);

-- Location: LCCOMB_X108_Y14_N24
\inst|inst2|inst16[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[2]~9_combout\ = (\inst|inst2|inst16[2]~5_combout\) # ((\inst|inst2|inst16[2]~6_combout\) # ((\sel[1]~input_o\ & \inst|inst2|inst16[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \inst|inst2|inst16[2]~5_combout\,
	datac => \inst|inst2|inst16[2]~8_combout\,
	datad => \inst|inst2|inst16[2]~6_combout\,
	combout => \inst|inst2|inst16[2]~9_combout\);

-- Location: LCCOMB_X109_Y12_N20
\inst|inst10|inst4|inst|inst1|inst7|inst4|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst4|inst|inst1|inst7|inst4|inst~combout\ = \inst|inst10|inst2|inst2~0_combout\ $ (\inst|inst10|inst2|inst|inst6|inst5~0_combout\ $ (((\inst|inst10|inst2|inst|inst6|inst4|inst~combout\) # 
-- (\inst|inst10|inst4|inst|inst1|inst5|inst4|inst1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst2|inst|inst6|inst4|inst~combout\,
	datab => \inst|inst10|inst4|inst|inst1|inst5|inst4|inst1~combout\,
	datac => \inst|inst10|inst2|inst2~0_combout\,
	datad => \inst|inst10|inst2|inst|inst6|inst5~0_combout\,
	combout => \inst|inst10|inst4|inst|inst1|inst7|inst4|inst~combout\);

-- Location: LCCOMB_X109_Y12_N14
\inst|inst2|inst[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst[4]~2_combout\ = (\inst|inst2|inst[4]~1_combout\ & (\inst|inst10|inst2|outruonome|inst3~2_combout\ & \inst|inst10|inst4|inst|inst1|inst7|inst4|inst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|inst[4]~1_combout\,
	datac => \inst|inst10|inst2|outruonome|inst3~2_combout\,
	datad => \inst|inst10|inst4|inst|inst1|inst7|inst4|inst~combout\,
	combout => \inst|inst2|inst[4]~2_combout\);

-- Location: LCCOMB_X109_Y14_N18
\inst|inst9|inst3|inst|inst1|inst6|inst4|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|inst3|inst|inst1|inst6|inst4|inst1~combout\ = (\inst|inst9|inst3|inst|inst1|inst4|inst4|inst1~combout\) # ((\inst|inst9|inst7|inst|inst5|inst4|inst~combout\) # (\inst|inst9|inst7|inst|inst6|inst4|inst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|inst3|inst|inst1|inst4|inst4|inst1~combout\,
	datac => \inst|inst9|inst7|inst|inst5|inst4|inst~combout\,
	datad => \inst|inst9|inst7|inst|inst6|inst4|inst~combout\,
	combout => \inst|inst9|inst3|inst|inst1|inst6|inst4|inst1~combout\);

-- Location: LCCOMB_X109_Y14_N20
\inst|inst2|inst16[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[4]~14_combout\ = (\inst|inst9|inst3|inst|inst1|inst6|inst4|inst1~combout\ & ((\inst|inst10|inst|inst1|inst2[4]~1_combout\ & (!\inst|inst9|inst7|inst|inst6|inst5~0_combout\ & \inst|inst9|inst2|inst1|inst7|inst4|inst~combout\)) # 
-- (!\inst|inst10|inst|inst1|inst2[4]~1_combout\ & (\inst|inst9|inst7|inst|inst6|inst5~0_combout\ & !\inst|inst9|inst2|inst1|inst7|inst4|inst~combout\)))) # (!\inst|inst9|inst3|inst|inst1|inst6|inst4|inst1~combout\ & 
-- (\inst|inst10|inst|inst1|inst2[4]~1_combout\ $ (\inst|inst9|inst7|inst|inst6|inst5~0_combout\ $ (\inst|inst9|inst2|inst1|inst7|inst4|inst~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst|inst1|inst2[4]~1_combout\,
	datab => \inst|inst9|inst3|inst|inst1|inst6|inst4|inst1~combout\,
	datac => \inst|inst9|inst7|inst|inst6|inst5~0_combout\,
	datad => \inst|inst9|inst2|inst1|inst7|inst4|inst~combout\,
	combout => \inst|inst2|inst16[4]~14_combout\);

-- Location: LCCOMB_X109_Y12_N24
\inst|inst2|inst[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst[4]~3_combout\ = (\inst|inst2|inst[4]~1_combout\ & (!\inst|inst10|inst2|inst2~0_combout\ & (!\inst|inst10|inst1|inst1|inst2\(4) & \inst|inst10|inst2|inst|inst6|inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst[4]~1_combout\,
	datab => \inst|inst10|inst2|inst2~0_combout\,
	datac => \inst|inst10|inst1|inst1|inst2\(4),
	datad => \inst|inst10|inst2|inst|inst6|inst5~0_combout\,
	combout => \inst|inst2|inst[4]~3_combout\);

-- Location: LCCOMB_X109_Y14_N12
\inst|inst2|inst16[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[4]~11_combout\ = (\sel[2]~input_o\ & (((\A[4]~input_o\)))) # (!\sel[2]~input_o\ & ((\inst|inst10|inst1|inst7~0_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst1|inst7~0_combout\,
	datab => \sel[2]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|inst2|inst16[4]~11_combout\);

-- Location: LCCOMB_X109_Y14_N30
\inst|inst2|inst16[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[4]~12_combout\ = (\inst|inst2|inst16[4]~11_combout\ & (\B[4]~input_o\ & !\sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst16[4]~11_combout\,
	datac => \B[4]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|inst2|inst16[4]~12_combout\);

-- Location: LCCOMB_X109_Y14_N2
\inst|inst2|inst16[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[4]~10_combout\ = (\sel[2]~input_o\ & (\sel[0]~input_o\ & (\A[4]~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \B[4]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|inst2|inst16[4]~10_combout\);

-- Location: LCCOMB_X109_Y14_N8
\inst|inst2|inst16[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[4]~13_combout\ = (\inst|inst2|inst[4]~3_combout\) # ((\sel[1]~input_o\ & ((\inst|inst2|inst16[4]~12_combout\) # (\inst|inst2|inst16[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \inst|inst2|inst[4]~3_combout\,
	datac => \inst|inst2|inst16[4]~12_combout\,
	datad => \inst|inst2|inst16[4]~10_combout\,
	combout => \inst|inst2|inst16[4]~13_combout\);

-- Location: LCCOMB_X109_Y14_N14
\inst|inst2|inst16[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[4]~15_combout\ = (\inst|inst2|inst[4]~2_combout\) # ((\inst|inst2|inst16[4]~13_combout\) # ((\inst|inst2|inst16[4]~14_combout\ & \inst|inst2|inst6[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst[4]~2_combout\,
	datab => \inst|inst2|inst16[4]~14_combout\,
	datac => \inst|inst2|inst16[4]~13_combout\,
	datad => \inst|inst2|inst6[3]~0_combout\,
	combout => \inst|inst2|inst16[4]~15_combout\);

-- Location: LCCOMB_X108_Y18_N0
\inst12|inst[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst\(6) = (((!\inst|inst2|inst16[3]~4_combout\ & !\inst|inst2|inst16[2]~9_combout\)) # (!\inst|inst2|inst16[4]~15_combout\)) # (!\inst|inst2|inst[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst16[3]~4_combout\,
	datab => \inst|inst2|inst16[2]~9_combout\,
	datac => \inst|inst2|inst[4]~0_combout\,
	datad => \inst|inst2|inst16[4]~15_combout\,
	combout => \inst12|inst\(6));

-- Location: LCCOMB_X102_Y10_N4
\inst|inst2|inst16[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[1]~23_combout\ = \inst|inst9|inst1|inst1|inst3[1]~2_combout\ $ (((\inst|inst9|inst7|outruonome|inst3~0_combout\ & (\A[0]~input_o\ & !\B[0]~input_o\)) # (!\inst|inst9|inst7|outruonome|inst3~0_combout\ & (!\A[0]~input_o\ & 
-- \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|inst7|outruonome|inst3~0_combout\,
	datab => \A[0]~input_o\,
	datac => \inst|inst9|inst1|inst1|inst3[1]~2_combout\,
	datad => \B[0]~input_o\,
	combout => \inst|inst2|inst16[1]~23_combout\);

-- Location: LCCOMB_X102_Y10_N6
\inst|inst2|inst16[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[1]~24_combout\ = (\inst|inst2|inst6[3]~0_combout\ & (\inst|inst10|inst|inst1|inst3[1]~0_combout\ $ (\inst|inst2|inst16[1]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst10|inst|inst1|inst3[1]~0_combout\,
	datac => \inst|inst2|inst16[1]~23_combout\,
	datad => \inst|inst2|inst6[3]~0_combout\,
	combout => \inst|inst2|inst16[1]~24_combout\);

-- Location: LCCOMB_X109_Y10_N26
\inst|inst2|inst16[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[1]~17_combout\ = (\sel[2]~input_o\ & ((\B[1]~input_o\ & (\A[1]~input_o\ $ (\sel[0]~input_o\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|inst2|inst16[1]~17_combout\);

-- Location: LCCOMB_X102_Y10_N18
\inst|inst2|inst16[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[1]~18_combout\ = (\inst|inst2|inst16[1]~17_combout\) # ((\inst|inst9|inst1|inst1|inst3[1]~2_combout\ & (!\sel[2]~input_o\ & !\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|inst1|inst1|inst3[1]~2_combout\,
	datab => \inst|inst2|inst16[1]~17_combout\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|inst2|inst16[1]~18_combout\);

-- Location: LCCOMB_X108_Y12_N14
\inst|inst10|inst2|inst|inst4|inst4|inst~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst2|inst|inst4|inst4|inst~2_combout\ = \inst|inst10|inst|inst1|inst3[1]~0_combout\ $ (\inst|inst9|inst1|inst1|inst3[1]~2_combout\ $ (((\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst|inst1|inst3[1]~0_combout\,
	datab => \A[0]~input_o\,
	datac => \inst|inst9|inst1|inst1|inst3[1]~2_combout\,
	datad => \B[0]~input_o\,
	combout => \inst|inst10|inst2|inst|inst4|inst4|inst~2_combout\);

-- Location: LCCOMB_X102_Y10_N24
\inst|inst5|inst|inst99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst5|inst|inst99~combout\ = \A[0]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|inst5|inst|inst99~combout\);

-- Location: LCCOMB_X109_Y12_N26
\inst|inst2|inst16[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[1]~16_combout\ = (\inst|inst2|inst[4]~1_combout\ & (\inst|inst10|inst2|inst|inst4|inst4|inst~2_combout\ $ (((\inst|inst5|inst|inst99~combout\ & \inst|inst10|inst2|outruonome|inst3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst2|inst|inst4|inst4|inst~2_combout\,
	datab => \inst|inst5|inst|inst99~combout\,
	datac => \inst|inst10|inst2|outruonome|inst3~2_combout\,
	datad => \inst|inst2|inst[4]~1_combout\,
	combout => \inst|inst2|inst16[1]~16_combout\);

-- Location: LCCOMB_X102_Y10_N20
\inst|inst2|inst16[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[1]~19_combout\ = (\inst|inst2|inst16[1]~24_combout\) # ((\inst|inst2|inst16[1]~16_combout\) # ((\inst|inst2|inst16[1]~18_combout\ & \sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst16[1]~24_combout\,
	datab => \inst|inst2|inst16[1]~18_combout\,
	datac => \inst|inst2|inst16[1]~16_combout\,
	datad => \sel[1]~input_o\,
	combout => \inst|inst2|inst16[1]~19_combout\);

-- Location: LCCOMB_X108_Y18_N12
\inst3|inst|instor[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|instor\(0) = (\inst|inst2|inst16[3]~4_combout\ & ((\inst|inst2|inst16[2]~9_combout\ & ((\inst|inst2|inst16[1]~19_combout\) # (!\inst|inst2|inst16[4]~15_combout\))) # (!\inst|inst2|inst16[2]~9_combout\ & (\inst|inst2|inst16[1]~19_combout\ & 
-- !\inst|inst2|inst16[4]~15_combout\)))) # (!\inst|inst2|inst16[3]~4_combout\ & (!\inst|inst2|inst16[2]~9_combout\ & ((\inst|inst2|inst16[4]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst16[3]~4_combout\,
	datab => \inst|inst2|inst16[2]~9_combout\,
	datac => \inst|inst2|inst16[1]~19_combout\,
	datad => \inst|inst2|inst16[4]~15_combout\,
	combout => \inst3|inst|instor\(0));

-- Location: LCCOMB_X108_Y18_N18
\inst3|inst|instor[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|instor[1]~0_combout\ = (\inst|inst2|inst16[4]~15_combout\ & ((\inst|inst2|inst16[3]~4_combout\) # (\inst|inst2|inst16[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst16[3]~4_combout\,
	datab => \inst|inst2|inst16[2]~9_combout\,
	datad => \inst|inst2|inst16[4]~15_combout\,
	combout => \inst3|inst|instor[1]~0_combout\);

-- Location: LCCOMB_X108_Y18_N6
\inst12|inst[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst\(5) = (\inst3|inst|instor\(0)) # ((\sel[1]~input_o\) # ((\sel[2]~input_o\) # (\inst3|inst|instor[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|instor\(0),
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \inst3|inst|instor[1]~0_combout\,
	combout => \inst12|inst\(5));

-- Location: LCCOMB_X108_Y18_N8
\inst12|inst[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst[4]~8_combout\ = (!\inst3|inst|instor\(0) & (!\sel[1]~input_o\ & !\sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|instor\(0),
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	combout => \inst12|inst[4]~8_combout\);

-- Location: LCCOMB_X108_Y18_N10
\inst12|inst[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst\(3) = (\sel[1]~input_o\) # ((\sel[2]~input_o\) # ((\inst3|inst|instor\(0) & !\inst3|inst|instor[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|instor\(0),
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \inst3|inst|instor[1]~0_combout\,
	combout => \inst12|inst\(3));

-- Location: LCCOMB_X108_Y18_N28
\inst12|inst[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst\(2) = (\sel[1]~input_o\) # ((\sel[2]~input_o\) # ((!\inst3|inst|instor\(0) & \inst3|inst|instor[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|instor\(0),
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \inst3|inst|instor[1]~0_combout\,
	combout => \inst12|inst\(2));

-- Location: LCCOMB_X109_Y10_N12
\inst6|inst5[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst5[6]~10_combout\ = (\A[2]~input_o\ & (\A[1]~input_o\ & (\A[0]~input_o\ & !\A[3]~input_o\))) # (!\A[2]~input_o\ & (\A[1]~input_o\ $ (((!\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst6|inst5[6]~10_combout\);

-- Location: LCCOMB_X102_Y10_N22
\inst6|inst5[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst5\(6) = (\inst6|inst5[6]~10_combout\) # ((\sel[1]~input_o\ & ((\sel[2]~input_o\) # (!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5[6]~10_combout\,
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst6|inst5\(6));

-- Location: LCCOMB_X109_Y10_N22
\inst6|inst5[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst5[5]~11_combout\ = (\A[1]~input_o\ & ((\A[0]~input_o\ & ((!\A[2]~input_o\) # (!\A[3]~input_o\))) # (!\A[0]~input_o\ & (!\A[3]~input_o\ & !\A[2]~input_o\)))) # (!\A[1]~input_o\ & ((\A[3]~input_o\ & ((\A[2]~input_o\))) # (!\A[3]~input_o\ & 
-- (\A[0]~input_o\ & !\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst6|inst5[5]~11_combout\);

-- Location: LCCOMB_X102_Y10_N16
\inst6|inst5[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst5[5]~15_combout\ = (\inst6|inst5[5]~11_combout\) # ((\sel[1]~input_o\ & ((\sel[2]~input_o\) # (!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5[5]~11_combout\,
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst6|inst5[5]~15_combout\);

-- Location: LCCOMB_X102_Y10_N14
\inst6|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst2~0_combout\ = (\sel[1]~input_o\ & ((\sel[2]~input_o\) # (!\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst6|inst2~0_combout\);

-- Location: LCCOMB_X109_Y10_N24
\inst1|inst|inst1|inst4|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|inst1|inst4|inst|inst~0_combout\ = (\A[1]~input_o\ & ((!\A[3]~input_o\))) # (!\A[1]~input_o\ & (\A[2]~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[3]~input_o\,
	combout => \inst1|inst|inst1|inst4|inst|inst~0_combout\);

-- Location: LCCOMB_X109_Y10_N18
\inst1|inst|inst1|inst5|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|inst1|inst5|inst4|inst~0_combout\ = ((!\A[1]~input_o\ & \A[3]~input_o\)) # (!\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[3]~input_o\,
	combout => \inst1|inst|inst1|inst5|inst4|inst~0_combout\);

-- Location: LCCOMB_X109_Y10_N4
\inst6|inst5[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst5\(4) = (\inst6|inst2~0_combout\) # ((\A[0]~input_o\) # ((!\inst1|inst|inst1|inst4|inst|inst~0_combout\ & !\inst1|inst|inst1|inst5|inst4|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst2~0_combout\,
	datab => \inst1|inst|inst1|inst4|inst|inst~0_combout\,
	datac => \A[0]~input_o\,
	datad => \inst1|inst|inst1|inst5|inst4|inst~0_combout\,
	combout => \inst6|inst5\(4));

-- Location: LCCOMB_X109_Y10_N30
\inst6|inst5[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst5[3]~12_combout\ = (\A[1]~input_o\ & ((\A[0]~input_o\ & (\A[3]~input_o\ $ (\A[2]~input_o\))) # (!\A[0]~input_o\ & (\A[3]~input_o\ & \A[2]~input_o\)))) # (!\A[1]~input_o\ & (!\A[3]~input_o\ & (\A[0]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst6|inst5[3]~12_combout\);

-- Location: LCCOMB_X102_Y10_N26
\inst6|inst5[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst5[3]~16_combout\ = (\inst6|inst5[3]~12_combout\) # ((\sel[1]~input_o\ & ((\sel[2]~input_o\) # (!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5[3]~12_combout\,
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst6|inst5[3]~16_combout\);

-- Location: LCCOMB_X109_Y10_N8
\inst1|inst1|inst9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst9~combout\ = (!\A[0]~input_o\ & ((\A[1]~input_o\ & (!\A[3]~input_o\ & !\A[2]~input_o\)) # (!\A[1]~input_o\ & (\A[3]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst1|inst1|inst9~combout\);

-- Location: LCCOMB_X102_Y10_N28
\inst6|inst5[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst5\(2) = (\inst1|inst1|inst9~combout\) # ((\sel[1]~input_o\ & ((\sel[2]~input_o\) # (!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst9~combout\,
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst6|inst5\(2));

-- Location: LCCOMB_X109_Y10_N10
\inst6|inst5[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst5[1]~13_combout\ = (\inst6|inst2~0_combout\) # ((!\inst1|inst|inst1|inst5|inst4|inst~0_combout\ & (\inst1|inst|inst1|inst4|inst|inst~0_combout\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst2~0_combout\,
	datab => \inst1|inst|inst1|inst4|inst|inst~0_combout\,
	datac => \A[0]~input_o\,
	datad => \inst1|inst|inst1|inst5|inst4|inst~0_combout\,
	combout => \inst6|inst5[1]~13_combout\);

-- Location: LCCOMB_X109_Y10_N28
\inst6|inst5[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst5[0]~14_combout\ = (\A[1]~input_o\ & (\A[3]~input_o\ & (\A[0]~input_o\ $ (\A[2]~input_o\)))) # (!\A[1]~input_o\ & (!\A[3]~input_o\ & (\A[0]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst6|inst5[0]~14_combout\);

-- Location: LCCOMB_X108_Y14_N16
\inst6|inst5[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst5[0]~17_combout\ = (\inst6|inst5[0]~14_combout\) # ((\sel[1]~input_o\ & ((\sel[2]~input_o\) # (!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \inst6|inst5[0]~14_combout\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst6|inst5[0]~17_combout\);

-- Location: LCCOMB_X109_Y10_N14
\inst6|inst6[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst6\(5) = (\inst6|inst2~0_combout\) # ((\A[3]~input_o\ & ((\A[1]~input_o\) # (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \inst6|inst2~0_combout\,
	combout => \inst6|inst6\(5));

-- Location: LCCOMB_X108_Y10_N16
\inst7|inst5[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5[6]~10_combout\ = (\B[2]~input_o\ & (!\B[3]~input_o\ & (\B[1]~input_o\ & \B[0]~input_o\))) # (!\B[2]~input_o\ & (\B[3]~input_o\ $ ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst7|inst5[6]~10_combout\);

-- Location: LCCOMB_X108_Y14_N10
\inst7|inst5[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5\(6) = (\inst7|inst5[6]~10_combout\) # ((\sel[1]~input_o\ & ((\sel[2]~input_o\) # (!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \inst7|inst5[6]~10_combout\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst7|inst5\(6));

-- Location: LCCOMB_X108_Y10_N26
\inst7|inst5[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5[5]~11_combout\ = (\B[3]~input_o\ & ((\B[1]~input_o\ & (\B[0]~input_o\ & !\B[2]~input_o\)) # (!\B[1]~input_o\ & ((\B[2]~input_o\))))) # (!\B[3]~input_o\ & ((\B[1]~input_o\ & ((\B[0]~input_o\) # (!\B[2]~input_o\))) # (!\B[1]~input_o\ & 
-- (\B[0]~input_o\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst7|inst5[5]~11_combout\);

-- Location: LCCOMB_X102_Y10_N30
\inst7|inst5[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5[5]~15_combout\ = (\inst7|inst5[5]~11_combout\) # ((\sel[1]~input_o\ & ((\sel[2]~input_o\) # (!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5[5]~11_combout\,
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst7|inst5[5]~15_combout\);

-- Location: LCCOMB_X108_Y10_N30
\inst2|inst|inst1|inst5|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst1|inst5|inst4|inst~0_combout\ = ((\B[3]~input_o\ & !\B[1]~input_o\)) # (!\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst2|inst|inst1|inst5|inst4|inst~0_combout\);

-- Location: LCCOMB_X108_Y10_N4
\inst2|inst|inst1|inst4|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst1|inst4|inst|inst~0_combout\ = (\B[3]~input_o\ & (!\B[1]~input_o\ & \B[2]~input_o\)) # (!\B[3]~input_o\ & (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst2|inst|inst1|inst4|inst|inst~0_combout\);

-- Location: LCCOMB_X109_Y9_N24
\inst7|inst5[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5\(4) = (\inst6|inst2~0_combout\) # ((\B[0]~input_o\) # ((!\inst2|inst|inst1|inst5|inst4|inst~0_combout\ & !\inst2|inst|inst1|inst4|inst|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst1|inst5|inst4|inst~0_combout\,
	datab => \inst2|inst|inst1|inst4|inst|inst~0_combout\,
	datac => \inst6|inst2~0_combout\,
	datad => \B[0]~input_o\,
	combout => \inst7|inst5\(4));

-- Location: LCCOMB_X108_Y10_N8
\inst7|inst5[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5[3]~12_combout\ = (\B[3]~input_o\ & (\B[1]~input_o\ & (\B[0]~input_o\ $ (\B[2]~input_o\)))) # (!\B[3]~input_o\ & ((\B[1]~input_o\ & (\B[0]~input_o\ & \B[2]~input_o\)) # (!\B[1]~input_o\ & (\B[0]~input_o\ $ (\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst7|inst5[3]~12_combout\);

-- Location: LCCOMB_X102_Y10_N0
\inst7|inst5[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5[3]~16_combout\ = (\inst7|inst5[3]~12_combout\) # ((\sel[1]~input_o\ & ((\sel[2]~input_o\) # (!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5[3]~12_combout\,
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst7|inst5[3]~16_combout\);

-- Location: LCCOMB_X108_Y10_N2
\inst2|inst1|inst9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst9~combout\ = (!\B[0]~input_o\ & ((\B[3]~input_o\ & (!\B[1]~input_o\ & \B[2]~input_o\)) # (!\B[3]~input_o\ & (\B[1]~input_o\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst2|inst1|inst9~combout\);

-- Location: LCCOMB_X108_Y14_N28
\inst7|inst5[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5\(2) = (\inst2|inst1|inst9~combout\) # ((\sel[1]~input_o\ & ((\sel[2]~input_o\) # (!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \inst2|inst1|inst9~combout\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst7|inst5\(2));

-- Location: LCCOMB_X109_Y9_N2
\inst7|inst5[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5[1]~13_combout\ = (\inst6|inst2~0_combout\) # ((!\inst2|inst|inst1|inst5|inst4|inst~0_combout\ & (\inst2|inst|inst1|inst4|inst|inst~0_combout\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst1|inst5|inst4|inst~0_combout\,
	datab => \inst2|inst|inst1|inst4|inst|inst~0_combout\,
	datac => \inst6|inst2~0_combout\,
	datad => \B[0]~input_o\,
	combout => \inst7|inst5[1]~13_combout\);

-- Location: LCCOMB_X108_Y10_N20
\inst7|inst5[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5[0]~14_combout\ = (\B[3]~input_o\ & (\B[1]~input_o\ & (\B[0]~input_o\ $ (\B[2]~input_o\)))) # (!\B[3]~input_o\ & (!\B[1]~input_o\ & (\B[0]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst7|inst5[0]~14_combout\);

-- Location: LCCOMB_X102_Y10_N2
\inst7|inst5[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5[0]~17_combout\ = (\inst7|inst5[0]~14_combout\) # ((\sel[1]~input_o\ & ((\sel[2]~input_o\) # (!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5[0]~14_combout\,
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst7|inst5[0]~17_combout\);

-- Location: LCCOMB_X108_Y10_N22
\inst7|inst6[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst6\(5) = (\inst6|inst2~0_combout\) # ((\B[3]~input_o\ & ((\B[1]~input_o\) # (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst6|inst2~0_combout\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst7|inst6\(5));

-- Location: LCCOMB_X102_Y10_N10
\inst|inst2|inst16[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[0]~21_combout\ = (\sel[1]~input_o\ & (\B[0]~input_o\ & ((\A[0]~input_o\) # (!\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|inst2|inst16[0]~21_combout\);

-- Location: LCCOMB_X102_Y10_N8
\inst|inst2|inst16[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[0]~20_combout\ = (\sel[1]~input_o\ & (\sel[2]~input_o\ & \sel[0]~input_o\)) # (!\sel[1]~input_o\ & (!\sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|inst2|inst16[0]~20_combout\);

-- Location: LCCOMB_X102_Y10_N12
\inst|inst2|inst16[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst16[0]~22_combout\ = (\inst|inst2|inst16[0]~21_combout\ & (((\inst|inst5|inst|inst99~combout\ & \inst|inst2|inst16[0]~20_combout\)) # (!\sel[0]~input_o\))) # (!\inst|inst2|inst16[0]~21_combout\ & (\inst|inst5|inst|inst99~combout\ & 
-- (\inst|inst2|inst16[0]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst16[0]~21_combout\,
	datab => \inst|inst5|inst|inst99~combout\,
	datac => \inst|inst2|inst16[0]~20_combout\,
	datad => \sel[0]~input_o\,
	combout => \inst|inst2|inst16[0]~22_combout\);

-- Location: LCCOMB_X108_Y18_N14
\inst3|inst1|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|inst9~0_combout\ = (\inst|inst2|inst16[2]~9_combout\ & (\inst|inst2|inst16[4]~15_combout\ $ (((\inst|inst2|inst16[3]~4_combout\ & !\inst|inst2|inst16[1]~19_combout\))))) # (!\inst|inst2|inst16[2]~9_combout\ & 
-- (!\inst|inst2|inst16[4]~15_combout\ & ((\inst|inst2|inst16[1]~19_combout\) # (!\inst|inst2|inst16[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst16[3]~4_combout\,
	datab => \inst|inst2|inst16[2]~9_combout\,
	datac => \inst|inst2|inst16[1]~19_combout\,
	datad => \inst|inst2|inst16[4]~15_combout\,
	combout => \inst3|inst1|inst9~0_combout\);

-- Location: LCCOMB_X108_Y18_N26
\inst3|inst|inst1|inst5|inst4|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst1|inst5|inst4|inst~combout\ = (\inst|inst2|inst16[2]~9_combout\ & ((\inst|inst2|inst16[4]~15_combout\) # ((\inst|inst2|inst16[3]~4_combout\ & !\inst|inst2|inst16[1]~19_combout\)))) # (!\inst|inst2|inst16[2]~9_combout\ & 
-- (((!\inst|inst2|inst16[3]~4_combout\ & \inst|inst2|inst16[1]~19_combout\)) # (!\inst|inst2|inst16[4]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst16[3]~4_combout\,
	datab => \inst|inst2|inst16[2]~9_combout\,
	datac => \inst|inst2|inst16[1]~19_combout\,
	datad => \inst|inst2|inst16[4]~15_combout\,
	combout => \inst3|inst|inst1|inst5|inst4|inst~combout\);

-- Location: LCCOMB_X108_Y18_N16
\inst3|inst|inst1|inst4|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst1|inst4|inst|inst~0_combout\ = (\inst|inst2|inst16[3]~4_combout\ & ((\inst|inst2|inst16[2]~9_combout\ & (!\inst|inst2|inst16[1]~19_combout\ & !\inst|inst2|inst16[4]~15_combout\)) # (!\inst|inst2|inst16[2]~9_combout\ & 
-- (\inst|inst2|inst16[1]~19_combout\ & \inst|inst2|inst16[4]~15_combout\)))) # (!\inst|inst2|inst16[3]~4_combout\ & (\inst|inst2|inst16[1]~19_combout\ $ (((!\inst|inst2|inst16[2]~9_combout\ & \inst|inst2|inst16[4]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst16[3]~4_combout\,
	datab => \inst|inst2|inst16[2]~9_combout\,
	datac => \inst|inst2|inst16[1]~19_combout\,
	datad => \inst|inst2|inst16[4]~15_combout\,
	combout => \inst3|inst|inst1|inst4|inst|inst~0_combout\);

-- Location: LCCOMB_X108_Y14_N2
\inst12|inst1[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst1[6]~4_combout\ = (\inst3|inst|inst1|inst4|inst|inst~0_combout\ & (\inst|inst2|inst16[0]~22_combout\ & ((!\inst3|inst|inst1|inst5|inst4|inst~combout\)))) # (!\inst3|inst|inst1|inst4|inst|inst~0_combout\ & (((\inst3|inst1|inst9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst16[0]~22_combout\,
	datab => \inst3|inst1|inst9~0_combout\,
	datac => \inst3|inst|inst1|inst5|inst4|inst~combout\,
	datad => \inst3|inst|inst1|inst4|inst|inst~0_combout\,
	combout => \inst12|inst1[6]~4_combout\);

-- Location: LCCOMB_X108_Y14_N22
\inst12|inst1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst1\(6) = (\sel[1]~input_o\) # ((\inst12|inst1[6]~4_combout\) # (\sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \inst12|inst1[6]~4_combout\,
	datac => \sel[2]~input_o\,
	combout => \inst12|inst1\(6));

-- Location: LCCOMB_X108_Y18_N20
\inst12|inst1[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst1[5]~5_combout\ = (\inst|inst2|inst16[0]~22_combout\ & (((\inst3|inst1|inst9~0_combout\) # (\inst3|inst|inst1|inst4|inst|inst~0_combout\)))) # (!\inst|inst2|inst16[0]~22_combout\ & (\inst3|inst|inst1|inst5|inst4|inst~combout\ & 
-- ((\inst3|inst|inst1|inst4|inst|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst1|inst5|inst4|inst~combout\,
	datab => \inst3|inst1|inst9~0_combout\,
	datac => \inst|inst2|inst16[0]~22_combout\,
	datad => \inst3|inst|inst1|inst4|inst|inst~0_combout\,
	combout => \inst12|inst1[5]~5_combout\);

-- Location: LCCOMB_X108_Y18_N30
\inst12|inst1[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst1[5]~9_combout\ = (\sel[2]~input_o\) # ((\inst12|inst1[5]~5_combout\) # (\sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \inst12|inst1[5]~5_combout\,
	datac => \sel[1]~input_o\,
	combout => \inst12|inst1[5]~9_combout\);

-- Location: LCCOMB_X108_Y18_N22
\inst12|inst1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst1\(4) = (\inst|inst2|inst16[0]~22_combout\) # (((!\inst3|inst|inst1|inst5|inst4|inst~combout\ & !\inst3|inst|inst1|inst4|inst|inst~0_combout\)) # (!\inst|inst2|inst[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst1|inst5|inst4|inst~combout\,
	datab => \inst3|inst|inst1|inst4|inst|inst~0_combout\,
	datac => \inst|inst2|inst16[0]~22_combout\,
	datad => \inst|inst2|inst[4]~0_combout\,
	combout => \inst12|inst1\(4));

-- Location: LCCOMB_X108_Y14_N20
\inst12|inst1[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst1[0]~6_combout\ = (\inst|inst2|inst[4]~0_combout\ & (((\inst3|inst|inst1|inst4|inst|inst~0_combout\) # (!\inst3|inst1|inst9~0_combout\)) # (!\inst|inst2|inst16[0]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst16[0]~22_combout\,
	datab => \inst3|inst|inst1|inst4|inst|inst~0_combout\,
	datac => \inst3|inst1|inst9~0_combout\,
	datad => \inst|inst2|inst[4]~0_combout\,
	combout => \inst12|inst1[0]~6_combout\);

-- Location: LCCOMB_X108_Y18_N24
\inst12|inst1[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst1[3]~7_combout\ = ((!\inst3|inst|inst1|inst5|inst4|inst~combout\ & (\inst|inst2|inst16[0]~22_combout\ $ (!\inst3|inst|inst1|inst4|inst|inst~0_combout\)))) # (!\inst12|inst1[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst1|inst5|inst4|inst~combout\,
	datab => \inst12|inst1[0]~6_combout\,
	datac => \inst|inst2|inst16[0]~22_combout\,
	datad => \inst3|inst|inst1|inst4|inst|inst~0_combout\,
	combout => \inst12|inst1[3]~7_combout\);

-- Location: LCCOMB_X108_Y18_N2
\inst12|inst1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst1\(2) = ((\inst3|inst1|inst9~0_combout\ & (!\inst|inst2|inst16[0]~22_combout\ & \inst3|inst|inst1|inst4|inst|inst~0_combout\))) # (!\inst|inst2|inst[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst[4]~0_combout\,
	datab => \inst3|inst1|inst9~0_combout\,
	datac => \inst|inst2|inst16[0]~22_combout\,
	datad => \inst3|inst|inst1|inst4|inst|inst~0_combout\,
	combout => \inst12|inst1\(2));

-- Location: LCCOMB_X108_Y18_N4
\inst12|inst1[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst1[1]~8_combout\ = ((!\inst3|inst|inst1|inst5|inst4|inst~combout\ & (\inst3|inst|inst1|inst4|inst|inst~0_combout\ $ (\inst|inst2|inst16[0]~22_combout\)))) # (!\inst|inst2|inst[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst1|inst5|inst4|inst~combout\,
	datab => \inst3|inst|inst1|inst4|inst|inst~0_combout\,
	datac => \inst|inst2|inst16[0]~22_combout\,
	datad => \inst|inst2|inst[4]~0_combout\,
	combout => \inst12|inst1[1]~8_combout\);

-- Location: LCCOMB_X108_Y14_N6
\inst12|inst1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst1\(0) = ((!\inst|inst2|inst16[0]~22_combout\ & (!\inst3|inst|inst1|inst5|inst4|inst~combout\ & !\inst3|inst|inst1|inst4|inst|inst~0_combout\))) # (!\inst12|inst1[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst16[0]~22_combout\,
	datab => \inst12|inst1[0]~6_combout\,
	datac => \inst3|inst|inst1|inst5|inst4|inst~combout\,
	datad => \inst3|inst|inst1|inst4|inst|inst~0_combout\,
	combout => \inst12|inst1\(0));

ww_Sinal <= \Sinal~output_o\;

ww_Status <= \Status~output_o\;

ww_displaySinal <= \displaySinal~output_o\;

ww_dispalyF1(6) <= \dispalyF1[6]~output_o\;

ww_dispalyF1(5) <= \dispalyF1[5]~output_o\;

ww_dispalyF1(4) <= \dispalyF1[4]~output_o\;

ww_dispalyF1(3) <= \dispalyF1[3]~output_o\;

ww_dispalyF1(2) <= \dispalyF1[2]~output_o\;

ww_dispalyF1(1) <= \dispalyF1[1]~output_o\;

ww_dispalyF1(0) <= \dispalyF1[0]~output_o\;

ww_displayA0(6) <= \displayA0[6]~output_o\;

ww_displayA0(5) <= \displayA0[5]~output_o\;

ww_displayA0(4) <= \displayA0[4]~output_o\;

ww_displayA0(3) <= \displayA0[3]~output_o\;

ww_displayA0(2) <= \displayA0[2]~output_o\;

ww_displayA0(1) <= \displayA0[1]~output_o\;

ww_displayA0(0) <= \displayA0[0]~output_o\;

ww_displayA1(6) <= \displayA1[6]~output_o\;

ww_displayA1(5) <= \displayA1[5]~output_o\;

ww_displayA1(4) <= \displayA1[4]~output_o\;

ww_displayA1(3) <= \displayA1[3]~output_o\;

ww_displayA1(2) <= \displayA1[2]~output_o\;

ww_displayA1(1) <= \displayA1[1]~output_o\;

ww_displayA1(0) <= \displayA1[0]~output_o\;

ww_displayB0(6) <= \displayB0[6]~output_o\;

ww_displayB0(5) <= \displayB0[5]~output_o\;

ww_displayB0(4) <= \displayB0[4]~output_o\;

ww_displayB0(3) <= \displayB0[3]~output_o\;

ww_displayB0(2) <= \displayB0[2]~output_o\;

ww_displayB0(1) <= \displayB0[1]~output_o\;

ww_displayB0(0) <= \displayB0[0]~output_o\;

ww_displayB1(6) <= \displayB1[6]~output_o\;

ww_displayB1(5) <= \displayB1[5]~output_o\;

ww_displayB1(4) <= \displayB1[4]~output_o\;

ww_displayB1(3) <= \displayB1[3]~output_o\;

ww_displayB1(2) <= \displayB1[2]~output_o\;

ww_displayB1(1) <= \displayB1[1]~output_o\;

ww_displayB1(0) <= \displayB1[0]~output_o\;

ww_displayF0(6) <= \displayF0[6]~output_o\;

ww_displayF0(5) <= \displayF0[5]~output_o\;

ww_displayF0(4) <= \displayF0[4]~output_o\;

ww_displayF0(3) <= \displayF0[3]~output_o\;

ww_displayF0(2) <= \displayF0[2]~output_o\;

ww_displayF0(1) <= \displayF0[1]~output_o\;

ww_displayF0(0) <= \displayF0[0]~output_o\;

ww_F(4) <= \F[4]~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(0) <= \F[0]~output_o\;

ww_LED_A(4) <= \LED_A[4]~output_o\;

ww_LED_A(3) <= \LED_A[3]~output_o\;

ww_LED_A(2) <= \LED_A[2]~output_o\;

ww_LED_A(1) <= \LED_A[1]~output_o\;

ww_LED_A(0) <= \LED_A[0]~output_o\;

ww_LED_B(4) <= \LED_B[4]~output_o\;

ww_LED_B(3) <= \LED_B[3]~output_o\;

ww_LED_B(2) <= \LED_B[2]~output_o\;

ww_LED_B(1) <= \LED_B[1]~output_o\;

ww_LED_B(0) <= \LED_B[0]~output_o\;

ww_LED_sel(2) <= \LED_sel[2]~output_o\;

ww_LED_sel(1) <= \LED_sel[1]~output_o\;

ww_LED_sel(0) <= \LED_sel[0]~output_o\;
END structure;


