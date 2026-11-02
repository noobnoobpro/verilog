
module tb;
reg d,clk,rstn;
wire q;

 ff ff0 (
        .d (d),
        .clk (clk),
        .rstn(rstn),
        .q (q)
    );
always #5 clk = ~clk;
initial begin
    d = 1'b0;
    clk = 1'b0;
    rstn = 1'b0;
   
    $monitor ("t= %0t  rstn= %b d= %b q= %b", $time,rstn,d,q);
    #10  rstn = 1'b1; //release reset 
    #10  d =1'b1;
    #10  d =1'b0;
    #10 $finish;
    end
endmodule
    // New file
