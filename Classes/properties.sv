class training_c;
  int course_fee;
  function int total_subjects;
    return course_fee;
  endfunction
  
  task deposit (input int payment);
    course_fee = course_fee + payment;
  endtask
endclass: training_c


training_c train_h = new;
train_h.deposit(1000);
$display("Fees %d", train_h.total_subjects());
$display("Fees %d", train_h.course_fee);
