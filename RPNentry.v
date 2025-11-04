module RPNentry(E, S0, S1, S2, bt, CK, switch1, switch2, Cout, OV, ZERO, ERRO,);

	// Módulo principal, para entrada RPN de dados e saída dos resultados;

	input [7:0] E;
	input CK, bt, switch1, switch2;
	output [6:0]S0, S1, S2;
	output Cout, OV, ZERO, ERRO;
	
	wire [1:0]cont;
	wire [3:0] BCD0, BCD1, BCD2, DeciCont,SaidaBase0, SaidaBase1,SaidaBase2;
	wire btDebounced, CinEntry, CoutOP;
	wire [7:0] B, A, Saida, SaidaOp, Z;
	wire [2:0] OP, Base;
	
	
	// Debouncer para utilizar a entrada do botão;
	debouncer(bt, CK, btDebounced);
	
	
	// Contador de 2 bits para decidir os passos do funcionamento da entrada de dados;
	counterRPN(btDebounced, cont);
	
	// Decodifiador para utilizar as informações do contador;
	binarioPDeci3(cont, DeciCont);
	
	// controlador para "ativar" o switch de resto e quociente, somente na etapa de demonstar resultado; 
	and(RstOuQ, DeciCont[3], switch1);
	
	// Multiplexador responsavel por registrar a entrada atual ou resultado anterior no registrador A;
	mux1_8bits(Saida, E, switch2, Z);
	
	
	// Multiplexador responsavel por registrar a entrada atual de Carry ou resultado anterior no registrador de Carry;
	mux1(switch1, Cout, switch2, CinEntry);
	
	// Registrador de Carry In, ativo no primeiro passo do contador;
	CarryIn(CinEntry, Cin, CK, ~DeciCont[0]);
	
	//Registrador da palavra binaria A, ativo no primeiro passo do contador;
	Reg8bits(A, CK, Z, ~DeciCont[0]);
	
	//Registrador da palavra binaria B, ativo no segundo passo do contador;;
	Reg8bits(B, CK, E, ~DeciCont[1]);
	
	//Registrador de operação realizada, ativo no terceiro passo do contador;
	Reg3bits(OP, CK, E[2:0], ~DeciCont[2]);
	
	//Registrador de base demonstrada, ativo no quarto passo do contador;
	Reg3bits(Base, CK, E[2:0], ~DeciCont[3]);
	
	
	//Operações instanciadas;
	operacoes(A, B, Cin, RstOuQ, CK, OP[2:0], SaidaOp, OV, ZERO, ERRO, CoutOP);
	
	//Registrador de Saída, ativo no quarto passo do contador;
	Reg8bits(Saida, CK, SaidaOp, ~DeciCont[3]);
	
	//Registrador de Carry Out, ativo no quarto passo do contador;
	CarryIn(CoutOP, Cout, CK, ~DeciCont[3]);
	
	
	// Decodificador para BCD;
	BinaryToBCD(Saida, BCD0, BCD1, BCD2);
	
	// Multiplexadores para escolher a base;
	escolherBase(BCD0, Saida[3:0], Saida[2:0], Base[1:0], SaidaBase0);
	escolherBase(BCD1, Saida[7:4], Saida[5:3], Base[1:0], SaidaBase1);
	escolherBase(BCD2,           , Saida[7:6], Base[1:0], SaidaBase2);
	
	// Decodificadores para o display de 7 segmentos;
	decodificador7seg(SaidaBase0, S0);
	decodificador7seg(SaidaBase1, S1);
	decodificador7seg(SaidaBase2, S2);
	
	
endmodule