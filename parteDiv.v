module parteDiv(A, B, C, S, P);

	input [7:0]B;
	input [6:0]A;
	input C;
	output S;
	output [7:0] P;
	
	wire Bout;
	wire [7:0] Sneg;
	
	not(S, Bout);
	
	Subtrator8bitsDiv(Sneg, Bout, A, B, C);
	
	mux1(C, Sneg[0], Bout, P[0]);
	mux1(A[0], Sneg[1], Bout, P[1]);
	mux1(A[1], Sneg[2], Bout, P[2]);
	mux1(A[2], Sneg[3], Bout, P[3]);
	mux1(A[3], Sneg[4], Bout, P[4]);
	mux1(A[4], Sneg[5], Bout, P[5]);
	mux1(A[5], Sneg[6], Bout, P[6]);
	mux1(A[6], Sneg[7], Bout, P[7]);
	
endmodule