module SRA(X,A,B);

parameter size = 32;
input [size-1:0] A,B;
output [size-1:0] X;

assign X = {B*{A[size-1]}, A >> B};
endmodule 