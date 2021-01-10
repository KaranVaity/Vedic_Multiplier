module full_adder(
input a, b, cin,
output s, cout);

wire net1, net2, net3;
xor(net1,a,b);
xor(s,net1,cin);
and(net3,a,b);
and(net2,net1,cin);
or(cout,net2,net3);

endmodule
