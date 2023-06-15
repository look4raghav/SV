// Code your design here
interface intf(input clock);
  logic read, enable,
  logic [7:0]addr, data;
  
  clocking cb@(posedge clock);
    default input #10ns output #2ns;
    output read, enable, addr;
    input data;
  endclocking
  
  modport dut(input read, enable, addr, output data);
  module tb(clocking cb);
    endinterface:intf
    
    

// Code your testbench here
// or browse Examples
module Testbench(intf.tb tb_if);
  initial
    tb_if.cb.read <= 1;
endmodule
