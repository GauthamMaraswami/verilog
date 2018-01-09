`timescale 1ns/10ps
module E1(A,B,C,D,E);
 input A,B,C;
 output D,E;
 wire w1,w2;
 and G3(w1,A,B);
 not G2(E,C);
 or #(20) G4(D,E,W1);
 endmodule