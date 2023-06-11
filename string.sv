module tb;
  string firstname = "Raghav";
  string lastname = "Aggarwal";
  
  initial begin
    if (firstname == lastname)
      $display("firstname=%s is EQUAL to lastname=%s", firstname, lastname);
    if (firstname != lastname)
      $display("firstname=%s is NOT EQUAL to lastname=%s", firstname, lastname);
    if (firstname < lastname)
      $display("firstname=%s is LESS THAN lastname=%s", firstname, lastname);
    if (firstname > lastname)
      $display("firstname=%s is GREATER THAN lastname=%s", firstname, lastname);
    
    $display("Full name = %s", {firstname, " ", lastname});  //concentration
    $display("%s", {3{firstname}});   // replication
    $display("firstname[2]=%s  lastname[2]=%s", firstname[2], lastname[2]);
    
    $display("firstname.len()=%0d", firstname.len());
    
    temp = lastname;
    temp.putc(3,"d");
    $display("lastname.putc(3, d) = %s", tmp);
    $display("lastname.getc(2) = %s(%0d)", lastname.getc(2), str.getc(2));
    $display("lastname.tolower() = %s", lastname.tolower);
    
    
  end
endmodule











module test (input in1);
endmodule 
