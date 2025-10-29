module mainMult(A, B, S, CK, bt, switch, Q);

	input [7:0]B, A;
	output [7:0]S, Q;
	
	input CK, bt, switch;
	
	wire [3:0] contador;
	// wire [8:0] ;
	wire [7:0] Buffer, MultLogica, Soma,RegShift;
	
	debouncer(bt, CK, btdebounced);
	
	counterMult(btdebounced, contador);
	
	nor(inicio, contador[0], contador[1], contador[2], contador[3]);
	
	 
	and(salvaResultado, contador[0],contador[1], contador[2], contador[3]);
	
	
	Reg8bitsMult(Buffer, btdebounced, Q[7:0]);
	
	MultLogica(MultLogica, 8'b00000010, S[0]);
	
	Somador8bits(Soma, Cout, MultLogica, Buffer, );
	
	RegShift9bits(Q, btdebounced, {Cout, Soma}, contador[0]);
	
	RegShift8bits(Q[0], RegShift , btdebounced, B, inicio, ~contador[0]);
	
	Reg8bitsMult(S, salvaResultado, RegShift);
endmodule