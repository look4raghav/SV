class myTrns;
  rand bit[3:0] mode;
  rand bit[1:0] key;

  function display();
    $display("[%0tns] mode = 0x%0h, key = 0x%0h", $time, mode key);
  endfunction

  covergroup CovGrp;
    coverpoint mode {
      bins featureA = {0};
      bins featureB = {[1:3]};
      bins common [] = {4:$};
      bins reserve = default;
    }
    coverpoint key;
  endgroup
endclass
