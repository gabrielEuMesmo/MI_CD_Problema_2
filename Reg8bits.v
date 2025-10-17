module Reg8bits(Q, CK, D, R);

	input [7:0]D;
	output [7:0]Q;
	input CK, R;
	
	DFlipFlopR(D[0], CK, Q[0], R);
	DFlipFlopR(D[1], CK, Q[1], R);
	DFlipFlopR(D[2], CK, Q[2], R);
	DFlipFlopR(D[3], CK, Q[3], R);
	DFlipFlopR(D[4], CK, Q[4], R);
	DFlipFlopR(D[5], CK, Q[5], R);
	DFlipFlopR(D[6], CK, Q[6], R);
	DFlipFlopR(D[7], CK, Q[7], R);
endmodule