module Reg3bits(Q, CK, D, Enable);

	// Registrador de 3 bits com lógica de Enable;

	input [2:0]D;
	output [2:0]Q;
	input CK, Enable;
	
	wire [2:0] T;
	
	DFlipFlopNeg(T[0], CK, Q[0],);
	DFlipFlopNeg(T[1], CK, Q[1],);
	DFlipFlopNeg(T[2], CK, Q[2],);
	
	// Multiplexadores responsaveis pela lógica de Enable;
	
	mux1(D[0], Q[0], Enable, T[0]);
	mux1(D[1], Q[1], Enable, T[1]);
	mux1(D[2], Q[2], Enable, T[2]);
endmodule