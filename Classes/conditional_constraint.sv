class transaction;
  rand int address;
  bit mode;
  constraint valid {mode==1'b1 -> address<96;
                   mode==1'b0 -> address>1248;}
endclass: transaction

transaction trans_h = new;
initial
  begin
    int success;
    trans_h.mode = 1'b1;
    success = trans_h.randomize();
    $display("%d", trans_h.address);
  end
