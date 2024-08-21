`timescale 1ns/1ns


module testbench();
  reg clk;
  reg en;
  reg [3:0] rs, rt, rd, opcode;
  reg [31:0] imm;
  wire [31:0] out;

 
  topmodule DUT00(clk, en, out);
 
  initial begin
       
        clk = 1'b0;
        forever begin
            #1 clk = ~clk;
        end
    end
 
  initial begin
    $monitor("out = %d\n", out);
    #0 en = 1;

    #1100 $finish;
  end
endmodule