module incrementer(
    output wire [31:0] Next_PC,
    input  wire [31:0] PC 
);

    assign Next_PC = PC + 32'd4;
    
endmodule