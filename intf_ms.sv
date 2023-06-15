interface intf(input clock);
  logic read, enable,
  logic [7:0]addr, data;
  task masterRead(input logic[7:0]raddr);
  
  endtask: masterRead
  
  task slaveRead;
    
  endtask: slaveRead
endinterface :intf
