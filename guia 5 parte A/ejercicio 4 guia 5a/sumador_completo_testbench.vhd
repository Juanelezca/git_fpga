library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench_sumador_completo is
end testbench_sumador_completo;
architecture sim of testbench_sumador_completo is
    signal A, B, Cin, SUM, Cout,SUMp,Coutp : std_logic;

begin
    -- Instancia del sumador completo sin procesos
    UUT: entity sumador_completo_sin_procesos is
        port map (
            A    => A,
            B    => B,
            Cin  => Cin,
            SUM  => SUM,
            Cout => Cout,
				SUMp => SUMp,
				Coutp => Coutp
        );

    -- Establecer valores iniciales
    A <= '0';
    B <= '0';
    Cin <= '0';

    -- Proceso de estimulación
    stim_process: process
    begin
        -- Establecer valores de entrada y estimular el circuito
        A <= '0';
        B <= '1';
        Cin <= '0';
        wait for 10 ns;

        A <= '1';
        B <= '1';
        Cin <= '0';
        wait for 10 ns;

        A <= '0';
        B <= '0';
        Cin <= '1';
        wait for 10 ns;

        A <= '1';
        B <= '1';
        Cin <= '1';
        wait for 10 ns;

        -- Puedes agregar más pruebas si lo deseas

        wait;
    end process;

    -- Proceso de comprobación
    check_process: process
    begin
        wait for 5 ns;  -- Espera inicial para estabilizar las salidas

        -- Verificar las salidas esperadas
        assert SUM = '0' and Cout = '0' report "Prueba 1 fallida" severity failure;

        wait for 10 ns;

        assert SUM = '0' and Cout = '1' report "Prueba 2 fallida" severity failure;

        wait for 10 ns;

        assert SUM = '1' and Cout = '0' report "Prueba 3 fallida" severity failure;

        wait for 10 ns;

        assert SUM = '0' and Cout = '1' report "Prueba 4 fallida" severity failure;

        -- Puedes agregar más verificaciones si lo deseas

        wait;
    end process;

end ;