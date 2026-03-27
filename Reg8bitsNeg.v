module Reg8bitsNeg(Q, CK, D, R);

	input [7:0]D;
	output [7:0]Q;
	input CK, R;
	
	DFlipFlopNeg(D[0], CK, Q[0], R);
	DFlipFlopNeg(D[1], CK, Q[1], R);
	DFlipFlopNeg(D[2], CK, Q[2], R);
	DFlipFlopNeg(D[3], CK, Q[3], R);
	DFlipFlopNeg(D[4], CK, Q[4], R);
	DFlipFlopNeg(D[5], CK, Q[5], R);
	DFlipFlopNeg(D[6], CK, Q[6], R);
	DFlipFlopNeg(D[7], CK, Q[7], R);
endmodule