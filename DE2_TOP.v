module DE2_TOP (
    input wire CLOCK_50,   // Nguồn xung 50MHz trên kit DE2
    input wire [0:0] KEY   // Nút nhấn KEY[0] dùng làm tín hiệu Reset
);

    // Khởi tạo hệ thống Nios II tạo ra từ Qsys
    // Giả sử hệ thống Qsys của bạn được lưu với tên 'nios_system'
    system u0 (
        .clk_clk       (CLOCK_50), // Nối Clock 50MHz
        .reset_reset_n (KEY[0])    // Nối Reset (tích cực mức thấp)
    );

endmodule