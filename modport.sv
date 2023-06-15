interface intf(input clock);
  logic read, enable,
  logic [7:0]addr, data;
  
  modport dut(input read, enable, addr, output data);
  modport tb(output read, enable, addr, input data);
endinterface :intf
