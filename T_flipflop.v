module T_flipflop (
    input clk,    
    input t,       
    output reg q ,
	 output reg Qn
);

always @(posedge clk ) begin
    
if (t == 1'b1) begin 
	q <= ~q;
	end else begin       
	q <= q;
	end
	
	Qn <= ~q;
end

endmodule