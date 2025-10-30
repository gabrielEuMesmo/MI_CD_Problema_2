module Reg1bit(D, Q, CK, Enable);

	input D, CK, Enable;
	output Q;
	
	wire T;
	
	DFlipFlopNeg(T, CK, Q,);
	
	mux1(Q, D, Enable, T);
	
endmodule