module main;
  event e1, e2, e3;
  initial begin
    #10;
    -> e1;
    -> e2;
    -> e3;
    #10
    -> e3;
    -> e1;
    -> e2;
    #10
    -> e3;
    -> e2;
    -> e1;
  end
  
  always begin
    wait_order(e1, e2, e3)
    $display("Event in order");
    else
      $display("OUT OF ORDER");
  end
endmodule
