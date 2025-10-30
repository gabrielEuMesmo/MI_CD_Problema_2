module mainMult(A, B, S, CK, OV);

	input [7:0]B, A;
	output [7:0]S;
	output OV;
	
	input CK;
	
	wire [3:0] contador;
	wire [8:0] Q;
	wire [7:0] Buffer, MultLogica, Soma, RegShift;
	wire inicio, Cout, OVpart, salvaResultado;
	
	counterMult(CK, contador);
	
	nor(inicio, contador[0], contador[1], contador[2], contador[3]);
	
	and(salvaResultado, contador[0],contador[1], contador[2], contador[3]);
	
	
	Reg8bitsMult(Buffer, CK, Q[7:0]);
	
	MultLogica(MultLogica, A, RegShift[0]);
	
	Somador8bits(Soma, Cout, MultLogica, Buffer, );
	
	RegShift9bits(Q, CK, {Cout, Soma}, contador[0]);
	
	RegShift8bits(Q[0], RegShift , CK, B, inicio, ~contador[0]);
	
	or(OVpart, Q[8], Q[1], Q[2], Q[3], Q[4], Q[5], Q[6], Q[7]);
	
	CarryIn(OVpart, OV, CK, ~salvaResultado);
	
	Reg8bits(S, CK, RegShift, ~salvaResultado);
endmodule