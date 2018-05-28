--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : lab3_reg_file.vhf
-- /___/   /\     Timestamp : 08/12/2017 17:09:18
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/unwrapped/sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl lab3_reg_file.vhf -w /home/btech/cs1160369/ProjectX/lab3_reg_file.sch
--Design Name: lab3_reg_file
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M8_1E_HXILINX_lab3_reg_file -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M8_1E_HXILINX_lab3_reg_file is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    D4  : in std_logic;
    D5  : in std_logic;
    D6  : in std_logic;
    D7  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic;
    S2  : in std_logic
  );
end M8_1E_HXILINX_lab3_reg_file;

architecture M8_1E_HXILINX_lab3_reg_file_V of M8_1E_HXILINX_lab3_reg_file is
begin
  process (D0, D1, D2, D3, D4, D5, D6, D7, E, S0, S1, S2)
  variable sel : std_logic_vector(2 downto 0);
  begin
    sel := S2&S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "000" => O <= D0;
      when "001" => O <= D1;
      when "010" => O <= D2;
      when "011" => O <= D3;
      when "100" => O <= D4;
      when "101" => O <= D5;
      when "110" => O <= D6;
      when "111" => O <= D7;
      when others => NULL;
      end case;
    end if;
    end process; 
end M8_1E_HXILINX_lab3_reg_file_V;
----- CELL M2_1_HXILINX_lab3_reg_file -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_lab3_reg_file is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_lab3_reg_file;

architecture M2_1_HXILINX_lab3_reg_file_V of M2_1_HXILINX_lab3_reg_file is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_lab3_reg_file_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity demux_MUSER_lab3_reg_file is
   port ( CLK     : in    std_logic; 
          e       : in    std_logic; 
          wr_addr : in    std_logic_vector (2 downto 0); 
          y0      : out   std_logic; 
          y1      : out   std_logic; 
          y2      : out   std_logic; 
          y3      : out   std_logic; 
          y4      : out   std_logic; 
          y5      : out   std_logic; 
          y6      : out   std_logic; 
          y7      : out   std_logic);
end demux_MUSER_lab3_reg_file;

architecture BEHAVIORAL of demux_MUSER_lab3_reg_file is
   attribute BOX_TYPE   : string ;
   component AND5B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B3 : component is "BLACK_BOX";
   
   component AND5B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B2 : component is "BLACK_BOX";
   
   component AND5B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B1 : component is "BLACK_BOX";
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND5B3
      port map (I0=>wr_addr(2),
                I1=>wr_addr(1),
                I2=>wr_addr(0),
                I3=>CLK,
                I4=>e,
                O=>y0);
   
   XLXI_2 : AND5B2
      port map (I0=>wr_addr(2),
                I1=>wr_addr(1),
                I2=>wr_addr(0),
                I3=>CLK,
                I4=>e,
                O=>y1);
   
   XLXI_4 : AND5B2
      port map (I0=>wr_addr(2),
                I1=>wr_addr(0),
                I2=>wr_addr(1),
                I3=>CLK,
                I4=>e,
                O=>y2);
   
   XLXI_5 : AND5B1
      port map (I0=>wr_addr(2),
                I1=>wr_addr(1),
                I2=>wr_addr(0),
                I3=>CLK,
                I4=>e,
                O=>y3);
   
   XLXI_7 : AND5B2
      port map (I0=>wr_addr(1),
                I1=>wr_addr(0),
                I2=>wr_addr(2),
                I3=>CLK,
                I4=>e,
                O=>y4);
   
   XLXI_8 : AND5B1
      port map (I0=>wr_addr(1),
                I1=>wr_addr(2),
                I2=>wr_addr(0),
                I3=>CLK,
                I4=>e,
                O=>y5);
   
   XLXI_9 : AND5B1
      port map (I0=>wr_addr(0),
                I1=>wr_addr(2),
                I2=>wr_addr(1),
                I3=>CLK,
                I4=>e,
                O=>y6);
   
   XLXI_10 : AND5
      port map (I0=>wr_addr(2),
                I1=>wr_addr(1),
                I2=>wr_addr(0),
                I3=>CLK,
                I4=>e,
                O=>y7);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity muxi_MUSER_lab3_reg_file is
   port ( reg0 : in    std_logic_vector (3 downto 0); 
          reg1 : in    std_logic_vector (3 downto 0); 
          reg2 : in    std_logic_vector (3 downto 0); 
          reg3 : in    std_logic_vector (3 downto 0); 
          reg4 : in    std_logic_vector (3 downto 0); 
          reg5 : in    std_logic_vector (3 downto 0); 
          reg6 : in    std_logic_vector (3 downto 0); 
          reg7 : in    std_logic_vector (3 downto 0); 
          s0   : in    std_logic; 
          s1   : in    std_logic; 
          s2   : in    std_logic; 
          rd   : out   std_logic_vector (3 downto 0));
