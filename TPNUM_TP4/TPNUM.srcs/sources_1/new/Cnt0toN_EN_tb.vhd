library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Cnt0toN_EN_tb is
	
end Cnt0toN_EN_tb;

architecture Behavioral of Cnt0toN_EN_tb is
    component Cnt0toN_EN
    generic ( N : natural := 10 );
	
    Port ( CLK : in STD_LOGIC;
           EN : in STD_LOGIC;
		   CLR : in STD_LOGIC;
		   Cout : out STD_LOGIC;
		   Q : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal CLK, EN, CLR, Cout : STD_LOGIC;
    signal Q : STD_LOGIC_VECTOR (3 downto 0);
    
    begin
        UTT: Cnt0toN_EN generic map (N=>10)
            port map (CLK=>CLK, EN=>EN, CLR=>CLR, Cout=>Cout, Q=>Q);
        
        process
        begin
            CLK <= '1';
            wait for 10 ns;
            CLK <= '0';
            wait for 10 ns;
            EN <= '1';
            CLR <= '0';
        end process;
end Behavioral;
