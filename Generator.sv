//generator class containing the random generated inputs

class generator;
  rand transaction trans; //handle for the transaction
  mailbox gen2driv; //mailbox handle
  
  //custom constructor for mailbox
  function new ( mailbox gen2driv); 
    this.gen2driv = gen2driv;
  endfunction
  
  
  
  //main task
  task main();
    repeat(2)
      begin
        trans = new;
        trans.randomize;
        //$display("d==== %0d", trans.d);
        trans.display("generator");
        gen2driv.put(trans); //putting the random values into the mailbox
        
      end
  endtask
endclass