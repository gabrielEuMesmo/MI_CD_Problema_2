module RPNentry(E, A, B, Op, Base, CK);
	input [7:0] E;
	input CK;
	output [7:0]A, B;
	output [2:0]Op, Base;
	
	wire [1:0]cont;
	wire [3:0]DeciCont;
	
	counterRPN(CK, cont);
	binarioPDeci3(cont, DeciCont);
	
	Reg8bits(A, DeciCont[0], E);
	Reg8bits(B, DeciCont[1], E);
	Reg3bits(Op, DeciCont[2], E[2:0]);
	Reg3bits(Base, DeciCont[3], E[2:0]);
	
endmodule