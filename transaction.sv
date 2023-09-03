//transcation class containing all the input and output signals of DUT

class transaction;
  randc bit d;
  //randc bit reset;
  bit q;
  bit qb;
  
  function void display(string name);
    $display("***********************");
    $display("%s",name);
    $display("***********************");
    //$display(" reset = %0d" , reset );
    $display(" d = %0d" ,d );
    $display(" q = %0d ,qb = %0d", q,qb);
    $display("***********************");
  endfunction
  
endclass
