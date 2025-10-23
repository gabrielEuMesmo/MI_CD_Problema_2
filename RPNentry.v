module RPNentry(E, A, bt, CK, switch1, switch2);
	input [7:0] E;
	input CK, bt, switch1, switch2;
	output [7:0]A;
	output [2:0]Op, Base;
	
	wire [1:0]cont;
	wire [3:0]DeciCont;
	wire btDebounced;
	wire [7:0]S, B;
	
	debouncer(bt, CK, btDebounced);
	counterRPN(btDebounced, cont);
	binarioPDeci3(cont, DeciCont);
	
	operacoes(S, B, Cin, RstOuQ, Op, A, , , , );
	
	CarryIn(switch1, Cin, CK, DeciCont[0]);
	
	and(RstOuQ, DeciCont[3], switch1);
	
	Reg8bits(S, CK, E, DeciCont[0]);
	Reg8bits(B, CK, E, DeciCont[1]);
	Reg3bits(Op, CK, E[2:0], DeciCont[2]);
	Reg3bits(Base, CK, E[2:0], DeciCont[3]);
	
	
endmodule