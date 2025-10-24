module BinaryToBCD(A, S0, S1, S2);

	input [7:0] A;
	output [3:0] S0, S1, S2;
	
	wire [7:0] R;
	
	DivBCD(A, 7'b1100100, R, S2);
	
	DivBCD(R, 4'b1010, S0, S1);
	
endmodule