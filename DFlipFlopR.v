module DFlipFlopR(
  input d,
  input clk, // Active-low asynchronous reset
  output reg q,
  input rst_n
);

  always @(posedge clk) begin
    if (rst_n) begin // If reset is active (low)
      q <= 1'b0;      // Reset the output to 0
    end 
	 else begin
      q <= d;         // On positive clock edge, update output with D input
    end
  end

endmodule
	 
