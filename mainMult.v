module mainMult(A, B, S, CK, OV);

	// Módulo de Multiplicação;

	input [7:0]B, A;
	output [7:0]S;
	output OV;
	
	input CK;
	
	wire [3:0] contador;
	wire [8:0] Q;
	wire [7:0] Buffer, MultLogica, Soma, RegShift;
	wire inicio, Cout, OVpart, salvaResultado;
	
	
	// Contador para controlar as etapas;
	counterMult(CK, contador);
	
	
	// Ativo quando o ontador está no inicio;
	nor(inicio, contador[0], contador[1], contador[2], contador[3]);
	
	// Ativo quando o ontador está no final;
	and(salvaResultado, contador[0],contador[1], contador[2], contador[3]);
	
	// Registrador simples que funciona como buffer, para a soma parcial;
	Reg8bitsMult(Buffer, CK, Q[7:0]);
	
	// Multiplicação Booleana para da palavra A com um o bit menos significante de B;
	MultBool(MultLogica, A, RegShift[0]);
	
	//Somador responsavel pela soam do da multiplicação booleana com o acumulador;
	Somador8bits(Soma, Cout, MultLogica, Buffer, );
	
	
	// Registrador de deslocamento que desloca nos numeros pares do contador e guarda o resultado nos numeros impares;
	RegShift9bits(Q, CK, {Cout, Soma}, contador[0]);
	
	// Registrador de deslocamento que desloca nos numeros pares do contador e guarda a palavra B no inicio do contador;
	RegShift8bits(Q[0], RegShift , CK, B, inicio, contador[0]);
	
	or(OVpart, Q[0], Q[1], Q[2], Q[3], Q[4], Q[5], Q[6], Q[7]);
	
	CarryIn(OVpart, OV, CK, ~inicio);
	
	Reg8bits(S, CK, RegShift, ~inicio);
endmodule