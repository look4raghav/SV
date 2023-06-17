// Code your testbench here
// or browse Examples
module training_c;
  class transaction;
    rand bit[15:0] pkt_length;
    randc bit[3:0] header;
  endclass
  transaction trans = new;
  initial
    begin
      int success;
      success = trans.randomize();
    end
endmodule
