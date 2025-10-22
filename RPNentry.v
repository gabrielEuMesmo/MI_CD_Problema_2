module RPNentry(E, A, B,switchs, Op, Base, CarryIn, bt, CK);
	input [7:0] E;
	input CK, bt;
	input [1:0] switchs;
	output [7:0]A, B;
	output [2:0]Op, Base;
	output CarryIn;
	
	wire [1:0]cont;
	wire [3:0]DeciCont;
	wire btDebounced, Z, Z1;
	
	debouncer(bt, CK, btDebounced);
	counterRPN(btDebounced, cont);
	binarioPDeci3(cont, DeciCont);
	
	AntProx(Base[2], switchs[0], Base, E, DeciCont[0], switchs[1], Z, Z1);
	
	CarryIn(Z1, CarryIn, CK, DeciCont[0]);
	
	Reg8bits(A, CK, Z, DeciCont[0]);
	Reg8bits(B, CK, E, DeciCont[1]);
	Reg3bits(Op, CK, E[2:0], DeciCont[2]);
	Reg3bits(Base, CK, E[2:0], DeciCont[3]);
	
	
endmodule