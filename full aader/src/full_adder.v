```verilog
// 1-Bit Full Adder
// Inputs : A, B, Cin
// Outputs: Sum, Cout

module full_adder (
    input  A,
    input  B,
    input  Cin,
    output Sum,
    output Cout
);

    // Full Adder logic
    assign Sum  = A ^ B ^ Cin;
    assign Cout = (A & B) | (B & Cin) | (A & Cin);

endmodule
```
