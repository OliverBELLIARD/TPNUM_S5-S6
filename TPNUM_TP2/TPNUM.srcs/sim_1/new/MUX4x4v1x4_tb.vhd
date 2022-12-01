----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2021 11:19:54
-- Design Name: 
-- Module Name: MUX4x4v1x4_tb - Behavioral
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

entity MUX4x4v1x4_tb is
--   (0) : surtout ne rien mettre!
end MUX4x4v1x4_tb;

architecture Behavioral of MUX4x4v1x4_tb is
component MUX4x4v1x4
port ( A : in STD_LOGIC_VECTOR (3 downto 0);
       B : in STD_LOGIC_VECTOR (3 downto 0);
       C : in STD_LOGIC_VECTOR (3 downto 0);
       D : in STD_LOGIC_VECTOR (3 downto 0);
       Sel : in STD_LOGIC_VECTOR (1 downto 0);
       O : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal A,B,C,D,O : STD_LOGIC_VECTOR (3 downto 0);
signal Sel : STD_LOGIC_VECTOR (1 downto 0);

begin
    UUT :   MUX4x4v1x4   port   map   (A=>A,B=>B,C=>C,D=>D,Sel=>Sel,
            O=>O) ;
    process
    begin
        A <= "0010";
        B <= "0110";
        C <= "0111";
        D <= "1001";
        Sel <= "00";
        wait for 100 ns;
        Sel <= "01";
        wait for 100 ns;
        Sel <= "10";
        wait for 100 ns;
        Sel <= "11";
        wait;
    end process;
end Behavioral;