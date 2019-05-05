// Test1 partial module - incrementing 3 bit counter

module test(input clk,
    output wire [2:0] dout);
    parameter DOUT_N = 3;
    reg [2:0] result = 0;
    reg [31:0] ticks = 0;

    genvar i;
    generate
        //CLK
        (* KEEP, DONT_TOUCH *)
        reg clk_reg;
        always @(posedge clk) begin
            clk_reg <= clk_reg;
        end

        //DOUT
        for (i = 0; i < DOUT_N; i = i+1) begin:outs
            (* KEEP, DONT_TOUCH *)
            LUT6 #(
                .INIT(64'b10)
            ) lut (
                .I0(result[i]),
                .I1(1'b0),
                .I2(1'b0),
                .I3(1'b0),
                .I4(1'b0),
                .I5(1'b0),
                .O(dout[i]));
        end

        (* KEEP, DONT_TOUCH *)
        always @(posedge clk) begin
            ticks <= ticks + 1;
            if(ticks > 10000000) begin
                ticks <= 0;
                if(result > 6) begin
                    result <= 0;
                end
                else begin
                    result <= result + 1;
                end
            end
        end
    endgenerate
endmodule
