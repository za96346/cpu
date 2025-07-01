`timescale 1ns / 1ps

module instruction_memory_tb;
    reg [31:0] addr;
    reg [31:0] instr;

    Instruction_memory_Interface Instruction_memory_bus(
        .addr(addr),
        .instr(instr)
    );

    Instruction_memory uut (
        .Instruction_memory_bus(Instruction_memory_bus)
    );

    initial begin
        $display("===== Instruction Memory Testbench Start =====");
        $dumpfile("imem_wave.vcd");   // 如果用 iverilog
        $dumpvars(0, tb_imem);

        // 測試不同位置
    end

endmodule