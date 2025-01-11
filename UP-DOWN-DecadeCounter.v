module counter(

    input count_up,load,reset,counter_on,clk,
    input [3:0]data_in,

    output [3:0]count,
    output TC

);

    reg [3:0]temp;

    assign TC = ( count_up & ( temp == 4'd9) )|( ~count_up & (temp == 4'd0) )
    assign count = temp

    always@(posedge clk,posedge reset)
        begin

            casex({reset,load,counter_on})

            3'b1xx : temp <= 4'd0;
            3'b01x : temp <= data_in;
            3'b001 : 
                begin
                    
                    if(count_up == 1'b1)
                        temp <= (temp == 4'd9) ? 4'd0 : temp + 1 ; 
                    else 
                        temp <= ( temp == 4'd0) ? 4'd9 : temp -1 ; 

                end

            endcase


        end







endmodule