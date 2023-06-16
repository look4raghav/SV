module way_2;
  
  class packet_c;
    bit[31:0] src, dst;
    function new(int src, int dst = 10);
      this.src = src;
      this.dst = dst;
    endfunction
  endclass
  
  packet_c pkt_h;
  initial pkt_h = new(5);
endmodule
