class transaction;
  rand bit[15:0] pkt_len;
  constraint oversize  {pkt_len >= 16'hff00;}
endclass: transaction
class trans_child extends transaction;
  constraint undersize{pkt_len <= 16'hff50;}
endclass: trans_child
trans_child trans = new;
initial
  begin
    int success;
    success = trans.randomize();
    $display("Pkt len = %h", trans.pkt_len);
  end
