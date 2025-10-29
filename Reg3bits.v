module Reg3bits(Q, CK, D, Enable);

	input [2:0]D;
	output [2:0]Q;
	input CK, Enable;
	
	wire [2:0] T;
	
	DFlipFlopNeg(T[0], CK, Q[0],);
	DFlipFlopNeg(T[1], CK, Q[1],);
	DFlipFlopNeg(T[2], CK, Q[2],);
	
	mux1(Q[0], D[0], Enable, T[0]);
	mux1(Q[1], D[1], Enable, T[1]);
	mux1(Q[2], D[2], Enable, T[2]);
endmodule