module main;
  event e;
  initial
    repeat(4) begin
      #20;
      ->e; $display(" e triggered at %t", $time);
    end
  initial
    #1000 $finish;
  always begin
    #10; if(e.triggered)
      $display(" e is True at %t", $time);
    else $display(" e False %t", $time);
  end
endmodule
