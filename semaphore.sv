program main;
  semaphore sema=new(1);
  initial
    begin
      repeat(3) begin
        fork
          begin
            $display("1: Waiting is key");
            sema.get(1);
            $display("1: Got key");
            #(10);
            sema.put(1);
            $display("1: Returning back key");
            #(10);
          end
          
          begin
            $display("1: Wait key");
            sema.get(1);
            $display("1: Got key");
            #(10);
            sema.put(1);
            $display("1: Return key");
            #(10);
          end
        join
      end
      #1000;
    end
endprogram
