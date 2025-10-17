module counterRPN(CK, S);

	input CK;
	output [1:0] S;
	
	wire [1:0] F;
	
	DFlipFlopNeg(F[0], CK, S[0], F[0]);
	
	DFlipFlop(F[1], F[0], S[1], F[1]);
	
endmodule