//driver class drive the stimulus to the DUT through interface

class driver;
  
  virtual intf vif; //making interface virtual
  
  mailbox gen2driv; // handle for mailbox
  
  function new(virtual intf vif, mailbox gen2driv);
    this.vif = vif;
    this.gen2driv = gen2driv;
  endfunction

  //Reset task, Reset the Interface signals to default/initial values
  task reset;
    wait(vif.reset);
    $display("[ DRIVER ] ----- Reset Started -----");
    vif.d <= 0;
    wait(!vif.reset);
    $display("[ DRIVER ] ----- Reset Ended   -----");
  endtask 
  
  task main;
    repeat(2)
      begin
        transaction trans;
        gen2driv.get(trans); //getting the data that stored in mailbox
  
        @(posedge vif.clk);
        vif.d <= trans.d;
        vif.q     = trans.q;
        vif.qb     = trans.qb;
        vif.reset = trans.reset;
        trans.display("driver");
      end
  endtask
  
endclass
