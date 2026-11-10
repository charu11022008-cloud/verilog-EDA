module universal (
    output reg [3:0] q,
    input [3:0] i,
    input [1:0] s,
    input clk,
    input clear,
    input msb,
    input lsb
);

always @(posedge clk or negedge clear)
begin
  if (clear==0)
        q <= 4'b0000;
    else
    begin
        case (s)
            2'b00: q <= q;                  // No Change
          2'b01: q <= {msb, q[3:1]};     // Rotate Right
          2'b10: q <= {q[2:0], lsb};     // Rotate Left
            2'b11: q <= i;                  // Parallel Load
            default: q <= q;
        endcase
    end
end

endmodule