class transaction;
  task send_packet();
  endtask: send_packet
endclass: transaction

class corrupt_trans extends transactions;
  task send_packet();
  endtask: send_packet
endclass: corrupt_trans



initial
  begin
    transaction trans;
    corrupt_trans crt_h;
    trans = new();
    crt_h = new();
    trans.send_packet();
    crt_h.send_packet();
    trans = crt_h;
    trans.send_packet();
  end
