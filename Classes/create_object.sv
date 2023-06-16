class transaction;
  bit[3:0]data;
  bit[15:0]addr;
  bit[15:0]mem;
endclass

initial
  begin
    transaction trans_h1;
    transaction trans_h2;
    trans_h1 = new;
    trans_h2 = new;
  end
