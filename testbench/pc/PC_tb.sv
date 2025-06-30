`timescale 1ns/1ps

module PC_tb();

    logic clk;
    logic rst;

    PC_Interface pc_bus();

    PC dut (
        .clk(clk),
        .rst(rst),
        .pc_bus(pc_bus)
    );

endmodule
