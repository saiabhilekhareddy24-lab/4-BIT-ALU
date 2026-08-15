`timescale 1ns/1ps

module alu_4bit_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] ALU_Sel;

    wire [3:0] Result;
    wire CarryOut;

    // Instantiate ALU
    alu_4bit uut (
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .Result(Result),
        .CarryOut(CarryOut)
    );

    // Generate waveform
    initial begin
        $dumpfile("alu_4bit.vcd");
        $dumpvars(0, alu_4bit_tb);
    end

    // Test all ALU operations
    initial begin

        $display("================================================");
        $display("             4-BIT ALU SIMULATION");
        $display("================================================");
        $display("Time   A     B     Sel   Operation   Result  Carry");
        $display("------------------------------------------------");

        // A = 1010, B = 0011
        A = 4'b1010;
        B = 4'b0011;

        // ADD
        ALU_Sel = 3'b000;
        #10;
        $display("%-6t %b  %b   %b     ADD       %b      %b",
                 $time, A, B, ALU_Sel, Result, CarryOut);

        // SUB
        ALU_Sel = 3'b001;
        #10;
        $display("%-6t %b  %b   %b     SUB       %b      %b",
                 $time, A, B, ALU_Sel, Result, CarryOut);

        // AND
        ALU_Sel = 3'b010;
        #10;
        $display("%-6t %b  %b   %b     AND       %b      %b",
                 $time, A, B, ALU_Sel, Result, CarryOut);

        // OR
        ALU_Sel = 3'b011;
        #10;
        $display("%-6t %b  %b   %b     OR        %b      %b",
                 $time, A, B, ALU_Sel, Result, CarryOut);

        // XOR
        ALU_Sel = 3'b100;
        #10;
        $display("%-6t %b  %b   %b     XOR       %b      %b",
                 $time, A, B, ALU_Sel, Result, CarryOut);

        // NOT
        ALU_Sel = 3'b101;
        #10;
        $display("%-6t %b  %b   %b     NOT       %b      %b",
                 $time, A, B, ALU_Sel, Result, CarryOut);

        // INC
        ALU_Sel = 3'b110;
        #10;
        $display("%-6t %b  %b   %b     INC       %b      %b",
                 $time, A, B, ALU_Sel, Result, CarryOut);

        // DEC
        ALU_Sel = 3'b111;
        #10;
        $display("%-6t %b  %b   %b     DEC       %b      %b",
                 $time, A, B, ALU_Sel, Result, CarryOut);

        $display("------------------------------------------------");
        $display("Simulation completed successfully.");
        $display("================================================");

        $finish;

    end

endmodule
