//scoreboard class to display the compared results between reference & actual

class scoreboard;
//   virtual intf vif;
  mailbox mbx;
  
  function new (mailbox mbx);
    this.mbx = mbx;
  endfunction
  
  task main();
    transaction trans;
    repeat(2)
      begin
        mbx.get(trans); //getting the monitor data to monitor on scoreboard
        if(trans.reset == 0)
          begin
            if ( trans.q == trans.d ) 
              $display("Result is correct");
            else
              $error("result is wrong");
            trans.display("[ Scoreboard ]");
          end
      end
    
  endtask
  
endclass

        