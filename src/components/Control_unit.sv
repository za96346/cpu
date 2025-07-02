module Control_unit (
    input logic [5:0] opcode,
    Control_unit_Intereface.master ctrl
);

    always_comb begin

        ctrl.RegDst   = 0;
        ctrl.ALUSrc   = 0;
        ctrl.MemtoReg = 0;
        ctrl.RegWrite = 0;
        ctrl.MemRead  = 0;
        ctrl.MemWrite = 0;
        ctrl.Branch   = 0;
        ctrl.ALUOp    = 2'b00;

        case (opcode)
            6'b000000: begin // R-type
                ctrl.RegDst   = 1;
                ctrl.ALUSrc   = 0;
                ctrl.MemtoReg = 0;
                ctrl.RegWrite = 1;
                ctrl.ALUOp    = 2'b10;
            end
            6'b100011: begin // lw
                ctrl.RegDst   = 0;
                ctrl.ALUSrc   = 1;
                ctrl.MemtoReg = 1;
                ctrl.RegWrite = 1;
                ctrl.MemRead  = 1;
                ctrl.ALUOp    = 2'b00;
            end
            6'b101011: begin // sw
                ctrl.ALUSrc   = 1;
                ctrl.MemWrite = 1;
                ctrl.ALUOp    = 2'b00;
            end
            6'b000100: begin // beq
                ctrl.Branch   = 1;
                ctrl.ALUOp    = 2'b01;
            end
            default: begin
                // NOP or unknown opcode
            end
        endcase
    end
    
endmodule