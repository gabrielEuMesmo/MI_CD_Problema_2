module multiplexador8(S, Sel, A, B, C, D, E, F, G, H);

	// Multiplexador de 8 entradas para 1 saída;

	input  A, B, C, D, E, F, G, H;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
	input [2:0]Sel;
	
	output S;
	wire [7:0]T;
	
	parteMux(T[7], Sel, A);
	parteMux1(T[0], Sel, B);
	parteMux2(T[1], Sel, C);
	parteMux3(T[2], Sel, D);
	parteMux4(T[3], Sel, E);
	parteMux5(T[4], Sel, F);
	parteMux6(T[5], Sel, G);
	parteMux7(T[6], Sel, H);
	or (S, T[0],T[1],T[2],T[3], T[4], T[5],T[6], T[7]);
	
	
endmodule