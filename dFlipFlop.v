module DFlipFlop(Q, nQ, D, CK);
	
	input D, CK;
	output Q, nQ;
	wire [1:0]F;
	nand (F[0], D, CK);
	nand (F[1], ~D, CK);
	
	SRLatch(Q, nQ, F[0], F[1]);
	
endmodule

