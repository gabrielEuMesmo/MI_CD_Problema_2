module escolherBase(A, B, C, S, Z);

	//Multiplexador de 4 bits de 3 entradas e 1 saída;
	
	input [3:0] A, B, C;
	
	input [1:0] S;
	
	output [3:0] Z;
	
	mux2(A[0], B[0], C[0], S, Z[0]);
	mux2(A[1], B[1], C[1], S, Z[1]);
	mux2(A[2], B[2], C[2], S, Z[2]);
	mux2(A[3], B[3], C[3], S, Z[3]);
	
endmodule