end muxi_MUSER_lab3_reg_file;

architecture BEHAVIORAL of muxi_MUSER_lab3_reg_file is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_52 : std_logic;
   signal XLXN_54 : std_logic;
   component M8_1E_HXILINX_lab3_reg_file
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             D4 : in    std_logic; 
             D5 : in    std_logic; 
             D6 : in    std_logic; 
             D7 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             S2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_5 : label is "XLXI_5_0";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_1";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_2";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_3";
begin
   XLXI_5 : M8_1E_HXILINX_lab3_reg_file
      port map (D0=>reg0(0),
                D1=>reg1(0),
                D2=>reg2(0),
                D3=>reg3(0),
                D4=>reg4(0),
                D5=>reg5(0),
                D6=>reg6(0),
                D7=>reg7(0),
                E=>XLXN_54,
                S0=>s0,
                S1=>s1,
                S2=>s2,
                O=>rd(0));
   
   XLXI_6 : M8_1E_HXILINX_lab3_reg_file
      port map (D0=>reg0(2),
                D1=>reg1(2),
                D2=>reg2(2),
                D3=>reg3(2),
                D4=>reg4(2),
                D5=>reg5(2),
                D6=>reg6(2),
                D7=>reg7(2),
                E=>XLXN_54,
                S0=>s0,
                S1=>s1,
                S2=>s2,
                O=>rd(2));
   
   XLXI_7 : M8_1E_HXILINX_lab3_reg_file
      port map (D0=>reg0(1),
                D1=>reg1(1),
                D2=>reg2(1),
                D3=>reg3(1),
                D4=>reg4(1),
                D5=>reg5(1),
                D6=>reg6(1),
                D7=>reg7(1),
                E=>XLXN_54,
                S0=>s0,
                S1=>s1,
                S2=>s2,
                O=>rd(1));
   
   XLXI_8 : M8_1E_HXILINX_lab3_reg_file
      port map (D0=>reg0(3),
                D1=>reg1(3),
                D2=>reg2(3),
                D3=>reg3(3),
                D4=>reg4(3),
                D5=>reg5(3),
                D6=>reg6(3),
                D7=>reg7(3),
                E=>XLXN_54,
                S0=>s0,
                S1=>s1,
                S2=>s2,
                O=>rd(3));
   
   XLXI_9 : OR2
      port map (I0=>XLXN_52,
                I1=>s2,
                O=>XLXN_54);
   
   XLXI_10 : INV
      port map (I=>s2,
                O=>XLXN_52);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity RegiNew_MUSER_lab3_reg_file is
   port ( CLK     : in    std_logic; 
          wr_data : in    std_logic_vector (3 downto 0); 
          rd_data : out   std_logic_vector (3 downto 0));
end RegiNew_MUSER_lab3_reg_file;

