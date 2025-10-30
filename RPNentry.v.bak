module RPNentry(E, S0, S1, S2, bt, CK, switch1, switch2);
	input [7:0] E;
	input CK, bt, switch1, switch2;
	output [6:0]S0, S1, S2;
	
	wire [1:0]cont;
	wire [3:0] BCD0, BCD1, BCD2, DeciCont,SaidaBase0, SaidaBase1,SaidaBase2;
	wire btDebounced;
	wire [7:0] B, A, Saida;
	
	debouncer(bt, CK, btDebounced);
	counterRPN(btDebounced, cont);
	binarioPDeci3(cont, DeciCont);
	
	operacoes(A, B, Cin, RstOuQ, Op, SaidaOp, , , , );
	
	CarryIn(switch1, Cin, CK, DeciCont[0]);
	
	and(RstOuQ, DeciCont[3], switch1);
	
	Reg8bits(A, CK, E, DeciCont[0]);
	Reg8bits(B, CK, E, DeciCont[1]);
	Reg3bits(Op, CK, E[2:0], DeciCont[2]);
	Reg3bits(Base, CK, E[2:0], DeciCont[3]);
	
	Reg8bits(Saida, CK, SaidaOp, DeciCont[3]);
	
	BinaryToBCD(Saida, BCD0, BCD1, BCD2);
	
	escolherBase(BCD0, Saida[3:0], Saida[2:0], Base, SaidaBase0);
	escolherBase(BCD1, Saida[7:4], Saida[5:3], Base, SaidaBase1);
	escolherBase(BCD2, , Saida[7:6], Base, SaidaBase2);
	
	decodificador7seg(SaidaBase0, S0);
	decodificador7seg(SaidaBase1, S1);
	decodificador7seg(SaidaBase2, S2);
	
	
endmodule