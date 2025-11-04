module mux2(A, B, C, S, Z);

	// Multiplexador de 3 entradas e uma saída;

	input A, B, C;
	input [1:0] S;
	output Z;
	
	wire [2:0] T;
	
	and(T[0], A, ~S[1], ~S[0]);
	and(T[1], B, ~S[1], S[0]);
	and(T[2], C, S[1], ~S[0]);
	
	or(Z, T[0], T[1], T[2]);
	
endmodule