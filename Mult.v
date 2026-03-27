module Mult(CK, A, B, S, OV);

	input [7:0]A, B;
	output[7:0]S;
	output OV;
	input CK;

	wire MuxS;
	wire [2:0]Cont;
	wire [7:0]BuferSum, AntSum;
	wire [7:0]MultS, AtivaReg;
	wire [8:0] ParteSum;
	
	wire T;
	
	wire [7:0]T1;
	
	contador(CK, Cont);
	BinarioPDeci(Cont, AtivaReg);
	
	multiplexador8(MuxS, Cont, B);
	
	MultiLogica(MultS, A, MuxS);
	
	Somador8bitsMult(ParteSum, MultS, AntSum);
	
	or(T, ParteSum[1], ParteSum[2], ParteSum[3], ParteSum[4], ParteSum[5], ParteSum[6], ParteSum[7], ParteSum[8]);
	
	
	DFlipFlopNeg(T, AtivaReg[7], OV);
	
	
	Reg8bits2(S, AtivaReg[1], T1[6:0], BuferSum[0]);
	
	Reg8bitsNeg(AntSum, CK, BuferSum, AtivaReg[7]);
	
	Reg8bits(BuferSum, CK, ParteSum[8:1], AtivaReg[7]);
	
	
	Reg8bitsS(T1, CK, BuferSum[0]);
	
endmodule