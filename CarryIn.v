module CarryIn(D, Q, CK, Enable);

	input D, CK, Enable;
	output Q;
	
	//Registrador de 1 bit com lógica de Enable;
	wire T;
	
	DFlipFlopNeg(T, CK, Q,);
	
	mux1(D, Q, Enable, T);
	
endmodule