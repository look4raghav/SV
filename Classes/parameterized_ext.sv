class si #(type M=bit);
endclass: si

class c1#(type A = real) extends si
  class c2#(type A = real) extends si #(integer);
    class c3#(type A = real) extends si #(A);
      class c4#(type A = real) extends si #(real);
