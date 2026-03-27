module BinarioPDeci(A,S);

	input [2:0]A;
	output [7:0]S;
	
	wire [2:0]Na;
	
	not(Na[0], A[0]);
	not(Na[1], A[1]);
	not(Na[2], A[2]);
	
	
	and(S[0], Na[2], Na[1], Na[0]);
	and(S[1], Na[2], Na[1], A[0]);
	and(S[2], Na[2], A[1], Na[0]);
	and(S[3], Na[2], A[1], A[0]);
	and(S[4], A[2], Na[1], Na[0]);
	and(S[5], A[2], Na[1], A[0]);
	and(S[6], A[2], A[1], Na[0]);
	and(S[7], A[2], A[1], A[0]);
	
endmodule