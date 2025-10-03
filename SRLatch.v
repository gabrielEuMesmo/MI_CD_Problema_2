module SRLatch(Q, nQ, S, R);

	input S, R;
	output Q, nQ;
	
	nand(Q, nQ, S);
	nand(nQ, Q, R);
endmodule