module Reg8bitsS(Q, CK, D);

	input CK;
	input D;
	output [7:0]Q;
	
	DFlipFlop(D, CK, Q[7], );
	DFlipFlop(Q[7],CK, Q[6], );
	DFlipFlop(Q[6],CK, Q[5], );
	DFlipFlop(Q[5],CK, Q[4], );
	DFlipFlop(Q[4],CK, Q[3], );
	DFlipFlop(Q[3],CK, Q[2], );
	DFlipFlop(Q[2],CK, Q[1],);
	DFlipFlop(Q[1],CK, Q[0],);
endmodule