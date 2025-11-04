module BinaryToBCD(A, S0, S1, S2);

	// decodificador de binario para BCD utilizando divisões em cascata;

	input [7:0] A;
	output [3:0] S0, S1, S2;
	
	wire [7:0] R;
	
	// Divide a palavra por 100 em decimal;
	
	DivBCD(A, 7'b1100100, R, S2);
	
	// Divide o resto por 10 em decimal;
	
	DivBCD(R, 4'b1010, S0, S1);
	
endmodule