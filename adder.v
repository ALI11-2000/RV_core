module adder (
    output [32:0] c, input [31:0] a, b
);

    assign c = a + b;
    
endmodule

module tb_adder;
    reg [31:0] a,b;
    wire [32:0] c;
    adder dut(c,a,b);
    initial begin
        a = 2; b = 3;
        #10
        a = 20; b = 35;
        #10
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb_adder);
    end 

endmodule