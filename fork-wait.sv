initial
  begin
    clock = 0;
    #10;
    fork
      #10 a=0;
      #20 b=0;
    join_any
    $display("@%g Came out fork-join", $time);
    wait fork;
      $display("@%g All threads time", $time);
      #30 $finish;
      end
