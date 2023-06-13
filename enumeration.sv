module tb;
  typedef enum{TRUE,FALSE} e_true_false;
  initial begin
    e_true_false answer;
    answer = TRUE;
    $display("answer = %s", answer.name);
  end
endmodule
