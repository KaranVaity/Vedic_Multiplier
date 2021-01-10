module full_adder4(
input [3:0] a, b,
output [3:0] s);
wire [2:0] temp;

half_adder ha0(
a[0],b[0],s[0],temp[0]);

full_adder fa1(
a[1],b[1],temp[0],s[1],temp[1]);

full_adder fa2(
a[2],b[2],temp[1],s[2],temp[2]);

full_adder ha3(
a[3],b[3],temp[2],s[3]);

endmodule



