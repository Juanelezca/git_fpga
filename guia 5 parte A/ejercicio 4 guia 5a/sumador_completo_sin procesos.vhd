--sumador completo sin procesos.
entity sumador_completo_sin procesos is --declaracion de entidad o cascara de mi circuito
	port( A,B,Cin  : 	in std_logic;
			SUM,Cout :  out std_logic);
 end sumador_completo_sin procesos;
architecture como_funciona of sumador_completo_sin procesos is
	begin 
	sum <= A xor B xor Cin;
	Cout <= (A and B) or (A and Cin) or (B and Cin);
end como_funciona;
			