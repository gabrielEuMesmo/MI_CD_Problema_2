module RegShift9bits(Q, CK, D, Enable, Res);

	input [8:0]D;
	output [8:0]Q;
	input CK, Enable, Res;
	
	wire [8:0]T;
	
	DFlipFlopNegRes(T[0], CK, Q[0], Res);
	DFlipFlopNegRes(T[1], CK, Q[1], Res);
	DFlipFlopNegRes(T[2], CK, Q[2], Res);
	DFlipFlopNegRes(T[3], CK, Q[3], Res);
	DFlipFlopNegRes(T[4], CK, Q[4], Res);
	DFlipFlopNegRes(T[5], CK, Q[5], Res);
	DFlipFlopNegRes(T[6], CK, Q[6], Res);
	DFlipFlopNegRes(T[7], CK, Q[7], Res);
	DFlipFlopNegRes(T[8], CK, Q[8], Res);
	
	
	mux1(Q[1], D[0], Enable, T[0]);
	mux1(Q[2], D[1], Enable, T[1]);
	mux1(Q[3], D[2], Enable, T[2]);
	mux1(Q[4], D[3], Enable, T[3]);
	mux1(Q[5], D[4], Enable, T[4]);
	mux1(Q[6], D[5], Enable, T[5]);
	mux1(Q[7], D[6], Enable, T[6]);
	mux1(Q[8], D[7], Enable, T[7]);
	mux1(1'b0, D[8], Enable, T[8]);
endmodule