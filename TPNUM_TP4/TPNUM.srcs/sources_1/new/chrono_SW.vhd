----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2022 11:58:00
-- Design Name: 
-- Module Name: chrono_SW - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity chrono_SW is
    Port ( CLK : in STD_LOGIC;
           EN : in STD_LOGIC;
           CLR : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (6 downto 0);
           ENAN : out STD_LOGIC_VECTOR (3 downto 0));
end chrono_SW;

architecture Behavioral of chrono_SW is

    signal EN_1ms: STD_LOGIC;
    signal EN_ticks: STD_LOGIC_VECTOR(7 downto 0);
    signal Temps: STD_LOGIC_VECTOR (31 downto 0);
    signal EN_SW: STD_LOGIC;
    
begin
    
    disp : entity work.Disp4D
           port map (A=>Temps(15 downto 12),
                     B=>Temps(19 downto 16),
                     C=>Temps(23 downto 20),
                     D=>Temps(27 downto 24),
                     CLK=>CLK,
                     S=>S,
                     ENAN=>ENAN);
    
    tick : entity work.TICK_1ms
           port map (CLK=>CLK, Tick=>EN_1ms);
         
    ms : entity work.Cnt0toN_EN generic map (N=>25)
          port map (CLK=>CLK, EN=>EN_SW, CLR=>CLR, Cout=>EN_ticks(0), Q=>Temps(3 downto 0));
         
    csu : entity work.Cnt0toN_EN generic map (N=>10)
          port map (CLK=>CLK, EN=>EN_ticks(0), CLR=>CLR, Cout=>EN_ticks(1), Q=>Temps(7 downto 4));
         
    csd : entity work.Cnt0toN_EN generic map (N=>6)
          port map (CLK=>CLK, EN=>EN_ticks(1), CLR=>CLR, Cout=>EN_ticks(2), Q=>Temps(11 downto 8));
         
    su : entity work.Cnt0toN_EN generic map (N=>10)
          port map (CLK=>CLK, EN=>EN_ticks(2), CLR=>CLR, Cout=>EN_ticks(3), Q=>Temps(15 downto 12));
   
    sd : entity work.Cnt0toN_EN generic map (N=>6)
         port map (CLK=>CLK, EN=>EN_ticks(3), CLR=>CLR, Cout=>EN_ticks(4), Q=>Temps(19 downto 16));
         
    mu : entity work.Cnt0toN_EN generic map (N=>10)
         port map (CLK=>CLK, EN=>EN_ticks(4), CLR=>CLR, Cout=>EN_ticks(5), Q=>Temps(23 downto 20));
          
    md : entity work.Cnt0toN_EN generic map (N=>6)
         port map (CLK=>CLK, EN=>EN_ticks(5), CLR=>CLR, Cout=>EN_ticks(6), Q=>Temps(27 downto 24));
    
    EN_SW <= EN and EN_1ms;
end Behavioral;