architecture BEHAVIORAL of RegiNew_MUSER_lab3_reg_file is
   attribute BOX_TYPE   : string ;
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
begin
   XLXI_1 : FD
      port map (C=>CLK,
                D=>wr_data(0),
                Q=>rd_data(0));
   
   XLXI_2 : FD
      port map (C=>CLK,
                D=>wr_data(1),
                Q=>rd_data(1));
   
   XLXI_3 : FD
      port map (C=>CLK,
                D=>wr_data(2),
                Q=>rd_data(2));
   
   XLXI_4 : FD
      port map (C=>CLK,
                D=>wr_data(3),
                Q=>rd_data(3));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity RegiFile_MUSER_lab3_reg_file is
   port ( clock        : in    std_logic; 
          rd_addr1     : in    std_logic_vector (2 downto 0); 
          rd_addr2     : in    std_logic_vector (2 downto 0); 
          write_enable : in    std_logic; 
          wr_addr      : in    std_logic_vector (2 downto 0); 
          wr_data      : in    std_logic_vector (3 downto 0); 
          rd_data1     : out   std_logic_vector (3 downto 0); 
          rd_data2     : out   std_logic_vector (3 downto 0));
end RegiFile_MUSER_lab3_reg_file;

architecture BEHAVIORAL of RegiFile_MUSER_lab3_reg_file is
   signal XLXN_1       : std_logic_vector (3 downto 0);
   signal XLXN_2       : std_logic_vector (3 downto 0);
   signal XLXN_5       : std_logic_vector (3 downto 0);
   signal XLXN_6       : std_logic_vector (3 downto 0);
   signal XLXN_10      : std_logic_vector (3 downto 0);
   signal XLXN_11      : std_logic_vector (3 downto 0);
   signal XLXN_14      : std_logic_vector (3 downto 0);
   signal XLXN_15      : std_logic_vector (3 downto 0);
   signal XLXN_16      : std_logic;
   signal XLXN_17      : std_logic;
   signal XLXN_18      : std_logic;
   signal XLXN_19      : std_logic;
   signal XLXN_20      : std_logic;
   signal XLXN_21      : std_logic;
   signal XLXN_22      : std_logic;
   signal XLXN_23      : std_logic;
   component RegiNew_MUSER_lab3_reg_file
      port ( CLK     : in    std_logic; 
             rd_data : out   std_logic_vector (3 downto 0); 
             wr_data : in    std_logic_vector (3 downto 0));
   end component;
   
   component muxi_MUSER_lab3_reg_file
      port ( rd   : out   std_logic_vector (3 downto 0); 
             reg0 : in    std_logic_vector (3 downto 0); 
             reg1 : in    std_logic_vector (3 downto 0); 
             reg2 : in    std_logic_vector (3 downto 0); 
             reg3 : in    std_logic_vector (3 downto 0); 
             reg4 : in    std_logic_vector (3 downto 0); 
             reg5 : in    std_logic_vector (3 downto 0); 
             reg6 : in    std_logic_vector (3 downto 0); 
             reg7 : in    std_logic_vector (3 downto 0); 
             s0   : in    std_logic; 
             s1   : in    std_logic; 
             s2   : in    std_logic);
   end component;
   
   component demux_MUSER_lab3_reg_file
      port ( CLK     : in    std_logic; 
             e       : in    std_logic; 
             wr_addr : in    std_logic_vector (2 downto 0); 
             y0      : out   std_logic; 
             y1      : inout std_logic; 
             y2      : out   std_logic; 
             y3      : out   std_logic; 
             y4      : out   std_logic; 
             y5      : out   std_logic; 
             y6      : out   std_logic; 
             y7      : out   std_logic);
   end component;
   
