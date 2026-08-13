`timescale 1ns/1ps

module tb_comparator_1bit;

    reg A;
    reg B;

    wire A_gt_B;
    wire A_eq_B;
    wire A_lt_B;

    // Instantiate Comparator
    comparator_1bit uut (
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_eq_B(A_eq_B),
        .A_lt_B(A_lt_B)
    );

    // Generate waveform
    initial begin
        $dumpfile("comparator_1bit.vcd");
        $dumpvars(0, tb_comparator_1bit);
    end

    // Test all possible combinations
    initial begin

        $monitor(
            "Time = %0t | A = %b | B = %b | A>B = %b | A=B = %b | A<B = %b",
            $time, A, B, A_gt_B, A_eq_B, A_lt_B
        );

        // A = 0, B = 0
        A = 0;
        B = 0;
        #10;

        // A = 0, B = 1
        A = 0;
        B = 1;
        #10;

        // A = 1, B = 0
        A = 1;
        B = 0;
        #10;

        // A = 1, B = 1
        A = 1;
        B = 1;
        #10;

        $finish;
    end

endmodule