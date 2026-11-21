module digital_locker (
    input [3:0] A,
    input CLK,
    input RESET,
    output reg UNLOCK,
    output reg ERROR
);

    parameter [3:0] PASSWORD = 4'b1010;

    always @(posedge CLK or posedge RESET)
    begin
        if (RESET)
        begin
            UNLOCK <= 1'b0;
            ERROR  <= 1'b0;
        end
        else
        begin
            if (A == PASSWORD)
            begin
                UNLOCK <= 1'b1;
                ERROR  <= 1'b0;
            end
            else
            begin
                UNLOCK <= 1'b0;
                ERROR  <= 1'b1;
            end
        end
    end

endmodule
