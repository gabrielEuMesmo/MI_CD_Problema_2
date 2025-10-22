module Reg8bits(Q, CK, D, Enable);

	input [7:0]D;
	output [7:0]Q;
	input CK, Enable;
	
	wire [7:0]T;
	
	DFlipFlopNeg(T[0], CK, Q[0],);
	DFlipFlopNeg(T[1], CK, Q[1],);
	DFlipFlopNeg(T[2], CK, Q[2],);
	DFlipFlopNeg(T[3], CK, Q[3],);
	DFlipFlopNeg(T[4], CK, Q[4],);
	DFlipFlopNeg(T[5], CK, Q[5],);
	DFlipFlopNeg(T[6], CK, Q[6],);
	DFlipFlopNeg(T[7], CK, Q[7],);
	
	mux1(Q[0], D[0], Enable, T[0]);
	mux1(Q[1], D[1], Enable, T[1]);
	mux1(Q[2], D[2], Enable, T[2]);
	mux1(Q[3], D[3], Enable, T[3]);
	mux1(Q[4], D[4], Enable, T[4]);
	mux1(Q[5], D[5], Enable, T[5]);
	mux1(Q[6], D[6], Enable, T[6]);
	mux1(Q[7], D[7], Enable, T[7]);
endmodule