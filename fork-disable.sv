initial
  begin
    clock = 0;
    #5;
    fork
      #5 a = 0;
      #10 b = 0;
    join_none
    $display("@%g Came out for fork-join", $time);
    #15 disable fork;
      $display("%g All threads disabled", $time);
      #20 finish;
      end
