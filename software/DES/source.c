/*
 * source.c
 *
 *  Created on: Apr 12, 2026
 *      Author: cncuo
 */
/*
 * source.c
 *
 *  Created on: Apr 12, 2026
 *      Author: cncuo
 */
#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include "system.h" // Contains your component base addresses
#include "io.h"     // Contains IOWR_32DIRECT and IORD_32DIRECT

// --- Register Offsets (Verilog Address * 4) ---
#define DES_CTRL_STATUS_REG (0 * 4) // Address 0: Bit 0 = Start, Bit 1 = Done
#define DES_PT_LOW_REG      (1 * 4) // Address 1: Plaintext [31:0]
#define DES_PT_HIGH_REG     (2 * 4) // Address 2: Plaintext [63:32]
#define DES_KEY_LOW_REG     (3 * 4) // Address 3: Key [31:0]
#define DES_KEY_HIGH_REG    (4 * 4) // Address 4: Key [63:32]
#define DES_CT_LOW_REG      (5 * 4) // Address 5: Ciphertext [31:0]
#define DES_CT_HIGH_REG     (6 * 4) // Address 6: Ciphertext [63:32]

// !!! IMPORTANT: Replace this with the actual name from your system.h !!!
// It will look something like DES_AVALON_WRAPPER_0_BASE
#define DES_BASE_ADDR DES_0_BASE

int main() {
//    printf("==========================================\n");
//    printf("   DES Hardware Accelerator Verification  \n");
//    printf("==========================================\n\n");

    // 1. Setup the Test Vectors (From your Verilog Testbench)
	uint32_t pt_high = 0x00123456;
	uint32_t pt_low  = 0x789abcde;
	uint32_t key_high = 0x01334577;
	uint32_t key_low  = 0x99bbcdff;

    // Expected Ciphertext: 64'h1abff69d5a93e80b
    uint32_t expected_ct_high = 0x1abff69d;
    uint32_t expected_ct_low  = 0x5a93e80b;

    // 2. Load Data into the Hardware Accelerator
    printf("Loading Plaintext and Key into hardware...\n");
    IOWR_32DIRECT(DES_BASE_ADDR, DES_PT_LOW_REG, pt_low);
    IOWR_32DIRECT(DES_BASE_ADDR, DES_PT_HIGH_REG, pt_high);

    IOWR_32DIRECT(DES_BASE_ADDR, DES_KEY_LOW_REG, key_low);
    IOWR_32DIRECT(DES_BASE_ADDR, DES_KEY_HIGH_REG, key_high);

    // 3. Trigger the Start Pulse
    // Writing 1 to bit 0. The Verilog automatically clears this on the next clock cycle.
    //printf("Triggering Start signal...\n");
    IOWR_32DIRECT(DES_BASE_ADDR, DES_CTRL_STATUS_REG, 0x01);

    // 4. Poll the Done bit
    // We read Address 0, and use bitwise AND (& 0x02) to isolate bit 1.
    //printf("Waiting for hardware processing...\n");
    while ((IORD_32DIRECT(DES_BASE_ADDR, DES_CTRL_STATUS_REG) & 0x02) == 0) {
        // Just wait here until the hardware raises the Done flag
    }

    // 5. Read the Ciphertext Result
    uint32_t ct_low  = IORD_32DIRECT(DES_BASE_ADDR, DES_CT_LOW_REG);
    uint32_t ct_high = IORD_32DIRECT(DES_BASE_ADDR, DES_CT_HIGH_REG);

    // 6. Verify and Print Results
    printf("\n--- VERIFICATION RESULTS ---\n");
    printf("Expected Ciphertext: 0x%08lX%08lX\n", expected_ct_high, expected_ct_low);
    printf("Hardware Ciphertext: 0x%08lX%08lX\n", ct_high, ct_low);

    if ((ct_high == expected_ct_high) && (ct_low == expected_ct_low)) {
        printf("\n>>> STATUS: SUCCESS (PASSED) <<<\n");
    } else {
        printf("\n>>> STATUS: FAILED <<<\n");
    }
    printf("==========================================\n");

    return 0;
}







