interface Instruction_memory_Interface;
    logic [31:0] addr; // 輸入，即為pc 的輸出
    logic [31:0] instr; // 輸出，指令
endinterface //Ins