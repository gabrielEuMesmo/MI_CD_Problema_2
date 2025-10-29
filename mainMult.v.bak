module mainMult(A, B, S, CK);

	input [7:0]B, A;
	output [7:0]S;
	
	input CK;
	
	
	nor(inicio, contador[0],contador[1], contador[2], contador[3]);
	
	RegShift9bits(Q, btdebounced, E, switch);
	RegShift8bits(Q[0], S, btdebounced, B, inicio);
	
endmodule