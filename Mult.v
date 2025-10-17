module Mult(CK, A, B, S, OV);

	input [7:0]A, B;
	output[7:0]S;
	output OV;
	input CK;

	wire MuxS;
	wire [2:0]Cont;
	wire [7:0]Bsum;
	wire [7:0]MultS, AtivaReg;
	wire [8:0] ParteSum;
	
	wire T;
	
	wire [7:0]T1;
	
	contador(CK, Cont);
	
	multiplexador8(MuxS, Cont, B);
	
	MultiLogica(MultS, A, MuxS);
	
	Somador8bitsMult(ParteSum, MultS, Bsum);
	
	or(T, ParteSum[1], ParteSum[2], ParteSum[3], ParteSum[4], ParteSum[5], ParteSum[6], ParteSum[7], ParteSum[8]);
	
	DFlipFlopNeg(T, AtivaReg[7], OV);
	
	Reg8bits2(S, AtivaReg[7], T1[7:1], T1[0]);
	
	Reg8bits(Bsum, CK, ParteSum[8:1], AtivaReg[7]);
	
	BinarioPDeci(Cont, AtivaReg);
	
	Reg8bitsS(T1, CK, ParteSum[0]);
	
endmodule