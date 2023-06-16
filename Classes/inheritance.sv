class Packet;
  int addr;
  
  function new(int addr);
    this.addr = addr;
  endfunction
  
  function display();
    $display ("[Base]addr = 0x%0h", addr);
  endfunction
endclass

class ExtPacket extends Packet;
  int data;
  function new(int addr, data);
    super.new(addr);
    this.data = data;
  endfunction
  
  function display();
    $display ("[Child]addr = 0x%0h data = x%0h",addr, data);
  endfunction
endclass

module tb;
  Packet bc;
  ExtPacket sc;
  
  initial
    begin
      bc = new(31'hface_fcafe);
      bc.display();
      
      sc = new(32'hface_feed, 32'h1234_5678);
      sc.display();
    end
endmodule
