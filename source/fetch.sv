module fetch(
    input logic clk,
    input logic reset,
    input logic stall,
    input logic [31:0] pc_in,
    output logic [31:0] pc_out,
    output logic [31:0] instruction_out
);
    // Simple instruction memory (for demonstration purposes)
    logic [31:0] instruction_memory [0:255];

    // Initialize instruction memory with some instructions
    initial begin
        instruction_memory[0] = 32'h00000013; // NOP
        instruction_memory[1] = 32'h00000093; // ADDI x1, x0, 0
        instruction_memory[2] = 32'h00100113; // ADDI x2, x0, 1
        // ... more instructions
    end

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            pc_out <= 32'b0;
            instruction_out <= 32'b0;
        end else if (!stall) begin
            pc_out <= pc_in;
            instruction_out <= instruction_memory[pc_in[9:2]];
        end
    end
endmodule