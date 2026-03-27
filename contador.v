module contador(Ck, Q);

	input Ck;
	output [2:0]Q;
	
	wire [2:0]F;
	
	DFlipFlop(F[0], Ck, Q[0], F[0]);
	DFlipFlop(F[1], F[0], Q[1], F[1]);
	DFlipFlop(F[2],  F[1], Q[2], F[2]);
endmodule