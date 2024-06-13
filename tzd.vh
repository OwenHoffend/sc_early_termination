/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP3
// Date      : Mon Jun 10 12:57:13 2024
/////////////////////////////////////////////////////////////


module tzd ( Bx, trunc, z );
  input [7:0] Bx;
  input [7:0] trunc;
  output [7:0] z;
  wire   n1, n3, n5, n7, n9, n10, n11, n12, n13, n14, n15, n18, n19, n20, n21;

  OAI21X1 U13 ( .A(trunc[7]), .B(n1), .C(n18), .Y(z[7]) );
  AOI21X1 U14 ( .A(n9), .B(Bx[6]), .C(z[5]), .Y(n13) );
  OAI21X1 U15 ( .A(trunc[5]), .B(n3), .C(n19), .Y(z[5]) );
  AOI21X1 U16 ( .A(n10), .B(Bx[4]), .C(z[3]), .Y(n14) );
  OAI21X1 U17 ( .A(trunc[3]), .B(n5), .C(n20), .Y(z[3]) );
  AOI21X1 U18 ( .A(n11), .B(Bx[2]), .C(z[1]), .Y(n15) );
  OAI21X1 U19 ( .A(trunc[1]), .B(n7), .C(n21), .Y(z[1]) );
  INVX1 U21 ( .A(n18), .Y(z[6]) );
  BUFX2 U22 ( .A(n13), .Y(n18) );
  BUFX2 U23 ( .A(n14), .Y(n19) );
  BUFX2 U24 ( .A(n15), .Y(n20) );
  AND2X1 U25 ( .A(Bx[0]), .B(n12), .Y(z[0]) );
  INVX1 U26 ( .A(z[0]), .Y(n21) );
  INVX1 U27 ( .A(n19), .Y(z[4]) );
  INVX1 U28 ( .A(n20), .Y(z[2]) );
  INVX1 U29 ( .A(Bx[3]), .Y(n5) );
  INVX1 U30 ( .A(Bx[5]), .Y(n3) );
  INVX1 U31 ( .A(trunc[2]), .Y(n11) );
  INVX1 U32 ( .A(trunc[4]), .Y(n10) );
  INVX1 U33 ( .A(trunc[6]), .Y(n9) );
  INVX1 U34 ( .A(Bx[7]), .Y(n1) );
  INVX1 U35 ( .A(Bx[1]), .Y(n7) );
  INVX1 U36 ( .A(trunc[0]), .Y(n12) );
endmodule

