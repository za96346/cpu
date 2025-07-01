module Instruction_memory (
    Instruction_memory_Interface Instruction_memory_bus
);
    reg [31:0] memory [0:255];

    initial begin
        $readmemh("imem.hex", memory);
    end

    assign Instruction_memory_bus.instr = memory[Instruction_memory_bus.addr[9:2]];

endmodule