module Reg3bits(Q, CK, D);

	input [2:0]D;
	output [2:0]Q;
	input CK;
	
	DFlipFlop(D[0], CK, Q[0],);
	DFlipFlop(D[1], CK, Q[1],);
	DFlipFlop(D[2], CK, Q[2],);
endmodule