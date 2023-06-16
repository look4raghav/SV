function automatic void create (ref transaction trans_h);
  trans_h = new();
  trans_h.addr = 42;
endfunction

transaction trans;
initial
  begin
    create(trans);
    $display("%d", trans.add);
  end
