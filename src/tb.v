`timescale 1ns/1ps
module tb;
  // 导出波形（如果不添加此命令，则无法通过 Verdi 查看波形）
  initial begin
    $fsdbDumpvars();
  end

  // 生成时钟激励
  reg clk;
  initial clk = 0;
  always #10 clk = ~clk;

  // 生成输入
  reg [31:0] a, b;
  wire [31:0] c;

  initial begin
    a = 0;
    b = 0;
    @(posedge clk);
    a = 32'h631;
    b = 341;
    @(posedge clk);
    $display("%d + %d = %d\n", a, b, c);
    a = 32'o1461;
    b = 0;
    @(posedge clk);
    $display("%d + %d = %d\n", a, b, c);

    #20;
    // 结束仿真
    $finish;
  end

  // 待测模块
  adder dut(.clk(clk), .in1(a), .in2(b), .out(c));

endmodule
