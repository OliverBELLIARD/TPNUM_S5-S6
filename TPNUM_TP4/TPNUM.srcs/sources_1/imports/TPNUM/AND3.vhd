--Exemple: décrire une nouvelle entité AND3 définie hiérarchiquement à partir de l'entité AND2

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND3 is
    Port ( x,y,z : in STD_LOGIC;
           s : out STD_LOGIC);
end AND3;

architecture Behavioral of Disp1Digit is
    signal temp :STD_LOGIC ;
begin
	u1 : entity work.AND2 port map (a => x, b=> y, s=> temp);
	u2 : entity work.AND2 port map (a=> z, b=> temp, s=>s);
	
end Behavioral;