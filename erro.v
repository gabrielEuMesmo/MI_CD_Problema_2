module erro(B, OP, ERRO);

	input [7:0] B;
	
	input [2:0] OP;
	
	output ERRO;
	
	wire BZero;
	
	parteMux4(ERRO, OP, BZero);
	
	nor(BZero, B[0], B[1], B[2], B[3], B[4], B[5],B[6], B[7]);
	
endmodule