`timescale 1ns/1ps

module universal_tb;

reg [3:0] i;
reg [1:0] s;
reg clk;
reg clear;
reg msb;
reg lsb;
  
  

wire [3:0] q;

// Instantiate DUT
universal uut (
    .q(q),
    .i(i),
    .s(s),
    .clk(clk),
  .clear(clear),
  .msb(msb),
  .lsb(lsb)
);

// Clock Generation
always #5 clk = ~clk;

initial
begin
    $dumpfile("universal.vcd");
    $dumpvars(0, universal_tb);

    clk = 0;
    clear = 0;
    s = 2'b00;
    i = 4'b0000;
    msb=0;
    lsb=0;

    // Reset
    #10;
    clear = 1;

    // Parallel Load (0110)
    i = 4'b0110;
    s = 2'b11;
    #10;

    // No Change
    s = 2'b00;
    #10;

    // Rotate Right
    msb=1;
    s = 2'b01;
    #10;

    // Rotate Left
    lsb=0;
    s = 2'b10;
    #10;

    // Parallel Load (1010)
    i = 4'b1010;
    s = 2'b11;
    #10;

    $finish;
end

endmodule