module top(
  input logic clk, rst,
  input logic[2:0] instruction_A,
  input logic RegWrite, MemWrite,
  output logic[31:0] prode_register_file, prode_data_memory,
  output logic r0, r1, r2, r3 , r4, r5, r6, d0, d1, d2, d3, d4, d5, d6);
  
  PC PC(clk, rst, instruction_A, RegWrite, MemWrite, prode_register_file, prode_data_memory);
  ssd printer(prode_register_file, prode_data_memory, r0, r1, r2, r3 , r4, r5, r6, d0, d1, d2, d3, d4, d5, d6);
  
endmodule