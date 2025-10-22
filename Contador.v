module Contador(bt, CK, Q);

	input CK, bt;
	output [2:0]Q;
	
	wire [1:0]T;
	wire btDebounced;
	
	debouncer(bt, CK, btDebounced);
	
	T_flipflop(btDebounced, 1'b1, Q[0], T[0]);
	T_flipflop(T[0], 1'b1, Q[1], T[1]);
	T_flipflop(T[1], 1'b1, Q[2], );
	
endmodule
	