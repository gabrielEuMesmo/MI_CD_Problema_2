module MultiLogica(S, A, B);
	
	input [7:0]A;
	input B;
	output [7:0]S;
	
	and(S[0], B, A[0]);
	and(S[1], B, A[1]);
	and(S[2], B, A[2]);
	and(S[3], B, A[3]);
	and(S[4], B, A[4]);
	and(S[5], B, A[5]);
	and(S[6], B, A[6]);
	and(S[7], B, A[7]);

endmodule