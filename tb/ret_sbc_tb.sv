`timescale 1ns/1ps

module ret_sbc_tb;

parameter WIDTH = 8;

// Inputs
reg clk;
reg rst_n;
reg pz;
reg done;
reg done_p2;

// Outputs
wire [WIDTH-1:0] Bz;

// Instantiate the Unit Under Test (UUT)
ret_sbc #(
    .WIDTH(WIDTH)
) uut (
    .clk(clk),
    .rst_n(rst_n),
    .pz(pz),
    .done(done),
    .Bz(Bz),
    .done_p2(done_p2)
);

// Clock generation
always begin
    #5 clk = ~clk; // Toggle clock every 5 ns (100 MHz frequency)
end

// Initial block to apply test stimuli
initial begin
    $monitor("Time:%4.0f, ctr: %b, msb_detect: %b, eq: %b, pz: %b, sum: %b, Bz: %b, next_Bz: %b, done: %b", 
        $time, uut.ctr, uut.msb_detect, uut.eq, pz, uut.sum, Bz, uut.next_Bz, done);

    // Initialize Inputs
    clk = 0;
    rst_n = 0;
    pz = 0;
    done = 0;

    // Reset the UUT
    #10;
    rst_n = 1;

    pz = 1; // Enable counting
    repeat ((1 << WIDTH-1) - 5) begin
        #5;
        pz = ~pz;
        #5;
    end

    done = 1;
    wait(done_p2);


    pz = 0; // Disable counting
    #20;

    // Check reset behavior
    rst_n = 0;
    #20;
    rst_n = 1;
    #20;

    // Finish simulation
    $finish;
end

endmodule