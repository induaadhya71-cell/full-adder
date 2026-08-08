```verilog
`timescale 1ns/1ps

module full_adder_tb;

    reg A;
    reg B;
    reg Cin;

    wire Sum;
    wire Cout;

    // Instantiate Full Adder
    full_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Generate waveform file
    initial begin
        $dumpfile("simulation/waveform.vcd");
        $dumpvars(0, full_adder_tb);
    end

    // Test all input combinations
    initial begin

        $display("A B Cin | Sum Cout");
        $display("-------------------");

        A = 0; B = 0; Cin = 0;
        #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 0; B = 0; Cin = 1;
        #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 0; B = 1; Cin = 0;
        #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 0; B = 1; Cin = 1;
        #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 1; B = 0; Cin = 0;
        #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 1; B = 0; Cin = 1;
        #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 1; B = 1; Cin = 0;
        #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 1; B = 1; Cin = 1;
        #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        #10;
        $finish;

    end

endmodule
```
