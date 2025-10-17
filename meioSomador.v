module meioSomador(S, Cout, A,B);

	input A, B;
	output S, Cout;
	
	xor(S, A, B);
	and(Cout, A, B);
	
endmodule