module associative_array();
  initial
    begin
      int memory[int];
      memory[1]=15;
      memory[4]=08;
      memory[10]=05;
      memory[16]=12;
      
      if(memory.exists[15])
        $display("Existss %d", memory[5]);
      else
        $display("NO ENTRY!");
      
      $display("Entries in Array : %d", memory.sum);
    end
endmodule
