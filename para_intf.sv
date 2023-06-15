interface myBus #(parameter D_WIDTH=31)(input clock);
  login [D_WIDTH-1:0]data;
  logic enable;
endinterface
