module Testbench(intf tb_if);
  initial
    begin
      tb_if.read = 0;
      repeat(3) #20
        tb_if.read = ~tb_if.read;
      $finish;
    end
endmodule



module dut(intf_dut_if);
  always@(posedge dut_if.clock)
    if(dut_if.read)
      $display("Read asserted");
endmodule

interface intf#(parameter BW=8)(input clock);
  logic read, enable;
  logic [BW -1:0]addr, data;
endinterface :intf
