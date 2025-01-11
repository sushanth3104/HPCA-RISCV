module BcdSeven(
    input [3:0]in,
    output [6:0]out
);

reg [6:0]tmp;

assign out = tmp;

always@(*)
    begin
        case(in)
            4'd0: tmp <= 7'b1000_000;
            4'd1: tmp <= 7'b1111_001;
            4'd2: tmp <= 7'b0100_100;
            4'd3: tmp <= 7'b0110_000;
            4'd4: tmp <= 7'b0011_001;
            4'd5: tmp <= 7'b0010_010;
            4'd6: tmp <= 7'b0000_010;
            4'd7: tmp <= 7'b1111_000;
            4'd8: tmp <= 7'b0000_000;
            4'd9: tmp <= 7'b0011_000;
            default: tmp <= 7'b1111_111;
        endcase
    end
endmodule

