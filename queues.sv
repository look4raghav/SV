module tb;
  string cars[$] = {"swift", "dzire", "i20", "seltos"};
  initial
    begin
      $display("Total = %p, Total No = %d", cars.size(), cars);
      
      cars.insert(1, "Verna");
      $display("Insert Verna, size=%d cars=%p", cars.insert(), cars);
      
      cars.delete(3);
      $display("Delete dzire, size=%d cars=%p", cars.delete(), cars);
      
      $display("Pop %s, size=%d cars=%p", cars.pop_front(), cars);
      $display("Pop %s, size=%d cars=%p", cars.pop_back(), cars);
      cars.push_front("Virtus");
      $display("Push Virtus, size=%d cars=%p", cars.size(), cars);
      cars.push_back("Slavia");
      $display("Push Slavia, size=%d cars=%p", cars.size(), cars);
    end
endmodule
