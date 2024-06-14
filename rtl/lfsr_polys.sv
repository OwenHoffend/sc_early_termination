`ifndef LFSR_POLYS
`define LFSR_POLYS
package lfsr_polys_pkg;
localparam [1:0] LFSR_2_POLYS[1] = '{
        2'h3
};
localparam [2:0] LFSR_3_POLYS[1] = '{
        3'h3
};
localparam [3:0] LFSR_4_POLYS[1] = '{
        4'h3
};
localparam [4:0] LFSR_5_POLYS[3] = '{
        5'h5,
        5'h17,
        5'h1d
};
localparam [5:0] LFSR_6_POLYS[3] = '{
        6'h3,
        6'h27,
        6'h2d
};
localparam [6:0] LFSR_7_POLYS[9] = '{
        7'h3,
        7'h9,
        7'hf,
        7'h1d,
        7'h3f,
        7'h4b,
        7'h55,
        7'h65,
        7'h77
};
localparam [7:0] LFSR_8_POLYS[8] = '{
        8'h1d,
        8'h2b,
        8'h5f,
        8'h63,
        8'h65,
        8'h69,
        8'hc3,
        8'he7
};
localparam [8:0] LFSR_9_POLYS[14] = '{
        9'h11,
        9'h2d,
        9'h59,
        9'h6f,
        9'h77,
        9'hdb,
        9'h113,
        9'h131,
        9'h161,
        9'h16b,
        9'h185,
        9'h18f,
        9'h1e3,
        9'h1e9
};
localparam [9:0] LFSR_10_POLYS[14] = '{
        10'h9,
        10'h1b,
        10'h6f,
        10'h10d,
        10'h119,
        10'h123,
        10'h131,
        10'h1e5,
        10'h1fb,
        10'h213,
        10'h27f,
        10'h34d,
        10'h363,
        10'h3f9
};
localparam [10:0] LFSR_11_POLYS[14] = '{
        11'h5,
        11'h2b,
        11'h2d,
        11'h63,
        11'h8d,
        11'h125,
        11'h173,
        11'h17f,
        11'h213,
        11'h393,
        11'h40d,
        11'h49b,
        11'h5bb,
        11'h70b
};
localparam [11:0] LFSR_12_POLYS[14] = '{
        12'h53,
        12'h20d,
        12'h30f,
        12'h745,
        12'h775,
        12'h857,
        12'ha2b,
        12'had1,
        12'hae1,
        12'hb91,
        12'hba7,
        12'hc27,
        12'hd5b,
        12'hfbb
};
localparam [12:0] LFSR_13_POLYS[14] = '{
        13'h1b,
        13'h2bf,
        13'h3a3,
        13'h6b1,
        13'h74f,
        13'h993,
        13'hfff,
        13'h1079,
        13'h11e1,
        13'h1315,
        13'h155d,
        13'h1827,
        13'h19d3,
        13'h1a29
};
localparam [13:0] LFSR_14_POLYS[14] = '{
        14'h143,
        14'h443,
        14'h6db,
        14'h843,
        14'ha65,
        14'h13f1,
        14'h1beb,
        14'h1e99,
        14'h206b,
        14'h25bf,
        14'h2877,
        14'h292f,
        14'h3cc3,
        14'h3e61
};
localparam [14:0] LFSR_15_POLYS[14] = '{
        15'h3,
        15'h11,
        15'h81,
        15'hcf,
        15'h423,
        15'h431,
        15'h437,
        15'h6a9,
        15'h729,
        15'h8c7,
        15'h100b,
        15'h103d,
        15'h19d5,
        15'h7ffd
};
localparam [15:0] LFSR_16_POLYS[14] = '{
        16'h3dd,
        16'h100b,
        16'h1085,
        16'h36c3,
        16'h38cb,
        16'h3c47,
        16'h450b,
        16'h706d,
        16'h7481,
        16'h846f,
        16'h8bb7,
        16'h8cef,
        16'h8e47,
        16'h8f57
};
localparam [16:0] LFSR_17_POLYS[14] = '{
        17'h9,
        17'hf,
        17'h21,
        17'h41,
        17'h119,
        17'h1d9,
        17'h76d,
        17'h104f,
        17'h123f,
        17'h12dd,
        17'h48af,
        17'haaa9,
        17'haad7,
        17'h1000b
};
localparam [17:0] LFSR_18_POLYS[14] = '{
        18'h3f,
        18'h81,
        18'ha7,
        18'h107,
        18'h2f1,
        18'h377,
        18'h3d7,
        18'h4a1,
        18'h521,
        18'h5ff,
        18'h609,
        18'h2051,
        18'h8025,
        18'h8205
};
localparam [18:0] LFSR_19_POLYS[15] = '{
        19'h27,
        19'h3f,
        19'h47,
        19'h6f,
        19'h7d,
        19'haf,
        19'h1a1,
        19'h1bf,
        19'h1df,
        19'h321,
        19'h36f,
        19'h39f,
        19'hbfd,
        19'hdbf,
        19'h12493
};
localparam [19:0] LFSR_20_POLYS[6] = '{
        20'h9,
        20'h229,
        20'h94d,
        20'h4771,
        20'h2449d,
        20'h80019
};
localparam [20:0] LFSR_21_POLYS[9] = '{
        21'h5,
        21'h19d,
        21'h45d,
        21'h2025,
        21'h4085,
        21'h40cd,
        21'h50dd,
        21'h863d,
        21'h1c003d
};
localparam [21:0] LFSR_22_POLYS[6] = '{
        22'h3,
        22'h223,
        22'h708f,
        22'h20287,
        22'h23187,
        22'h150057
};
localparam [22:0] LFSR_23_POLYS[10] = '{
        23'h21,
        23'h33,
        23'hce1,
        23'h1031,
        23'h86b9,
        23'h12069,
        23'h20821,
        23'h20b33,
        23'h52925,
        23'h2000a1
};
localparam [23:0] LFSR_24_POLYS[3] = '{
        24'h87,
        24'h2fe633,
        24'h554bb1
};
localparam [24:0] LFSR_25_POLYS[10] = '{
        25'h9,
        25'hf,
        25'hb5d,
        25'h1019,
        25'h19d9,
        25'h2040f,
        25'h41879,
        25'h100029,
        25'h11082f,
        25'ha802a9
};
localparam [25:0] LFSR_26_POLYS[7] = '{
        26'h47,
        26'h9ebed,
        26'h25bb79,
        26'h592bb7,
        26'h611d3b,
        26'hecef65,
        26'h12368d3
};
localparam [26:0] LFSR_27_POLYS[9] = '{
        27'h27,
        27'h40e39,
        27'h402879,
        27'h42e043,
        27'h76b0a1,
        27'h109118f,
        27'h1292a79,
        27'h2a02bef,
        27'h2bd4599
};
localparam [27:0] LFSR_28_POLYS[6] = '{
        28'h9,
        28'h2a29,
        28'h70239,
        28'ha844d,
        28'h400c19,
        28'h1111119
};
localparam [28:0] LFSR_29_POLYS[10] = '{
        29'h5,
        29'h1085,
        29'h4404d,
        29'h9004d,
        29'h100805,
        29'h11091d,
        29'h200025,
        29'h80063d,
        29'h100611d,
        29'h4000025
};
localparam [29:0] LFSR_30_POLYS[5] = '{
        30'h800007,
        30'h1116887,
        30'h134b2db,
        30'h38d495b,
        30'hbc915c3
};
localparam [30:0] LFSR_31_POLYS[11] = '{
        31'h9,
        31'hf,
        31'h2109,
        31'h1011d,
        31'h108039,
        31'h1400a9,
        31'h20100f,
        31'hc0c099,
        31'h208408f,
        31'h8888889,
        31'h8888eef
};
endpackage
`endif