begin
   XLXI_1 : RegiNew_MUSER_lab3_reg_file
      port map (CLK=>XLXN_16,
                wr_data(3 downto 0)=>wr_data(3 downto 0),
                rd_data(3 downto 0)=>XLXN_1(3 downto 0));
   
   XLXI_2 : RegiNew_MUSER_lab3_reg_file
      port map (CLK=>XLXN_17,
                wr_data(3 downto 0)=>wr_data(3 downto 0),
                rd_data(3 downto 0)=>XLXN_15(3 downto 0));
   
   XLXI_3 : RegiNew_MUSER_lab3_reg_file
      port map (CLK=>XLXN_18,
                wr_data(3 downto 0)=>wr_data(3 downto 0),
                rd_data(3 downto 0)=>XLXN_2(3 downto 0));
   
   XLXI_4 : RegiNew_MUSER_lab3_reg_file
      port map (CLK=>XLXN_19,
                wr_data(3 downto 0)=>wr_data(3 downto 0),
                rd_data(3 downto 0)=>XLXN_14(3 downto 0));
   
   XLXI_5 : RegiNew_MUSER_lab3_reg_file
      port map (CLK=>XLXN_20,
                wr_data(3 downto 0)=>wr_data(3 downto 0),
                rd_data(3 downto 0)=>XLXN_6(3 downto 0));
   
   XLXI_6 : RegiNew_MUSER_lab3_reg_file
      port map (CLK=>XLXN_21,
                wr_data(3 downto 0)=>wr_data(3 downto 0),
                rd_data(3 downto 0)=>XLXN_5(3 downto 0));
   
   XLXI_12 : RegiNew_MUSER_lab3_reg_file
      port map (CLK=>XLXN_22,
                wr_data(3 downto 0)=>wr_data(3 downto 0),
                rd_data(3 downto 0)=>XLXN_11(3 downto 0));
   
   XLXI_13 : RegiNew_MUSER_lab3_reg_file
      port map (CLK=>XLXN_23,
                wr_data(3 downto 0)=>wr_data(3 downto 0),
                rd_data(3 downto 0)=>XLXN_10(3 downto 0));
   
   XLXI_14 : muxi_MUSER_lab3_reg_file
      port map (reg0(3 downto 0)=>XLXN_1(3 downto 0),
                reg1(3 downto 0)=>XLXN_15(3 downto 0),
                reg2(3 downto 0)=>XLXN_2(3 downto 0),
                reg3(3 downto 0)=>XLXN_14(3 downto 0),
                reg4(3 downto 0)=>XLXN_6(3 downto 0),
                reg5(3 downto 0)=>XLXN_5(3 downto 0),
                reg6(3 downto 0)=>XLXN_11(3 downto 0),
                reg7(3 downto 0)=>XLXN_10(3 downto 0),
                s0=>rd_addr1(0),
                s1=>rd_addr1(1),
                s2=>rd_addr1(2),
                rd(3 downto 0)=>rd_data1(3 downto 0));
   
   XLXI_15 : demux_MUSER_lab3_reg_file
      port map (CLK=>clock,
                e=>write_enable,
                wr_addr(2 downto 0)=>wr_addr(2 downto 0),
                y0=>XLXN_16,
                y2=>XLXN_18,
                y3=>XLXN_19,
                y4=>XLXN_20,
                y5=>XLXN_21,
                y6=>XLXN_22,
                y7=>XLXN_23,
                y1=>XLXN_17);
   
   XLXI_16 : muxi_MUSER_lab3_reg_file
      port map (reg0(3 downto 0)=>XLXN_1(3 downto 0),
                reg1(3 downto 0)=>XLXN_15(3 downto 0),
                reg2(3 downto 0)=>XLXN_2(3 downto 0),
                reg3(3 downto 0)=>XLXN_14(3 downto 0),
                reg4(3 downto 0)=>XLXN_6(3 downto 0),
                reg5(3 downto 0)=>XLXN_5(3 downto 0),
                reg6(3 downto 0)=>XLXN_11(3 downto 0),
                reg7(3 downto 0)=>XLXN_10(3 downto 0),
                s0=>rd_addr2(0),
                s1=>rd_addr2(1),
                s2=>rd_addr2(2),
                rd(3 downto 0)=>rd_data2(3 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity lab3_reg_file is
   port ( clock              : in    std_logic; 
          mode               : in    std_logic; 
          rd_addr1           : in    std_logic_vector (2 downto 0); 
          rd_addr2           : in    std_logic_vector (2 downto 0); 
          write_enable       : in    std_logic; 
          wr_addr            : in    std_logic_vector (2 downto 0); 
          wr_data            : in    std_logic_vector (3 downto 0); 
          rd_data1           : out   std_logic_vector (3 downto 0); 
          rd_data1_xor_data2 : out   std_logic_vector (3 downto 0); 
          rd_data2           : out   std_logic_vector (3 downto 0));
end lab3_reg_file;

architecture BEHAVIORAL of lab3_reg_file is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal wr_dat                   : std_logic_vector (3 downto 0);
   signal rd_data1_DUMMY           : std_logic_vector (3 downto 0);
   signal rd_data2_DUMMY           : std_logic_vector (3 downto 0);
   signal rd_data1_xor_data2_DUMMY : std_logic_vector (3 downto 0);
   component M2_1_HXILINX_lab3_reg_file
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component RegiFile_MUSER_lab3_reg_file
      port ( clock        : in    std_logic; 
             rd_addr1     : in    std_logic_vector (2 downto 0); 
             rd_addr2     : in    std_logic_vector (2 downto 0); 
             rd_data1     : out   std_logic_vector (3 downto 0); 
             rd_data2     : out   std_logic_vector (3 downto 0); 
             write_enable : in    std_logic; 
             wr_addr      : in    std_logic_vector (2 downto 0); 
             wr_data      : in    std_logic_vector (3 downto 0));
   end component;
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_17 : label is "XLXI_17_4";
   attribute HU_SET of XLXI_18 : label is "XLXI_18_5";
   attribute HU_SET of XLXI_19 : label is "XLXI_19_6";
   attribute HU_SET of XLXI_20 : label is "XLXI_20_7";
begin
   rd_data1(3 downto 0) <= rd_data1_DUMMY(3 downto 0);
   rd_data1_xor_data2(3 downto 0) <= rd_data1_xor_data2_DUMMY(3 downto 0);
   rd_data2(3 downto 0) <= rd_data2_DUMMY(3 downto 0);
   XLXI_17 : M2_1_HXILINX_lab3_reg_file
      port map (D0=>wr_data(0),
                D1=>rd_data1_xor_data2_DUMMY(0),
                S0=>mode,
                O=>wr_dat(0));
   
   XLXI_18 : M2_1_HXILINX_lab3_reg_file
      port map (D0=>wr_data(1),
                D1=>rd_data1_xor_data2_DUMMY(1),
                S0=>mode,
                O=>wr_dat(1));
   
   XLXI_19 : M2_1_HXILINX_lab3_reg_file
      port map (D0=>wr_data(2),
                D1=>rd_data1_xor_data2_DUMMY(2),
                S0=>mode,
                O=>wr_dat(2));
   
   XLXI_20 : M2_1_HXILINX_lab3_reg_file
      port map (D0=>wr_data(3),
                D1=>rd_data1_xor_data2_DUMMY(3),
                S0=>mode,
                O=>wr_dat(3));
   
   XLXI_21 : RegiFile_MUSER_lab3_reg_file
      port map (clock=>clock,
                rd_addr1(2 downto 0)=>rd_addr1(2 downto 0),
                rd_addr2(2 downto 0)=>rd_addr2(2 downto 0),
                write_enable=>write_enable,
                wr_addr(2 downto 0)=>wr_addr(2 downto 0),
                wr_data(3 downto 0)=>wr_dat(3 downto 0),
                rd_data1(3 downto 0)=>rd_data1_DUMMY(3 downto 0),
                rd_data2(3 downto 0)=>rd_data2_DUMMY(3 downto 0));
   
   XLXI_22 : XOR2
      port map (I0=>rd_data2_DUMMY(0),
                I1=>rd_data1_DUMMY(0),
                O=>rd_data1_xor_data2_DUMMY(0));
   
   XLXI_23 : XOR2
      port map (I0=>rd_data2_DUMMY(1),
                I1=>rd_data1_DUMMY(1),
                O=>rd_data1_xor_data2_DUMMY(1));
   
   XLXI_24 : XOR2
      port map (I0=>rd_data2_DUMMY(2),
                I1=>rd_data1_DUMMY(2),
                O=>rd_data1_xor_data2_DUMMY(2));
   
   XLXI_25 : XOR2
      port map (I0=>rd_data2_DUMMY(3),
                I1=>rd_data1_DUMMY(3),
                O=>rd_data1_xor_data2_DUMMY(3));
   
end BEHAVIORAL;


