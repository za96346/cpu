`timescale 1ns/1ps

module control_unit_tb();
    // 宣告 opcode 與 interface
    logic [5:0] opcode;
    Control_unit_Intereface ctrl();

    // 實例 control unit
    Control_unit uut(
        .opcode(opcode),
        .ctrl(ctrl.master)
    );
        
    initial begin
        $display("Time\tOpcode\tRegDst ALUSrc MemtoReg RegWrite MemRead MemWrite Branch ALUOp");
        $monitor("%0t\t%06b\t  %b      %b      %b       %b       %b      %b      %b     %b",
                $time, opcode,
                ctrl.RegDst, ctrl.ALUSrc, ctrl.MemtoReg,
                ctrl.RegWrite, ctrl.MemRead, ctrl.MemWrite,
                ctrl.Branch, ctrl.ALUOp);

        // 測試各種 opcode
        opcode = 6'b000000; #10;  // R-type
        opcode = 6'b100011; #10;  // lw
        opcode = 6'b101011; #10;  // sw
        opcode = 6'b000100; #10;  // beq
        opcode = 6'b111111; #10;  // default (NOP)

        $finish;
    end
endmodule