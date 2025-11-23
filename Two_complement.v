module Two_complment #(parameter MIC = 3)(
    in,
    out 
);
        input [MIC-1:0]in;
        output [MIC-1:0]out ;
        //如果最高位是1，就取反加一，如果是0，就是原值
        // //符号位
        // wire sign = in[MIC-1];

        // //幅度位
        // wire [MIC-2:0]mag ;
        // assign mag = in[MIC-2:0];
        
        // //输出
        // assign out = sign ? {1'b1,~mag+1} : in;
        
        
        //简化版的
assign out = in[MIC-1] ? {1'b1,{~in[MIC-2:0]+1}} : in;

endmodule 