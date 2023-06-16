virtual class packet;
  virtual task display;
    $display("Virtual base class");
  endtask: display
endclass

class first_pkt extends packet;
  task display();
    $display("Extended class");
  endtask: display
endclass



initial
  begin
    packet pkt_h;
    first_pkt f_pkt;
    f_pkt = new();
    pkt_h = f_pkt;
    f_pkt.display();
    pkt_h.display();
  end
