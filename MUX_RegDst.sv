module MUX_RegDst(
  input logic RegDst,
  input logic[4:0] instr2016,
  input logic[4:0] instr1511,
  output logic[4:0] WriteReg
);
always_comb
  if(RegDst)      WriteReg <= instr1511;
  else            WriteReg <= instr2016;
  end
endmodule
