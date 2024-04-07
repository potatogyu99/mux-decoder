
	`timescale 1ns/ 1ps
module tb_mux_2to1;
    reg i0, i1, s;
    wire y;
   
	 mux_2to1 instance_mux_2to1  (
        .i0(i0),    
        .i1(i1),
        .s(s),
        .y(y)        
    );
	 
    initial
        begin
            
            i0 = 0; i1 = 0; s = 0;
            #10;
            i0 = 1; i1 = 0; s = 0;
            #10;
            i0 = 0; i1 = 1; s = 0;
            #10;
            i0 = 1; i1 = 1; s = 0;
            #10;
            i0 = 0; i1 = 0; s = 1;
            #10;
            i0 = 1; i1 = 0; s = 1;
            #10;
            i0 = 0; i1 = 1; s = 1;
            #10;
            i0 = 1; i1 = 1; s = 1;
            #10;
            
            $finish;
        end
    
   
    initial begin
    $monitor("i0=%b, i1=%b, s=%b, y=%b",  i0, i1, s, y);
end
endmodule