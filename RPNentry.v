module RPNentry(E, S0, S1, S2, bt, CK, switch1, switch2, Cout, OV, ZERO, ERRO,);
	input [7:0] E;
	input CK, bt, switch1, switch2;
	output [6:0]S0, S1, S2;
	output Cout, OV, ZERO, ERRO,;
	
	wire [1:0]cont;
	wire [3:0] BCD0, BCD1, BCD2, DeciCont,SaidaBase0, SaidaBase1,SaidaBase2;
	wire btDebounced, CinEntry, CoutOP;
	wire [7:0] B, A, Saida, SaidaOp;
	wire [2:0] OP, Base;
	
	debouncer(bt, CK, btDebounced);
	
	counterRPN(btDebounced, cont);
	
	binarioPDeci3(cont, DeciCont);
	
	
	and(RstOuQ, DeciCont[3], switch1);
	
	mux1_8bits(Saida, E, switch1, Z);
	
	mux1(switch1, Cout, switch2, CinEntry);
	
	CarryIn(CinEntry, Cin, CK, ~DeciCont[0]);
	
	Reg8bits(Z, CK, E, ~DeciCont[0]);
	Reg8bits(B, CK, E, ~DeciCont[1]);
	Reg3bits(OP, CK, E[2:0], ~DeciCont[2]);
	Reg3bits(Base, CK, E[2:0], ~DeciCont[3]);
	
	operacoes(A, B, Cin, RstOuQ, CK, OP[2:0], SaidaOp, OV, ZERO, ERRO, CoutOP);
	
	Reg8bits(Saida, CK, SaidaOp, ~DeciCont[3]);
	CarryIn(CoutOP, Cout, CK, ~DeciCont[3]);
	
	BinaryToBCD(Saida, BCD0, BCD1, BCD2);
	
	escolherBase(BCD0, Saida[3:0], Saida[2:0], Base[1:0], SaidaBase0);
	escolherBase(BCD1, Saida[7:4], Saida[5:3], Base[1:0], SaidaBase1);
	escolherBase(BCD2,           , Saida[7:6], Base[1:0], SaidaBase2);
	
	decodificador7seg(SaidaBase0, S0);
	decodificador7seg(SaidaBase1, S1);
	decodificador7seg(SaidaBase2, S2);
	
	
endmodule