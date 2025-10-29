module divisorFreq(CK, Q);

	input CK;
	output Q;
	
	wire T;
	
	DFlipFlop(T, CK, Q, T);
	
endmodule 