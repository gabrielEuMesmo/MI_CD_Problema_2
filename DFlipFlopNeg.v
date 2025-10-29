module DFlipFlopNeg(D, CK, Q, nQ);

	input D, CK;
	output reg Q; 
	output nQ;
	
	always @ (negedge CK)begin
	
	 Q <= D;
	 
	 end
	 
	 not(nQ, Q);
	 
endmodule