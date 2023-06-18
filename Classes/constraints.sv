class transaction;
  rand bit [15:0] pkt_len;
  constraint undersize{pkt_len <= 16'd64;}
endclass: transaction
transaction trans_h = new;
initial
  begin
    int success;
    for (int i=0; i<16; i++)
      begin
        success = trans_h.randomize();
        $display("Transaction %h", trans_h.pkt_len);
      end
  end
