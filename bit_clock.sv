module top();
  bit clock;
  
  initial
    forever #5 clock = ~clock;
  
  intf bus_if(clock);
  Dut d(bus_if);
  Testbench TB(bus_if);
  
endmodule
