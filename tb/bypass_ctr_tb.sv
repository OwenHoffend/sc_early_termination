`timescale 1ns / 1ps

module bypass_ctr_tb;

    // Parameters
    parameter WIDTH = 8;
    
    // Signals
    logic clk, rst_n;
    logic [WIDTH-1:0] bp;
    logic ovf;
    logic [WIDTH-1:0] cnt;
    
    // Instantiate the module under test
    bypass_ctr #(WIDTH) dut (
        .clk(clk),
        .rst_n(rst_n),
        .bp(bp),
        .ovf(ovf),
        .cnt(cnt)
    );
    
    // Clock generation
    always #5 clk = ~clk;
    
    // Reset generation
    initial begin
        rst_n = 0;
        #10;
        rst_n = 1;
    end
    
    // Stimulus generation
    initial begin
        clk = 0;
        bp = 0;
        $stop;
    end
    
    // Display simulation results
    always @(posedge clk) begin
        $display("Time=%0t bp=%b cnt=%b ovf=%b", $time, bp, cnt, ovf);
    end

endmodule