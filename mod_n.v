///////////////////////////////////////////////////////////////////////////////////////////
// Design Name: Mod N Counter
// Engineer: kiran
///////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module mod_n(clk, rst, out);
    
    parameter N = 17;       //user defined
    
    input  wire clk;
    input  wire rst;
    output reg  [$clog2(N)-1:0] out;
    
    always@(posedge clk, posedge rst)
        begin
            if(rst)begin
                out <= 0;
            end else begin
                if(out == N-1)begin
                    out <= 0;
                end else begin
                    out <= out + 1;
                end   
            end
        end  
endmodule
