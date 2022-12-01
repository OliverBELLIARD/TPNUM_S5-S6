----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2022 08:24:02
-- Design Name: 
-- Module Name: Chrono - Behavioral
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

entity Chrono is
    Port ( CLK : in STD_LOGIC;
           EN : in STD_LOGIC;
           CLR : in STD_LOGIC;
           T : out STD_LOGIC_VECTOR (27 downto 0));
end Chrono;

architecture Behavioral of Chrono is

    signal EN_1ms: STD_LOGIC;
    signal EN_ticks: STD_LOGIC_VECTOR(6 downto 0);
    signal Temps: STD_LOGIC_VECTOR (27 downto 0);
    
begin

    tick : entity work.TICK_1ms
           port map (CLK=>CLK, Tick=>EN_1ms);
         
    msu : entity work.Cnt0toN_EN generic map (N=>10)
          port map (CLK=>CLK, EN=>EN_1ms, CLR=>CLR, Cout=>EN_ticks(0), Q=>Temps(3 downto 0));
         
    msd : entity work.Cnt0toN_EN generic map (N=>6)
          port map (CLK=>CLK, EN=>EN_ticks(0), CLR=>CLR, Cout=>EN_ticks(1), Q=>Temps(7 downto 4));
         
    su : entity work.Cnt0toN_EN generic map (N=>10)
          port map (CLK=>CLK, EN=>EN_ticks(1), CLR=>CLR, Cout=>EN_ticks(2), Q=>Temps(11 downto 8));
         
    sd : entity work.Cnt0toN_EN generic map (N=>6)
          port map (CLK=>CLK, EN=>EN_ticks(2), CLR=>CLR, Cout=>EN_ticks(3), Q=>Temps(15 downto 12));
   
    mu : entity work.Cnt0toN_EN generic map (N=>10)
          port map (CLK=>CLK, EN=>EN_ticks(3), CLR=>CLR, Cout=>EN_ticks(4), Q=>Temps(19 downto 16));
         
    md : entity work.Cnt0toN_EN generic map (N=>6)
          port map (CLK=>CLK, EN=>EN_ticks(4), CLR=>CLR, Cout=>EN_ticks(5), Q=>Temps(23 downto 20));
          
    h : entity work.Cnt0toN_EN generic map (N=>12)
          port map (CLK=>CLK, EN=>EN_ticks(5), CLR=>CLR, Cout=>EN_ticks(6), Q=>Temps(27 downto 24));

    T <= Temps;
    
end Behavioral;
