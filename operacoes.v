module operacoes(A, B, Cin, RstOuQ, CK, OP, SaidaOp, OV, ZERO, ERRO, Cout);

	input [7:0] A, B;
	output [7:0] SaidaOp;
	
	input [2:0] OP;
	input Cin, RstOuQ, CK;
	
	output OV, ERRO, ZERO, Cout;
	
	wire [7:0]Soma, Sub, DivRQ, OU, OUEX, E, N, Mult;
	
	wire CoutS, Bout, OVpart;
	
	Somador8bits(Soma, CoutS, A, B, Cin);
	
	Subtrator8bits(Sub, Bout, A, B, Cin);
	
	Div(A, B, RstOuQ, DivRQ);
	
	OU8bits(OU, A, B);
	
	OUEX8bits(OUEX, A, B);
	
	E8bits(E, A, B);
	
	N8bits(N,A);
	
	mainMult(A, B, Mult, CK, OVpart);
	
	multiplexador8_8bits(SaidaOp, OP,Soma, Sub, DivRQ, OU, OUEX, E, N, Mult);
	
	CoutBout(CoutS, Bout, OP, Cout);
	
	nor(ZERO, SaidaOp[0], SaidaOp[1], SaidaOp[2], SaidaOp[3], SaidaOp[4], SaidaOp[5], SaidaOp[6], SaidaOp[7]);
	
	erro(B, OP, ERRO);
	
	parteMux7(OV, OP, OVPart);
	
endmodule

	