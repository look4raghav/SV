interface my_int(input bit clk);
  clocking cb_clk@(posedge clk);
    default input #3ns output #10ns;
    input enable;
    output data;
  endclocking
endinterface
