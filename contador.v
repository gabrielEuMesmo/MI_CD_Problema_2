module contador(Ck, Q);

	input Ck;
	output [1:0]Q;
	wire [3:0]F;
	
	or(F[1], 1'b0, F[0]);
	or(F[3], 1'b0, F[2]);
	
	JKflipf(Q[0], F[0], F[1], Ck);
	JKflipf(Q[1], F[2], F[3], F[0]);
	
endmodule