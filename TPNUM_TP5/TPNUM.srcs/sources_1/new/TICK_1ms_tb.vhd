----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.12.2021 08:34:54
-- Design Name: 
-- Module Name: TICK_1ms_tb - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TICK_1ms_tb is

end TICK_1ms_tb;

architecture Behavioral of TICK_1ms_tb is
component TICK_1ms
Port ( CLK : in STD_LOGIC;
       Tick : out STD_LOGIC);
end component;

signal CLK, Tick : STD_LOGIC;

begin
    UUT: TICK_1ms port map (CLK=>CLK, Tick=>Tick);
    
    process
    begin
        CLK <= '1';
        wait for 10 ns;
        CLK <= '0';
        wait for 10 ns;
    end process;

end Behavioral;
