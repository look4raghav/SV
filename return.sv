task example(input int errors);
    if(errors == 0)
        begin
          $display(“No errors”);
            return;
        end
    else 
        $display(“[%d] Errors encountered”, errors);
endtask: example
