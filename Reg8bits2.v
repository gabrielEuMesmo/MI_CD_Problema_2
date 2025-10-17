module Reg8bits2(Q, CK, D, T);

	input [6:0]D;
	output [7:0]Q;
	input CK, T;
	
	DFlipFlopNeg(T, CK, Q[0],);
	DFlipFlopNeg(D[0], CK, Q[1],);
	DFlipFlopNeg(D[1], CK, Q[2],);
	DFlipFlopNeg(D[2], CK, Q[3],);
	DFlipFlopNeg(D[3], CK, Q[4],);
	DFlipFlopNeg(D[4], CK, Q[5],);
	DFlipFlopNeg(D[5], CK, Q[6],);
	DFlipFlopNeg(D[6], CK, Q[7], );
endmodule