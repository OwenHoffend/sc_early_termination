/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP3
// Date      : Mon Jun 10 13:52:31 2024
/////////////////////////////////////////////////////////////


module cape_ET ( clk, rst_n, .Bxs({\Bxs[7][7] , \Bxs[7][6] , \Bxs[7][5] , 
        \Bxs[7][4] , \Bxs[7][3] , \Bxs[7][2] , \Bxs[7][1] , \Bxs[7][0] , 
        \Bxs[6][7] , \Bxs[6][6] , \Bxs[6][5] , \Bxs[6][4] , \Bxs[6][3] , 
        \Bxs[6][2] , \Bxs[6][1] , \Bxs[6][0] , \Bxs[5][7] , \Bxs[5][6] , 
        \Bxs[5][5] , \Bxs[5][4] , \Bxs[5][3] , \Bxs[5][2] , \Bxs[5][1] , 
        \Bxs[5][0] , \Bxs[4][7] , \Bxs[4][6] , \Bxs[4][5] , \Bxs[4][4] , 
        \Bxs[4][3] , \Bxs[4][2] , \Bxs[4][1] , \Bxs[4][0] , \Bxs[3][7] , 
        \Bxs[3][6] , \Bxs[3][5] , \Bxs[3][4] , \Bxs[3][3] , \Bxs[3][2] , 
        \Bxs[3][1] , \Bxs[3][0] , \Bxs[2][7] , \Bxs[2][6] , \Bxs[2][5] , 
        \Bxs[2][4] , \Bxs[2][3] , \Bxs[2][2] , \Bxs[2][1] , \Bxs[2][0] , 
        \Bxs[1][7] , \Bxs[1][6] , \Bxs[1][5] , \Bxs[1][4] , \Bxs[1][3] , 
        \Bxs[1][2] , \Bxs[1][1] , \Bxs[1][0] , \Bxs[0][7] , \Bxs[0][6] , 
        \Bxs[0][5] , \Bxs[0][4] , \Bxs[0][3] , \Bxs[0][2] , \Bxs[0][1] , 
        \Bxs[0][0] }), trunc, done, Xs );
  input [7:0] trunc;
  output [7:0] Xs;
  input clk, rst_n, \Bxs[7][7] , \Bxs[7][6] , \Bxs[7][5] , \Bxs[7][4] ,
         \Bxs[7][3] , \Bxs[7][2] , \Bxs[7][1] , \Bxs[7][0] , \Bxs[6][7] ,
         \Bxs[6][6] , \Bxs[6][5] , \Bxs[6][4] , \Bxs[6][3] , \Bxs[6][2] ,
         \Bxs[6][1] , \Bxs[6][0] , \Bxs[5][7] , \Bxs[5][6] , \Bxs[5][5] ,
         \Bxs[5][4] , \Bxs[5][3] , \Bxs[5][2] , \Bxs[5][1] , \Bxs[5][0] ,
         \Bxs[4][7] , \Bxs[4][6] , \Bxs[4][5] , \Bxs[4][4] , \Bxs[4][3] ,
         \Bxs[4][2] , \Bxs[4][1] , \Bxs[4][0] , \Bxs[3][7] , \Bxs[3][6] ,
         \Bxs[3][5] , \Bxs[3][4] , \Bxs[3][3] , \Bxs[3][2] , \Bxs[3][1] ,
         \Bxs[3][0] , \Bxs[2][7] , \Bxs[2][6] , \Bxs[2][5] , \Bxs[2][4] ,
         \Bxs[2][3] , \Bxs[2][2] , \Bxs[2][1] , \Bxs[2][0] , \Bxs[1][7] ,
         \Bxs[1][6] , \Bxs[1][5] , \Bxs[1][4] , \Bxs[1][3] , \Bxs[1][2] ,
         \Bxs[1][1] , \Bxs[1][0] , \Bxs[0][7] , \Bxs[0][6] , \Bxs[0][5] ,
         \Bxs[0][4] , \Bxs[0][3] , \Bxs[0][2] , \Bxs[0][1] , \Bxs[0][0] ;
  output done;
  wire   next_done, \tzds[7][7] , \tzds[7][5] , \tzds[7][3] , \tzds[7][1] ,
         \tzds[6][7] , \tzds[6][5] , \tzds[6][3] , \tzds[6][1] , \tzds[5][7] ,
         \tzds[5][5] , \tzds[5][3] , \tzds[5][1] , \tzds[4][7] , \tzds[4][5] ,
         \tzds[4][3] , \tzds[4][1] , \tzds[3][7] , \tzds[3][5] , \tzds[3][3] ,
         \tzds[3][1] , \tzds[2][7] , \tzds[2][5] , \tzds[2][3] , \tzds[2][1] ,
         \tzds[1][7] , \tzds[1][5] , \tzds[1][3] , \tzds[1][1] , \tzds[0][7] ,
         \tzds[0][5] , \tzds[0][3] , \tzds[0][1] , \bpc1/n192 , \bpc1/n191 ,
         \bpc1/n190 , \bpc1/n189 , \bpc1/n188 , \bpc1/n187 , \bpc1/n186 ,
         \bpc1/n185 , \bpc1/n184 , \bpc1/n183 , \bpc1/n182 , \bpc1/n181 ,
         \bpc1/n180 , \bpc1/n179 , \bpc1/n178 , \bpc1/n177 , \bpc1/n176 ,
         \bpc1/n175 , \bpc1/n174 , \bpc1/n173 , \bpc1/n172 , \bpc1/n171 ,
         \bpc1/n170 , \bpc1/n169 , \bpc1/n168 , \bpc1/n167 , \bpc1/n166 ,
         \bpc1/n165 , \bpc1/n164 , \bpc1/n163 , \bpc1/n162 , \bpc1/n161 ,
         \bpc1/n160 , \bpc1/n159 , \bpc1/n158 , \bpc1/n157 , \bpc1/n156 ,
         \bpc1/n155 , \bpc1/n154 , \bpc1/n153 , \bpc1/n152 , \bpc1/n151 ,
         \bpc1/n150 , \bpc1/n149 , \bpc1/n148 , \bpc1/n147 , \bpc1/n146 ,
         \bpc1/n145 , \bpc1/n144 , \bpc1/n143 , \bpc1/n142 , \bpc1/n141 ,
         \bpc1/n140 , \bpc1/n139 , \bpc1/n138 , \bpc1/n137 , \bpc1/n136 ,
         \bpc1/n135 , \bpc1/n134 , \bpc1/n133 , \bpc1/n132 , \bpc1/n131 ,
         \bpc1/n130 , \bpc1/n129 , \bpc1/n128 , \bpc1/n127 , \bpc1/n126 ,
         \bpc1/n125 , \bpc1/n124 , \bpc1/n123 , \bpc1/n122 , \bpc1/n121 ,
         \bpc1/n120 , \bpc1/n119 , \bpc1/n118 , \bpc1/n117 , \bpc1/n116 ,
         \bpc1/n115 , \bpc1/n114 , \bpc1/n113 , \bpc1/n112 , \bpc1/n111 ,
         \bpc1/n110 , \bpc1/n109 , \bpc1/n108 , \bpc1/n107 , \bpc1/n106 ,
         \bpc1/n105 , \bpc1/n104 , \bpc1/n103 , \bpc1/n102 , \bpc1/n101 ,
         \bpc1/n100 , \bpc1/n99 , \tzd_gen[0]/n16 , \tzd_gen[0]/n15 ,
         \tzd_gen[0]/n14 , \tzd_gen[0]/n13 , n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624;
  wire   [63:0] cnts;
  wire   [63:0] \bpc1/next_cnt ;

  DFFSR done_reg ( .D(n121), .CLK(clk), .R(rst_n), .S(1'b1), .Q(done) );
  OAI21X1 \bpc1/U253  ( .A(n600), .B(n153), .C(\bpc1/n176 ), .Y(\bpc1/n144 )
         );
  NAND3X1 \bpc1/U252  ( .A(\bpc1/n145 ), .B(\bpc1/n192 ), .C(n403), .Y(
        \bpc1/n112 ) );
  NOR3X1 \bpc1/U251  ( .A(n191), .B(n138), .C(n272), .Y(\bpc1/n104 ) );
  NAND3X1 \bpc1/U250  ( .A(\bpc1/n103 ), .B(\bpc1/n190 ), .C(\bpc1/n104 ), .Y(
        \bpc1/n101 ) );
  NOR3X1 \bpc1/U249  ( .A(n161), .B(n127), .C(n241), .Y(\bpc1/n188 ) );
  NOR3X1 \bpc1/U247  ( .A(n306), .B(\tzds[3][1] ), .C(n387), .Y(
        \bpc1/next_cnt [11]) );
  NAND3X1 \bpc1/U246  ( .A(\bpc1/n186 ), .B(\bpc1/n187 ), .C(\bpc1/n188 ), .Y(
        \bpc1/n185 ) );
  NOR3X1 \bpc1/U243  ( .A(n271), .B(\tzds[5][1] ), .C(n160), .Y(
        \bpc1/next_cnt [13]) );
  NOR3X1 \bpc1/U241  ( .A(n160), .B(n137), .C(n271), .Y(\bpc1/n182 ) );
  NOR3X1 \bpc1/U239  ( .A(n307), .B(\tzds[7][1] ), .C(n326), .Y(
        \bpc1/next_cnt [15]) );
  NAND3X1 \bpc1/U238  ( .A(\bpc1/n180 ), .B(\bpc1/n181 ), .C(\bpc1/n182 ), .Y(
        \bpc1/n179 ) );
  NOR3X1 \bpc1/U235  ( .A(n240), .B(n401), .C(n159), .Y(\bpc1/next_cnt [17])
         );
  NOR3X1 \bpc1/U233  ( .A(n159), .B(n126), .C(n240), .Y(\bpc1/n175 ) );
  NOR3X1 \bpc1/U231  ( .A(n303), .B(n367), .C(n385), .Y(\bpc1/next_cnt [19])
         );
  NAND3X1 \bpc1/U229  ( .A(\bpc1/n173 ), .B(\bpc1/n174 ), .C(\bpc1/n175 ), .Y(
        \bpc1/n172 ) );
  NOR3X1 \bpc1/U226  ( .A(n202), .B(n340), .C(n158), .Y(\bpc1/next_cnt [21])
         );
  NOR3X1 \bpc1/U224  ( .A(n158), .B(n136), .C(n202), .Y(\bpc1/n169 ) );
  NOR3X1 \bpc1/U222  ( .A(n304), .B(n302), .C(n324), .Y(\bpc1/next_cnt [23])
         );
  NAND3X1 \bpc1/U221  ( .A(\bpc1/n167 ), .B(\bpc1/n168 ), .C(\bpc1/n169 ), .Y(
        \bpc1/n166 ) );
  NOR3X1 \bpc1/U218  ( .A(n239), .B(\tzds[1][3] ), .C(n190), .Y(
        \bpc1/next_cnt [25]) );
  NOR3X1 \bpc1/U216  ( .A(n190), .B(n125), .C(n239), .Y(\bpc1/n163 ) );
  NOR3X1 \bpc1/U214  ( .A(n300), .B(\tzds[3][3] ), .C(n382), .Y(
        \bpc1/next_cnt [27]) );
  NAND3X1 \bpc1/U213  ( .A(\bpc1/n161 ), .B(\bpc1/n162 ), .C(\bpc1/n163 ), .Y(
        \bpc1/n160 ) );
  NOR3X1 \bpc1/U210  ( .A(n270), .B(\tzds[5][3] ), .C(n189), .Y(
        \bpc1/next_cnt [29]) );
  NOR3X1 \bpc1/U207  ( .A(n189), .B(n135), .C(n270), .Y(\bpc1/n157 ) );
  NOR3X1 \bpc1/U205  ( .A(n301), .B(\tzds[7][3] ), .C(n321), .Y(
        \bpc1/next_cnt [31]) );
  NAND3X1 \bpc1/U204  ( .A(\bpc1/n155 ), .B(\bpc1/n156 ), .C(\bpc1/n157 ), .Y(
        \bpc1/n154 ) );
  NOR3X1 \bpc1/U201  ( .A(n238), .B(n397), .C(n140), .Y(\bpc1/next_cnt [33])
         );
  NOR3X1 \bpc1/U199  ( .A(n140), .B(n124), .C(n238), .Y(\bpc1/n151 ) );
  NOR3X1 \bpc1/U197  ( .A(n296), .B(n363), .C(n379), .Y(\bpc1/next_cnt [35])
         );
  NAND3X1 \bpc1/U196  ( .A(\bpc1/n149 ), .B(\bpc1/n150 ), .C(\bpc1/n151 ), .Y(
        \bpc1/n148 ) );
  NOR3X1 \bpc1/U193  ( .A(n201), .B(n336), .C(n157), .Y(\bpc1/next_cnt [37])
         );
  NOR3X1 \bpc1/U191  ( .A(n157), .B(n88), .C(n201), .Y(\bpc1/n143 ) );
  NOR3X1 \bpc1/U189  ( .A(n297), .B(n294), .C(n318), .Y(\bpc1/next_cnt [39])
         );
  NOR3X1 \bpc1/U188  ( .A(\bpc1/n144 ), .B(n608), .C(n389), .Y(
        \bpc1/next_cnt [3]) );
  NAND3X1 \bpc1/U187  ( .A(\bpc1/n141 ), .B(\bpc1/n142 ), .C(\bpc1/n143 ), .Y(
        \bpc1/n140 ) );
  NOR3X1 \bpc1/U184  ( .A(n2), .B(\tzds[1][5] ), .C(n188), .Y(
        \bpc1/next_cnt [41]) );
  NOR3X1 \bpc1/U182  ( .A(n188), .B(n87), .C(n2), .Y(\bpc1/n137 ) );
  NOR3X1 \bpc1/U180  ( .A(n292), .B(\tzds[3][5] ), .C(n376), .Y(
        \bpc1/next_cnt [43]) );
  NAND3X1 \bpc1/U179  ( .A(\bpc1/n135 ), .B(\bpc1/n136 ), .C(\bpc1/n137 ), .Y(
        \bpc1/n134 ) );
  NOR3X1 \bpc1/U176  ( .A(n269), .B(\tzds[5][5] ), .C(n156), .Y(
        \bpc1/next_cnt [45]) );
  NOR3X1 \bpc1/U174  ( .A(n156), .B(n134), .C(n269), .Y(\bpc1/n131 ) );
  NOR3X1 \bpc1/U172  ( .A(n293), .B(\tzds[7][5] ), .C(n315), .Y(
        \bpc1/next_cnt [47]) );
  NAND3X1 \bpc1/U171  ( .A(\bpc1/n129 ), .B(\bpc1/n130 ), .C(\bpc1/n131 ), .Y(
        \bpc1/n128 ) );
  NOR3X1 \bpc1/U168  ( .A(n237), .B(n394), .C(n155), .Y(\bpc1/next_cnt [49])
         );
  NOR3X1 \bpc1/U165  ( .A(n155), .B(n123), .C(n237), .Y(\bpc1/n125 ) );
  NOR3X1 \bpc1/U163  ( .A(n288), .B(n360), .C(n374), .Y(\bpc1/next_cnt [51])
         );
  NAND3X1 \bpc1/U162  ( .A(\bpc1/n123 ), .B(\bpc1/n124 ), .C(\bpc1/n125 ), .Y(
        \bpc1/n122 ) );
  NOR3X1 \bpc1/U159  ( .A(n200), .B(n333), .C(n154), .Y(\bpc1/next_cnt [53])
         );
  NOR3X1 \bpc1/U157  ( .A(n154), .B(n133), .C(n200), .Y(\bpc1/n119 ) );
  NOR3X1 \bpc1/U155  ( .A(n289), .B(n287), .C(n313), .Y(\bpc1/next_cnt [55])
         );
  NAND3X1 \bpc1/U154  ( .A(\bpc1/n117 ), .B(\bpc1/n118 ), .C(\bpc1/n119 ), .Y(
        \bpc1/n116 ) );
  NOR3X1 \bpc1/U151  ( .A(n236), .B(\tzds[1][7] ), .C(n187), .Y(
        \bpc1/next_cnt [57]) );
  NOR3X1 \bpc1/U149  ( .A(n187), .B(n122), .C(n236), .Y(\bpc1/n111 ) );
  NOR3X1 \bpc1/U147  ( .A(n285), .B(\tzds[3][7] ), .C(n371), .Y(
        \bpc1/next_cnt [59]) );
  NOR3X1 \bpc1/U146  ( .A(n272), .B(n616), .C(n191), .Y(\bpc1/next_cnt [5]) );
  NAND3X1 \bpc1/U145  ( .A(\bpc1/n109 ), .B(\bpc1/n110 ), .C(\bpc1/n111 ), .Y(
        \bpc1/n108 ) );
  NOR3X1 \bpc1/U142  ( .A(n268), .B(\tzds[5][7] ), .C(n225), .Y(
        \bpc1/next_cnt [61]) );
  NOR3X1 \bpc1/U140  ( .A(n225), .B(n141), .C(n268), .Y(\bpc1/n105 ) );
  NOR3X1 \bpc1/U138  ( .A(n286), .B(\tzds[7][7] ), .C(n310), .Y(
        \bpc1/next_cnt [63]) );
  NOR3X1 \bpc1/U136  ( .A(n342), .B(n624), .C(n328), .Y(\bpc1/next_cnt [7]) );
  NOR3X1 \bpc1/U134  ( .A(n241), .B(\tzds[1][1] ), .C(n161), .Y(
        \bpc1/next_cnt [9]) );
  OAI21X1 \bpc1/U133  ( .A(\tzds[7][7] ), .B(n245), .C(\bpc1/n100 ), .Y(
        \bpc1/n99 ) );
  DFFSR \bpc1/cnt_reg[63]  ( .D(\bpc1/next_cnt [63]), .CLK(clk), .R(rst_n), 
        .S(1'b1), .Q(cnts[63]) );
  DFFSR \bpc1/cnt_reg[62]  ( .D(n132), .CLK(clk), .R(rst_n), .S(1'b1), .Q(
        cnts[62]) );
  DFFSR \bpc1/cnt_reg[61]  ( .D(\bpc1/next_cnt [61]), .CLK(clk), .R(rst_n), 
        .S(1'b1), .Q(cnts[61]) );
  DFFSR \bpc1/cnt_reg[60]  ( .D(n129), .CLK(clk), .R(rst_n), .S(1'b1), .Q(
        cnts[60]) );
  DFFSR \bpc1/cnt_reg[59]  ( .D(\bpc1/next_cnt [59]), .CLK(clk), .R(rst_n), 
        .S(1'b1), .Q(cnts[59]) );
  DFFSR \bpc1/cnt_reg[58]  ( .D(n12), .CLK(clk), .R(rst_n), .S(1'b1), .Q(
        cnts[58]) );
  DFFSR \bpc1/cnt_reg[57]  ( .D(\bpc1/next_cnt [57]), .CLK(clk), .R(rst_n), 
        .S(1'b1), .Q(cnts[57]) );
  DFFSR \bpc1/cnt_reg[56]  ( .D(n111), .CLK(clk), .R(rst_n), .S(1'b1), .Q(
        cnts[56]) );
  DFFSR \bpc1/cnt_reg[55]  ( .D(\bpc1/next_cnt [55]), .CLK(clk), .R(rst_n), 
        .S(1'b1), .Q(cnts[55]) );
  DFFSR \bpc1/cnt_reg[54]  ( .D(n203), .CLK(clk), .R(rst_n), .S(1'b1), .Q(
        cnts[54]) );
  DFFSR \bpc1/cnt_reg[53]  ( .D(\bpc1/next_cnt [53]), .CLK(clk), .R(rst_n), 
        .S(1'b1), .Q(cnts[53]) );
  DFFSR \bpc1/cnt_reg[52]  ( .D(n112), .CLK(clk), .R(rst_n), .S(1'b1), .Q(
        cnts[52]) );
  DFFSR \bpc1/cnt_reg[51]  ( .D(\bpc1/next_cnt [51]), .CLK(clk), .R(rst_n), 
        .S(1'b1), .Q(cnts[51]) );
  DFFSR \bpc1/cnt_reg[50]  ( .D(n204), .CLK(clk), .R(rst_n), .S(1'b1), .Q(
        cnts[50]) );
  DFFSR \bpc1/cnt_reg[49]  ( .D(\bpc1/next_cnt [49]), .CLK(clk), .R(rst_n), 
        .S(1'b1), .Q(cnts[49]) );
  DFFSR \bpc1/cnt_reg[48]  ( .D(n163), .CLK(clk), .R(rst_n), .S(1'b1), .Q(
        cnts[48]) );
  DFFSR \bpc1/cnt_reg[47]  ( .D(\bpc1/next_cnt [47]), .CLK(clk), .R(rst_n), 
        .S(1'b1), .Q(cnts[47]) );
  DFFSR \bpc1/cnt_reg[46]  ( .D(n205), .CLK(clk), .R(rst_n), .S(1'b1), .Q(
        cnts[46]) );
  DFFSR \bpc1/cnt_reg[45]  ( .D(\bpc1/next_cnt [45]), .CLK(clk), .R(rst_n), 
        .S(1'b1), .Q(cnts[45]) );
  DFFSR \bpc1/cnt_reg[44]  ( .D(n119), .CLK(clk), .R(rst_n), .S(1'b1), .Q(
        cnts[44]) );
  DFFSR \bpc1/cnt_reg[43]  ( .D(\bpc1/next_cnt [43]), .CLK(clk), .R(rst_n), 
        .S(1'b1), .Q(cnts[43]) );
  DFFSR \bpc1/cnt_reg[42]  ( .D(n13), .CLK(clk), .R(rst_n), .S(1'b1), .Q(
        cnts[42]) );
  DFFSR \bpc1/cnt_reg[41]  ( .D(\bpc1/next_cnt [41]), .CLK(clk), .R(rst_n), 
        .S(1'b1), .Q(cnts[41]) );
  DFFSR \bpc1/cnt_reg[40]  ( .D(n14), .CLK(clk), .R(rst_n), .S(1'b1), .Q(
        cnts[40]) );
  DFFSR \bpc1/cnt_reg[39]  ( .D(\bpc1/next_cnt [39]), .CLK(clk), .R(rst_n), 
        .S(1'b1), .Q(cnts[39]) );
  DFFSR \bpc1/cnt_reg[38]  ( .D(n164), .CLK(clk), .R(rst_n), .S(1'b1), .Q(
        cnts[38]) );
  DFFSR \bpc1/cnt_reg[37]  ( .D(\bpc1/next_cnt [37]), .CLK(clk), .R(rst_n), 
        .S(1'b1), .Q(cnts[37]) );
  DFFSR \bpc1/cnt_reg[36]  ( .D(n130), .CLK(clk), .R(rst_n), .S(1'b1), .Q(
        cnts[36]) );
  DFFSR \bpc1/cnt_reg[35]  ( .D(\bpc1/next_cnt [35]), .CLK(clk), .R(n279), .S(
        1'b1), .Q(cnts[35]) );
  DFFSR \bpc1/cnt_reg[34]  ( .D(n165), .CLK(clk), .R(n279), .S(1'b1), .Q(
        cnts[34]) );
  DFFSR \bpc1/cnt_reg[33]  ( .D(\bpc1/next_cnt [33]), .CLK(clk), .R(n279), .S(
        1'b1), .Q(cnts[33]) );
  DFFSR \bpc1/cnt_reg[32]  ( .D(n113), .CLK(clk), .R(n279), .S(1'b1), .Q(
        cnts[32]) );
  DFFSR \bpc1/cnt_reg[31]  ( .D(\bpc1/next_cnt [31]), .CLK(clk), .R(n279), .S(
        1'b1), .Q(cnts[31]) );
  DFFSR \bpc1/cnt_reg[30]  ( .D(n206), .CLK(clk), .R(n279), .S(1'b1), .Q(
        cnts[30]) );
  DFFSR \bpc1/cnt_reg[29]  ( .D(\bpc1/next_cnt [29]), .CLK(clk), .R(n279), .S(
        1'b1), .Q(cnts[29]) );
  DFFSR \bpc1/cnt_reg[28]  ( .D(n114), .CLK(clk), .R(n279), .S(1'b1), .Q(
        cnts[28]) );
  DFFSR \bpc1/cnt_reg[27]  ( .D(\bpc1/next_cnt [27]), .CLK(clk), .R(n279), .S(
        1'b1), .Q(cnts[27]) );
  DFFSR \bpc1/cnt_reg[26]  ( .D(n166), .CLK(clk), .R(n279), .S(1'b1), .Q(
        cnts[26]) );
  DFFSR \bpc1/cnt_reg[25]  ( .D(\bpc1/next_cnt [25]), .CLK(clk), .R(n279), .S(
        1'b1), .Q(cnts[25]) );
  DFFSR \bpc1/cnt_reg[24]  ( .D(n115), .CLK(clk), .R(n279), .S(1'b1), .Q(
        cnts[24]) );
  DFFSR \bpc1/cnt_reg[23]  ( .D(\bpc1/next_cnt [23]), .CLK(clk), .R(n278), .S(
        1'b1), .Q(cnts[23]) );
  DFFSR \bpc1/cnt_reg[22]  ( .D(n207), .CLK(clk), .R(n278), .S(1'b1), .Q(
        cnts[22]) );
  DFFSR \bpc1/cnt_reg[21]  ( .D(\bpc1/next_cnt [21]), .CLK(clk), .R(n278), .S(
        1'b1), .Q(cnts[21]) );
  DFFSR \bpc1/cnt_reg[20]  ( .D(n116), .CLK(clk), .R(n278), .S(1'b1), .Q(
        cnts[20]) );
  DFFSR \bpc1/cnt_reg[19]  ( .D(\bpc1/next_cnt [19]), .CLK(clk), .R(n278), .S(
        1'b1), .Q(cnts[19]) );
  DFFSR \bpc1/cnt_reg[18]  ( .D(n208), .CLK(clk), .R(n278), .S(1'b1), .Q(
        cnts[18]) );
  DFFSR \bpc1/cnt_reg[17]  ( .D(\bpc1/next_cnt [17]), .CLK(clk), .R(n278), .S(
        1'b1), .Q(cnts[17]) );
  DFFSR \bpc1/cnt_reg[16]  ( .D(n167), .CLK(clk), .R(n278), .S(1'b1), .Q(
        cnts[16]) );
  DFFSR \bpc1/cnt_reg[15]  ( .D(\bpc1/next_cnt [15]), .CLK(clk), .R(n278), .S(
        1'b1), .Q(cnts[15]) );
  DFFSR \bpc1/cnt_reg[14]  ( .D(n209), .CLK(clk), .R(n278), .S(1'b1), .Q(
        cnts[14]) );
  DFFSR \bpc1/cnt_reg[13]  ( .D(\bpc1/next_cnt [13]), .CLK(clk), .R(n278), .S(
        1'b1), .Q(cnts[13]) );
  DFFSR \bpc1/cnt_reg[12]  ( .D(n168), .CLK(clk), .R(n278), .S(1'b1), .Q(
        cnts[12]) );
  DFFSR \bpc1/cnt_reg[11]  ( .D(\bpc1/next_cnt [11]), .CLK(clk), .R(n277), .S(
        1'b1), .Q(cnts[11]) );
  DFFSR \bpc1/cnt_reg[10]  ( .D(n169), .CLK(clk), .R(n277), .S(1'b1), .Q(
        cnts[10]) );
  DFFSR \bpc1/cnt_reg[9]  ( .D(\bpc1/next_cnt [9]), .CLK(clk), .R(n277), .S(
        1'b1), .Q(cnts[9]) );
  DFFSR \bpc1/cnt_reg[8]  ( .D(n117), .CLK(clk), .R(n277), .S(1'b1), .Q(
        cnts[8]) );
  DFFSR \bpc1/cnt_reg[7]  ( .D(\bpc1/next_cnt [7]), .CLK(clk), .R(n277), .S(
        1'b1), .Q(cnts[7]) );
  DFFSR \bpc1/cnt_reg[6]  ( .D(n11), .CLK(clk), .R(n277), .S(1'b1), .Q(cnts[6]) );
  DFFSR \bpc1/cnt_reg[5]  ( .D(\bpc1/next_cnt [5]), .CLK(clk), .R(n277), .S(
        1'b1), .Q(cnts[5]) );
  DFFSR \bpc1/cnt_reg[4]  ( .D(n120), .CLK(clk), .R(n277), .S(1'b1), .Q(
        cnts[4]) );
  DFFSR \bpc1/cnt_reg[3]  ( .D(\bpc1/next_cnt [3]), .CLK(clk), .R(n277), .S(
        1'b1), .Q(cnts[3]) );
  DFFSR \bpc1/cnt_reg[2]  ( .D(n131), .CLK(clk), .R(n277), .S(1'b1), .Q(
        cnts[2]) );
  DFFSR \bpc1/cnt_reg[1]  ( .D(n170), .CLK(clk), .R(n277), .S(1'b1), .Q(
        cnts[1]) );
  DFFSR \bpc1/cnt_reg[0]  ( .D(n246), .CLK(clk), .R(n277), .S(1'b1), .Q(
        cnts[0]) );
  OAI21X1 \tzd_gen[0]/U19  ( .A(n273), .B(n416), .C(n246), .Y(\tzds[0][1] ) );
  AOI21X1 \tzd_gen[0]/U18  ( .A(n419), .B(\Bxs[0][2] ), .C(\tzds[0][1] ), .Y(
        \tzd_gen[0]/n15 ) );
  OAI21X1 \tzd_gen[0]/U17  ( .A(n274), .B(n413), .C(n210), .Y(\tzds[0][3] ) );
  AOI21X1 \tzd_gen[0]/U16  ( .A(n418), .B(\Bxs[0][4] ), .C(\tzds[0][3] ), .Y(
        \tzd_gen[0]/n14 ) );
  OAI21X1 \tzd_gen[0]/U15  ( .A(n275), .B(n409), .C(n142), .Y(\tzds[0][5] ) );
  AOI21X1 \tzd_gen[0]/U14  ( .A(n417), .B(\Bxs[0][6] ), .C(\tzds[0][5] ), .Y(
        \tzd_gen[0]/n13 ) );
  OAI21X1 \tzd_gen[0]/U13  ( .A(n276), .B(n406), .C(n109), .Y(\tzds[0][7] ) );
  OAI21X1 \tzd_gen[7]/U19  ( .A(n273), .B(n305), .C(n139), .Y(\tzds[7][1] ) );
  AOI21X1 \tzd_gen[7]/U18  ( .A(n419), .B(\Bxs[7][2] ), .C(\tzds[7][1] ), .Y(
        n623) );
  OAI21X1 \tzd_gen[7]/U17  ( .A(n274), .B(n298), .C(n108), .Y(\tzds[7][3] ) );
  AOI21X1 \tzd_gen[7]/U16  ( .A(n418), .B(\Bxs[7][4] ), .C(\tzds[7][3] ), .Y(
        n622) );
  OAI21X1 \tzd_gen[7]/U15  ( .A(n275), .B(n290), .C(n107), .Y(\tzds[7][5] ) );
  AOI21X1 \tzd_gen[7]/U14  ( .A(n417), .B(\Bxs[7][6] ), .C(\tzds[7][5] ), .Y(
        n621) );
  OAI21X1 \tzd_gen[7]/U13  ( .A(n276), .B(n283), .C(n106), .Y(\tzds[7][7] ) );
  OAI21X1 \tzd_gen[6]/U19  ( .A(n273), .B(n327), .C(n172), .Y(\tzds[6][1] ) );
  AOI21X1 \tzd_gen[6]/U18  ( .A(n419), .B(\Bxs[6][2] ), .C(\tzds[6][1] ), .Y(
        n619) );
  OAI21X1 \tzd_gen[6]/U17  ( .A(n274), .B(n322), .C(n105), .Y(\tzds[6][3] ) );
  AOI21X1 \tzd_gen[6]/U16  ( .A(n418), .B(\Bxs[6][4] ), .C(\tzds[6][3] ), .Y(
        n618) );
  OAI21X1 \tzd_gen[6]/U15  ( .A(n275), .B(n316), .C(n104), .Y(\tzds[6][5] ) );
  AOI21X1 \tzd_gen[6]/U14  ( .A(n417), .B(\Bxs[6][6] ), .C(\tzds[6][5] ), .Y(
        n617) );
  OAI21X1 \tzd_gen[6]/U13  ( .A(n276), .B(n311), .C(n103), .Y(\tzds[6][7] ) );
  OAI21X1 \tzd_gen[5]/U19  ( .A(n273), .B(n341), .C(n143), .Y(\tzds[5][1] ) );
  AOI21X1 \tzd_gen[5]/U18  ( .A(n419), .B(\Bxs[5][2] ), .C(\tzds[5][1] ), .Y(
        n615) );
  OAI21X1 \tzd_gen[5]/U17  ( .A(n274), .B(n338), .C(n102), .Y(\tzds[5][3] ) );
  AOI21X1 \tzd_gen[5]/U16  ( .A(n418), .B(\Bxs[5][4] ), .C(\tzds[5][3] ), .Y(
        n614) );
  OAI21X1 \tzd_gen[5]/U15  ( .A(n275), .B(n334), .C(n101), .Y(\tzds[5][5] ) );
  AOI21X1 \tzd_gen[5]/U14  ( .A(n417), .B(\Bxs[5][6] ), .C(\tzds[5][5] ), .Y(
        n613) );
  OAI21X1 \tzd_gen[5]/U13  ( .A(n276), .B(n331), .C(n100), .Y(\tzds[5][7] ) );
  OAI21X1 \tzd_gen[4]/U19  ( .A(n273), .B(n355), .C(n118), .Y(\tzds[4][1] ) );
  AOI21X1 \tzd_gen[4]/U18  ( .A(n419), .B(\Bxs[4][2] ), .C(\tzds[4][1] ), .Y(
        n611) );
  OAI21X1 \tzd_gen[4]/U17  ( .A(n274), .B(n352), .C(n99), .Y(\tzds[4][3] ) );
  AOI21X1 \tzd_gen[4]/U16  ( .A(n418), .B(\Bxs[4][4] ), .C(\tzds[4][3] ), .Y(
        n610) );
  OAI21X1 \tzd_gen[4]/U15  ( .A(n275), .B(n348), .C(n98), .Y(\tzds[4][5] ) );
  AOI21X1 \tzd_gen[4]/U14  ( .A(n417), .B(\Bxs[4][6] ), .C(\tzds[4][5] ), .Y(
        n609) );
  OAI21X1 \tzd_gen[4]/U13  ( .A(n276), .B(n345), .C(n97), .Y(\tzds[4][7] ) );
  OAI21X1 \tzd_gen[3]/U19  ( .A(n273), .B(n368), .C(n110), .Y(\tzds[3][1] ) );
  AOI21X1 \tzd_gen[3]/U18  ( .A(n419), .B(\Bxs[3][2] ), .C(\tzds[3][1] ), .Y(
        n607) );
  OAI21X1 \tzd_gen[3]/U17  ( .A(n274), .B(n365), .C(n96), .Y(\tzds[3][3] ) );
  AOI21X1 \tzd_gen[3]/U16  ( .A(n418), .B(\Bxs[3][4] ), .C(\tzds[3][3] ), .Y(
        n606) );
  OAI21X1 \tzd_gen[3]/U15  ( .A(n275), .B(n361), .C(n95), .Y(\tzds[3][5] ) );
  AOI21X1 \tzd_gen[3]/U14  ( .A(n417), .B(\Bxs[3][6] ), .C(\tzds[3][5] ), .Y(
        n605) );
  OAI21X1 \tzd_gen[3]/U13  ( .A(n276), .B(n358), .C(n94), .Y(\tzds[3][7] ) );
  OAI21X1 \tzd_gen[2]/U19  ( .A(n273), .B(n388), .C(n128), .Y(\tzds[2][1] ) );
  AOI21X1 \tzd_gen[2]/U18  ( .A(n419), .B(\Bxs[2][2] ), .C(\tzds[2][1] ), .Y(
        n603) );
  OAI21X1 \tzd_gen[2]/U17  ( .A(n274), .B(n383), .C(n93), .Y(\tzds[2][3] ) );
  AOI21X1 \tzd_gen[2]/U16  ( .A(n418), .B(\Bxs[2][4] ), .C(\tzds[2][3] ), .Y(
        n602) );
  OAI21X1 \tzd_gen[2]/U15  ( .A(n275), .B(n377), .C(n92), .Y(\tzds[2][5] ) );
  AOI21X1 \tzd_gen[2]/U14  ( .A(n417), .B(\Bxs[2][6] ), .C(\tzds[2][5] ), .Y(
        n601) );
  OAI21X1 \tzd_gen[2]/U13  ( .A(n276), .B(n372), .C(n91), .Y(\tzds[2][7] ) );
  OAI21X1 \tzd_gen[1]/U19  ( .A(n273), .B(n402), .C(n211), .Y(\tzds[1][1] ) );
  AOI21X1 \tzd_gen[1]/U18  ( .A(n419), .B(\Bxs[1][2] ), .C(\tzds[1][1] ), .Y(
        n599) );
  OAI21X1 \tzd_gen[1]/U17  ( .A(n274), .B(n399), .C(n171), .Y(\tzds[1][3] ) );
  AOI21X1 \tzd_gen[1]/U16  ( .A(n418), .B(\Bxs[1][4] ), .C(\tzds[1][3] ), .Y(
        n598) );
  OAI21X1 \tzd_gen[1]/U15  ( .A(n275), .B(n395), .C(n90), .Y(\tzds[1][5] ) );
  AOI21X1 \tzd_gen[1]/U14  ( .A(n417), .B(\Bxs[1][6] ), .C(\tzds[1][5] ), .Y(
        n597) );
  OAI21X1 \tzd_gen[1]/U13  ( .A(n276), .B(n392), .C(n89), .Y(\tzds[1][7] ) );
  INVX1 U4 ( .A(trunc[0]), .Y(n420) );
  OR2X1 U5 ( .A(n294), .B(n232), .Y(\bpc1/n142 ) );
  AND2X1 U6 ( .A(\Bxs[1][0] ), .B(n420), .Y(n600) );
  AND2X1 U7 ( .A(\Bxs[2][0] ), .B(n420), .Y(n604) );
  AND2X1 U8 ( .A(\Bxs[3][0] ), .B(n420), .Y(n608) );
  OR2X1 U9 ( .A(n604), .B(n184), .Y(\bpc1/n145 ) );
  AND2X1 U10 ( .A(\Bxs[4][0] ), .B(n420), .Y(n612) );
  OR2X1 U11 ( .A(n624), .B(n186), .Y(\bpc1/n190 ) );
  OR2X1 U12 ( .A(\tzds[2][1] ), .B(n226), .Y(\bpc1/n186 ) );
  OR2X1 U13 ( .A(\tzds[7][1] ), .B(n248), .Y(\bpc1/n181 ) );
  OR2X1 U14 ( .A(n386), .B(n255), .Y(\bpc1/n173 ) );
  OR2X1 U15 ( .A(\tzds[0][3] ), .B(n145), .Y(\bpc1/n164 ) );
  OR2X1 U16 ( .A(n302), .B(n258), .Y(\bpc1/n168 ) );
  OR2X1 U17 ( .A(\tzds[2][3] ), .B(n212), .Y(\bpc1/n161 ) );
  OR2X1 U18 ( .A(\tzds[7][3] ), .B(n244), .Y(\bpc1/n156 ) );
  OR2X1 U19 ( .A(n380), .B(n231), .Y(\bpc1/n149 ) );
  OR2X1 U20 ( .A(\tzds[3][5] ), .B(n196), .Y(\bpc1/n136 ) );
  OR2X1 U21 ( .A(\tzds[6][5] ), .B(n249), .Y(\bpc1/n129 ) );
  OR2X1 U22 ( .A(n360), .B(n257), .Y(\bpc1/n124 ) );
  OR2X1 U23 ( .A(n314), .B(n252), .Y(\bpc1/n117 ) );
  OR2X1 U24 ( .A(\tzds[3][7] ), .B(n174), .Y(\bpc1/n110 ) );
  OR2X1 U25 ( .A(n409), .B(n251), .Y(n590) );
  OR2X1 U26 ( .A(n395), .B(n229), .Y(n571) );
  OR2X1 U27 ( .A(n377), .B(n195), .Y(n552) );
  OR2X1 U28 ( .A(n361), .B(n196), .Y(n533) );
  OR2X1 U29 ( .A(n348), .B(n198), .Y(n514) );
  OR2X1 U30 ( .A(n334), .B(n197), .Y(n495) );
  OR2X1 U31 ( .A(n316), .B(n249), .Y(n476) );
  OR2X1 U32 ( .A(n290), .B(n250), .Y(n457) );
  AND2X1 U33 ( .A(n10), .B(n412), .Y(n594) );
  AND2X1 U34 ( .A(n9), .B(n398), .Y(n575) );
  AND2X1 U35 ( .A(n8), .B(n381), .Y(n556) );
  AND2X1 U36 ( .A(n7), .B(n364), .Y(n537) );
  AND2X1 U37 ( .A(n6), .B(n351), .Y(n518) );
  AND2X1 U38 ( .A(n5), .B(n337), .Y(n499) );
  AND2X1 U39 ( .A(n4), .B(n320), .Y(n480) );
  AND2X1 U40 ( .A(n3), .B(n295), .Y(n461) );
  AND2X1 U41 ( .A(\Bxs[5][0] ), .B(n420), .Y(n616) );
  OR2X1 U42 ( .A(n612), .B(n151), .Y(\bpc1/n113 ) );
  OR2X1 U43 ( .A(n608), .B(n185), .Y(\bpc1/n192 ) );
  INVX1 U44 ( .A(\bpc1/n144 ), .Y(n403) );
  AND2X1 U45 ( .A(\Bxs[6][0] ), .B(n420), .Y(n620) );
  AND2X1 U46 ( .A(\Bxs[7][0] ), .B(n420), .Y(n624) );
  OR2X1 U47 ( .A(n620), .B(n183), .Y(\bpc1/n103 ) );
  OR2X1 U48 ( .A(\tzds[3][1] ), .B(n227), .Y(\bpc1/n187 ) );
  OR2X1 U49 ( .A(\tzds[6][1] ), .B(n247), .Y(\bpc1/n180 ) );
  OR2X1 U50 ( .A(n367), .B(n259), .Y(\bpc1/n174 ) );
  OR2X1 U51 ( .A(n325), .B(n254), .Y(\bpc1/n167 ) );
  OR2X1 U52 ( .A(\tzds[4][3] ), .B(n146), .Y(\bpc1/n158 ) );
  OR2X1 U53 ( .A(\tzds[3][3] ), .B(n213), .Y(\bpc1/n162 ) );
  OR2X1 U54 ( .A(\tzds[6][3] ), .B(n243), .Y(\bpc1/n155 ) );
  OR2X1 U55 ( .A(n363), .B(n233), .Y(\bpc1/n150 ) );
  OR2X1 U56 ( .A(n319), .B(n230), .Y(\bpc1/n141 ) );
  OR2X1 U57 ( .A(\tzds[2][5] ), .B(n195), .Y(\bpc1/n135 ) );
  OR2X1 U58 ( .A(\tzds[7][5] ), .B(n250), .Y(\bpc1/n130 ) );
  OR2X1 U59 ( .A(n375), .B(n253), .Y(\bpc1/n123 ) );
  OR2X1 U60 ( .A(\tzds[0][7] ), .B(n144), .Y(\bpc1/n114 ) );
  OR2X1 U61 ( .A(n287), .B(n256), .Y(\bpc1/n118 ) );
  OR2X1 U62 ( .A(\tzds[2][7] ), .B(n173), .Y(\bpc1/n109 ) );
  OR2X1 U63 ( .A(\tzds[4][7] ), .B(n175), .Y(\bpc1/n106 ) );
  OR2X1 U64 ( .A(\tzds[6][7] ), .B(n242), .Y(\bpc1/n100 ) );
  OR2X1 U65 ( .A(\bpc1/n144 ), .B(n604), .Y(\bpc1/next_cnt [2]) );
  OR2X1 U66 ( .A(n415), .B(n240), .Y(\bpc1/next_cnt [16]) );
  OR2X1 U67 ( .A(\tzds[0][5] ), .B(n2), .Y(\bpc1/next_cnt [40]) );
  OR2X1 U68 ( .A(\tzds[4][7] ), .B(n268), .Y(\bpc1/next_cnt [60]) );
  OR2X1 U69 ( .A(\tzd_gen[0]/n16 ), .B(n150), .Y(\bpc1/n176 ) );
  AND2X1 U70 ( .A(\Bxs[0][0] ), .B(n420), .Y(\tzd_gen[0]/n16 ) );
  BUFX2 U71 ( .A(\bpc1/n140 ), .Y(n2) );
  BUFX2 U72 ( .A(n455), .Y(n3) );
  BUFX2 U73 ( .A(n474), .Y(n4) );
  BUFX2 U74 ( .A(n493), .Y(n5) );
  BUFX2 U75 ( .A(n512), .Y(n6) );
  BUFX2 U76 ( .A(n531), .Y(n7) );
  BUFX2 U77 ( .A(n550), .Y(n8) );
  BUFX2 U78 ( .A(n569), .Y(n9) );
  BUFX2 U79 ( .A(n588), .Y(n10) );
  OR2X1 U80 ( .A(n342), .B(n620), .Y(\bpc1/next_cnt [6]) );
  INVX1 U81 ( .A(\bpc1/next_cnt [6]), .Y(n11) );
  OR2X1 U82 ( .A(n285), .B(\tzds[2][7] ), .Y(\bpc1/next_cnt [58]) );
  INVX1 U83 ( .A(\bpc1/next_cnt [58]), .Y(n12) );
  OR2X1 U84 ( .A(n292), .B(\tzds[2][5] ), .Y(\bpc1/next_cnt [42]) );
  INVX1 U85 ( .A(\bpc1/next_cnt [42]), .Y(n13) );
  INVX1 U86 ( .A(\bpc1/next_cnt [40]), .Y(n14) );
  BUFX2 U87 ( .A(n447), .Y(n15) );
  BUFX2 U88 ( .A(n450), .Y(n16) );
  BUFX2 U89 ( .A(n453), .Y(n17) );
  BUFX2 U90 ( .A(n466), .Y(n18) );
  BUFX2 U91 ( .A(n469), .Y(n19) );
  BUFX2 U92 ( .A(n472), .Y(n20) );
  BUFX2 U93 ( .A(n485), .Y(n21) );
  BUFX2 U94 ( .A(n488), .Y(n22) );
  BUFX2 U95 ( .A(n491), .Y(n23) );
  BUFX2 U96 ( .A(n504), .Y(n24) );
  BUFX2 U97 ( .A(n507), .Y(n25) );
  BUFX2 U98 ( .A(n510), .Y(n26) );
  BUFX2 U99 ( .A(n523), .Y(n27) );
  BUFX2 U100 ( .A(n526), .Y(n28) );
  BUFX2 U101 ( .A(n529), .Y(n29) );
  BUFX2 U102 ( .A(n542), .Y(n30) );
  BUFX2 U103 ( .A(n545), .Y(n31) );
  BUFX2 U104 ( .A(n548), .Y(n32) );
  BUFX2 U105 ( .A(n561), .Y(n33) );
  BUFX2 U106 ( .A(n564), .Y(n34) );
  BUFX2 U107 ( .A(n567), .Y(n35) );
  BUFX2 U108 ( .A(n580), .Y(n36) );
  BUFX2 U109 ( .A(n583), .Y(n37) );
  BUFX2 U110 ( .A(n586), .Y(n38) );
  BUFX2 U111 ( .A(n462), .Y(n39) );
  BUFX2 U112 ( .A(n481), .Y(n40) );
  BUFX2 U113 ( .A(n500), .Y(n41) );
  BUFX2 U114 ( .A(n519), .Y(n42) );
  BUFX2 U115 ( .A(n538), .Y(n43) );
  BUFX2 U116 ( .A(n557), .Y(n44) );
  BUFX2 U117 ( .A(n576), .Y(n45) );
  BUFX2 U118 ( .A(n595), .Y(n46) );
  BUFX2 U119 ( .A(n449), .Y(n47) );
  BUFX2 U120 ( .A(n468), .Y(n48) );
  BUFX2 U121 ( .A(n487), .Y(n49) );
  BUFX2 U122 ( .A(n506), .Y(n50) );
  BUFX2 U123 ( .A(n525), .Y(n51) );
  BUFX2 U124 ( .A(n544), .Y(n52) );
  BUFX2 U125 ( .A(n563), .Y(n53) );
  BUFX2 U126 ( .A(n582), .Y(n54) );
  AND2X1 U127 ( .A(n250), .B(n290), .Y(n448) );
  INVX1 U128 ( .A(n448), .Y(n55) );
  INVX1 U129 ( .A(n461), .Y(n56) );
  AND2X1 U130 ( .A(n249), .B(n316), .Y(n467) );
  INVX1 U131 ( .A(n467), .Y(n57) );
  INVX1 U132 ( .A(n480), .Y(n58) );
  AND2X1 U133 ( .A(n197), .B(n334), .Y(n486) );
  INVX1 U134 ( .A(n486), .Y(n59) );
  INVX1 U135 ( .A(n499), .Y(n60) );
  AND2X1 U136 ( .A(n198), .B(n348), .Y(n505) );
  INVX1 U137 ( .A(n505), .Y(n61) );
  INVX1 U138 ( .A(n518), .Y(n62) );
  AND2X1 U139 ( .A(n196), .B(n361), .Y(n524) );
  INVX1 U140 ( .A(n524), .Y(n63) );
  INVX1 U141 ( .A(n537), .Y(n64) );
  AND2X1 U142 ( .A(n195), .B(n377), .Y(n543) );
  INVX1 U143 ( .A(n543), .Y(n65) );
  INVX1 U144 ( .A(n556), .Y(n66) );
  AND2X1 U145 ( .A(n229), .B(n395), .Y(n562) );
  INVX1 U146 ( .A(n562), .Y(n67) );
  INVX1 U147 ( .A(n575), .Y(n68) );
  AND2X1 U148 ( .A(n251), .B(n409), .Y(n581) );
  INVX1 U149 ( .A(n581), .Y(n69) );
  INVX1 U150 ( .A(n594), .Y(n70) );
  BUFX2 U151 ( .A(n452), .Y(n71) );
  BUFX2 U152 ( .A(n471), .Y(n72) );
  BUFX2 U153 ( .A(n490), .Y(n73) );
  BUFX2 U154 ( .A(n509), .Y(n74) );
  BUFX2 U155 ( .A(n528), .Y(n75) );
  BUFX2 U156 ( .A(n547), .Y(n76) );
  BUFX2 U157 ( .A(n566), .Y(n77) );
  BUFX2 U158 ( .A(n585), .Y(n78) );
  BUFX2 U159 ( .A(n460), .Y(n79) );
  BUFX2 U160 ( .A(n479), .Y(n80) );
  BUFX2 U161 ( .A(n498), .Y(n81) );
  BUFX2 U162 ( .A(n517), .Y(n82) );
  BUFX2 U163 ( .A(n536), .Y(n83) );
  BUFX2 U164 ( .A(n555), .Y(n84) );
  BUFX2 U165 ( .A(n574), .Y(n85) );
  BUFX2 U166 ( .A(n593), .Y(n86) );
  OR2X1 U167 ( .A(\tzds[1][5] ), .B(n229), .Y(\bpc1/n139 ) );
  INVX1 U168 ( .A(\bpc1/n139 ), .Y(n87) );
  OR2X1 U169 ( .A(n336), .B(n234), .Y(\bpc1/n147 ) );
  INVX1 U170 ( .A(\bpc1/n147 ), .Y(n88) );
  BUFX2 U171 ( .A(n597), .Y(n89) );
  BUFX2 U172 ( .A(n598), .Y(n90) );
  BUFX2 U173 ( .A(n601), .Y(n91) );
  BUFX2 U174 ( .A(n602), .Y(n92) );
  BUFX2 U175 ( .A(n603), .Y(n93) );
  BUFX2 U176 ( .A(n605), .Y(n94) );
  BUFX2 U177 ( .A(n606), .Y(n95) );
  BUFX2 U178 ( .A(n607), .Y(n96) );
  BUFX2 U179 ( .A(n609), .Y(n97) );
  BUFX2 U180 ( .A(n610), .Y(n98) );
  BUFX2 U181 ( .A(n611), .Y(n99) );
  BUFX2 U182 ( .A(n613), .Y(n100) );
  BUFX2 U183 ( .A(n614), .Y(n101) );
  BUFX2 U184 ( .A(n615), .Y(n102) );
  BUFX2 U185 ( .A(n617), .Y(n103) );
  BUFX2 U186 ( .A(n618), .Y(n104) );
  BUFX2 U187 ( .A(n619), .Y(n105) );
  BUFX2 U188 ( .A(n621), .Y(n106) );
  BUFX2 U189 ( .A(n622), .Y(n107) );
  BUFX2 U190 ( .A(n623), .Y(n108) );
  BUFX2 U191 ( .A(\tzd_gen[0]/n13 ), .Y(n109) );
  INVX1 U192 ( .A(n608), .Y(n110) );
  OR2X1 U193 ( .A(\tzds[0][7] ), .B(n236), .Y(\bpc1/next_cnt [56]) );
  INVX1 U194 ( .A(\bpc1/next_cnt [56]), .Y(n111) );
  OR2X1 U195 ( .A(n347), .B(n200), .Y(\bpc1/next_cnt [52]) );
  INVX1 U196 ( .A(\bpc1/next_cnt [52]), .Y(n112) );
  OR2X1 U197 ( .A(n411), .B(n238), .Y(\bpc1/next_cnt [32]) );
  INVX1 U198 ( .A(\bpc1/next_cnt [32]), .Y(n113) );
  OR2X1 U199 ( .A(\tzds[4][3] ), .B(n270), .Y(\bpc1/next_cnt [28]) );
  INVX1 U200 ( .A(\bpc1/next_cnt [28]), .Y(n114) );
  OR2X1 U201 ( .A(\tzds[0][3] ), .B(n239), .Y(\bpc1/next_cnt [24]) );
  INVX1 U202 ( .A(\bpc1/next_cnt [24]), .Y(n115) );
  OR2X1 U203 ( .A(n354), .B(n202), .Y(\bpc1/next_cnt [20]) );
  INVX1 U204 ( .A(\bpc1/next_cnt [20]), .Y(n116) );
  OR2X1 U205 ( .A(\tzds[0][1] ), .B(n241), .Y(\bpc1/next_cnt [8]) );
  INVX1 U206 ( .A(\bpc1/next_cnt [8]), .Y(n117) );
  INVX1 U207 ( .A(n612), .Y(n118) );
  OR2X1 U208 ( .A(\tzds[4][5] ), .B(n269), .Y(\bpc1/next_cnt [44]) );
  INVX1 U209 ( .A(\bpc1/next_cnt [44]), .Y(n119) );
  OR2X1 U210 ( .A(n612), .B(n272), .Y(\bpc1/next_cnt [4]) );
  INVX1 U211 ( .A(\bpc1/next_cnt [4]), .Y(n120) );
  OR2X1 U212 ( .A(n286), .B(\bpc1/n99 ), .Y(next_done) );
  INVX1 U213 ( .A(next_done), .Y(n121) );
  OR2X1 U214 ( .A(\tzds[1][7] ), .B(n147), .Y(\bpc1/n115 ) );
  INVX1 U215 ( .A(\bpc1/n115 ), .Y(n122) );
  OR2X1 U216 ( .A(n394), .B(n261), .Y(\bpc1/n127 ) );
  INVX1 U217 ( .A(\bpc1/n127 ), .Y(n123) );
  OR2X1 U218 ( .A(n397), .B(n162), .Y(\bpc1/n153 ) );
  INVX1 U219 ( .A(\bpc1/n153 ), .Y(n124) );
  OR2X1 U220 ( .A(\tzds[1][3] ), .B(n149), .Y(\bpc1/n165 ) );
  INVX1 U221 ( .A(\bpc1/n165 ), .Y(n125) );
  OR2X1 U222 ( .A(n401), .B(n263), .Y(\bpc1/n178 ) );
  INVX1 U223 ( .A(\bpc1/n178 ), .Y(n126) );
  OR2X1 U224 ( .A(\tzds[1][1] ), .B(n193), .Y(\bpc1/n189 ) );
  INVX1 U225 ( .A(\bpc1/n189 ), .Y(n127) );
  INVX1 U226 ( .A(n604), .Y(n128) );
  INVX1 U227 ( .A(\bpc1/next_cnt [60]), .Y(n129) );
  OR2X1 U228 ( .A(n350), .B(n201), .Y(\bpc1/next_cnt [36]) );
  INVX1 U229 ( .A(\bpc1/next_cnt [36]), .Y(n130) );
  INVX1 U230 ( .A(\bpc1/next_cnt [2]), .Y(n131) );
  OR2X1 U231 ( .A(n286), .B(\tzds[6][7] ), .Y(\bpc1/next_cnt [62]) );
  INVX1 U232 ( .A(\bpc1/next_cnt [62]), .Y(n132) );
  OR2X1 U233 ( .A(n333), .B(n260), .Y(\bpc1/n121 ) );
  INVX1 U234 ( .A(\bpc1/n121 ), .Y(n133) );
  OR2X1 U235 ( .A(\tzds[5][5] ), .B(n197), .Y(\bpc1/n133 ) );
  INVX1 U236 ( .A(\bpc1/n133 ), .Y(n134) );
  OR2X1 U237 ( .A(\tzds[5][3] ), .B(n148), .Y(\bpc1/n159 ) );
  INVX1 U238 ( .A(\bpc1/n159 ), .Y(n135) );
  OR2X1 U239 ( .A(n340), .B(n262), .Y(\bpc1/n171 ) );
  INVX1 U240 ( .A(\bpc1/n171 ), .Y(n136) );
  OR2X1 U241 ( .A(\tzds[5][1] ), .B(n192), .Y(\bpc1/n184 ) );
  INVX1 U242 ( .A(\bpc1/n184 ), .Y(n137) );
  OR2X1 U243 ( .A(n616), .B(n152), .Y(\bpc1/n191 ) );
  INVX1 U244 ( .A(\bpc1/n191 ), .Y(n138) );
  INVX1 U245 ( .A(n624), .Y(n139) );
  OR2X1 U246 ( .A(n411), .B(n199), .Y(\bpc1/n152 ) );
  INVX1 U247 ( .A(\bpc1/n152 ), .Y(n140) );
  OR2X1 U248 ( .A(\tzds[5][7] ), .B(n176), .Y(\bpc1/n107 ) );
  INVX1 U249 ( .A(\bpc1/n107 ), .Y(n141) );
  BUFX2 U250 ( .A(\tzd_gen[0]/n14 ), .Y(n142) );
  INVX1 U251 ( .A(n616), .Y(n143) );
  BUFX2 U252 ( .A(cnts[56]), .Y(n144) );
  BUFX2 U253 ( .A(cnts[24]), .Y(n145) );
  BUFX2 U254 ( .A(cnts[28]), .Y(n146) );
  BUFX2 U255 ( .A(cnts[57]), .Y(n147) );
  BUFX2 U256 ( .A(cnts[29]), .Y(n148) );
  BUFX2 U257 ( .A(cnts[25]), .Y(n149) );
  BUFX2 U258 ( .A(cnts[0]), .Y(n150) );
  BUFX2 U259 ( .A(cnts[4]), .Y(n151) );
  BUFX2 U260 ( .A(cnts[5]), .Y(n152) );
  BUFX2 U261 ( .A(cnts[1]), .Y(n153) );
  OR2X1 U262 ( .A(n347), .B(n265), .Y(\bpc1/n120 ) );
  INVX1 U263 ( .A(\bpc1/n120 ), .Y(n154) );
  OR2X1 U264 ( .A(n408), .B(n266), .Y(\bpc1/n126 ) );
  INVX1 U265 ( .A(\bpc1/n126 ), .Y(n155) );
  OR2X1 U266 ( .A(\tzds[4][5] ), .B(n198), .Y(\bpc1/n132 ) );
  INVX1 U267 ( .A(\bpc1/n132 ), .Y(n156) );
  OR2X1 U268 ( .A(n350), .B(n235), .Y(\bpc1/n146 ) );
  INVX1 U269 ( .A(\bpc1/n146 ), .Y(n157) );
  OR2X1 U270 ( .A(n354), .B(n267), .Y(\bpc1/n170 ) );
  INVX1 U271 ( .A(\bpc1/n170 ), .Y(n158) );
  OR2X1 U272 ( .A(n415), .B(n264), .Y(\bpc1/n177 ) );
  INVX1 U273 ( .A(\bpc1/n177 ), .Y(n159) );
  OR2X1 U274 ( .A(\tzds[4][1] ), .B(n228), .Y(\bpc1/n183 ) );
  INVX1 U275 ( .A(\bpc1/n183 ), .Y(n160) );
  OR2X1 U276 ( .A(\tzds[0][1] ), .B(n194), .Y(\bpc1/n102 ) );
  INVX1 U277 ( .A(\bpc1/n102 ), .Y(n161) );
  BUFX2 U278 ( .A(cnts[33]), .Y(n162) );
  OR2X1 U279 ( .A(n408), .B(n237), .Y(\bpc1/next_cnt [48]) );
  INVX1 U280 ( .A(\bpc1/next_cnt [48]), .Y(n163) );
  OR2X1 U281 ( .A(n297), .B(n319), .Y(\bpc1/next_cnt [38]) );
  INVX1 U282 ( .A(\bpc1/next_cnt [38]), .Y(n164) );
  OR2X1 U283 ( .A(n296), .B(n380), .Y(\bpc1/next_cnt [34]) );
  INVX1 U284 ( .A(\bpc1/next_cnt [34]), .Y(n165) );
  OR2X1 U285 ( .A(n300), .B(\tzds[2][3] ), .Y(\bpc1/next_cnt [26]) );
  INVX1 U286 ( .A(\bpc1/next_cnt [26]), .Y(n166) );
  INVX1 U287 ( .A(\bpc1/next_cnt [16]), .Y(n167) );
  OR2X1 U288 ( .A(\tzds[4][1] ), .B(n271), .Y(\bpc1/next_cnt [12]) );
  INVX1 U289 ( .A(\bpc1/next_cnt [12]), .Y(n168) );
  OR2X1 U290 ( .A(n306), .B(\tzds[2][1] ), .Y(\bpc1/next_cnt [10]) );
  INVX1 U291 ( .A(\bpc1/next_cnt [10]), .Y(n169) );
  OR2X1 U292 ( .A(n600), .B(n214), .Y(\bpc1/next_cnt [1]) );
  INVX1 U293 ( .A(\bpc1/next_cnt [1]), .Y(n170) );
  BUFX2 U294 ( .A(n599), .Y(n171) );
  INVX1 U295 ( .A(n620), .Y(n172) );
  BUFX2 U296 ( .A(cnts[58]), .Y(n173) );
  BUFX2 U297 ( .A(cnts[59]), .Y(n174) );
  BUFX2 U298 ( .A(cnts[60]), .Y(n175) );
  BUFX2 U299 ( .A(cnts[61]), .Y(n176) );
  AND2X1 U300 ( .A(\Bxs[7][3] ), .B(n429), .Y(n456) );
  INVX1 U301 ( .A(n456), .Y(n177) );
  AND2X1 U302 ( .A(\Bxs[6][3] ), .B(n430), .Y(n475) );
  INVX1 U303 ( .A(n475), .Y(n178) );
  AND2X1 U304 ( .A(\Bxs[5][3] ), .B(n431), .Y(n494) );
  INVX1 U305 ( .A(n494), .Y(n179) );
  AND2X1 U306 ( .A(\Bxs[4][3] ), .B(n432), .Y(n513) );
  INVX1 U307 ( .A(n513), .Y(n180) );
  AND2X1 U308 ( .A(\Bxs[3][3] ), .B(n433), .Y(n532) );
  INVX1 U309 ( .A(n532), .Y(n181) );
  AND2X1 U310 ( .A(\Bxs[2][3] ), .B(n434), .Y(n551) );
  INVX1 U311 ( .A(n551), .Y(n182) );
  BUFX2 U312 ( .A(cnts[6]), .Y(n183) );
  BUFX2 U313 ( .A(cnts[2]), .Y(n184) );
  BUFX2 U314 ( .A(cnts[3]), .Y(n185) );
  BUFX2 U315 ( .A(cnts[7]), .Y(n186) );
  INVX1 U316 ( .A(\bpc1/n114 ), .Y(n187) );
  OR2X1 U317 ( .A(\tzds[0][5] ), .B(n251), .Y(\bpc1/n138 ) );
  INVX1 U318 ( .A(\bpc1/n138 ), .Y(n188) );
  INVX1 U319 ( .A(\bpc1/n158 ), .Y(n189) );
  INVX1 U320 ( .A(\bpc1/n164 ), .Y(n190) );
  INVX1 U321 ( .A(\bpc1/n113 ), .Y(n191) );
  BUFX2 U322 ( .A(cnts[13]), .Y(n192) );
  BUFX2 U323 ( .A(cnts[9]), .Y(n193) );
  BUFX2 U324 ( .A(cnts[8]), .Y(n194) );
  BUFX2 U325 ( .A(cnts[42]), .Y(n195) );
  BUFX2 U326 ( .A(cnts[43]), .Y(n196) );
  BUFX2 U327 ( .A(cnts[45]), .Y(n197) );
  BUFX2 U328 ( .A(cnts[44]), .Y(n198) );
  BUFX2 U329 ( .A(cnts[32]), .Y(n199) );
  BUFX2 U330 ( .A(\bpc1/n122 ), .Y(n200) );
  BUFX2 U331 ( .A(\bpc1/n148 ), .Y(n201) );
  BUFX2 U332 ( .A(\bpc1/n172 ), .Y(n202) );
  OR2X1 U333 ( .A(n289), .B(n314), .Y(\bpc1/next_cnt [54]) );
  INVX1 U334 ( .A(\bpc1/next_cnt [54]), .Y(n203) );
  OR2X1 U335 ( .A(n288), .B(n375), .Y(\bpc1/next_cnt [50]) );
  INVX1 U336 ( .A(\bpc1/next_cnt [50]), .Y(n204) );
  OR2X1 U337 ( .A(n293), .B(\tzds[6][5] ), .Y(\bpc1/next_cnt [46]) );
  INVX1 U338 ( .A(\bpc1/next_cnt [46]), .Y(n205) );
  OR2X1 U339 ( .A(n301), .B(\tzds[6][3] ), .Y(\bpc1/next_cnt [30]) );
  INVX1 U340 ( .A(\bpc1/next_cnt [30]), .Y(n206) );
  OR2X1 U341 ( .A(n304), .B(n325), .Y(\bpc1/next_cnt [22]) );
  INVX1 U342 ( .A(\bpc1/next_cnt [22]), .Y(n207) );
  OR2X1 U343 ( .A(n303), .B(n386), .Y(\bpc1/next_cnt [18]) );
  INVX1 U344 ( .A(\bpc1/next_cnt [18]), .Y(n208) );
  OR2X1 U345 ( .A(n307), .B(\tzds[6][1] ), .Y(\bpc1/next_cnt [14]) );
  INVX1 U346 ( .A(\bpc1/next_cnt [14]), .Y(n209) );
  BUFX2 U347 ( .A(\tzd_gen[0]/n15 ), .Y(n210) );
  INVX1 U348 ( .A(n600), .Y(n211) );
  BUFX2 U349 ( .A(cnts[26]), .Y(n212) );
  BUFX2 U350 ( .A(cnts[27]), .Y(n213) );
  INVX1 U351 ( .A(\bpc1/n176 ), .Y(n214) );
  AND2X1 U352 ( .A(\Bxs[7][7] ), .B(n421), .Y(n446) );
  INVX1 U353 ( .A(n446), .Y(n215) );
  AND2X1 U354 ( .A(\Bxs[6][7] ), .B(n422), .Y(n465) );
  INVX1 U355 ( .A(n465), .Y(n216) );
  AND2X1 U356 ( .A(\Bxs[5][7] ), .B(n423), .Y(n484) );
  INVX1 U357 ( .A(n484), .Y(n217) );
  AND2X1 U358 ( .A(\Bxs[4][7] ), .B(n424), .Y(n503) );
  INVX1 U359 ( .A(n503), .Y(n218) );
  AND2X1 U360 ( .A(\Bxs[3][7] ), .B(n425), .Y(n522) );
  INVX1 U361 ( .A(n522), .Y(n219) );
  AND2X1 U362 ( .A(\Bxs[2][7] ), .B(n426), .Y(n541) );
  INVX1 U363 ( .A(n541), .Y(n220) );
  AND2X1 U364 ( .A(\Bxs[1][7] ), .B(n427), .Y(n560) );
  INVX1 U365 ( .A(n560), .Y(n221) );
  AND2X1 U366 ( .A(\Bxs[0][7] ), .B(n428), .Y(n579) );
  INVX1 U367 ( .A(n579), .Y(n222) );
  AND2X1 U368 ( .A(\Bxs[0][3] ), .B(n436), .Y(n589) );
  INVX1 U369 ( .A(n589), .Y(n223) );
  AND2X1 U370 ( .A(\Bxs[1][3] ), .B(n435), .Y(n570) );
  INVX1 U371 ( .A(n570), .Y(n224) );
  INVX1 U372 ( .A(\bpc1/n106 ), .Y(n225) );
  BUFX2 U373 ( .A(cnts[10]), .Y(n226) );
  BUFX2 U374 ( .A(cnts[11]), .Y(n227) );
  BUFX2 U375 ( .A(cnts[12]), .Y(n228) );
  BUFX2 U376 ( .A(cnts[41]), .Y(n229) );
  BUFX2 U377 ( .A(cnts[38]), .Y(n230) );
  BUFX2 U378 ( .A(cnts[34]), .Y(n231) );
  BUFX2 U379 ( .A(cnts[39]), .Y(n232) );
  BUFX2 U380 ( .A(cnts[35]), .Y(n233) );
  BUFX2 U381 ( .A(cnts[37]), .Y(n234) );
  BUFX2 U382 ( .A(cnts[36]), .Y(n235) );
  BUFX2 U383 ( .A(\bpc1/n116 ), .Y(n236) );
  BUFX2 U384 ( .A(\bpc1/n128 ), .Y(n237) );
  BUFX2 U385 ( .A(\bpc1/n154 ), .Y(n238) );
  BUFX2 U386 ( .A(\bpc1/n166 ), .Y(n239) );
  BUFX2 U387 ( .A(\bpc1/n179 ), .Y(n240) );
  BUFX2 U388 ( .A(\bpc1/n101 ), .Y(n241) );
  BUFX2 U389 ( .A(cnts[62]), .Y(n242) );
  BUFX2 U390 ( .A(cnts[30]), .Y(n243) );
  BUFX2 U391 ( .A(cnts[31]), .Y(n244) );
  BUFX2 U392 ( .A(cnts[63]), .Y(n245) );
  INVX1 U393 ( .A(\tzd_gen[0]/n16 ), .Y(n246) );
  BUFX2 U394 ( .A(cnts[14]), .Y(n247) );
  BUFX2 U395 ( .A(cnts[15]), .Y(n248) );
  BUFX2 U396 ( .A(cnts[46]), .Y(n249) );
  BUFX2 U397 ( .A(cnts[47]), .Y(n250) );
  BUFX2 U398 ( .A(cnts[40]), .Y(n251) );
  BUFX2 U399 ( .A(cnts[54]), .Y(n252) );
  BUFX2 U400 ( .A(cnts[50]), .Y(n253) );
  BUFX2 U401 ( .A(cnts[22]), .Y(n254) );
  BUFX2 U402 ( .A(cnts[18]), .Y(n255) );
  BUFX2 U403 ( .A(cnts[55]), .Y(n256) );
  BUFX2 U404 ( .A(cnts[51]), .Y(n257) );
  BUFX2 U405 ( .A(cnts[23]), .Y(n258) );
  BUFX2 U406 ( .A(cnts[19]), .Y(n259) );
  BUFX2 U407 ( .A(cnts[53]), .Y(n260) );
  BUFX2 U408 ( .A(cnts[49]), .Y(n261) );
  BUFX2 U409 ( .A(cnts[21]), .Y(n262) );
  BUFX2 U410 ( .A(cnts[17]), .Y(n263) );
  BUFX2 U411 ( .A(cnts[16]), .Y(n264) );
  BUFX2 U412 ( .A(cnts[52]), .Y(n265) );
  BUFX2 U413 ( .A(cnts[48]), .Y(n266) );
  BUFX2 U414 ( .A(cnts[20]), .Y(n267) );
  BUFX2 U415 ( .A(\bpc1/n108 ), .Y(n268) );
  BUFX2 U416 ( .A(\bpc1/n134 ), .Y(n269) );
  BUFX2 U417 ( .A(\bpc1/n160 ), .Y(n270) );
  BUFX2 U418 ( .A(\bpc1/n185 ), .Y(n271) );
  BUFX2 U419 ( .A(\bpc1/n112 ), .Y(n272) );
  INVX1 U420 ( .A(n280), .Y(n277) );
  INVX1 U421 ( .A(n280), .Y(n278) );
  INVX1 U422 ( .A(n280), .Y(n279) );
  INVX1 U423 ( .A(\bpc1/n100 ), .Y(n310) );
  INVX1 U424 ( .A(\bpc1/n109 ), .Y(n371) );
  INVX1 U425 ( .A(\bpc1/n111 ), .Y(n285) );
  INVX1 U426 ( .A(\bpc1/n117 ), .Y(n313) );
  INVX1 U427 ( .A(\bpc1/n119 ), .Y(n289) );
  INVX1 U428 ( .A(\bpc1/n123 ), .Y(n374) );
  INVX1 U429 ( .A(\bpc1/n125 ), .Y(n288) );
  INVX1 U430 ( .A(n210), .Y(n415) );
  INVX1 U431 ( .A(n171), .Y(n401) );
  INVX1 U432 ( .A(\bpc1/n129 ), .Y(n315) );
  INVX1 U433 ( .A(\bpc1/n131 ), .Y(n293) );
  INVX1 U434 ( .A(n93), .Y(n386) );
  INVX1 U435 ( .A(n96), .Y(n367) );
  INVX1 U436 ( .A(n99), .Y(n354) );
  INVX1 U437 ( .A(n102), .Y(n340) );
  INVX1 U438 ( .A(\bpc1/n135 ), .Y(n376) );
  INVX1 U439 ( .A(\bpc1/n137 ), .Y(n292) );
  INVX1 U440 ( .A(n105), .Y(n325) );
  INVX1 U441 ( .A(n108), .Y(n302) );
  INVX1 U442 ( .A(\bpc1/n141 ), .Y(n318) );
  INVX1 U443 ( .A(\bpc1/n143 ), .Y(n297) );
  INVX1 U444 ( .A(\bpc1/n149 ), .Y(n379) );
  INVX1 U445 ( .A(\bpc1/n151 ), .Y(n296) );
  INVX1 U446 ( .A(n142), .Y(n411) );
  INVX1 U447 ( .A(n90), .Y(n397) );
  INVX1 U448 ( .A(n92), .Y(n380) );
  INVX1 U449 ( .A(n95), .Y(n363) );
  INVX1 U450 ( .A(\bpc1/n155 ), .Y(n321) );
  INVX1 U451 ( .A(\bpc1/n157 ), .Y(n301) );
  INVX1 U452 ( .A(n98), .Y(n350) );
  INVX1 U453 ( .A(n101), .Y(n336) );
  INVX1 U454 ( .A(n104), .Y(n319) );
  INVX1 U455 ( .A(n107), .Y(n294) );
  INVX1 U456 ( .A(\bpc1/n161 ), .Y(n382) );
  INVX1 U457 ( .A(\bpc1/n163 ), .Y(n300) );
  INVX1 U458 ( .A(\bpc1/n167 ), .Y(n324) );
  INVX1 U459 ( .A(\bpc1/n169 ), .Y(n304) );
  INVX1 U460 ( .A(n109), .Y(n408) );
  INVX1 U461 ( .A(n89), .Y(n394) );
  INVX1 U462 ( .A(n94), .Y(n360) );
  INVX1 U463 ( .A(n91), .Y(n375) );
  INVX1 U464 ( .A(n97), .Y(n347) );
  INVX1 U465 ( .A(n100), .Y(n333) );
  INVX1 U466 ( .A(\bpc1/n173 ), .Y(n385) );
  INVX1 U467 ( .A(\bpc1/n175 ), .Y(n303) );
  INVX1 U468 ( .A(n106), .Y(n287) );
  INVX1 U469 ( .A(n103), .Y(n314) );
  INVX1 U470 ( .A(\bpc1/n180 ), .Y(n326) );
  INVX1 U471 ( .A(\bpc1/n182 ), .Y(n307) );
  INVX1 U472 ( .A(\bpc1/n186 ), .Y(n387) );
  INVX1 U473 ( .A(\bpc1/n188 ), .Y(n306) );
  INVX1 U474 ( .A(\bpc1/n103 ), .Y(n328) );
  INVX1 U475 ( .A(\bpc1/n104 ), .Y(n342) );
  INVX1 U476 ( .A(n445), .Y(n281) );
  INVX1 U477 ( .A(n578), .Y(n404) );
  INVX1 U478 ( .A(n559), .Y(n390) );
  INVX1 U479 ( .A(n502), .Y(n343) );
  INVX1 U480 ( .A(n483), .Y(n329) );
  INVX1 U481 ( .A(n540), .Y(n369) );
  INVX1 U482 ( .A(n521), .Y(n356) );
  INVX1 U483 ( .A(n464), .Y(n308) );
  INVX1 U484 ( .A(\bpc1/n145 ), .Y(n389) );
  INVX1 U485 ( .A(rst_n), .Y(n280) );
  INVX1 U486 ( .A(\bpc1/n105 ), .Y(n286) );
  BUFX2 U487 ( .A(trunc[1]), .Y(n273) );
  INVX1 U488 ( .A(\Bxs[0][1] ), .Y(n416) );
  INVX1 U489 ( .A(\Bxs[1][1] ), .Y(n402) );
  INVX1 U490 ( .A(\Bxs[2][1] ), .Y(n388) );
  INVX1 U491 ( .A(\Bxs[3][1] ), .Y(n368) );
  INVX1 U492 ( .A(\Bxs[4][1] ), .Y(n355) );
  INVX1 U493 ( .A(\Bxs[5][1] ), .Y(n341) );
  INVX1 U494 ( .A(trunc[2]), .Y(n419) );
  INVX1 U495 ( .A(\Bxs[6][1] ), .Y(n327) );
  INVX1 U496 ( .A(\Bxs[7][1] ), .Y(n305) );
  INVX1 U497 ( .A(\Bxs[0][3] ), .Y(n413) );
  INVX1 U498 ( .A(\Bxs[1][3] ), .Y(n399) );
  INVX1 U499 ( .A(\Bxs[2][3] ), .Y(n383) );
  INVX1 U500 ( .A(\Bxs[3][3] ), .Y(n365) );
  BUFX2 U501 ( .A(trunc[3]), .Y(n274) );
  INVX1 U502 ( .A(\Bxs[4][3] ), .Y(n352) );
  INVX1 U503 ( .A(\Bxs[5][3] ), .Y(n338) );
  INVX1 U504 ( .A(\Bxs[6][3] ), .Y(n322) );
  INVX1 U505 ( .A(\Bxs[7][3] ), .Y(n298) );
  INVX1 U506 ( .A(trunc[4]), .Y(n418) );
  BUFX2 U507 ( .A(trunc[5]), .Y(n275) );
  INVX1 U508 ( .A(\Bxs[0][5] ), .Y(n409) );
  INVX1 U509 ( .A(\Bxs[1][5] ), .Y(n395) );
  INVX1 U510 ( .A(\Bxs[2][5] ), .Y(n377) );
  INVX1 U511 ( .A(\Bxs[3][5] ), .Y(n361) );
  INVX1 U512 ( .A(\Bxs[0][7] ), .Y(n406) );
  INVX1 U513 ( .A(\Bxs[1][7] ), .Y(n392) );
  INVX1 U514 ( .A(\Bxs[4][5] ), .Y(n348) );
  INVX1 U515 ( .A(\Bxs[5][5] ), .Y(n334) );
  INVX1 U516 ( .A(\Bxs[3][7] ), .Y(n358) );
  INVX1 U517 ( .A(\Bxs[2][7] ), .Y(n372) );
  INVX1 U518 ( .A(trunc[6]), .Y(n417) );
  INVX1 U519 ( .A(\Bxs[6][5] ), .Y(n316) );
  INVX1 U520 ( .A(\Bxs[7][5] ), .Y(n290) );
  INVX1 U521 ( .A(\Bxs[4][7] ), .Y(n345) );
  INVX1 U522 ( .A(\Bxs[5][7] ), .Y(n331) );
  INVX1 U523 ( .A(\Bxs[6][7] ), .Y(n311) );
  INVX1 U524 ( .A(\Bxs[7][7] ), .Y(n283) );
  BUFX2 U525 ( .A(trunc[7]), .Y(n276) );
  INVX1 U526 ( .A(n451), .Y(n282) );
  INVX1 U527 ( .A(n245), .Y(n421) );
  INVX1 U528 ( .A(n584), .Y(n405) );
  INVX1 U529 ( .A(n565), .Y(n391) );
  INVX1 U530 ( .A(n508), .Y(n344) );
  INVX1 U531 ( .A(n489), .Y(n330) );
  INVX1 U532 ( .A(n144), .Y(n428) );
  INVX1 U533 ( .A(n147), .Y(n427) );
  INVX1 U534 ( .A(n175), .Y(n424) );
  INVX1 U535 ( .A(n176), .Y(n423) );
  INVX1 U536 ( .A(n546), .Y(n370) );
  INVX1 U537 ( .A(n527), .Y(n357) );
  INVX1 U538 ( .A(n470), .Y(n309) );
  INVX1 U539 ( .A(n173), .Y(n426) );
  INVX1 U540 ( .A(n174), .Y(n425) );
  INVX1 U541 ( .A(n242), .Y(n422) );
  INVX1 U542 ( .A(n226), .Y(n442) );
  INVX1 U543 ( .A(n227), .Y(n441) );
  INVX1 U544 ( .A(n247), .Y(n438) );
  INVX1 U545 ( .A(n248), .Y(n437) );
  INVX1 U546 ( .A(n549), .Y(n381) );
  INVX1 U547 ( .A(n530), .Y(n364) );
  INVX1 U548 ( .A(n473), .Y(n320) );
  INVX1 U549 ( .A(n454), .Y(n295) );
  INVX1 U550 ( .A(n212), .Y(n434) );
  INVX1 U551 ( .A(n213), .Y(n433) );
  INVX1 U552 ( .A(n243), .Y(n430) );
  INVX1 U553 ( .A(n244), .Y(n429) );
  INVX1 U554 ( .A(n194), .Y(n444) );
  INVX1 U555 ( .A(n193), .Y(n443) );
  INVX1 U556 ( .A(n228), .Y(n440) );
  INVX1 U557 ( .A(n192), .Y(n439) );
  INVX1 U558 ( .A(n587), .Y(n412) );
  INVX1 U559 ( .A(n568), .Y(n398) );
  INVX1 U560 ( .A(n511), .Y(n351) );
  INVX1 U561 ( .A(n492), .Y(n337) );
  INVX1 U562 ( .A(n145), .Y(n436) );
  INVX1 U563 ( .A(n149), .Y(n435) );
  INVX1 U564 ( .A(n146), .Y(n432) );
  INVX1 U565 ( .A(n148), .Y(n431) );
  INVX1 U566 ( .A(\Bxs[0][2] ), .Y(n414) );
  INVX1 U567 ( .A(\Bxs[1][2] ), .Y(n400) );
  INVX1 U568 ( .A(\Bxs[2][2] ), .Y(n384) );
  INVX1 U569 ( .A(\Bxs[3][2] ), .Y(n366) );
  INVX1 U570 ( .A(\Bxs[4][2] ), .Y(n353) );
  INVX1 U571 ( .A(\Bxs[5][2] ), .Y(n339) );
  INVX1 U572 ( .A(\Bxs[6][2] ), .Y(n323) );
  INVX1 U573 ( .A(\Bxs[7][2] ), .Y(n299) );
  INVX1 U574 ( .A(\Bxs[0][6] ), .Y(n407) );
  INVX1 U575 ( .A(\Bxs[1][6] ), .Y(n393) );
  INVX1 U576 ( .A(\Bxs[2][6] ), .Y(n373) );
  INVX1 U577 ( .A(\Bxs[3][6] ), .Y(n359) );
  INVX1 U578 ( .A(\Bxs[4][6] ), .Y(n346) );
  INVX1 U579 ( .A(\Bxs[5][6] ), .Y(n332) );
  INVX1 U580 ( .A(\Bxs[6][6] ), .Y(n312) );
  INVX1 U581 ( .A(\Bxs[7][6] ), .Y(n284) );
  INVX1 U582 ( .A(\Bxs[0][4] ), .Y(n410) );
  INVX1 U583 ( .A(\Bxs[1][4] ), .Y(n396) );
  INVX1 U584 ( .A(\Bxs[2][4] ), .Y(n378) );
  INVX1 U585 ( .A(\Bxs[3][4] ), .Y(n362) );
  INVX1 U586 ( .A(\Bxs[4][4] ), .Y(n349) );
  INVX1 U587 ( .A(\Bxs[5][4] ), .Y(n335) );
  INVX1 U588 ( .A(\Bxs[6][4] ), .Y(n317) );
  INVX1 U589 ( .A(\Bxs[7][4] ), .Y(n291) );
  OAI21X1 U590 ( .A(n256), .B(n284), .C(n215), .Y(n445) );
  NAND3X1 U591 ( .A(n215), .B(n284), .C(n256), .Y(n447) );
  OAI21X1 U592 ( .A(\Bxs[7][7] ), .B(n421), .C(n15), .Y(n451) );
  NAND3X1 U593 ( .A(n457), .B(n291), .C(n232), .Y(n449) );
  NAND3X1 U594 ( .A(n47), .B(n55), .C(n282), .Y(n450) );
  OAI21X1 U595 ( .A(n281), .B(n451), .C(n16), .Y(n463) );
  AOI21X1 U596 ( .A(\Bxs[7][1] ), .B(n437), .C(\Bxs[7][0] ), .Y(n452) );
  AOI22X1 U597 ( .A(n248), .B(n305), .C(n71), .D(n186), .Y(n455) );
  NAND3X1 U598 ( .A(n177), .B(n299), .C(n258), .Y(n453) );
  OAI21X1 U599 ( .A(\Bxs[7][3] ), .B(n429), .C(n17), .Y(n454) );
  OAI21X1 U600 ( .A(n258), .B(n299), .C(n177), .Y(n459) );
  OAI21X1 U601 ( .A(n232), .B(n291), .C(n457), .Y(n458) );
  AOI21X1 U602 ( .A(n295), .B(n459), .C(n458), .Y(n460) );
  NAND3X1 U603 ( .A(n281), .B(n56), .C(n79), .Y(n462) );
  NAND2X1 U604 ( .A(n463), .B(n39), .Y(Xs[7]) );
  OAI21X1 U605 ( .A(n252), .B(n312), .C(n216), .Y(n464) );
  NAND3X1 U606 ( .A(n216), .B(n312), .C(n252), .Y(n466) );
  OAI21X1 U607 ( .A(\Bxs[6][7] ), .B(n422), .C(n18), .Y(n470) );
  NAND3X1 U608 ( .A(n476), .B(n317), .C(n230), .Y(n468) );
  NAND3X1 U609 ( .A(n48), .B(n57), .C(n309), .Y(n469) );
  OAI21X1 U610 ( .A(n308), .B(n470), .C(n19), .Y(n482) );
  AOI21X1 U611 ( .A(\Bxs[6][1] ), .B(n438), .C(\Bxs[6][0] ), .Y(n471) );
  AOI22X1 U612 ( .A(n247), .B(n327), .C(n72), .D(n183), .Y(n474) );
  NAND3X1 U613 ( .A(n178), .B(n323), .C(n254), .Y(n472) );
  OAI21X1 U614 ( .A(\Bxs[6][3] ), .B(n430), .C(n20), .Y(n473) );
  OAI21X1 U615 ( .A(n254), .B(n323), .C(n178), .Y(n478) );
  OAI21X1 U616 ( .A(n230), .B(n317), .C(n476), .Y(n477) );
  AOI21X1 U617 ( .A(n320), .B(n478), .C(n477), .Y(n479) );
  NAND3X1 U618 ( .A(n308), .B(n58), .C(n80), .Y(n481) );
  NAND2X1 U619 ( .A(n482), .B(n40), .Y(Xs[6]) );
  OAI21X1 U620 ( .A(n260), .B(n332), .C(n217), .Y(n483) );
  NAND3X1 U621 ( .A(n217), .B(n332), .C(n260), .Y(n485) );
  OAI21X1 U622 ( .A(\Bxs[5][7] ), .B(n423), .C(n21), .Y(n489) );
  NAND3X1 U623 ( .A(n495), .B(n335), .C(n234), .Y(n487) );
  NAND3X1 U624 ( .A(n49), .B(n59), .C(n330), .Y(n488) );
  OAI21X1 U625 ( .A(n329), .B(n489), .C(n22), .Y(n501) );
  AOI21X1 U626 ( .A(\Bxs[5][1] ), .B(n439), .C(\Bxs[5][0] ), .Y(n490) );
  AOI22X1 U627 ( .A(n192), .B(n341), .C(n73), .D(n152), .Y(n493) );
  NAND3X1 U628 ( .A(n179), .B(n339), .C(n262), .Y(n491) );
  OAI21X1 U629 ( .A(\Bxs[5][3] ), .B(n431), .C(n23), .Y(n492) );
  OAI21X1 U630 ( .A(n262), .B(n339), .C(n179), .Y(n497) );
  OAI21X1 U631 ( .A(n234), .B(n335), .C(n495), .Y(n496) );
  AOI21X1 U632 ( .A(n337), .B(n497), .C(n496), .Y(n498) );
  NAND3X1 U633 ( .A(n329), .B(n60), .C(n81), .Y(n500) );
  NAND2X1 U634 ( .A(n501), .B(n41), .Y(Xs[5]) );
  OAI21X1 U635 ( .A(n265), .B(n346), .C(n218), .Y(n502) );
  NAND3X1 U636 ( .A(n218), .B(n346), .C(n265), .Y(n504) );
  OAI21X1 U637 ( .A(\Bxs[4][7] ), .B(n424), .C(n24), .Y(n508) );
  NAND3X1 U638 ( .A(n514), .B(n349), .C(n235), .Y(n506) );
  NAND3X1 U639 ( .A(n50), .B(n61), .C(n344), .Y(n507) );
  OAI21X1 U640 ( .A(n343), .B(n508), .C(n25), .Y(n520) );
  AOI21X1 U641 ( .A(\Bxs[4][1] ), .B(n440), .C(\Bxs[4][0] ), .Y(n509) );
  AOI22X1 U642 ( .A(n228), .B(n355), .C(n74), .D(n151), .Y(n512) );
  NAND3X1 U643 ( .A(n180), .B(n353), .C(n267), .Y(n510) );
  OAI21X1 U644 ( .A(\Bxs[4][3] ), .B(n432), .C(n26), .Y(n511) );
  OAI21X1 U645 ( .A(n267), .B(n353), .C(n180), .Y(n516) );
  OAI21X1 U646 ( .A(n235), .B(n349), .C(n514), .Y(n515) );
  AOI21X1 U647 ( .A(n351), .B(n516), .C(n515), .Y(n517) );
  NAND3X1 U648 ( .A(n343), .B(n62), .C(n82), .Y(n519) );
  NAND2X1 U649 ( .A(n520), .B(n42), .Y(Xs[4]) );
  OAI21X1 U650 ( .A(n257), .B(n359), .C(n219), .Y(n521) );
  NAND3X1 U651 ( .A(n219), .B(n359), .C(n257), .Y(n523) );
  OAI21X1 U652 ( .A(\Bxs[3][7] ), .B(n425), .C(n27), .Y(n527) );
  NAND3X1 U653 ( .A(n533), .B(n362), .C(n233), .Y(n525) );
  NAND3X1 U654 ( .A(n51), .B(n63), .C(n357), .Y(n526) );
  OAI21X1 U655 ( .A(n356), .B(n527), .C(n28), .Y(n539) );
  AOI21X1 U656 ( .A(\Bxs[3][1] ), .B(n441), .C(\Bxs[3][0] ), .Y(n528) );
  AOI22X1 U657 ( .A(n227), .B(n368), .C(n75), .D(n185), .Y(n531) );
  NAND3X1 U658 ( .A(n181), .B(n366), .C(n259), .Y(n529) );
  OAI21X1 U659 ( .A(\Bxs[3][3] ), .B(n433), .C(n29), .Y(n530) );
  OAI21X1 U660 ( .A(n259), .B(n366), .C(n181), .Y(n535) );
  OAI21X1 U661 ( .A(n233), .B(n362), .C(n533), .Y(n534) );
  AOI21X1 U662 ( .A(n364), .B(n535), .C(n534), .Y(n536) );
  NAND3X1 U663 ( .A(n356), .B(n64), .C(n83), .Y(n538) );
  NAND2X1 U664 ( .A(n539), .B(n43), .Y(Xs[3]) );
  OAI21X1 U665 ( .A(n253), .B(n373), .C(n220), .Y(n540) );
  NAND3X1 U666 ( .A(n220), .B(n373), .C(n253), .Y(n542) );
  OAI21X1 U667 ( .A(\Bxs[2][7] ), .B(n426), .C(n30), .Y(n546) );
  NAND3X1 U668 ( .A(n552), .B(n378), .C(n231), .Y(n544) );
  NAND3X1 U669 ( .A(n52), .B(n65), .C(n370), .Y(n545) );
  OAI21X1 U670 ( .A(n369), .B(n546), .C(n31), .Y(n558) );
  AOI21X1 U671 ( .A(\Bxs[2][1] ), .B(n442), .C(\Bxs[2][0] ), .Y(n547) );
  AOI22X1 U672 ( .A(n226), .B(n388), .C(n76), .D(n184), .Y(n550) );
  NAND3X1 U673 ( .A(n182), .B(n384), .C(n255), .Y(n548) );
  OAI21X1 U674 ( .A(\Bxs[2][3] ), .B(n434), .C(n32), .Y(n549) );
  OAI21X1 U675 ( .A(n255), .B(n384), .C(n182), .Y(n554) );
  OAI21X1 U676 ( .A(n231), .B(n378), .C(n552), .Y(n553) );
  AOI21X1 U677 ( .A(n381), .B(n554), .C(n553), .Y(n555) );
  NAND3X1 U678 ( .A(n369), .B(n66), .C(n84), .Y(n557) );
  NAND2X1 U679 ( .A(n558), .B(n44), .Y(Xs[2]) );
  OAI21X1 U680 ( .A(n261), .B(n393), .C(n221), .Y(n559) );
  NAND3X1 U681 ( .A(n221), .B(n393), .C(n261), .Y(n561) );
  OAI21X1 U682 ( .A(\Bxs[1][7] ), .B(n427), .C(n33), .Y(n565) );
  NAND3X1 U683 ( .A(n571), .B(n396), .C(n162), .Y(n563) );
  NAND3X1 U684 ( .A(n53), .B(n67), .C(n391), .Y(n564) );
  OAI21X1 U685 ( .A(n390), .B(n565), .C(n34), .Y(n577) );
  AOI21X1 U686 ( .A(\Bxs[1][1] ), .B(n443), .C(\Bxs[1][0] ), .Y(n566) );
  AOI22X1 U687 ( .A(n193), .B(n402), .C(n77), .D(n153), .Y(n569) );
  NAND3X1 U688 ( .A(n224), .B(n400), .C(n263), .Y(n567) );
  OAI21X1 U689 ( .A(\Bxs[1][3] ), .B(n435), .C(n35), .Y(n568) );
  OAI21X1 U690 ( .A(n263), .B(n400), .C(n224), .Y(n573) );
  OAI21X1 U691 ( .A(n162), .B(n396), .C(n571), .Y(n572) );
  AOI21X1 U692 ( .A(n398), .B(n573), .C(n572), .Y(n574) );
  NAND3X1 U693 ( .A(n390), .B(n68), .C(n85), .Y(n576) );
  NAND2X1 U694 ( .A(n577), .B(n45), .Y(Xs[1]) );
  OAI21X1 U695 ( .A(n266), .B(n407), .C(n222), .Y(n578) );
  NAND3X1 U696 ( .A(n222), .B(n407), .C(n266), .Y(n580) );
  OAI21X1 U697 ( .A(\Bxs[0][7] ), .B(n428), .C(n36), .Y(n584) );
  NAND3X1 U698 ( .A(n590), .B(n410), .C(n199), .Y(n582) );
  NAND3X1 U699 ( .A(n54), .B(n69), .C(n405), .Y(n583) );
  OAI21X1 U700 ( .A(n404), .B(n584), .C(n37), .Y(n596) );
  AOI21X1 U701 ( .A(\Bxs[0][1] ), .B(n444), .C(\Bxs[0][0] ), .Y(n585) );
  AOI22X1 U702 ( .A(n194), .B(n416), .C(n78), .D(n150), .Y(n588) );
  NAND3X1 U703 ( .A(n223), .B(n414), .C(n264), .Y(n586) );
  OAI21X1 U704 ( .A(\Bxs[0][3] ), .B(n436), .C(n38), .Y(n587) );
  OAI21X1 U705 ( .A(n264), .B(n414), .C(n223), .Y(n592) );
  OAI21X1 U706 ( .A(n199), .B(n410), .C(n590), .Y(n591) );
  AOI21X1 U707 ( .A(n412), .B(n592), .C(n591), .Y(n593) );
  NAND3X1 U708 ( .A(n404), .B(n70), .C(n86), .Y(n595) );
  NAND2X1 U709 ( .A(n596), .B(n46), .Y(Xs[0]) );
endmodule

