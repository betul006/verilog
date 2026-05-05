`timescale 1ns/1ps
module Projecomptestbench;
    reg clk, reset, seri_in;
    reg [1:0] process;
    reg [3:0] parallel_in;
    wire [3:0] Q;

    // Devreyi teste bağlıyoruz
    Projecomp shift_register (
                  .clk(clk),
                  .reset(reset), 
                  .process(process), 
                  .parallel_in(parallel_in), 
                  .seri_in(seri_in), .Q(Q)
                 );


    // Clock sinyali her 10 ns'de bir değişir
    always #10 clk = ~clk;

    initial begin
        $dumpfile("ProjectResult.vcd");
        $dumpvars(0, Projecomptestbench);

        clk = 0;
        reset = 1; 
        process = 0; 
        parallel_in = 0; 
        seri_in = 0;

        #20 reset = 0; //20 ns'ye kadar bekle ve resetten çık 

        // 1. Paralel Yükleme: 1011 değerini yükle
        process = 2'b11;
        parallel_in = 4'b1011;
        #10;
        
        // 2. Sağa Kaydırma
        process = 2'b01;
        seri_in = 0; 
        #10; // Çıkış 0101 
        
        // 3. Sola Kaydırma
        process = 2'b10;
        seri_in = 1; 
        #10; // Çıkış 1011 
        
        // 4. Veriyi Tutma
        process = 2'b00; 
        #20;

        $finish;

    end
endmodule