module AntProx(CaA, CaP, A, P, S1, S2, Z, Z1);

	input CaA, CaP, S1, S2;
	
	input[7:0] A, P;
	output [7:0] Z;
	output Z1;
	
	and(T, S1, S2);
	
	mux1(A[0], P[0], T, Z[0]);
	mux1(A[1], P[1], T, Z[1]);
	mux1(A[2], P[2], T, Z[2]);
	mux1(A[3], P[3], T, Z[3]);
	mux1(A[4], P[4], T, Z[4]);
	mux1(A[5], P[5], T, Z[5]);
	mux1(A[6], P[6], T, Z[6]);
	mux1(A[7], P[7], T, Z[7]);
	mux1(CaA, CaP, T, Z1);
	
endmodule
	
	