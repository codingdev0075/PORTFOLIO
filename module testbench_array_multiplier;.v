module testbench_array_multiplier;

reg[3:0] A;
reg[3:0] B;
wire[7:0] result;

//instantiate the array_multiplier module
array_multiplier uut(
    .A(A),
    .B(B),
    .result(result)
);

//stimulus generation
initial begin
$display ("A\tB\tResult");
A = 4'b0000;
B = 4'b0000;
#10;

A = 4'b0010;
B = 4'b0001;
#10;

A = 4'b0101;
B = 4'b0011;
#10;

A = 4'b1111;
B = 4'b1010;
#10;

end

//Display the results
always @(posedge result)begin
       $display("%b\t%b",A,B, result);
       $dumpfile("waveform.vcd");  // Specify the VCD file name
       $dumpvars(0, testbench_array_multiplier);
    end
    endmodule

