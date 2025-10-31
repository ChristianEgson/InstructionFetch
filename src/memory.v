`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 05:31:33 PM
// Design Name: 
// Module Name: memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module memory(
    input wire        clk, 
    input wire        reset,
    output reg [31:0] data = 0, 
    input wire [31:0] addr 
);

    reg [31:0] mem [0:255];
    
    initial begin 
        mem[0] = 32'hA00000AA;
        mem[1] = 32'h10000011;
        mem[2] = 32'h20000022;
        mem[3] = 32'h30000033;
        mem[4] = 32'h40000044;
        mem[5] = 32'h50000055;
        mem[6] = 32'h60000066;
        mem[7] = 32'h70000077;
        mem[8] = 32'h80000088;
        mem[9] = 32'h90000099;
        mem[10] = 32'hB00000BB;
    end 
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            data <= 0;
        end else 
            data <= mem[addr[31:2]];
    end
    //assign data = mem[addr[31:2]]; 
endmodule
