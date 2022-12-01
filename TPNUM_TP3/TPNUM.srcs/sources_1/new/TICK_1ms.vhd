----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.12.2021 08:13:57
-- Design Name: 
-- Module Name: TICK_1ms - Behavioral
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

entity TICK_1ms is
    Port ( CLK : in STD_LOGIC;
           Tick : out STD_LOGIC);
end TICK_1ms;

architecture Behavioral of TICK_1ms is
    constant Ndiv: integer := 99999;
	signal Q: integer range 0 to Ndiv:= 0;
	begin
	
	process(CLK)begin
		if rising_edge(CLK)then
			if(Q = Ndiv)then
				Q <= 0;
			else
				Q <= Q+1;
			end if;
		end if;
	end process;
	
	Tick<= '1' when Q = Ndiv else '0';
end Behavioral;
