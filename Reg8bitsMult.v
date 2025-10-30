module Reg8bitsMult(Q, CK, D, res);

	input [7:0]D;
	output [7:0]Q;
	input CK, res;

	
	DFlipFlopNegRes(D[0], CK, Q[0], res);
	DFlipFlopNegRes(D[1], CK, Q[1], res);
	DFlipFlopNegRes(D[2], CK, Q[2], res);
	DFlipFlopNegRes(D[3], CK, Q[3], res);
	DFlipFlopNegRes(D[4], CK, Q[4], res);
	DFlipFlopNegRes(D[5], CK, Q[5], res);
	DFlipFlopNegRes(D[6], CK, Q[6], res);
	DFlipFlopNegRes(D[7], CK, Q[7], res);
	
endmodule