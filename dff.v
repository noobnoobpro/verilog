
module ff(
    input d,rstn, clk,
    output reg q
    );

    always @ (posedge clk)
    begin
        if(!rstn)
        q <= 0;
        else 
        q <=d;
    end 
endmodule
    // New file
