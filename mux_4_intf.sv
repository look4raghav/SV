interface mux_a();
  logic [3:0] in;
 logic [2:0] sel;
 logic out;
  modport rtl(input in,sel,output out);
  modport tb(output in,sel ,input out);
endinterface
module mux_4(mux_a.rtl inf);
  always@(inf.in or inf.sel )
    begin
      case(inf.sel)
        3'd0 : inf.out<=inf.in[0];
        3'd1 : inf.out<=inf.in[1];
        3'd2 : inf.out<=inf.in[2];
        3'd3 : inf.out<=inf.in[3];
      endcase
    end
endmodule





module testbench(mux_a.tb inf);
  initial
    begin
      inf.in[0]=0;
      inf.in[1]=1;
      inf.in[2]=1;
      inf.in[3]=0;
      #5 inf.sel= 3'd3;
      #5 inf.sel= 3'd1;
      #5 inf.sel= 3'd2;
      #10 $finish;
    end
  initial
    $monitor($time, " When sel = %d is %d",inf.sel,inf.out);
endmodule

module top_module;
      mux_a utt();
      mux_8 dut(utt);
      testbench test(utt);
endmodule
