module DES_AVALON_WRAPPER (
    input wire clk,
    input wire reset_n,
    
    // Giao tiếp Avalon-MM
    input wire [2:0] address,
    input wire read,
    output reg [31:0] readdata,
    input wire write,
    input wire [31:0] writedata
);

    // Thanh ghi nội bộ
    reg [63:0] plaintext_reg;
    reg [63:0] key_reg;
    reg start_reg;
    
    // Tín hiệu từ module DES
    wire [63:0] ciphertext_wire;
    wire done_wire;

    // Logic Ghi (Nios II -> DES IP)
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            plaintext_reg <= 64'b0;
            key_reg <= 64'b0;
            start_reg <= 1'b0;
        end else begin
            if (write) begin
                case (address)
                    3'd0: start_reg <= writedata[0]; // Ghi bit 0 để Start
                    3'd1: plaintext_reg[31:0] <= writedata;
                    3'd2: plaintext_reg[63:32] <= writedata;
                    3'd3: key_reg[31:0] <= writedata;
                    3'd4: key_reg[63:32] <= writedata;
                endcase
            end else begin
                // Tự động clear Start để tạo xung 1 chu kỳ clock cho FSM
                start_reg <= 1'b0; 
            end
        end
    end

    // Logic Đọc (DES IP -> Nios II)
    always @(*) begin
        case (address)
            3'd0: readdata = {30'b0, done_wire, start_reg}; // Đọc bit 1 để kiểm tra Done
            3'd5: readdata = ciphertext_wire[31:0];
            3'd6: readdata = ciphertext_wire[63:32];
            default: readdata = 32'b0;
        endcase
    end

    // Khởi tạo IP DES của bạn
    DES_ALGORITHM des_inst (
        .Clk(clk),
        .Reset(~reset_n), // FSM của bạn dùng Reset tích cực mức cao
        .Start(start_reg),
        .Plaintext(plaintext_reg),
        .Key_in(key_reg),
        .Ciphertext(ciphertext_wire),
        .Done(done_wire)
    );

endmodule