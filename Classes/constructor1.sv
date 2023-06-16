module way_1;
  class packet_c;
    bit[31:0] src, dst;
    function new();
      src = 5;
      dst = 10;
    endfunction
  endclass
  
  packet_c pkt_h;
  initial pkt_h = new();
endmodule
