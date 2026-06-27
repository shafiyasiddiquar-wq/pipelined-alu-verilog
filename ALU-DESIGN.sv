module pipelined_alu #(
    parameter WIDTH = 8
)(
    input clk,
    input reset,
    input [2:0] opcode,
    input [WIDTH-1:0] A,
    input [WIDTH-1:0] B,
    output reg [WIDTH-1:0] result
);


reg [2:0] opcode_reg;
reg [WIDTH-1:0] A_reg, B_reg;


reg [WIDTH-1:0] result_next;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        opcode_reg <= 0;
        A_reg <= 0;
        B_reg <= 0;
    end else begin
        opcode_reg <= opcode;
        A_reg <= A;
        B_reg <= B;
    end
end


always @(*) begin
    case (opcode_reg)
        3'b000: result_next = A_reg + B_reg; 
        3'b001: result_next = A_reg - B_reg; 
        3'b010: result_next = A_reg & B_reg; 
        3'b011: result_next = A_reg | B_reg; 
        3'b100: result_next = A_reg ^ B_reg; 
        3'b101: result_next = A_reg * B_reg; 
        default: result_next = 0;
    endcase
end

always @(posedge clk or posedge reset) begin
    if (reset)
        result <= 0;
    else
        result <= result_next;
end

endmodule
