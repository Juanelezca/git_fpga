LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY sumador_completo_testbench IS
END sumador_completo_testbench;
ARCHITECTURE behavior OF sumador_completo_testbench IS
	COMPONENT sumador_completo --component declaration
	Port(
		in_a : in STD_LOGIC;
		in_b : in STD_LOGIC;
		in_cin : in STD_LOGIC;
			clk : in STD_LOGIC;
			o_f :out STD_lOGIC;
			o_count : out STD_LOGIC
		);
END COMPONENT;

--inputs

signal in_a : std_logic :='0';
signal in_b : std_logic :='0';
signal in_cin : std_logic :='0';
signal clk : std_logic :='0';

--outputs
signal o_f :std_logic;
signal o_count :std_logic;

-- Clock period definition
constant clock_period : time :=20ns;

BEGIN 
	--Instantiate the Unit Under Test (UUT)
	uut: sumador_completo PORT MAP(
	in_a => in_a,
	in_b => in_b,
	in_cin => in_cin,
		clk=> clk,
		o_f => o_f,
		o_count=> o_count);
--clock process definition
clock_process:process
	begin	clk<= '0';
	wait for clock_period/2;
	clk<= '1';
	wait for clock_period/2;
end process;

stim_proc:process --sitmulus porcess
begin--stimulus
in_a <= '0';in_b <= '0'; in_cin <= '0'; wait for 30ns;
in_a <= '0';in_b <= '0'; in_cin <= '1'; wait for 30ns;
in_a <= '0';in_b <= '1'; in_cin <= '0'; wait for 30ns;
in_a <= '0';in_b <= '1'; in_cin <= '1'; wait for 30ns;
in_a <= '1';in_b <= '0'; in_cin <= '0'; wait for 30ns;
in_a <= '1';in_b <= '0'; in_cin <= '1'; wait for 30ns;
in_a <= '1';in_b <= '1'; in_cin <= '0'; wait for 30ns;
in_a <= '1';in_b <= '1'; in_cin <= '1'; wait for 30ns;

wait;
end process;
END;