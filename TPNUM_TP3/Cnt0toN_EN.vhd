library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Cnt0toN_EN is
	generic ( N : natural := 10 );
	
    Port ( CLK : in STD_LOGIC;
           EN : in STD_LOGIC;
		   CLR : in STD_LOGIC;
		   Cout : out STD_LOGIC;
		   Q : out STD_LOGIC_VECTOR (3 downto 0));
end Cnt0toN_EN;

architecture Behavioral of Cnt0toN_EN is
    signal M: natural range 0 to N-1 := 0;
    
	begin
    process(CLK)begin
        if rising_edge(CLK)then
            --Úvolution de M
			if (CLR='1' or M=N-1) then
				M <= 0;
			else
				if (EN='1') then
					M <= M+1;
				else
					M <= M;
				end if;
			end if;
        end if;
    end process;
     --recopie de M sur la sortie Q
    Q <= STD_LOGIC_VECTOR(to_unsigned(M,4));
	Cout <= '1' when M=N-1 else '0';

end Behavioral;
