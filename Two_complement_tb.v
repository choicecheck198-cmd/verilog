`timescale 1ns/1ns
module two_complement_tb();
    parameter MIC = 5;
    reg [MIC-1:0]in;
    wire [MIC-1:0]out;

Two_complment #(.MIC(5))UU_1(
    .in(in),
    .out(out) 
);
    integer i;
    initial begin
    for(i=0;i<2**MIC-1;i=i+1)
    begin
        in = i;#10;
    end
    end
endmodule