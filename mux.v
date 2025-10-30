`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 03:25:37 PM
// Design Name: 
// Module Name: mux
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


module mux(
       output wire[31:0] y, 
       input wire[31:0] a, b, 
       input wire sel
    );
        
       assign y = sel ? a : b; //if sel = 1, y = a ... if sel = 0, y = b
        
    
endmodule //mux
