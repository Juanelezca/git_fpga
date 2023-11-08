--sumador-completo-con-procesos
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity sumador_completo_con_procesos is --declaracion de entidad o cascara de mi circuito
	port( A,B,Cin  : 	in std_logic;
			SUMp,Coutp :  out std_logic);
 end sumador_completo_con_procesos;
architecture como_funciona of sumador_completo_con_procesos is
	begin 
	process(A,B,Cin) is
	begin
		if (A='1' and B='1') then
			if Cin='1'then
			Sump <='1';
			Coutp <='1';
			else
			Sump <='0';
			Coutp <='1';
			end if;
		end if;
		if (A='0' and B='1') then
			if Cin='1'then
			Sump <='0';
			Coutp <='1';
			else
			Sump <='1';
			Coutp <='0';
			end if;
		end if;
		if (A='1' and B='0') then
			if Cin='1'then
			Sump <='0';
			Coutp <='1';
			else
			Sump <='1';
			Coutp <='0';
			end if;
		end if;
		if (A='0' and B='0') then
			if Cin='1'then
			Sump <='1';
			Coutp <='0';
			else
			Sump <='0';
			Coutp <='0';
			end if;
		end if;
	end process;
end como_funciona;			
