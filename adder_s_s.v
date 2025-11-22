module adder_s_s(
                a,
                b,
                sum
                );
                input [3:0]a;
                input [3:0]b;
                output reg [4:0]sum;
                wire [3:0] internal_sum ;
                assign internal_sum = a + b;
                wire [3:0] a1;   //a的绝对值
                wire [3:0] b1;   //b的绝对值
                //一正一负，判断绝对值，正绝对值大取0，负绝对值大取1
                //同正或同负，加数高位补0，直接相加
                wire [4:0]s_sum;
                assign s_sum = {1'b0,a} + {1'b0,b};
                wire [3:0]c1 ; //存放a和b的反码
                wire [3:0]c2;
                assign c1 = {1'b0,~a[2:0]};  //存放a的反码
                assign c2 = {1'b0,~b[2:0]}; //存放b的反码
                //取a和b 的绝对值
                assign a1 = (a[3])  ?  (c1+1) : a[2:0];
                assign b1 = (b[3] ) ?  (c2+1) : b[2:0];
                
                always@(*)begin
                if( (a[3] == 1) &(b[3] == 0)&(a1 >=b1) )
                sum = {1'b1,internal_sum};
                else if( (a[3] == 1) &(b[3] == 0)&(a1 <b1) )
                sum = {1'b0,internal_sum};
                else if((a[3] == 0) & (b[3] == 1) & (a1>=b1) )
                sum = {1'b0,internal_sum};
                else if((a[3] == 0) & (b[3] == 1) & (a1<b1) )
                sum = {1'b1,internal_sum};
                else sum = s_sum;
                end
                
endmodule
