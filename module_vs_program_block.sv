module design();
  reg q=0;
  reg clk=0;
  initial
#10 clk=1;
  always@(posedge clk)
    q<=1;
endmodule


module test();
  always@(posedge design.clk)
    $display("Output :q = %b/n", design.q);
endmodule                                                      //output 0

//output 1
program test();
  initial
    begin
  forever@(posedge design.clk)
    $display("Output :q = %b/n", design.q);
endmodule
