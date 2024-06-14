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

task reset();
    rst_n = 1; #1;
    rst_n = 0; #1;
    rst_n = 1; #1;
    $display("----");
endtask

initial begin
    clk = 0;
    reset();

    //Test normal count sequence
    bp = 0;
    wait(ovf);
    wait(~ovf);

    //Bypass test 1
    reset();
    bp = 8'b00000011;
    wait(ovf);
    wait(~ovf);

    //Bypass test 2
    reset();
    bp = 8'b10101010;
    wait(ovf);
    wait(~ovf);

    $finish;
end

// Display simulation results
always @(posedge clk) begin
    $display("Time=%0t bp=%b cnt=%b ovf=%b", $time, bp, cnt, ovf);
end

endmodule