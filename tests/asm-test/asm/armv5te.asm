asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        push              {r4, r5, r6, r7, r8, r9, r10, r11, lr}
        sub               sp, sp, #76
        ldrb              r2, [r1]
        str               r2, [sp, #0x48]
        ldrb              r2, [r1, #0x1]
        str               r2, [sp, #0x44]
        ldrb              r2, [r1, #0x2]
        str               r2, [sp, #0x40]
        ldrb              r2, [r1, #0x3]
        str               r2, [sp, #0x3c]
        ldrb              r2, [r1, #0x4]
        str               r2, [sp, #0x38]
        ldrb              r2, [r1, #0x5]
        str               r2, [sp, #0x34]
        ldrb              r2, [r1, #0x6]
        str               r2, [sp, #0x30]
        ldrb              r2, [r1, #0x7]
        str               r2, [sp, #0x2c]
        ldrb              r2, [r1, #0x8]
        str               r2, [sp, #0x28]
        ldrb              r2, [r1, #0x9]
        str               r2, [sp, #0x24]
        ldrb              r2, [r1, #0xa]
        str               r2, [sp, #0x20]
        ldrb              r2, [r1, #0xb]
        str               r2, [sp, #0x1c]
        ldrb              r2, [r1, #0xc]
        str               r2, [sp, #0x18]
        ldrb              r2, [r1, #0xd]
        str               r2, [sp, #0x14]
        ldrb              r2, [r1, #0xe]
        str               r2, [sp, #0x10]
        ldrb              r2, [r1, #0xf]
        str               r2, [sp, #0xc]
        ldrb              r2, [r1, #0x10]
        str               r2, [sp, #0x8]
        ldrb              r2, [r1, #0x11]
        str               r2, [sp, #0x4]
        ldrb              r2, [r1, #0x12]
        str               r2, [sp]
        ldrb              r11, [r1, #0x13]
        ldrb              r10, [r1, #0x14]
        ldrb              r9, [r1, #0x15]
        ldrb              r8, [r1, #0x16]
        ldrb              r7, [r1, #0x17]
        ldrb              r6, [r1, #0x18]
        ldrb              r5, [r1, #0x19]
        ldrb              r4, [r1, #0x1a]
        ldrb              lr, [r1, #0x1b]
        ldrb              r12, [r1, #0x1c]
        ldrb              r3, [r1, #0x1d]
        ldrb              r2, [r1, #0x1e]
        ldrb              r1, [r1, #0x1f]
        strb              r1, [r0, #0x1f]
        ldr               r1, [sp]
        strb              r1, [r0, #0x12]
        ldr               r1, [sp, #0x4]
        strb              r1, [r0, #0x11]
        ldr               r1, [sp, #0x8]
        strb              r1, [r0, #0x10]
        ldr               r1, [sp, #0xc]
        strb              r1, [r0, #0xf]
        ldr               r1, [sp, #0x10]
        strb              r1, [r0, #0xe]
        ldr               r1, [sp, #0x14]
        strb              r1, [r0, #0xd]
        ldr               r1, [sp, #0x18]
        strb              r1, [r0, #0xc]
        ldr               r1, [sp, #0x1c]
        strb              r1, [r0, #0xb]
        ldr               r1, [sp, #0x20]
        strb              r1, [r0, #0xa]
        ldr               r1, [sp, #0x24]
        strb              r1, [r0, #0x9]
        ldr               r1, [sp, #0x28]
        strb              r1, [r0, #0x8]
        ldr               r1, [sp, #0x2c]
        strb              r1, [r0, #0x7]
        ldr               r1, [sp, #0x30]
        strb              r1, [r0, #0x6]
        ldr               r1, [sp, #0x34]
        strb              r1, [r0, #0x5]
        ldr               r1, [sp, #0x38]
        strb              r1, [r0, #0x4]
        ldr               r1, [sp, #0x3c]
        strb              r1, [r0, #0x3]
        ldr               r1, [sp, #0x40]
        strb              r1, [r0, #0x2]
        ldr               r1, [sp, #0x44]
        strb              r1, [r0, #0x1]
        ldr               r1, [sp, #0x48]
        strb              r2, [r0, #0x1e]
        strb              r3, [r0, #0x1d]
        strb              r12, [r0, #0x1c]
        strb              lr, [r0, #0x1b]
        strb              r4, [r0, #0x1a]
        strb              r5, [r0, #0x19]
        strb              r6, [r0, #0x18]
        strb              r7, [r0, #0x17]
        strb              r8, [r0, #0x16]
        strb              r9, [r0, #0x15]
        strb              r10, [r0, #0x14]
        strb              r11, [r0, #0x13]
        strb              r1, [r0]
0:
        bl                0f
        add               sp, sp, #76
        pop               {r4, r5, r6, r7, r8, r9, r10, r11, pc}

asm_test::atomic_memcpy_load_align1::acquire:
        push              {r4, r5, r11, lr}
        sub               sp, sp, #32
        add               r2, r1, #3
        bic               r12, r2, #3
        cmp               r12, r1
        bne               0f
        mov               lr, #0
        mov               r3, #32
        b                 2f
0:
        sub               lr, r12, r1
        sub               r3, r1, r12
        mov               r2, sp
        mov               r4, r1
1:
        ldrb              r5, [r4]
        add               r4, r4, #1
        strb              r5, [r2], #1
        adds              r3, r3, #1
        blo               1b
        sub               r2, r1, r12
        add               r3, r2, #32
        cmp               r3, #4
        blo               4f
2:
        mov               r12, sp
3:
        ldr               r2, [r1, lr]
        add               r4, r12, lr
        sub               r3, r3, #4
        strb              r2, [r12, lr]
        add               lr, lr, #4
        cmp               r3, #3
        lsr               r5, r2, #24
        strb              r5, [r4, #0x3]
        lsr               r5, r2, #16
        lsr               r2, r2, #8
        strb              r5, [r4, #0x2]
        strb              r2, [r4, #0x1]
        bhi               3b
4:
        cmp               r3, #0
        beq               6f
        mov               r2, sp
        add               r1, r1, lr
        add               r2, r2, lr
5:
        ldrb              r5, [r1]
        add               r1, r1, #1
        strb              r5, [r2], #1
        subs              r3, r3, #1
        bne               5b
6:
        mov               r1, sp
        mov               r2, #32
7:
        bl                7f
8:
        bl                8f
        add               sp, sp, #32
        pop               {r4, r5, r11, pc}

asm_test::atomic_memcpy_load_align2::read_volatile_acquire_fence:
        push              {r11, lr}
        ldrh              r2, [r1, #30]
        strh              r2, [r0, #30]
        ldrh              r2, [r1, #28]
        strh              r2, [r0, #28]
        ldrh              r2, [r1, #26]
        strh              r2, [r0, #26]
        ldrh              r2, [r1, #24]
        strh              r2, [r0, #24]
        ldrh              r2, [r1, #22]
        strh              r2, [r0, #22]
        ldrh              r2, [r1, #20]
        strh              r2, [r0, #20]
        ldrh              r2, [r1, #18]
        strh              r2, [r0, #18]
        ldrh              r2, [r1, #16]
        strh              r2, [r0, #16]
        ldrh              r2, [r1, #14]
        strh              r2, [r0, #14]
        ldrh              r2, [r1, #12]
        strh              r2, [r0, #12]
        ldrh              r2, [r1, #10]
        strh              r2, [r0, #10]
        ldrh              r2, [r1, #8]
        strh              r2, [r0, #8]
        ldrh              r2, [r1, #6]
        strh              r2, [r0, #6]
        ldrh              r2, [r1, #4]
        strh              r2, [r0, #4]
        ldrh              r2, [r1, #2]
        strh              r2, [r0, #2]
        ldrh              r1, [r1]
        strh              r1, [r0]
0:
        bl                0f
        pop               {r11, pc}

asm_test::atomic_memcpy_load_align2::acquire:
        push              {r4, r5, r11, lr}
        sub               sp, sp, #32
        add               r2, r1, #3
        bic               r12, r2, #3
        cmp               r12, r1
        bne               0f
        mov               r3, #32
        mov               lr, #0
        b                 2f
0:
        sub               lr, r12, r1
        sub               r3, r1, r12
        mov               r2, sp
        mov               r4, r1
1:
        ldrb              r5, [r4]
        add               r4, r4, #1
        strb              r5, [r2], #1
        adds              r3, r3, #1
        blo               1b
        sub               r2, r1, r12
        add               r3, r2, #32
        cmp               r3, #4
        blo               4f
2:
        mov               r12, sp
3:
        ldr               r2, [r1, lr]
        add               r4, r12, lr
        sub               r3, r3, #4
        strb              r2, [r12, lr]
        add               lr, lr, #4
        cmp               r3, #3
        lsr               r5, r2, #24
        strb              r5, [r4, #0x3]
        lsr               r5, r2, #16
        lsr               r2, r2, #8
        strb              r5, [r4, #0x2]
        strb              r2, [r4, #0x1]
        bhi               3b
4:
        cmp               r3, #0
        beq               5f
        ldrb              r5, [r1, lr]
        mov               r2, sp
        cmp               r3, #1
        strb              r5, [r2, lr]
        beq               5f
        add               r5, lr, #1
        cmp               r3, #2
        ldrb              r4, [r1, r5]
        strb              r4, [r2, r5]
        beq               5f
        add               r3, lr, #2
        ldrb              r1, [r1, r3]
        strb              r1, [r2, r3]
5:
        mov               r1, sp
        mov               r2, #32
6:
        bl                6f
7:
        bl                7f
        add               sp, sp, #32
        pop               {r4, r5, r11, pc}

asm_test::atomic_memcpy_load_align4::read_volatile_acquire_fence:
        push              {r4, r5, r6, lr}
        ldr               r12, [r1, #0x1c]
        ldr               lr, [r1, #0x18]
        ldr               r2, [r1, #0x14]
        ldr               r3, [r1, #0x10]
        ldr               r4, [r1]
        ldr               r5, [r1, #0x4]
        ldr               r6, [r1, #0x8]
        ldr               r1, [r1, #0xc]
        stm               r0, {r4, r5, r6}
        str               r1, [r0, #0xc]
        str               r3, [r0, #0x10]
        str               r2, [r0, #0x14]
        str               lr, [r0, #0x18]
        str               r12, [r0, #0x1c]
0:
        bl                0f
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_load_align4::acquire:
        push              {r4, r5, r6, lr}
        ldr               r12, [r1, #0x1c]
        ldr               lr, [r1, #0x18]
        ldr               r2, [r1, #0x14]
        ldr               r3, [r1, #0x10]
        ldr               r4, [r1, #0xc]
        ldr               r5, [r1, #0x8]
        ldr               r6, [r1, #0x4]
        ldr               r1, [r1]
        str               r5, [r0, #0x8]
        stm               r0, {r1, r6}
        str               r4, [r0, #0xc]
        str               r3, [r0, #0x10]
        str               r2, [r0, #0x14]
        str               lr, [r0, #0x18]
        str               r12, [r0, #0x1c]
0:
        bl                0f
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_load_align8::read_volatile_acquire_fence:
        push              {r4, r5, r6, r7, r8, r9, r11, lr}
        ldrd              r8, r9, [r1, #24]
        ldrd              r4, r5, [r1, #16]
        ldrd              r6, r7, [r1, #8]
        ldrd              r2, r3, [r1]
        stm               r0!, {r2, r3, r6, r7}
        stm               r0, {r4, r5, r8, r9}
0:
        bl                0f
        pop               {r4, r5, r6, r7, r8, r9, r11, pc}

asm_test::atomic_memcpy_load_align8::acquire:
        push              {r4, r5, r6, lr}
        ldr               r12, [r1, #0x1c]
        ldr               lr, [r1, #0x18]
        ldr               r2, [r1, #0x14]
        ldr               r3, [r1, #0x10]
        ldr               r4, [r1, #0xc]
        ldr               r5, [r1, #0x8]
        ldr               r6, [r1, #0x4]
        ldr               r1, [r1]
        str               r5, [r0, #0x8]
        stm               r0, {r1, r6}
        str               r4, [r0, #0xc]
        str               r3, [r0, #0x10]
        str               r2, [r0, #0x14]
        str               lr, [r0, #0x18]
        str               r12, [r0, #0x1c]
0:
        bl                0f
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_load_align16::read_volatile_acquire_fence:
        push              {r4, r5, r6, r7, r8, r9, r11, lr}
        ldrd              r8, r9, [r1, #24]
        ldrd              r4, r5, [r1, #16]
        ldrd              r6, r7, [r1, #8]
        ldrd              r2, r3, [r1]
        stm               r0!, {r2, r3, r6, r7}
        stm               r0, {r4, r5, r8, r9}
0:
        bl                0f
        pop               {r4, r5, r6, r7, r8, r9, r11, pc}

asm_test::atomic_memcpy_load_align16::acquire:
        push              {r4, r5, r6, lr}
        ldr               r12, [r1, #0x1c]
        ldr               lr, [r1, #0x18]
        ldr               r2, [r1, #0x14]
        ldr               r3, [r1, #0x10]
        ldr               r4, [r1, #0xc]
        ldr               r5, [r1, #0x8]
        ldr               r6, [r1, #0x4]
        ldr               r1, [r1]
        str               r5, [r0, #0x8]
        stm               r0, {r1, r6}
        str               r4, [r0, #0xc]
        str               r3, [r0, #0x10]
        str               r2, [r0, #0x14]
        str               lr, [r0, #0x18]
        str               r12, [r0, #0x1c]
0:
        bl                0f
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_store_align1::write_volatile_release_fence:
        push              {r4, r5, r11, lr}
        mov               r4, r1
        mov               r5, r0
0:
        bl                0f
        mov               r0, r5
        mov               r1, r4
        mov               r2, #32
        pop               {r4, r5, r11, lr}
1:
        b                 1f

asm_test::atomic_memcpy_store_align1::release:
        push              {r4, r5, r6, r7, r11, lr}
        mov               r5, r0
        add               r0, r0, #3
        mov               r4, r1
        bic               r7, r0, #3
0:
        bl                0f
        cmp               r7, r5
        bne               1f
        mov               r0, #0
        mov               r1, #32
        b                 3f
1:
        sub               r0, r7, r5
        sub               r1, r5, r7
        mov               r2, r4
        mov               r3, r5
2:
        ldrb              r6, [r2], #1
        adds              r1, r1, #1
        strb              r6, [r3]
        add               r3, r3, #1
        blo               2b
        sub               r1, r5, r7
        add               r1, r1, #32
        cmp               r1, #4
        blo               4f
3:
        mov               r2, r4
        sub               r1, r1, #4
        ldrb              r3, [r2, r0]!
        cmp               r1, #3
        ldrb              r7, [r2, #0x1]
        ldrb              r6, [r2, #0x2]
        ldrb              r2, [r2, #0x3]
        orr               r3, r3, r7, lsl #8
        orr               r2, r6, r2, lsl #8
        orr               r2, r3, r2, lsl #16
        str               r2, [r5, r0]
        add               r0, r0, #4
        bhi               3b
4:
        cmp               r1, #0
        beq               6f
        add               r2, r5, r0
        add               r0, r4, r0
5:
        ldrb              r3, [r0], #1
        subs              r1, r1, #1
        strb              r3, [r2]
        add               r2, r2, #1
        bne               5b
6:
        pop               {r4, r5, r6, r7, r11, pc}

asm_test::atomic_memcpy_store_align2::write_volatile_release_fence:
        push              {r4, r5, r11, lr}
        mov               r4, r1
        mov               r5, r0
0:
        bl                0f
        mov               r0, r5
        mov               r1, r4
        mov               r2, #32
        pop               {r4, r5, r11, lr}
1:
        b                 1f

asm_test::atomic_memcpy_store_align2::release:
        push              {r4, r5, r6, r7, r11, lr}
        mov               r4, r0
        add               r0, r0, #3
        mov               r5, r1
        bic               r7, r0, #3
0:
        bl                0f
        cmp               r7, r4
        bne               1f
        mov               r1, #32
        mov               r0, #0
        b                 3f
1:
        sub               r0, r7, r4
        sub               r1, r4, r7
        mov               r2, r5
        mov               r3, r4
2:
        ldrb              r6, [r2], #1
        adds              r1, r1, #1
        strb              r6, [r3]
        add               r3, r3, #1
        blo               2b
        sub               r1, r4, r7
        add               r1, r1, #32
        cmp               r1, #4
        blo               4f
3:
        mov               r2, r5
        sub               r1, r1, #4
        ldrb              r3, [r2, r0]!
        cmp               r1, #3
        ldrb              r7, [r2, #0x1]
        ldrb              r6, [r2, #0x2]
        ldrb              r2, [r2, #0x3]
        orr               r3, r3, r7, lsl #8
        orr               r2, r6, r2, lsl #8
        orr               r2, r3, r2, lsl #16
        str               r2, [r4, r0]
        add               r0, r0, #4
        bhi               3b
4:
        cmp               r1, #0
        beq               5f
        ldrb              r2, [r5, r0]
        cmp               r1, #1
        strb              r2, [r4, r0]
        beq               5f
        add               r2, r0, #1
        cmp               r1, #2
        ldrb              r3, [r5, r2]
        strb              r3, [r4, r2]
        beq               5f
        add               r0, r0, #2
        ldrb              r1, [r5, r0]
        strb              r1, [r4, r0]
5:
        pop               {r4, r5, r6, r7, r11, pc}

asm_test::atomic_memcpy_store_align4::write_volatile_release_fence:
        push              {r4, r5, r11, lr}
        mov               r4, r1
        mov               r5, r0
0:
        bl                0f
        ldm               r4!, {r0, r1, r2, r3}
        stm               r5!, {r0, r1, r2, r3}
        ldm               r4, {r0, r1, r2, r3}
        stm               r5, {r0, r1, r2, r3}
        pop               {r4, r5, r11, pc}

asm_test::atomic_memcpy_store_align4::release:
        push              {r4, r5, r6, lr}
        mov               r4, r1
        mov               r5, r0
0:
        bl                0f
        add               r6, r4, #16
        ldm               r4, {r12, lr}
        ldr               r2, [r4, #0x8]
        ldr               r3, [r4, #0xc]
        ldm               r6, {r0, r1, r6}
        ldr               r4, [r4, #0x1c]
        str               r4, [r5, #0x1c]
        str               r6, [r5, #0x18]
        str               r1, [r5, #0x14]
        str               r0, [r5, #0x10]
        str               r3, [r5, #0xc]
        str               r2, [r5, #0x8]
        str               lr, [r5, #0x4]
        str               r12, [r5]
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_store_align8::write_volatile_release_fence:
        push              {r4, r5, r11, lr}
        mov               r4, r1
        mov               r5, r0
0:
        bl                0f
        ldm               r4!, {r0, r1, r2, r3}
        stm               r5!, {r0, r1, r2, r3}
        ldm               r4, {r0, r1, r2, r3}
        stm               r5, {r0, r1, r2, r3}
        pop               {r4, r5, r11, pc}

asm_test::atomic_memcpy_store_align8::release:
        push              {r4, r5, r6, lr}
        mov               r4, r1
        mov               r5, r0
0:
        bl                0f
        add               r6, r4, #16
        ldm               r4, {r12, lr}
        ldr               r2, [r4, #0x8]
        ldr               r3, [r4, #0xc]
        ldm               r6, {r0, r1, r6}
        ldr               r4, [r4, #0x1c]
        str               r4, [r5, #0x1c]
        str               r6, [r5, #0x18]
        str               r1, [r5, #0x14]
        str               r0, [r5, #0x10]
        str               r3, [r5, #0xc]
        str               r2, [r5, #0x8]
        str               lr, [r5, #0x4]
        str               r12, [r5]
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_store_align16::write_volatile_release_fence:
        push              {r4, r5, r11, lr}
        mov               r4, r1
        mov               r5, r0
0:
        bl                0f
        ldm               r4!, {r0, r1, r2, r3}
        stm               r5!, {r0, r1, r2, r3}
        ldm               r4, {r0, r1, r2, r3}
        stm               r5, {r0, r1, r2, r3}
        pop               {r4, r5, r11, pc}

asm_test::atomic_memcpy_store_align16::release:
        push              {r4, r5, r6, lr}
        mov               r4, r1
        mov               r5, r0
0:
        bl                0f
        add               r6, r4, #16
        ldm               r4, {r12, lr}
        ldr               r2, [r4, #0x8]
        ldr               r3, [r4, #0xc]
        ldm               r6, {r0, r1, r6}
        ldr               r4, [r4, #0x1c]
        str               r4, [r5, #0x1c]
        str               r6, [r5, #0x18]
        str               r1, [r5, #0x14]
        str               r0, [r5, #0x10]
        str               r3, [r5, #0xc]
        str               r2, [r5, #0x8]
        str               lr, [r5, #0x4]
        str               r12, [r5]
        pop               {r4, r5, r6, pc}
