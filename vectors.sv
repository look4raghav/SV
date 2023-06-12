module vectors_example();
  reg [7:0] a = 0;
  reg [6:0] b = 0;
  reg [7:0] d = 0;
  
  wire [1:0] c;
  
  assign c[1:0] = a[3:2];
  
  initial
    begin
      $monitor("a=%b, b=%b, c=%b, d=%b", a, b, c, d)
    end
  
  initial
    begin
      #1 a=1;
      #1 a=8'b1111_0101;
      #1 a=8'b1111_1000;
      #1 a=8'b0000_1000;
      #1 a=8'b0;
      
      #1 b=7'b1111_1111;
      #1 d[3:0] = a[3:0];
      #1 d[7:4] = b[6:3];
      
      #1 a=8'b0000_1110;
      #1 d = {a[3:0] = b[3:0]};
      #1 d = {b[3:0] = a[7:4]};
    end
endmodule
