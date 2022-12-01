----------------------------------------------------------------------------------
-- Company: ENSEA
-- Engineer: 
-- 
-- Create Date: 02.02.2017 16:54:10
-- Design Name: 
-- Module Name: chrono3BT - Behavioral
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

entity chrono3BT is
    Port ( CLK : in STD_LOGIC;
       B_GO : in STD_LOGIC;
       B_STOP : in STD_LOGIC;
       B_INIT : in STD_LOGIC;
       ENAN : out STD_LOGIC_VECTOR (3 downto 0);
       S : out STD_LOGIC_VECTOR (6 downto 0));
end chrono3BT;

architecture Behavioral of chrono3BT is
    signal A,B,C,D: STD_LOGIC_VECTOR(3 downto 0);
    signal TC,TM: STD_LOGIC_VECTOR(27 downto 0);
    signal chr_EN, chr_CLR: STD_LOGIC;
begin
    gst : entity work.gestionChrono
        port map ( CLK=>CLK,b_GO=>B_GO,b_STOP=>B_STOP,b_INIT=>B_INIT,b_TI=>'0',ch_EN=>chr_EN,ch_CLR=>chr_CLR);
    
    chr : entity work.Chrono
            port map ( CLK=>CLK,EN=>chr_EN,CLR=>chr_CLR,T=>TC);

    A<=TC(23 downto 20); -- unité de minutes
    B<=TC(19 downto 16); -- dizaine de secondes
    C<=TC(15 downto 12); -- unité de secondes
    D<=TC(11 downto 8); -- dixième de secondes
	
	aff : entity work.Disp4D
        port map ( CLK=>CLK,A=>A,B=>B,C=>C,D=>D, ENAN=>ENAN, Seg=>S);

end Behavioral;
