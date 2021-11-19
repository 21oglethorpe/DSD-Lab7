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
   rst = 0; #20; rst = 1;

    instruction_A = 1;
    RegWrite = 1;
    MemWrite = 0;
    if(prode_data_memory !== 5) $display("test 1 failed.");
    else $display("test 1 passed.");
    #20;
    instruction_A = 2;
    RegWrite = 0;
    MemWrite = 1;
    if(prode_data_memory !== 5) $display("test 2 failed.");
    else $display("test 2 passed.");

    #20;
    instruction_A = 3;
    RegWrite = 0;
    MemWrite = 0;
    if(prode_register_file !== 7) $display("test 3 failed.");
    else $display("test 3 passed.");

    #20;
    instruction_A = 4;
    RegWrite = 0;
    MemWrite = 0;
    if(prode_register_file !== 2) $display("test 4 failed.");
    else $display("test 4 passed.");

    #20;
end


endmodule
