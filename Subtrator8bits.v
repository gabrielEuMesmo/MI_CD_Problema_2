module Subtrator8bits(S, Bout, A, B, Bin);

	input [7:0] A, B;
	input Bin;
	output [7:0] S;
	output Bout;
	
	wire [6:0] F;
	
	SubtratorCompleto(S[0], F[0], A[0], B[0], Bin);
	SubtratorCompleto(S[1], F[1], A[1], B[1], F[0]);
	SubtratorCompleto(S[2], F[2], A[2], B[2], F[1]);
	SubtratorCompleto(S[3], F[3], A[3], B[3], F[2]);
	SubtratorCompleto(S[4], F[4], A[4], B[4], F[3]);
	SubtratorCompleto(S[5], F[5], A[5], B[5], F[4]);
	SubtratorCompleto(S[6], F[6], A[6], B[6], F[5]);
	SubtratorCompleto(S[7], Bout, A[7], B[7], F[6]);
	
endmodule