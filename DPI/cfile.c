#include <stdio.h>
#include <stdlib.h>
extern int add() {      //extern is used to refer the function during runtime
  int a = 10, b = 20;
  a = a + b;
  printf("Addition Successful and Result = %d\n", a);
  return a;
}
