module Div(A, B, DivR, T);

	// Módulo de Divisão com escolha de demontrar resto ou quociente

	input [7:0] A, B;
	input DivR;
	output [7:0] T;
	
	wire [7:0] P, P1, P2, P3, P4, P5, P6, S, R;

	parteDiv( , B, A[7], S[7], P);
	parteDiv(P[0], B, A[6], S[6], P1);
	parteDiv(P1[1:0], B, A[5], S[5], P2);
	parteDiv(P2[2:0], B, A[4], S[4], P3);
	parteDiv(P3[3:0], B, A[3], S[3], P4);
	parteDiv(P4[4:0], B, A[2], S[2], P5);
	parteDiv(P5[5:0], B, A[1], S[1], P6);
	parteDiv(P6[6:0], B, A[0], S[0], R);
	
	// Multiplexadores responsaveis pela escolha de demontrar resto ou quociente
	
	mux1(S[0], R[0], DivR, T[0]);
	mux1(S[1], R[1], DivR, T[1]);
	mux1(S[2], R[2], DivR, T[2]);
	mux1(S[3], R[3], DivR, T[3]);
	mux1(S[4], R[4], DivR, T[4]);
	mux1(S[5], R[5], DivR, T[5]);
	mux1(S[6], R[6], DivR, T[6]);
	mux1(S[7], R[7], DivR, T[7]);
	
endmodule