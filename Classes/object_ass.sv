class transaction;
  int data;
endclass: transaction

transaction trans_h1;
transaction trans_h2;

initial
  begin
    trans_h1 = new();
    trans_h1.data = 5;
    trans_h2 = new();
    trans_h2.data = 30;
    
    trans_h2 = trans_h1;
    trans_h2.data = 40;
    
    $display(trans_h1.data);
  end
