module full_adder8(
input [7:0] a, b,
output [7:0] s);
wire [6:0] temp;

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
a[5],b[5],temp[4],s[5],temp[5]);

full_adder fa6(
a[6],b[6],temp[5],s[6],temp[6]);

full_adder fa7(
a[7],b[7],temp[6],s[7]);

endmodule



