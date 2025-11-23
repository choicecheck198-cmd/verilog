module original_code#(parameter MIC = 3)(
    in,
    out 
);
    input [MIC-1:0]in;
    output  [MIC-1:0]out;

    
    assign out = in[MIC-1] ? {1'b1,~in[MIC-2:0]+1} : in;
endmodule