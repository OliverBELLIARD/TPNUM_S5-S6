library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Disp4D is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0);
           CLK : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (6 downto 0);
           ENAN : out STD_LOGIC_VECTOR (3 downto 0));
end Disp4D;

architecture Behavioral of Disp4D is
    signal Sel: STD_LOGIC_VECTOR(1 downto 0);
    signal EN_1ms: STD_LOGIC;
begin

    u1 : entity work.Cmpt0to3
         port map (CLK=>CLK, EN=>EN_1ms, N=>Sel);
         
    u2 : entity work.Disp1of4Digits
         port map (A=>A, B=>B, C=>C, D=>D, N=>Sel, S=>S, ENAN=>ENAN);
         
    u3 : entity work.TICK_1ms
         port map (CLK=>CLK, Tick=>EN_1ms);

end Behavioral;
