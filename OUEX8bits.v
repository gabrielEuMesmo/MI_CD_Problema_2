module OUEX8bits(S, A, B);

	input [7:0] A, B;
	output [7:0] S;
	
	xor( S[0], A[0], B[0]);
	xor( S[1], A[1], B[1]);
	xor( S[2], A[2], B[2]);
	xor( S[3], A[3], B[3]);
	xor( S[4], A[4], B[4]);
	xor( S[5], A[5], B[5]);
	xor( S[6], A[6], B[6]);
	xor( S[7], A[7], B[7]);
	
endmodule