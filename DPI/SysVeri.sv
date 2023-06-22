module tb_dpi;
  import "DPI-C" function int add();
  import "DPI-C" function int sleep(input int secs);
  int j;
  initial
  begin
    $display("SystemVerilog Initial Block");
    #20
    j = add();
    $display("j = %d", j);
    sleep(3);     //sleep function
    $display("Exiting SV initial block");
    #5 $finish;
  end 
endmodule
