//accessing base class

class Packet;
  int addr;
  
  function display();
    $display("[Base]addr = 0x%0h", addr);
  endfunction
endclass

class extPacket extends Packet;
  function display();
    super.display();
    $display("[Child]addr = 0x%0h", addr);
  endfunction
  
  function new();
    super.new();
  endfunction
endclass


module tb;
  Packet p;
  extPacket ep;
  
  initial
    begin
      ep = new();
      p = new();
      ep.display();
    end
endmodule



/*EXECUTION ERRROR..         Exit code expected: 0, received: 1
Error in execution: [No such image: 1686917615048-0 (tag: latest)
]. Your run may have reached the memory limit of 500MB.
Done
*/
