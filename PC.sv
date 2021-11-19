module PC(
  input logic clk, rst,
  input logic[2:0] instruction_A,
  input logic RegWrite, MemWrite,
  output logic[31:0] prode_register_file, prode_data_memory);
  logic[31:0] RD,MemtoReg_out, SrcA, SignImm, SrcB, ALUResult, RD2, readData;
  logic[4:0] A3;
  instruction_memory instruction_memory( clk, rst, instruction_A, RD);
  MUX_RegDst MUX_RegDst(RD[31],RD[20:16],RD[15:11], A3);
  register_file register_file(clk, rst, RD[25:21], RD[20:16], A3, MemtoReg_out, RegWrite, SrcA, RD2, prode_register_file);
  sign_extend sign_extend( RD[15:0], SignImm);
  MUX_ALUSrc MUX_ALUSrc(RD[30], RD2, SignImm, SrcB);
  ALU ALU(SrcA, SrcB, RD[29:27], ALUResult);
 data_memory data_memory(clk, rst, ALUResult,  RD2, MemWrite, readData, prode_data_memory);
  MUX_MemtoReg MUX_MemtoReg(RD[31], ALUResult, readData, MemtoReg_out);
endmodule
