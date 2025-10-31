module tb_ifetch;
  reg clk=0; 
  reg reset=1;
  reg EX_MEM_PCSrc=0;
  reg [31:0] EX_MEM_NPC = 32'h0;
  wire [31:0] IF_ID_instr, IF_ID_npc;

  always #5 clk = ~clk; //100MHz

  I_FETCH dut (
    .clk(clk),
    .reset(reset),
    .IF_ID_instr(IF_ID_instr),
    .IF_ID_npc(IF_ID_npc),
    .EX_MEM_PCSrc(EX_MEM_PCSrc),
    .EX_MEM_NPC(EX_MEM_NPC)
  );

  initial begin
    $dumpfile("ifetch_tb.vcd");
    $dumpvars(0, tb_ifetch);
    
    repeat(2) @(posedge clk); 
    reset=0; //reset is high (active) for first 2 rising clock cycles, then made low
    repeat(4) @(posedge clk); //4 rising edge clk cycles of normal operation
    
    EX_MEM_NPC=32'h20; //branch target address set
    EX_MEM_PCSrc=1; //signal for a jump
    @(posedge clk); //waits for rising clock edge
    EX_MEM_PCSrc=0; 
    
    repeat(6) @(posedge clk);
    $finish;
  end
endmodule

