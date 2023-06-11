module tb;
  struct {
    string fruit;
    int count;
    byte expiry;
  } st_fruit;
  
  initial begin
    st_fruit = '{"apple", 4, 15};
    $display ("st_fruit = %p" st_fruit);
    st_fruit.fruit = "pineapple";
    st_fruit.expiry = 7;
    $display ("st_fruit = %p", st_fruit);
  end
endmodule
