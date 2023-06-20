module event_m;
  event a;
  repeat(4)
    #20 -> a;
  always begin
    @a;
    $display("ONE:: EVENT A triggered");
  end
  always begin
    wait(a.triggered);
    $display("TWO :: Event A triggered");
    #1;
  end
endmodule
