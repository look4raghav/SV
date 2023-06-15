module pass_by_ref;
  
  int x,y,z;
  function int frc( ref int z,a);
    z=z*a;
    return z*a;
  endfunction
  
  initial begin
    x = 15;
    y = 08;
    f = frc(x,y);
    $display("\tValue of x = %0d",x);
    $display("\tValue of y = %0d",y);
    $display("\tValue of z = %0d",f);
  end
  
endmodule
