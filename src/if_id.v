`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 05:32:24 PM
// Design Name: 
// Module Name: if_id
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


module if_id(
    input wire        clk,
    input wire        reset,
    input wire [31:0] instr,
    input wire [31:0] npc,
    output reg [31:0] instrout,
    output reg [31:0] npcout
);
   
   always @(posedge clk or posedge reset) begin 
        if (reset) begin
            instrout <= 0;
            npcout   <= 0;
        end else begin
            instrout <= instr;
            npcout <= npc;
        end
   end    
    
endmodule
