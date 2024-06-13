/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP3
// Date      : Mon Jun 10 12:55:35 2024
/////////////////////////////////////////////////////////////


module bypass_ctr ( clk, rst_n, bp, ovf, cnt );
  input [7:0] bp;
  output [7:0] cnt;
  input clk, rst_n;
  output ovf;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n9, n10, n11, n12, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n36, n37, n40;
  wire   [7:0] next_cnt;

  DFFSR \cnt_reg[0]  ( .D(n14), .CLK(clk), .R(rst_n), .S(1'b1), .Q(n48) );
  DFFSR \cnt_reg[1]  ( .D(n27), .CLK(clk), .R(rst_n), .S(1'b1), .Q(n47) );
  DFFSR \cnt_reg[2]  ( .D(n28), .CLK(clk), .R(rst_n), .S(1'b1), .Q(n46) );
  DFFSR \cnt_reg[3]  ( .D(next_cnt[3]), .CLK(clk), .R(rst_n), .S(1'b1), .Q(n45) );
  DFFSR \cnt_reg[4]  ( .D(n25), .CLK(clk), .R(rst_n), .S(1'b1), .Q(n44) );
  DFFSR \cnt_reg[5]  ( .D(next_cnt[5]), .CLK(clk), .R(rst_n), .S(1'b1), .Q(n43) );
  DFFSR \cnt_reg[6]  ( .D(n26), .CLK(clk), .R(rst_n), .S(1'b1), .Q(n42) );
  DFFSR \cnt_reg[7]  ( .D(next_cnt[7]), .CLK(clk), .R(rst_n), .S(1'b1), .Q(n41) );
  NOR2X1 U20 ( .A(n10), .B(n15), .Y(ovf) );
  OAI21X1 U21 ( .A(bp[7]), .B(cnt[7]), .C(n16), .Y(n15) );
  NOR3X1 U22 ( .A(n10), .B(bp[7]), .C(n9), .Y(next_cnt[7]) );
  NOR3X1 U24 ( .A(n37), .B(n29), .C(n40), .Y(n17) );
  NOR3X1 U26 ( .A(n40), .B(bp[5]), .C(n37), .Y(next_cnt[5]) );
  NAND3X1 U29 ( .A(n21), .B(n22), .C(n12), .Y(n20) );
  NOR3X1 U30 ( .A(n23), .B(bp[3]), .C(n11), .Y(next_cnt[3]) );
  OAI21X1 U32 ( .A(bp[1]), .B(cnt[1]), .C(n24), .Y(n23) );
  OR2X1 U35 ( .A(bp[6]), .B(cnt[6]), .Y(n16) );
  OR2X1 U36 ( .A(bp[4]), .B(cnt[4]), .Y(n18) );
  OR2X1 U37 ( .A(bp[3]), .B(cnt[3]), .Y(n22) );
  OR2X1 U38 ( .A(bp[2]), .B(cnt[2]), .Y(n21) );
  OR2X1 U39 ( .A(bp[0]), .B(cnt[0]), .Y(n24) );
  OR2X1 U40 ( .A(bp[4]), .B(n40), .Y(next_cnt[4]) );
  INVX1 U41 ( .A(next_cnt[4]), .Y(n25) );
  OR2X1 U42 ( .A(n10), .B(bp[6]), .Y(next_cnt[6]) );
  INVX1 U43 ( .A(next_cnt[6]), .Y(n26) );
  OR2X1 U44 ( .A(bp[1]), .B(n36), .Y(next_cnt[1]) );
  INVX1 U45 ( .A(next_cnt[1]), .Y(n27) );
  OR2X1 U46 ( .A(n23), .B(bp[2]), .Y(next_cnt[2]) );
  INVX1 U47 ( .A(next_cnt[2]), .Y(n28) );
  OR2X1 U48 ( .A(bp[5]), .B(cnt[5]), .Y(n19) );
  INVX1 U49 ( .A(n19), .Y(n29) );
  BUFX2 U50 ( .A(n44), .Y(cnt[4]) );
  BUFX2 U51 ( .A(n48), .Y(cnt[0]) );
  BUFX2 U52 ( .A(n43), .Y(cnt[5]) );
  BUFX2 U53 ( .A(n47), .Y(cnt[1]) );
  BUFX2 U54 ( .A(n46), .Y(cnt[2]) );
  BUFX2 U55 ( .A(n45), .Y(cnt[3]) );
  INVX1 U56 ( .A(n24), .Y(n36) );
  INVX1 U57 ( .A(n18), .Y(n37) );
  BUFX2 U58 ( .A(n42), .Y(cnt[6]) );
  BUFX2 U59 ( .A(n41), .Y(cnt[7]) );
  BUFX2 U60 ( .A(n20), .Y(n40) );
  INVX1 U61 ( .A(n23), .Y(n12) );
  INVX1 U62 ( .A(n17), .Y(n10) );
  INVX1 U63 ( .A(n16), .Y(n9) );
  INVX1 U64 ( .A(n21), .Y(n11) );
  INVX1 U65 ( .A(bp[0]), .Y(n14) );
endmodule

