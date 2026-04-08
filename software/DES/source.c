/*
 * source.c
 *
 *  Created on: Apr 7, 2026
 *      Author: cncuo
 */
#include "system.h"
#include "io.h"
#include <stdio.h>

// Các Offset tương ứng với thiết kế trong Wrapper
#define DES_CTRL_REG   0
#define DES_PT_LO_REG  1
#define DES_PT_HI_REG  2
#define DES_KEY_LO_REG 3
#define DES_KEY_HI_REG 4
#define DES_CT_LO_REG  5
#define DES_CT_HI_REG  6

// Base address của khối DES IP được Qsys tự động sinh ra trong system.h
// Vui lòng kiểm tra tên thực tế trong file system.h của bạn (ví dụ: DES_IP_0_BASE)
#define DES_BASE DES_0_BASE

int main() {
    printf("--- Bắt đầu Test DES Hardware Accelerator ---\n");

    // 1. Ghi Key (Ví dụ: 0x133457799BBCDFF1)
    IOWR(DES_BASE, DES_KEY_HI_REG, 0x13345779);
    IOWR(DES_BASE, DES_KEY_LO_REG, 0x9BBCDFF1);

    // 2. Ghi Plaintext (Ví dụ: 0x0123456789ABCDEF)
    IOWR(DES_BASE, DES_PT_HI_REG, 0x01234567);
    IOWR(DES_BASE, DES_PT_LO_REG, 0x89ABCDEF);

    // 3. Ra lệnh Start (Ghi bit 0 = 1)
    IOWR(DES_BASE, DES_CTRL_REG, 0x01);

    // 4. Polling chờ cờ Done từ FSM (Đọc bit 1)
    printf("Đang mã hóa...\n");
    while ((IORD(DES_BASE, DES_CTRL_REG) & 0x02) == 0) {
        // Vòng lặp chờ FSM đếm đủ 16 vòng
    }

    // 5. Đọc Ciphertext
    unsigned int ct_hi = IORD(DES_BASE, DES_CT_HI_REG);
    unsigned int ct_lo = IORD(DES_BASE, DES_CT_LO_REG);

    printf("Ciphertext: %08X%08X\n", ct_hi, ct_lo);
    printf("--- Hoàn tất ---\n");

    return 0;
}



