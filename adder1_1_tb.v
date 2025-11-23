`timescale 1ns/1ns
module adder1_1_tb();
    reg a;
    reg b;
    reg cin;
    wire sum;
    wire cout ;
        adder1_1 u_1(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);
integer i;
    initial 
    begin
        for(i=0;i<8;i=i+1)begin
        {a,b,cin} = i;
        #10;
        $display("a = %d ,b = %d,cin = %d ,sum = %d ,cout = %d",a,b,cin,sum ,cout);
        end
        $stop;
    end
endmodule 