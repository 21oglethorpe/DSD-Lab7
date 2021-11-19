module PC(
  input logic clk, rst,
  input logic[2:0] instruction_A,
  input logicRegWrite, MemWrite,
  output logic[31:0] prode_register_file, prode_data_memory);
  logic[31:0] RD,MemtoReg_out, SrcA, WriteData, SignImm, SrcB, ALUResult, RD2, readData;
  logic[4:0] A3;
  IM instruction_memory( clk, rst, instruction_A, RD);
  muxreg MUX_RegDst(RD[31],RD[20:16],RD[15:11], A3);
  Reg register_file(clk, rst, RD[25:21], RD[20:16], A3, MemtoReg_out, logicRegWrite, SrcA, RD2, prode_register_file);
  signextend sign_extend( RD[15:0], SignImm);
  muxalu MUX_ALUSrc(RD[30], RD2, SignImm, SrcB);
  ALU ALU(SrcA, SrcB, RD[29:27], ALUResult);
  data_memory(clk, rst,ALUResult,WriteData,MemWrite,readData, prode_data_memory);
  muxmemtoreg MUX_MemtoReg(RD[26], ALUResult, readData, MemtoReg_out);
endmodule
