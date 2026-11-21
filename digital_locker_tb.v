`timescale 1ns / 1ps

module digital_locker_tb;

    reg [3:0] A;
    reg CLK;
    reg RESET;

    wire UNLOCK;
    wire ERROR;

    digital_locker DUT (
        .A(A),
        .CLK(CLK),
        .RESET(RESET),
        .UNLOCK(UNLOCK),
        .ERROR(ERROR)
    );

    always #5 CLK = ~CLK;

    initial
    begin
        CLK = 0;
        RESET = 1;
        A = 4'b0000;

        #10;
        RESET = 0;

        // Test 1: Incorrect password
        A = 4'b0000;
        #10;

        // Test 2: Correct password
        A = 4'b1010;
        #10;

        // Test 3: Incorrect password
        A = 4'b1100;
        #10;

        // Test 4: Correct password
        A = 4'b1010;
        #10;

        // Test 5: Reset operation
        RESET = 1;
        #10;

        RESET = 0;
        #10;

        $finish;
    end

    initial
    begin
        $monitor(
            "Time=%0t | A=%b | UNLOCK=%b | ERROR=%b",
            $time, A, UNLOCK, ERROR
        );
    end

endmodule
