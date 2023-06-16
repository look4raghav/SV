class transaction;
  virtual task send_packet();
  endtask
endclass

class corrupt_trans extends transaction;
  virtual task send_packet();
  endtask
endclass





initial 
  begin
    transaction trans;
    corrupt_trans crt_h;
    crt_h = new();
    trans = crt_h;
    trans.send_packet();
  end
