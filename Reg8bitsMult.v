module Reg8bitsMult(Q, CK, D);

// Registrador de 8 bits simples

	input [7:0]D;
	output [7:0]Q;
	input CK;

	
	DFlipFlop(D[0], CK, Q[0],);
	DFlipFlop(D[1], CK, Q[1],);
	DFlipFlop(D[2], CK, Q[2],);
	DFlipFlop(D[3], CK, Q[3],);
	DFlipFlop(D[4], CK, Q[4],);
	DFlipFlop(D[5], CK, Q[5],);
	DFlipFlop(D[6], CK, Q[6],);
	DFlipFlop(D[7], CK, Q[7],);
	
endmodule