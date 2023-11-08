library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity ejercicio1 is
	Port( SW1 : in STD_LOGIC;
			SW2 : in STD_LOGIC;
			LED : out STD_LOGIC);
			
end ejercicio1;

architecture Behavioral of ejercicio1 is
begin
	LED <= not(SW1 and SW2);
end Behavioral;
