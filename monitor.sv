//monitor class to capture the actual results

class monitor;
  virtual intf vif;
  mailbox mbx; //new mailbox to display both input and output
  
  function new(virtual intf vif, mailbox mbx);
    this.vif = vif;
    this.mbx = mbx;
  endfunction
  
   //Samples the interface signal and send the sample packet to scoreboard  
  task main();
    repeat(2)
      begin
        transaction trans;
        trans = new;
        @(posedge vif.clk);
        trans.d  = vif.d;
        trans.q  = vif.q;
        trans.qb = vif.qb;
        trans.reset = vif.reset;
        mbx.put(trans); // putting the monitor data into mailbox
        trans.display("monitor");
      end
    
  endtask
endclass
