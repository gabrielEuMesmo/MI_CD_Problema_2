module multiplexador8(S, Sel, B);

	input [7:0]B;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
	input [2:0]Sel;
	
	output S;
	wire [7:0]T;
	
	parteMux(T[7], Sel, B[0]);
	parteMux1(T[0], Sel, B[1]);
	parteMux2(T[1], Sel, B[2]);
	parteMux3(T[2], Sel, B[3]);
	parteMux4(T[3], Sel, B[4]);
	parteMux5(T[4], Sel, B[5]);
	parteMux6(T[5], Sel, B[6]);
	parteMux7(T[6], Sel, B[7]);
	or (S, T[0],T[1],T[2],T[3], T[4], T[5],T[6], T[7]);
	
	
endmodule