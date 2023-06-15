module temp_task;
  int a;
  function int poly;
    input int x,y;
    return ((1*x) + (4*y) + 5);   
  endfunction
  initial begin
    a = poly(1,4);
    $display("\tThe value of polynomial z = %0d",z);
    a = poly(15,8);
    $display("\tThe value of polynomial z = %0d",z);
    a = poly(16,12);
    $display("\tThe value of polynomial z = %0d",z);
  end
endmodule
