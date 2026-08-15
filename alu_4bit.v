
---

## 2. `alu_4bit.v`

```verilog
// 4-Bit Arithmetic Logic Unit
// Operations:
// 000 - Addition
// 001 - Subtraction
// 010 - AND
// 011 - OR
// 100 - XOR
// 101 - NOT A
// 110 - Increment A
// 111 - Decrement A

module alu_4bit (
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] ALU_Sel,
    output reg  [3:0] Result,
    output reg        CarryOut
);

    always @(*) begin

        // Default values
        Result   = 4'b0000;
        CarryOut = 1'b0;

        case (ALU_Sel)

            // Addition
            3'b000: begin
                {CarryOut, Result} = A + B;
            end

            // Subtraction
            3'b001: begin
                Result = A - B;

                // Borrow indication
                if (A < B)
                    CarryOut = 1'b1;
                else
                    CarryOut = 1'b0;
            end

            // AND
            3'b010: begin
                Result = A & B;
                CarryOut = 1'b0;
            end

            // OR
            3'b011: begin
                Result = A | B;
                CarryOut = 1'b0;
            end

            // XOR
            3'b100: begin
                Result = A ^ B;
                CarryOut = 1'b0;
            end

            // NOT A
            3'b101: begin
                Result = ~A;
                CarryOut = 1'b0;
            end

            // Increment A
            3'b110: begin
                {CarryOut, Result} = A + 1'b1;
            end

            // Decrement A
            3'b111: begin
                Result = A - 1'b1;

                if (A == 4'b0000)
                    CarryOut = 1'b1;
                else
                    CarryOut = 1'b0;
            end

            default: begin
                Result = 4'b0000;
                CarryOut = 1'b0;
            end

        endcase

    end

endmodule
