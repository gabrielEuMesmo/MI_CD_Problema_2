module CoutBout(Cout, Bout, OP, S);

	input Cout, Bout;
	input [2:0] OP;
	
	output S;
	
	wire [1:0]SPart;
	
	parteMux(SPart[0], OP, Cout);

	parteMux1(SPart[1], OP, Bout);
	
	or(S, SPart[0], SPart[1]);
	
endmodule 