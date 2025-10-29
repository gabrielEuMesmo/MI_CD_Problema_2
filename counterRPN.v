module counterMult(CK, S);

	input CK;
	output [3:0] S;
	
	wire [3:0] F;
	
	DFlipFlop(F[0], CK, S[0], F[0]);
	
	DFlipFlop(F[1], F[0], S[1], F[1]);
	
	DFlipFlop(F[2], F[1], S[2], F[2]);
	
	DFlipFlop(F[3], F[2], S[3], F[3]);
endmodule