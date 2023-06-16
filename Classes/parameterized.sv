class vector #(int size=1);
  bit[size-1:0]a;
endclass

vector #(10);
vector #(.size(2)) vtwo;
typedef vector #(4) vfour;
