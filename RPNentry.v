module RPNentry(E, A, B, Op, Base, bt, CK);
	input [7:0] E;
	input CK, bt;
	output [7:0]A, B;
	output [2:0]Op, Base;
	
	wire [1:0]cont;
	wire [3:0]DeciCont;
	wire btDebounced;
	
	debouncer(bt, CK, btDebounced);
	counterRPN(btDebounced, cont);
	binarioPDeci3(cont, DeciCont);
	
	and(AtivaA, DeciCont[0], CK);
	and(AtivaB, DeciCont[1], CK);
	and(AtivaOp, DeciCont[2], CK);
	and(AtivaBase, DeciCont[3], CK);
	
	Reg8bits(A, AtivaA, E);
	Reg8bits(B, AtivaB, E);
	Reg3bits(Op, AtivaOp, E[2:0]);
	Reg3bits(Base, AtivaBase, E[2:0]);
	
endmodule