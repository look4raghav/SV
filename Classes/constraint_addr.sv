constraint transaction;
rand bit[3:0]addr;
constraint use_address{addr inside{5,4,3,[12:15];}}
endclass: transaction

transaction trans_h = new;
initial
  begin
    int success;
    success = trans_h.randomize();
    $display("Address %b", trans_h.addr);
  end
