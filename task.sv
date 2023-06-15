module temp_task; 
  real value;
  task interest;
    input real p;
    output real i;
    i = ((p*12*1)/100);   
  endtask

  initial begin
    interest(1000,value);
    $display("\tInterest is = %.02i",value);
    interest(5000,value);
    $display("\tInterest is = %.02i",value);
    interest(1000,value);
    $display("\tInterest is = %.02i",value);
  end
endmodule
