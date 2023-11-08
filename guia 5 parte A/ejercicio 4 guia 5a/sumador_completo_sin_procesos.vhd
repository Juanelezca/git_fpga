--sumador completo sin procesos.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity sumador_completo_sin_procesos is --declaracion de entidad o cascara de mi circuito
	port( A,B,Cin  : 	in std_logic;
			SUM,Cout :  out std_logic);
 end sumador_completo_sin_procesos;
architecture como_funciona of sumador_completo_sin_procesos is
	begin 
	sum <= A xor B xor Cin;
	Cout <= (A and B) or (A and Cin) or (B and Cin);
end como_funciona;
			
