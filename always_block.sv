always_comb 
  a = b & c; 



always_latch
  if(clock)
        q <= d; 



always_ff @(posedge clock iff reset == 0 or posedge reset)
  r1 <= reset ? 0 : r2 + 1; 
