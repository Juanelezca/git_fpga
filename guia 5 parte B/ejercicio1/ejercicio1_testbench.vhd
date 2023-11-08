ARCHITECTURE behavior OF  ejercicio1 IS
COMPONENT ejecicio1 --component declaration 
PORT( 	SW1 : in STD_LOGIC;
			SW2 : in STD_LOGIC;
		 	LED : out STD_LOGIC);
END COMPONENT;

--inputs
signal SW1 :std_logic :='0';
signal SW2 :std_logic :='0';
--outputs

signal LED :std_logic;

BEGIN 
--instantiate the Unit Under Test 
uut: ejercicicio1 PORT MAP(
	SW1 => SW1,
		SW2 => SW2,
			LED => LED
);
stim_proc: process --	Stimulus process
begin
	--stimulus
	SW1	<= '0'; SW2 <= '0'; wait for 10ns;
		SW1	<= '1'; SW2 <= '0'; wait for 10ns;
			SW1	<= '0'; SW2 <= '1'; wait for 10ns;
				SW1	<= '1'; SW2 <= '1'; wait for 10ns;

wait;
end process;
END;