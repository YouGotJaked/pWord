                .syntax     unified
                .cpu        cortex-m4
                .text
                .thumb_func
                .align      2

// int *pWord(void *p, uint32_t cols, uint32_t r, uint32_t c) ;

                .global     pWord
pWord:          MLA         R1,R1,R2,R3     // R1 <- R3 + (R1 x R2)
                ADD         R0,R0,R1,LSL 2  // R0 <- R0 + (R1 << 2)
                BX          LR              // Return function
                .end

