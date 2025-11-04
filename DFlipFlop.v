module DFlipFlop(D, CK, Q, nQ);

	// FlipFlop D com lógica de ativação na borda de subida;

	input D, CK;
	output reg Q; 
	output nQ;
	
	always @ (posedge CK)begin
	
	 Q <= D;
	 
	 end
	 
	 not(nQ, Q);
	 
endmodule