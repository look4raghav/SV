begin
  clock = 0;
  #5
  fork
    #5 a=0;
    #10 b=0;
  join
  clock = 1;
end
