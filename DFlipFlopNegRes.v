module DFlipFlopNegRes(D, CK, Q, rst_n);

	input D, CK, rst_n;
	output reg Q; 
	
	always @ (negedge CK)begin
	
	if (rst_n) begin // If reset is active (low)
      Q <= 1'b0;      // Reset the output to 0
    end 
		else begin
	
		Q <= D;
	 
		end
	 end
	 
endmodule

