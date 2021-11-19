module register_file(input logic clk, rst,
input logic[4:0] A1, A2, A3,
input logic[31:0] WD3,
input logic WE3,
output logic[31:0] RD1,
output logic[31:0] RD2,
output logic [31:0] probe
);

reg[31:0] registers[31:0];
assign probe = registers[A3];
always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		for(int i =0; i <32; i++) begin
			registers[i] <= i;
		end
	end
	else  	if(WE3) 
			registers[A3] <= WD3;

end
always_comb begin

		RD1 <= registers[A1];
		RD2 <= registers[A2];
		end

endmodule
