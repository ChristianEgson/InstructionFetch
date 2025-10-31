module incrementer(
    input  wire        clk,
    input  wire        reset, 
    output reg [31:0] Next_PC,
    input  wire [31:0] PC 
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Next_PC <= 0;
        end else begin
            Next_PC <= PC + 32'd4;
        end
    end 
endmodule
