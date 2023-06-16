class packet;
  static int identifier = 0;
  int aid = 0;
endclass: packet

class generator;
  packet pkt_h = new();
  task inc();
    pkt_h.identifier ++;
    pkt_h.aid ++;
  endtask
endclass: generator


initial
  begin
    generator gen[4];
    foreach (gen[i]);
    gen[i] = new;
    gen[0].inc();
    gen[1].inc();
    repeat(10)
      gen[2].inc();
    gen[3].inc();
  end
