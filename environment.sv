//including all the files
`include "transaction.sv"
`include "Generator.sv"
`include "driver.sv"
`include "monitor"
`include "scoreboard"

class environment;
  generator gen;
  driver driv;
  monitor mon;
  scoreboard scbrd;
  mailbox mb1;
  mailbox mb2;
  
  virtual intf vif;
  function new( virtual intf vif);
    this.vif = vif;
    mb1 = new();
    mb2 = new();
    gen = new(mb1);
    scbrd = new(mb2);
    driv = new(vif,mb1);
    mon = new(vif,mb2);
  endfunction
  
  task pre_test();
    driv.reset();
  endtask
  
  // all the main tasks in one task
  task test();
    fork
      gen.main(); //main task of generator
      driv.main(); //main task of driver
      mon.main(); //main task of monitor
      scbrd.main(); //main task of scoreboard
    join
  endtask
  
  //triggering all the main task
  task run();
    pre_test();
    test();
    $finish;
  endtask
  
endclass




