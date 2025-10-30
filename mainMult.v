module mainMult(A, B, S, CK, bt, OV);

	input [7:0]B, A;
	output [7:0]S;
	output OV;
	
	input CK, bt;
	
	wire [3:0] contador;
	wire [8:0] Q;
	wire [7:0] Buffer, MultLogica, Soma,RegShift;
	wire salvaResultado,btdebounced, Cout, inicio;
	
	debouncer(bt, CK, btdebounced);
	
	counterMult(btdebounced, contador);
	
	nor(inicio, contador[0], contador[1], contador[2], contador[3]);
	
	 
	and(salvaResultado, contador[0],contador[1], contador[2], contador[3]);
	
	
	Reg8bitsMult(Buffer, btdebounced, Q[7:0], salvaResultado);
	
	MultLogica(MultLogica, 8'b00000010, S[0]);
	
	Somador8bits(Soma, Cout, MultLogica, Buffer, );
	
	RegShift9bits(Q, btdebounced, {Cout, Soma}, contador[0]);
	
	RegShift8bits(Q[0], RegShift , btdebounced, B, inicio, ~contador[0]);
	
	or( OVpart, Q[0], Q[1], Q[2], Q[3], Q[4], Q[5], Q[6], Q[7]);
	
	Reg1bit(OVpart, OV, btdebounced, salvaResultado);
	
	Reg8bits(S, btdebounced, RegShift, salvaResultado);
endmodule