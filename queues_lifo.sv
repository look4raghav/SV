module tb;
  string cars[$] = {"swift", "dzire", "i20", "seltos"};
  initial
    begin
      $display ("mini-sedan = %p", cars[1:2]);
      $display ("cars = %p", cars[1:$]);
      
      cars[$+1] = "Manza";
      $display ("cars = %p", cars);
      $display ("Remove dzire, cars=%p", cars[1:$]);
      
    end
endmodule
      
