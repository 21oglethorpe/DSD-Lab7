module data_memory(
input logic clk, rst,
input logic[31:0] A,
input logic[31:0] WD,
input logic WE,
output logic[31:0] RD,
output logic[31:0] prode
);

reg[31:0] registers[31:0];
assign probe = registers[A];
always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		for(int i =0; i <32; i++) begin
			registers[i] <= i;
		end
	end
	else begin
	  if(WE) begin
    registers[A] <= WD;
    end
    else begin
    RD <= registers[A];
    end
    
	end
end
endmodule
