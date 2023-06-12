module dyna_arr();
  interger dyna[];
  initial
    begin
      dyna = new[5];
      $display(dyna.size);
      dyna[1]=1; dyna[2]=04; dyna[4]=10;
      dyna = new[10]dyna;
      $display(dyna.size);
      dyna.delete;
      $display(dyna.size);
      dyna = new[4];
      dyna[0]=15; dyna[1]=08; dyna[3]=16;
    end
endmodule
