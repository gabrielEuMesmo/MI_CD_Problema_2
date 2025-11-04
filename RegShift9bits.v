module RegShift9bits(Q, CK, D, Enable);

	// Registrador de deslocamento com lógica de enable
	
	input [8:0]D;
	output [8:0]Q;
	input CK, Enable;
	
	wire [8:0]T;
	
	DFlipFlopNeg(T[0], CK, Q[0],);
	DFlipFlopNeg(T[1], CK, Q[1],);
	DFlipFlopNeg(T[2], CK, Q[2],);
	DFlipFlopNeg(T[3], CK, Q[3],);
	DFlipFlopNeg(T[4], CK, Q[4],);
	DFlipFlopNeg(T[5], CK, Q[5],);
	DFlipFlopNeg(T[6], CK, Q[6],);
	DFlipFlopNeg(T[7], CK, Q[7],);
	DFlipFlopNeg(T[8], CK, Q[8],);
	
	// Multiplexadores responsaveis por ativar a lógica de deslocamento, ou modificação de valores
	
	mux1(Q[1], D[0], Enable, T[0]);
	mux1(Q[2], D[1], Enable, T[1]);
	mux1(Q[3], D[2], Enable, T[2]);
	mux1(Q[4], D[3], Enable, T[3]);
	mux1(Q[5], D[4], Enable, T[4]);
	mux1(Q[6], D[5], Enable, T[5]);
	mux1(Q[7], D[6], Enable, T[6]);
	mux1(Q[8], D[7], Enable, T[7]);
	mux1(1'b0, D[8], Enable, T[8]);
endmodule