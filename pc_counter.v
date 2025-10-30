module pc_counter(
    input wire         clk,
    output wire [31:0] PC,
    input  wire [31:0] npc //next PC
);

    reg [31:0] pc_q = 32'h00000000;
    
    always @(posedge clk) begin
        pc_q <= npc;
    end 
    
    assign PC = pc_q;

endmodule