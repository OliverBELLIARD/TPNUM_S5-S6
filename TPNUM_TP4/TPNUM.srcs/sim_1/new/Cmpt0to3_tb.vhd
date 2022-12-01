----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.11.2021 10:14:10
-- Design Name: 
-- Module Name: Cmpt0to3_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Cmpt0to3_tb is
    
end Cmpt0to3_tb;

architecture Behavioral of Cmpt0to3_tb is
component Cmpt0to3
    Port ( CLK : in STD_LOGIC;
           EN : in STD_LOGIC;
           N : out STD_LOGIC_VECTOR (1 downto 0));
end component;

signal CLK, EN : STD_LOGIC;
signal N : STD_LOGIC_VECTOR (1 downto 0);

-- Clock period definitions
constant CLK_period : time := 10 ns;

begin
    UUT :   Cmpt0to3   port   map   (CLK=>CLK, EN=>EN, N=>N);
    
    -- Clock process definitions
    CLK_process :process
    begin
        CLK <= '0';
        wait for CLK_period/2;
        CLK <= '1';
        wait for CLK_period/2;
    end process;
    
    process
    begin
        EN <= '1';
        wait for 100 ns;
        EN <= '0';
        wait;
    end process;
end Behavioral;
