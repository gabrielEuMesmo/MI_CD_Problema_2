module binarioPDeci3(A, S);

	input [1:0]A;
	output [3:0]S;
	
	and(S[0], ~A[0], ~A[1]);
	and(S[1], A[0], ~A[1]);
	and(S[2], ~A[0], A[1]);
	and(S[3], A[0], A[1]);
	
endmodule