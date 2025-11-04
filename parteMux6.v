module parteMux6(Z, Sel, A);

	//módulo parte do multiplexador de 8 entradas;
	//responsavel pela operação 6;
	
	input A;
	input [2:0]Sel;
	output Z;
	
	wire [2:0]Nsel;
	
	not (Nsel[0], Sel[0]);
	not (Nsel[1], Sel[1]);
	not (Nsel[2], Sel[2]);
	
	and (Z, A, Sel[2], Sel[1], Nsel[0]);
endmodule
