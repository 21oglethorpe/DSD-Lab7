module MUX_ALUSrc(
  input logic ALUSrc,
  input logic[31:0] RD2, SignImm,
  output logic[31:0] SrcB);
 always_comb begin
   if(ALUSrc)      SrcB <= SignImm;
  else             SrcB <= RD2;
  end
endmodule
