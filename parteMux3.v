module parteMux3(Z, Sel, A);
	
	input A;
	input [2:0]Sel;
	output Z;
	
	wire [2:0]Nsel;
	
	not (Nsel[0], Sel[0]);
	not (Nsel[1], Sel[1]);
	not (Nsel[2], Sel[2]);
	
	and (Z, A, Nsel[2], Sel[1], Sel[0]);
endmodule
