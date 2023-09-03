// Design
// D flip-flop synchronous
module dff (clk, reset,
  d, q, qb);
  input      clk;
  input      reset;
  input      d;
  output     q;
  output     qb;

  reg        q;
  assign qb = ~q;

  
  always @(posedge clk )
    begin
      if (reset) 
        begin
      // synchronous reset when reset goes high
      		q <= 1'b0;
    	end 
      else 
        begin
      // Assign D to Q on positive clock edge
      		q <= d;
    	end
  	end
endmodule