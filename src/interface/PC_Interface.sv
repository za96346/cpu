interface PC_Interface;
    logic [31:0] pc_next; // 下一個(pc value, pc+4 or branch address)
    logic [31:0] pc_out; // 當前pc的輸出值，out 給 instruction memory
    logic        pc_write_enable; // PC 寫入使能，為 0 時代表 "stall"（保持 PC 不變)
endinterface