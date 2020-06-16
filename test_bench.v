///////////////////////////////////////////////////////////////////////////////////////////
// Design Name: Test Bench for Mod N Counter
// Engineer: kiran
///////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module test_bench();
    parameter N = 17;       //user defined
    
    //inputs for DUT
        reg clk;
        reg rst;
    //outputs from DUT
        wire [$clog2(N)-1:0]out;
        
    mod_n DUT (.clk(clk), .rst(rst), .out(out));
    
    initial 
        begin
            $display($time,"<< Simulation Results >>");
            $monitor($time,"clk = %b, rst = %b, out = %b", clk, rst, out);
        end
        
     always #5 clk = ~clk;
     
     initial
        begin
            clk = 0;
            rst = 1;
            #10
            rst = 0;
            #350
            $finish;
        end
endmodule
