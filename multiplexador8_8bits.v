module multiplexador8_8bits(S, Sel, A, B, C, D, E, F, G, H);

	// Multiplexador de 8 bits de 8 entradas e 1 saida;

	input [7:0] A, B, C, D, E, F, G, H;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
	input [2:0]Sel;
	
	output [7:0] S;
	
	multiplexador8(S[0], Sel, A[0], B[0], C[0], D[0], E[0], F[0], G[0], H[0]);
	multiplexador8(S[1], Sel, A[1], B[1], C[1], D[1], E[1], F[1], G[1], H[1]);
	multiplexador8(S[2], Sel, A[2], B[2], C[2], D[2], E[2], F[2], G[2], H[2]);
	multiplexador8(S[3], Sel, A[3], B[3], C[3], D[3], E[3], F[3], G[3], H[3]);
	multiplexador8(S[4], Sel, A[4], B[4], C[4], D[4], E[4], F[4], G[4], H[4]);
	multiplexador8(S[5], Sel, A[5], B[5], C[5], D[5], E[5], F[5], G[5], H[5]);
	multiplexador8(S[6], Sel, A[6], B[6], C[6], D[6], E[6], F[6], G[6], H[6]);
	multiplexador8(S[7], Sel, A[7], B[7], C[7], D[7], E[7], F[7], G[7], H[7]);
	
endmodule