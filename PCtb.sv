module PCtb();

logic clk, rst;
logic[2:0] instruction_A;
logic RegWrite, MemWrite;
logic[31:0] prode_data_memory;
logic[31:0] prode_register_file;

PC top(clk, rst,instruction_A,RegWrite, MemWrite,prode_register_file, prode_data_memory);
always begin
    clk = 1; #5;  clk = 0;  #5;
end

initial begin
   rst = 0; #20; rst = 1;instruction_A = 0;
    RegWrite = 0;
    MemWrite = 0; #20;

    instruction_A = 1;
    RegWrite = 1;
    
    #20;
    instruction_A = 2;
    RegWrite = 0;
    MemWrite = 1;
    

    #20;
    instruction_A = 3;
    RegWrite = 1;
    MemWrite = 0;
    

    #20;
    instruction_A = 4;
    RegWrite = 1;
    MemWrite = 0;

    #20;
end


endmodule