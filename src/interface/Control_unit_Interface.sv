interface Control_unit_Intereface;

    logic RegDst; 
    logic Branch;
    logic MemtoReg;
    logic ALUOp;
    logic MemRead; // 記憶體讀取控制
    logic MemWrite; // 記憶體寫入控制
    logic ALUSrc;
    logic RegWrite; // register file 讀寫控制

    modport master (
        output  RegDst,
        output  Branch,
        output  MemtoReg,
        output  ALUOp,
        output  MemRead, // 記憶體讀取控制
        output  MemWrite, // 記憶體寫入控制
        output  ALUSrc,
        output  RegWrite // register file 讀寫控制
    );

    modport slave (
        input  RegDst,
        input  Branch,
        input  MemtoReg,
        input  ALUOp,
        input  MemRead, // 記憶體讀取控制
        input  MemWrite, // 記憶體寫入控制
        input  ALUSrc,
        input  RegWrite // register file 讀寫控制
    );
    
endinterface //Control_unit_Intereface