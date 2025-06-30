module PC (
    input logic clk,
    input logic rst,
    PC_Interface pc_bus
);

    always @(posedge clk) begin
        if (rst) begin
            pc_bus.pc_out <= 32'h00000000;
        end else if (pc_bus.pc_write_enable) begin
            pc_bus.pc_out <= pc_bus.pc_next;
        end else;
    end
    
endmodule