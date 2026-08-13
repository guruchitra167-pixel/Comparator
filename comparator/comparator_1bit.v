module comparator_1bit (
    input  A,
    input  B,
    output A_gt_B,
    output A_eq_B,
    output A_lt_B
);

    // A greater than B
    assign A_gt_B = A & ~B;

    // A equal to B
    assign A_eq_B = ~(A ^ B);

    // A less than B
    assign A_lt_B = ~A & B;

endmodule