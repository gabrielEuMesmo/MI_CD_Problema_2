module counterRPN(CK, S);

	// Contador assincrono de 2 bits com FlipFlop D em cascata;

	input CK;
	output [1:0] S;
	
	wire [1:0] F;
	
	DFlipFlop(F[0], CK, S[0], F[0]);
	
	DFlipFlop(F[1], F[0], S[1], F[1]);
	
endmodule