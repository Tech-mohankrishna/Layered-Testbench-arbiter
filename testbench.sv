// Testbench
`include "interface.sv"
`include "test"

module testbench;
  
//   //clock and reset signal declaration  
  bit clk;
  bit reset;
  
  always 
    #5 clk = ~clk;

  
  
  //reset Generation
  initial begin
    reset = 1;
    #5 reset =0;
  end
  
  
  
  intf i_intf(clk, reset);
  test t1(i_intf);
  
  // Instantiate design under test
  dff DFF(.clk(i_intf.clk), .reset(i_intf.reset),
          .d(i_intf.d), .q(i_intf.q), .qb(i_intf.qb));
  
  initial begin
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end

endmodule