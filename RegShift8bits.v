module RegShift8bits(E, Q, CK, D, salvaB, desloca);

	input [7:0]D;
	output [7:0]Q;
	input CK, E, salvaB, desloca;
	
	wire [8:0]T;
	wire CKdesloca, CKReg;
	
	DFlipFlopNeg(T[0], CKReg, Q[0],);
	DFlipFlopNeg(T[1], CKReg, Q[1],);
	DFlipFlopNeg(T[2], CKReg, Q[2],);
	DFlipFlopNeg(T[3], CKReg, Q[3],);
	DFlipFlopNeg(T[4], CKReg, Q[4],);
	DFlipFlopNeg(T[5], CKReg, Q[5],);
	DFlipFlopNeg(T[6], CKReg, Q[6],);
	DFlipFlopNeg(T[7], CKReg, Q[7],);
	
	mux1(Q[1], D[0], salvaB, T[0]);
	mux1(Q[2], D[1], salvaB, T[1]);
	mux1(Q[3], D[2], salvaB, T[2]);
	mux1(Q[4], D[3], salvaB, T[3]);
	mux1(Q[5], D[4], salvaB, T[4]);
	mux1(Q[6], D[5], salvaB, T[5]);
	mux1(Q[7], D[6], salvaB, T[6]);
	mux1(E, D[7], salvaB, T[7]);
	
	and(CKdesloca ,desloca, ~CK);
	
	mux1(CKdesloca, ~CK, salvaB, CKReg);
	
endmodule