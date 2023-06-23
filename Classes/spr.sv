class Packet;
	int addr;
	function display();
		$display("[Base] addr=0x%0h", addr);
	endfunction
endclass
class extPacket;
	function new();
		super.new();
	endfunction
endclass

module tb;
	Packet p;
	extPacket ep;
	initial begin
		ep=new();
		p=new();
		p.display();
	end
endmodule
