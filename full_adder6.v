module full_adder6(
input [5:0] a, b,
output [5:0] s);
wire [4:0] temp;

half_adder ha0(
a[0],b[0],s[0],temp[0]);

full_adder fa1(
a[1],b[1],temp[0],s[1],temp[1]);

full_adder fa2(
a[2],b[2],temp[1],s[2],temp[2]);

full_adder fa3(
a[3],b[3],temp[2],s[3],temp[3]);

full_adder fa4(
a[4],b[4],temp[3],s[4],temp[4]);

full_adder fa5(
a[5],b[5],temp[4],s[5]);

endmodule



