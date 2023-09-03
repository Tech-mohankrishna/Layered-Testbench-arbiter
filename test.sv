`include "environment.sv"

program test(intf i_intf);
  environment env;
  
  initial 
    begin
      repeat(2)
        begin
          env = new(i_intf);
          env.run();
        end
    end
  
endprogram
    
  