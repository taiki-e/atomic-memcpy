asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        push              {r11, lr}
        ldrb              r2, [r1, #0x1d]
        strb              r2, [r0, #0x1d]
        ldrb              r2, [r1, #0x19]
        strb              r2, [r0, #0x19]
        ldrb              r2, [r1, #0x15]
        strb              r2, [r0, #0x15]
        ldrb              r2, [r1, #0x11]
        strb              r2, [r0, #0x11]
        ldrb              r2, [r1, #0xd]
        strb              r2, [r0, #0xd]
        ldrb              r2, [r1, #0x9]
        strb              r2, [r0, #0x9]
        ldrb              r2, [r1, #0x5]
        strb              r2, [r0, #0x5]
        ldrb              r12, [r1]
        ldrb              lr, [r1, #0x1]
        ldrb              r2, [r1, #0x2]
        ldrb              r3, [r1, #0x3]
        strb              r3, [r0, #0x3]
        mov               r3, r0
        strb              r2, [r0, #0x2]
        mov               r2, r1
        strb              lr, [r0, #0x1]
        strb              r12, [r0]
        ldrb              r12, [r2, #0x1c]!
        strb              r12, [r3, #0x1c]!
        ldrb              r12, [r2, #0x2]
        ldrb              r2, [r2, #0x3]
        strb              r2, [r3, #0x3]
        mov               r2, r1
        strb              r12, [r3, #0x2]
        mov               r3, r0
        ldrb              r12, [r2, #0x18]!
        strb              r12, [r3, #0x18]!
        ldrb              r12, [r2, #0x2]
        ldrb              r2, [r2, #0x3]
        strb              r2, [r3, #0x3]
        mov               r2, r1
        strb              r12, [r3, #0x2]
        mov               r3, r0
        ldrb              r12, [r2, #0x14]!
        strb              r12, [r3, #0x14]!
        ldrb              r12, [r2, #0x2]
        ldrb              r2, [r2, #0x3]
        strb              r2, [r3, #0x3]
        mov               r2, r1
        strb              r12, [r3, #0x2]
        mov               r3, r0
        ldrb              r12, [r2, #0x10]!
        strb              r12, [r3, #0x10]!
        ldrb              r12, [r2, #0x2]
        ldrb              r2, [r2, #0x3]
        strb              r2, [r3, #0x3]
        mov               r2, r1
        strb              r12, [r3, #0x2]
        mov               r3, r0
        ldrb              r12, [r2, #0xc]!
        strb              r12, [r3, #0xc]!
        ldrb              r12, [r2, #0x2]
        ldrb              r2, [r2, #0x3]
        strb              r2, [r3, #0x3]
        mov               r2, r1
        strb              r12, [r3, #0x2]
        mov               r3, r0
        ldrb              r12, [r2, #0x8]!
        strb              r12, [r3, #0x8]!
        ldrb              r12, [r2, #0x2]
        ldrb              r2, [r2, #0x3]
        strb              r2, [r3, #0x3]
        strb              r12, [r3, #0x2]
        ldrb              r2, [r1, #0x4]!
        strb              r2, [r0, #0x4]!
        ldrb              r2, [r1, #0x2]
        ldrb              r1, [r1, #0x3]
        strb              r1, [r0, #0x3]
        strb              r2, [r0, #0x2]
        mov               r0, #0
        mcr               p15, #0x0, r0, c7, c10, #0x5
        pop               {r11, pc}

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
        mov               r0, #0
        mcr               p15, #0x0, r0, c7, c10, #0x5
        add               sp, sp, #32
        pop               {r4, r5, r11, pc}

asm_test::atomic_memcpy_load_align2::read_volatile_acquire_fence:
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
        mov               r0, #0
        mcr               p15, #0x0, r0, c7, c10, #0x5
        bx                lr

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
        mov               r0, #0
        mcr               p15, #0x0, r0, c7, c10, #0x5
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
        mov               r0, #0
        mcr               p15, #0x0, r0, c7, c10, #0x5
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
        mov               r0, #0
        mcr               p15, #0x0, r0, c7, c10, #0x5
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_load_align8::read_volatile_acquire_fence:
        push              {r4, r5, r6, r7, r8, r9, r11, lr}
        ldrd              r8, r9, [r1, #24]
        ldrd              r4, r5, [r1, #16]
        ldrd              r6, r7, [r1, #8]
        ldrd              r2, r3, [r1]
        stm               r0!, {r2, r3, r6, r7}
        stm               r0, {r4, r5, r8, r9}
        mov               r0, #0
        mcr               p15, #0x0, r0, c7, c10, #0x5
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
        mov               r0, #0
        mcr               p15, #0x0, r0, c7, c10, #0x5
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_load_align16::read_volatile_acquire_fence:
        push              {r4, r5, r6, r7, r8, r9, r11, lr}
        ldrd              r8, r9, [r1, #24]
        ldrd              r4, r5, [r1, #16]
        ldrd              r6, r7, [r1, #8]
        ldrd              r2, r3, [r1]
        stm               r0!, {r2, r3, r6, r7}
        stm               r0, {r4, r5, r8, r9}
        mov               r0, #0
        mcr               p15, #0x0, r0, c7, c10, #0x5
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
        mov               r0, #0
        mcr               p15, #0x0, r0, c7, c10, #0x5
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_store_align1::write_volatile_release_fence:
        mov               r2, #0
        mcr               p15, #0x0, r2, c7, c10, #0x5
        mov               r2, #32
0:
        b                 0f

asm_test::atomic_memcpy_store_align1::release:
        push              {r4, r5, r11, lr}
        add               r2, r0, #3
        mov               lr, #0
        bic               r12, r2, #3
        mov               r3, #32
        cmp               r12, r0
        mcr               p15, #0x0, lr, c7, c10, #0x5
        beq               1f
        sub               lr, r12, r0
        sub               r3, r0, r12
        mov               r2, r1
        mov               r4, r0
0:
        ldrb              r5, [r2], #1
        adds              r3, r3, #1
        strb              r5, [r4]
        add               r4, r4, #1
        blo               0b
        sub               r2, r0, r12
        add               r3, r2, #32
        cmp               r3, #4
        blo               2f
1:
        mov               r2, r1
        sub               r3, r3, #4
        ldrb              r12, [r2, lr]!
        cmp               r3, #3
        ldrb              r4, [r2, #0x1]
        ldrb              r5, [r2, #0x2]
        ldrb              r2, [r2, #0x3]
        orr               r4, r12, r4, lsl #8
        orr               r2, r5, r2, lsl #8
        orr               r2, r4, r2, lsl #16
        str               r2, [r0, lr]
        add               lr, lr, #4
        bhi               1b
2:
        cmp               r3, #0
        beq               4f
        add               r0, r0, lr
        add               r1, r1, lr
3:
        ldrb              r2, [r1], #1
        subs              r3, r3, #1
        strb              r2, [r0]
        add               r0, r0, #1
        bne               3b
4:
        pop               {r4, r5, r11, pc}

asm_test::atomic_memcpy_store_align2::write_volatile_release_fence:
        mov               r2, #0
        mcr               p15, #0x0, r2, c7, c10, #0x5
        mov               r2, #32
0:
        b                 0f

asm_test::atomic_memcpy_store_align2::release:
        push              {r4, r5, r11, lr}
        add               r2, r0, #3
        mov               lr, #0
        bic               r12, r2, #3
        mov               r3, #32
        cmp               r12, r0
        mcr               p15, #0x0, lr, c7, c10, #0x5
        beq               1f
        sub               lr, r12, r0
        sub               r3, r0, r12
        mov               r2, r1
        mov               r4, r0
0:
        ldrb              r5, [r2], #1
        adds              r3, r3, #1
        strb              r5, [r4]
        add               r4, r4, #1
        blo               0b
        sub               r2, r0, r12
        add               r3, r2, #32
        cmp               r3, #4
        blo               2f
1:
        mov               r2, r1
        sub               r3, r3, #4
        ldrb              r12, [r2, lr]!
        cmp               r3, #3
        ldrb              r4, [r2, #0x1]
        ldrb              r5, [r2, #0x2]
        ldrb              r2, [r2, #0x3]
        orr               r4, r12, r4, lsl #8
        orr               r2, r5, r2, lsl #8
        orr               r2, r4, r2, lsl #16
        str               r2, [r0, lr]
        add               lr, lr, #4
        bhi               1b
2:
        cmp               r3, #0
        beq               3f
        ldrb              r2, [r1, lr]
        cmp               r3, #1
        strb              r2, [r0, lr]
        beq               3f
        add               r2, lr, #1
        cmp               r3, #2
        ldrb              r5, [r1, r2]
        strb              r5, [r0, r2]
        popeq             {r4, r5, r11, pc}
        add               r2, lr, #2
        ldrb              r1, [r1, r2]
        strb              r1, [r0, r2]
3:
        pop               {r4, r5, r11, pc}

asm_test::atomic_memcpy_store_align4::write_volatile_release_fence:
        push              {r11, lr}
        mov               r2, #0
        mcr               p15, #0x0, r2, c7, c10, #0x5
        ldm               r1!, {r2, r3, r12, lr}
        stm               r0!, {r2, r3, r12, lr}
        ldm               r1, {r2, r3, r12, lr}
        stm               r0, {r2, r3, r12, lr}
        pop               {r11, pc}

asm_test::atomic_memcpy_store_align4::release:
        push              {r4, r5, r6, lr}
        mov               r2, #0
        add               r6, r1, #8
        mcr               p15, #0x0, r2, c7, c10, #0x5
        ldm               r1, {r12, lr}
        ldm               r6, {r2, r3, r4, r5, r6}
        ldr               r1, [r1, #0x1c]
        str               r1, [r0, #0x1c]
        str               r6, [r0, #0x18]
        str               r5, [r0, #0x14]
        str               r4, [r0, #0x10]
        str               r3, [r0, #0xc]
        str               r2, [r0, #0x8]
        str               lr, [r0, #0x4]
        str               r12, [r0]
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_store_align8::write_volatile_release_fence:
        push              {r11, lr}
        mov               r2, #0
        mcr               p15, #0x0, r2, c7, c10, #0x5
        ldm               r1!, {r2, r3, r12, lr}
        stm               r0!, {r2, r3, r12, lr}
        ldm               r1, {r2, r3, r12, lr}
        stm               r0, {r2, r3, r12, lr}
        pop               {r11, pc}

asm_test::atomic_memcpy_store_align8::release:
        push              {r4, r5, r6, lr}
        mov               r2, #0
        add               r6, r1, #8
        mcr               p15, #0x0, r2, c7, c10, #0x5
        ldm               r1, {r12, lr}
        ldm               r6, {r2, r3, r4, r5, r6}
        ldr               r1, [r1, #0x1c]
        str               r1, [r0, #0x1c]
        str               r6, [r0, #0x18]
        str               r5, [r0, #0x14]
        str               r4, [r0, #0x10]
        str               r3, [r0, #0xc]
        str               r2, [r0, #0x8]
        str               lr, [r0, #0x4]
        str               r12, [r0]
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_store_align16::write_volatile_release_fence:
        push              {r11, lr}
        mov               r2, #0
        mcr               p15, #0x0, r2, c7, c10, #0x5
        ldm               r1!, {r2, r3, r12, lr}
        stm               r0!, {r2, r3, r12, lr}
        ldm               r1, {r2, r3, r12, lr}
        stm               r0, {r2, r3, r12, lr}
        pop               {r11, pc}

asm_test::atomic_memcpy_store_align16::release:
        push              {r4, r5, r6, lr}
        mov               r2, #0
        add               r6, r1, #8
        mcr               p15, #0x0, r2, c7, c10, #0x5
        ldm               r1, {r12, lr}
        ldm               r6, {r2, r3, r4, r5, r6}
        ldr               r1, [r1, #0x1c]
        str               r1, [r0, #0x1c]
        str               r6, [r0, #0x18]
        str               r5, [r0, #0x14]
        str               r4, [r0, #0x10]
        str               r3, [r0, #0xc]
        str               r2, [r0, #0x8]
        str               lr, [r0, #0x4]
        str               r12, [r0]
        pop               {r4, r5, r6, pc}
