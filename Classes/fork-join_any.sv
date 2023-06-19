initial
  begin
    clock=0;
    #5;
    fork
      #5 a=0;
      #10 b=10;
    join_any
    clock=1;
  end
