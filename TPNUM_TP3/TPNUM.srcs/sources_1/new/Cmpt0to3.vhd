----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.11.2021 09:08:23
-- Design Name: 
-- Module Name: Cmpt0to3 - Behavioral
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

entity Cmpt0to3 is
    Port ( CLK : in STD_LOGIC;
           EN : in STD_LOGIC;
           N : out STD_LOGIC_VECTOR (1 downto 0));
end Cmpt0to3;

architecture Behavioral of Cmpt0to3 is
    signal M: unsigned(1 downto 0):=(OTHERS => '0');
    
begin
    process(clk)begin
        if rising_edge(clk)then
            --insérez ici l'évolution de M
                if(EN='1') then
                M <= M+1;
                else
                M <= M;
            end if ;
        end if;
    end process;
     --recopie de M sur la sortie N
    N <= std_logic_vector(M);

end Behavioral;
