module mux1(A, B, S, Z);

	input A, B, S;
	output Z;
	
	wire [1:0]T;
	
	and(T[0], A, S);
	and(T[1], B, ~S);
	
	or(Z, T[0], T[1]);
	
endmodule
	