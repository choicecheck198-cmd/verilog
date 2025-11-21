`timescale 1ns/1ns
module adder_s_s_tb();
                    reg [3:0]a;
                    reg [3:0]b;
                    wire [4:0]sum;
                    adder_s_s u_1(
                .a(a),
                .b(b),
                .sum(sum)
                );
                integer i,j;
                initial begin
                for(i = -8;i<8;i= i+1)begin
                for(j = -8;j<8;j=j+1)begin
                a = i;b = j;#10;end
                end
                end
                
                
                
                

endmodule