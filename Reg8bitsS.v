module Reg8bitsS(Q, CK, D);

	input CK;
	input D;
	output [7:0]Q;
	
	DFlipFlopNeg(D, CK, Q[7], );
	DFlipFlopNeg(Q[7],CK, Q[6], );
	DFlipFlopNeg(Q[6],CK, Q[5], );
	DFlipFlopNeg(Q[5],CK, Q[4], );
	DFlipFlopNeg(Q[4],CK, Q[3], );
	DFlipFlopNeg(Q[3],CK, Q[2], );
	DFlipFlopNeg(Q[2],CK, Q[1],);
	DFlipFlopNeg(Q[1],CK, Q[0],);
endmodule