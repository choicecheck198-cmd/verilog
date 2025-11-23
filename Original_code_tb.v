`timescale 1ns/1ns
module original_code_tb();
    parameter MIC = 5;
    reg [MIC-1:0]in;
    wire [MIC-1:0]out;
    original_code#(.MIC(5)) uu_1(
    .in(in),
    .out(out) 
);
    integer i;
    initial begin
        for(i = 0;i<2**MIC;i=i+1)
        begin
            in = i;#10;
        end
        $stop;
    end
endmodule