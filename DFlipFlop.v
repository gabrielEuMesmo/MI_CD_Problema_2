module DFlipFlop(D, CK, Q, nQ);

	input D, CK;
	output reg Q; 
	output nQ;
	
	always @ (posedge CK)begin
	
	 Q <= D;
	 
	 end
	 
	 not(nQ, Q);
	 
endmodule