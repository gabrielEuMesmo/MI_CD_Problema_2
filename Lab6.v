
module moore(L, P, CLK);

	input L, CLK;
	output P;
	wire Sand;
	
	DFlipFLop(L, CLK, Sand, );
	and(Land, Sand, L);
	DFlipFlop(Land, CLK, , nFF);
	and(P, Sand, nFF);
	
endmodule


module Lab6(CK, Q);

	input CK;
	output Q;
	
	wire [19:0]F;
	
	divisorFreq(CK, F[0]);
	divisorFreq(F[0], F[1]);
	divisorFreq(F[1], F[2]);
	divisorFreq(F[2], F[3]);
	divisorFreq(F[3], F[4]);
	divisorFreq(F[4], F[5]);
	divisorFreq(F[5], F[6]);
	divisorFreq(F[6], F[7]);
	divisorFreq(F[7], F[8]);
	divisorFreq(F[8], F[9]);
	divisorFreq(F[9], F[10]);
	divisorFreq(F[10], F[11]);
	divisorFreq(F[11], F[12]);
	divisorFreq(F[12], F[13]);
	divisorFreq(F[13], F[14]);
	divisorFreq(F[14], F[15]);
	divisorFreq(F[15], F[16]);
	divisorFreq(F[16], F[17]);
	divisorFreq(F[17], F[18]);
	divisorFreq(F[18], F[19]);
	divisorFreq(F[19], Q);
	
endmodule
	