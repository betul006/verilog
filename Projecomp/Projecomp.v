module Projecomp(
    input clk,            // clock 
    input reset,         
    input [1:0] process,    // Process type: 00:Hold, 01:Right, 10:Left, 11:Load
    input [3:0] parallel_in,  // Paralel giriş
    input seri_in,        // Kaydırma yaparken dışarıdan girecek bit
    output reg [3:0] Q    // Çıkış bit'i
);

   
    always @(posedge clk or posedge reset) 
    begin
        if (reset) 
        begin
            Q <= 4'b0000; // Reset 1 olduğu an çıkışı sıfırla
        end
        else 
        begin
            case (process)
                2'b00: Q <= Q;                   // Mevcut veriyi koru
                2'b01: Q <= {seri_in, Q[3:1]};   // Sağa kaydır (Yeni veri MSB'den girer)
                2'b10: Q <= {Q[2:0], seri_in};   // Sola kaydır (Yeni veri LSB'den girer)
                2'b11: Q <= parallel_in;             // Tüm bitler paralel giriş sayesinde aynı anda dışarıdan alınan veri ile güncellenir
                default: Q <= Q;
            endcase
        end
    end
endmodule