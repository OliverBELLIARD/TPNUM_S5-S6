----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2021 08:25:16
-- Design Name: 
-- Module Name: Disp1Digit - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Disp1Digit is
    Port ( V : in STD_LOGIC_VECTOR (3 downto 0);
           N : in STD_LOGIC_VECTOR (1 downto 0);
           S : out STD_LOGIC_VECTOR (6 downto 0);
           ENAN : out STD_LOGIC_VECTOR (3 downto 0));
end Disp1Digit;

architecture Behavioral of Disp1Digit is
type tt is array (0 to 15) of std_logic_vector(6 downto 0);
--Le MSB et le LSB sont inversés dans la carte donc on doit tout inverser par rapport à la prépa
constant table:tt:=("1000000", -- 0
                    "1111001", -- 1
                    "0100100", -- 2
                    "0110000", -- 3
                    "0011001", -- 4
                    "0010010", -- 5
                    "0000010", -- 6
                    "1111000", -- 7
                    "0000000", -- 8
                    "0010000", -- 9
                    "1111111", -- void
                    "1111111", -- void
                    "1111111", -- void
                    "1111111", -- void
                    "1111111", -- void
                    "1111111"  -- void
                    );

--constant table:tt:=("0000001",
--                    "1001111",
--                    "0010010",
--                    "0000110",
--                    "1001100",
--                    "0100100",
--                    "0100000",
--                    "0001111",
--                    "0000000",
--                    "0000100",
--                    "1111111",
--                    "1111111",
--                    "1111111",
--                    "1111111",
--                    "1111111",
--                    "1111111");
                    
begin
    ENAN <= "1110" when N="00" else
            "1101" when N="01" else
            "1011" when N="10" else
            "0111";
    S <=    table(to_integer(unsigned(V)));

end Behavioral;
