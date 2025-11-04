module CoutBout(Cout, Bout, OP, S);

	// Multiplexador para a saída dad flag Cout;
	input Cout, Bout;
	input [2:0] OP;
	
	output S;
	
	wire [1:0]SPart;
	
	parteMux(SPart[0], OP, Cout); // Sinal lógico alto quando Operração de soma e Cout ativo;

	parteMux1(SPart[1], OP, Bout);// Sinal lógico alto quando Operração de subtração e Bout ativo;
	
	or(S, SPart[0], SPart[1]);
	
endmodule 