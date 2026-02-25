asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        push.w            {r4, r5, r6, r7, r8, r9, r10, r11, lr}
        sub               sp, #0x4c
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
        ldrb.w            r11, [r1, #0x13]
        ldrb.w            r10, [r1, #0x14]
        ldrb.w            r9, [r1, #0x15]
        ldrb.w            r8, [r1, #0x16]
        ldrb              r7, [r1, #0x17]
        ldrb              r6, [r1, #0x18]
        ldrb              r5, [r1, #0x19]
        ldrb              r4, [r1, #0x1a]
        ldrb.w            lr, [r1, #0x1b]
        ldrb.w            r12, [r1, #0x1c]
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
        strb.w            r12, [r0, #0x1c]
        strb.w            lr, [r0, #0x1b]
        strb              r4, [r0, #0x1a]
        strb              r5, [r0, #0x19]
        strb              r6, [r0, #0x18]
        strb              r7, [r0, #0x17]
        strb.w            r8, [r0, #0x16]
        strb.w            r9, [r0, #0x15]
        strb.w            r10, [r0, #0x14]
        strb.w            r11, [r0, #0x13]
        strb              r1, [r0]
        dmb               ish
        add               sp, #0x4c
        pop.w             {r4, r5, r6, r7, r8, r9, r10, r11, pc}

asm_test::atomic_memcpy_load_align1::acquire:
        push              {r4, r5, r7, lr}
        sub               sp, #0x20
        adds              r2, r1, #0x3
        bic               r2, r2, #0x3
        cmp               r2, r1
        bne               0f
        mov.w             r12, #0x0
        movs              r3, #0x20
        b                 2f
0:
        sub.w             lr, r1, r2
        sub.w             r12, r2, r1
        mov               r2, sp
        mov               r4, r1
        mov               r3, lr
1:
        ldrb              r5, [r4], #1
        adds              r3, #0x1
        strb              r5, [r2], #1
        blo               1b
        add.w             r3, lr, #0x20
        cmp               r3, #0x4
        blo               4f
2:
        mov               r2, sp
3:
        ldr.w             r5, [r1, r12]
        subs              r3, #0x4
        cmp               r3, #0x3
        str.w             r5, [r2, r12]
        add.w             r12, r12, #0x4
        bhi               3b
4:
        cbz               r3, 6f
        mov               r2, sp
        add               r1, r12
        add               r2, r12
5:
        ldrb              r5, [r1], #1
        subs              r3, #0x1
        strb              r5, [r2], #1
        bne               5b
6:
        mov               r1, sp
        vld1.8            {d16, d17}, [r1]!
        vld1.64           {d18, d19}, [r1]
        vst1.8            {d16, d17}, [r0]!
        vst1.8            {d18, d19}, [r0]
        dmb               ish
        add               sp, #0x20
        pop               {r4, r5, r7, pc}

asm_test::atomic_memcpy_load_align2::read_volatile_acquire_fence:
        push              {r4, r5, r7, lr}
        ldrh              r2, [r1, #0x1c]
        ldrh              r3, [r1, #0x1a]
        ldrh.w            r12, [r1, #0x18]
        ldrh.w            lr, [r1, #0x16]
        ldrh              r4, [r1, #0x14]
        ldrh              r5, [r1, #0x1e]
        strh              r5, [r0, #0x1e]
        ldrh              r5, [r1, #0x12]
        strh              r2, [r0, #0x1c]
        ldrh              r2, [r1, #0x10]
        strh              r3, [r0, #0x1a]
        ldrh              r3, [r1, #0xe]
        strh.w            r12, [r0, #0x18]
        ldrh.w            r12, [r1, #0xa]
        strh.w            lr, [r0, #0x16]
        ldrh.w            lr, [r1, #0x8]
        strh              r4, [r0, #0x14]
        ldrh              r4, [r1, #0x6]
        strh              r5, [r0, #0x12]
        ldrh              r5, [r1, #0x4]
        strh              r2, [r0, #0x10]
        ldrh              r2, [r1, #0x2]
        strh              r3, [r0, #0xe]
        ldrh              r3, [r1]
        ldrh              r1, [r1, #0xc]
        strh              r1, [r0, #0xc]
        strh.w            r12, [r0, #0xa]
        strh.w            lr, [r0, #0x8]
        strh              r4, [r0, #0x6]
        strh              r5, [r0, #0x4]
        strh              r2, [r0, #0x2]
        strh              r3, [r0]
        dmb               ish
        pop               {r4, r5, r7, pc}

asm_test::atomic_memcpy_load_align2::acquire:
        push              {r4, r5, r7, lr}
        sub               sp, #0x20
        adds              r2, r1, #0x3
        bic               r2, r2, #0x3
        cmp               r2, r1
        bne               0f
        movs              r3, #0x20
        mov.w             lr, #0x0
        b                 2f
0:
        sub.w             r12, r1, r2
        sub.w             lr, r2, r1
        mov               r3, sp
        mov               r4, r1
        mov               r2, r12
1:
        ldrb              r5, [r4], #1
        adds              r2, #0x1
        strb              r5, [r3], #1
        blo               1b
        add.w             r3, r12, #0x20
        cmp               r3, #0x4
        blo               4f
2:
        mov               r2, sp
3:
        ldr.w             r5, [r1, lr]
        subs              r3, #0x4
        cmp               r3, #0x3
        str.w             r5, [r2, lr]
        add.w             lr, lr, #0x4
        bhi               3b
4:
        cbz               r3, 5f
        ldrb.w            r5, [r1, lr]
        mov               r2, sp
        cmp               r3, #0x1
        strb.w            r5, [r2, lr]
        beq               5f
        add.w             r5, lr, #0x1
        cmp               r3, #0x2
        ldrb              r4, [r1, r5]
        strb              r4, [r2, r5]
        beq               5f
        add.w             r3, lr, #0x2
        ldrb              r1, [r1, r3]
        strb              r1, [r2, r3]
5:
        mov               r1, sp
        vld1.16           {d16, d17}, [r1]!
        vld1.64           {d18, d19}, [r1]
        vst1.16           {d16, d17}, [r0]!
        vst1.16           {d18, d19}, [r0]
        dmb               ish
        add               sp, #0x20
        pop               {r4, r5, r7, pc}

asm_test::atomic_memcpy_load_align4::read_volatile_acquire_fence:
        push              {r4, r5, r6, lr}
        ldr.w             lr, [r1, #0x14]
        ldr               r3, [r1, #0x10]
        ldr.w             r12, [r1, #0x1c]
        ldr               r2, [r1]
        ldr               r4, [r1, #0x4]
        ldr               r5, [r1, #0x8]
        ldr               r6, [r1, #0xc]
        ldr               r1, [r1, #0x18]
        stm.w             r0, {r2, r4, r5, r6}
        strd              r3, lr, [r0, #16]
        strd              r1, r12, [r0, #24]
        dmb               ish
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_load_align4::acquire:
        push              {r4, r5, r6, lr}
        ldr.w             r12, [r1, #0x1c]
        ldr.w             lr, [r1, #0x18]
        ldr               r2, [r1, #0x14]
        ldr               r3, [r1, #0x10]
        ldr               r4, [r1, #0xc]
        ldr               r5, [r1, #0x8]
        ldr               r6, [r1, #0x4]
        ldr               r1, [r1]
        strd              r5, r4, [r0, #8]
        strd              r1, r6, [r0]
        strd              r3, r2, [r0, #16]
        strd              lr, r12, [r0, #24]
        dmb               ish
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_load_align8::read_volatile_acquire_fence:
        push              {r4, r5, r6, lr}
        ldrd              r2, r3, [r1]
        ldrd              r12, lr, [r1, #8]
        ldrd              r4, r5, [r1, #16]
        ldrd              r1, r6, [r1, #24]
        stm.w             r0, {r2, r3, r12, lr}
        strd              r4, r5, [r0, #16]
        strd              r1, r6, [r0, #24]
        dmb               ish
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_load_align8::acquire:
        push              {r4, r5, r6, lr}
        ldr.w             r12, [r1, #0x1c]
        ldr.w             lr, [r1, #0x18]
        ldr               r2, [r1, #0x14]
        ldr               r3, [r1, #0x10]
        ldr               r4, [r1, #0xc]
        ldr               r5, [r1, #0x8]
        ldr               r6, [r1, #0x4]
        ldr               r1, [r1]
        strd              r5, r4, [r0, #8]
        strd              r1, r6, [r0]
        strd              r3, r2, [r0, #16]
        strd              lr, r12, [r0, #24]
        dmb               ish
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_load_align16::read_volatile_acquire_fence:
        push              {r4, r5, r6, lr}
        ldrd              r2, r3, [r1]
        ldrd              r12, lr, [r1, #8]
        ldrd              r4, r5, [r1, #16]
        ldrd              r1, r6, [r1, #24]
        stm.w             r0, {r2, r3, r12, lr}
        strd              r4, r5, [r0, #16]
        strd              r1, r6, [r0, #24]
        dmb               ish
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_load_align16::acquire:
        push              {r4, r5, r6, lr}
        ldr.w             r12, [r1, #0x1c]
        ldr.w             lr, [r1, #0x18]
        ldr               r2, [r1, #0x14]
        ldr               r3, [r1, #0x10]
        ldr               r4, [r1, #0xc]
        ldr               r5, [r1, #0x8]
        ldr               r6, [r1, #0x4]
        ldr               r1, [r1]
        strd              r5, r4, [r0, #8]
        strd              r1, r6, [r0]
        strd              r3, r2, [r0, #16]
        strd              lr, r12, [r0, #24]
        dmb               ish
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_store_align1::write_volatile_release_fence:
        dmb               ish
        vld1.8            {d16, d17}, [r1]!
        vld1.8            {d18, d19}, [r1]
        vst1.8            {d16, d17}, [r0]
        adds              r0, #0x10
        vst1.8            {d18, d19}, [r0]
        bx                lr

asm_test::atomic_memcpy_store_align1::release:
        push              {r4, r5, r7, lr}
        adds              r2, r0, #0x3
        dmb               ish
        bic               r2, r2, #0x3
        cmp               r2, r0
        bne               0f
        mov.w             lr, #0x0
        movs              r3, #0x20
        b                 2f
0:
        sub.w             r12, r0, r2
        sub.w             lr, r2, r0
        mov               r2, r1
        mov               r4, r0
        mov               r3, r12
1:
        ldrb              r5, [r2], #1
        adds              r3, #0x1
        strb              r5, [r4], #1
        blo               1b
        add.w             r3, r12, #0x20
        cmp               r3, #0x4
        blo               3f
2:
        ldr.w             r2, [r1, lr]
        subs              r3, #0x4
        cmp               r3, #0x3
        str.w             r2, [r0, lr]
        add.w             lr, lr, #0x4
        bhi               2b
3:
        cbz               r3, 5f
        add               r0, lr
        add               r1, lr
4:
        ldrb              r2, [r1], #1
        subs              r3, #0x1
        strb              r2, [r0], #1
        bne               4b
5:
        pop               {r4, r5, r7, pc}

asm_test::atomic_memcpy_store_align2::write_volatile_release_fence:
        dmb               ish
        vld1.16           {d16, d17}, [r1]!
        vld1.16           {d18, d19}, [r1]
        vst1.16           {d16, d17}, [r0]
        adds              r0, #0x10
        vst1.16           {d18, d19}, [r0]
        bx                lr

asm_test::atomic_memcpy_store_align2::release:
        push              {r4, r5, r7, lr}
        adds              r2, r0, #0x3
        dmb               ish
        bic               r2, r2, #0x3
        cmp               r2, r0
        bne               0f
        movs              r3, #0x20
        mov.w             lr, #0x0
        b                 2f
0:
        sub.w             r12, r0, r2
        sub.w             lr, r2, r0
        mov               r2, r1
        mov               r4, r0
        mov               r3, r12
1:
        ldrb              r5, [r2], #1
        adds              r3, #0x1
        strb              r5, [r4], #1
        blo               1b
        add.w             r3, r12, #0x20
        cmp               r3, #0x4
        blo               3f
2:
        ldr.w             r2, [r1, lr]
        subs              r3, #0x4
        cmp               r3, #0x3
        str.w             r2, [r0, lr]
        add.w             lr, lr, #0x4
        bhi               2b
3:
        cbz               r3, 4f
        ldrb.w            r2, [r1, lr]
        cmp               r3, #0x1
        strb.w            r2, [r0, lr]
        beq               4f
        add.w             r2, lr, #0x1
        cmp               r3, #0x2
        ldrb              r5, [r1, r2]
        strb              r5, [r0, r2]
        it                eq
        popeq             {r4, r5, r7, pc}
        add.w             r2, lr, #0x2
        ldrb              r1, [r1, r2]
        strb              r1, [r0, r2]
4:
        pop               {r4, r5, r7, pc}

asm_test::atomic_memcpy_store_align4::write_volatile_release_fence:
        dmb               ish
        vld1.32           {d16, d17}, [r1]!
        vld1.32           {d18, d19}, [r1]
        vst1.32           {d16, d17}, [r0]
        adds              r0, #0x10
        vst1.32           {d18, d19}, [r0]
        bx                lr

asm_test::atomic_memcpy_store_align4::release:
        push              {r4, r5, r6, lr}
        dmb               ish
        add.w             r6, r1, #0x8
        ldrd              r12, lr, [r1]
        ldm               r6, {r2, r3, r4, r5, r6}
        ldr               r1, [r1, #0x1c]
        str               r1, [r0, #0x1c]
        str               r6, [r0, #0x18]
        str               r5, [r0, #0x14]
        str               r4, [r0, #0x10]
        str               r3, [r0, #0xc]
        str               r2, [r0, #0x8]
        str.w             lr, [r0, #0x4]
        str.w             r12, [r0]
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_store_align8::write_volatile_release_fence:
        dmb               ish
        vld1.64           {d16, d17}, [r1]!
        vld1.64           {d18, d19}, [r1]
        vst1.64           {d16, d17}, [r0]
        adds              r0, #0x10
        vst1.64           {d18, d19}, [r0]
        bx                lr

asm_test::atomic_memcpy_store_align8::release:
        push              {r4, r5, r6, lr}
        dmb               ish
        add.w             r6, r1, #0x8
        ldrd              r12, lr, [r1]
        ldm               r6, {r2, r3, r4, r5, r6}
        ldr               r1, [r1, #0x1c]
        str               r1, [r0, #0x1c]
        str               r6, [r0, #0x18]
        str               r5, [r0, #0x14]
        str               r4, [r0, #0x10]
        str               r3, [r0, #0xc]
        str               r2, [r0, #0x8]
        str.w             lr, [r0, #0x4]
        str.w             r12, [r0]
        pop               {r4, r5, r6, pc}

asm_test::atomic_memcpy_store_align16::write_volatile_release_fence:
        dmb               ish
        vld1.64           {d16, d17}, [r1:128]!
        vld1.64           {d18, d19}, [r1:128]
        vst1.64           {d16, d17}, [r0:128]
        adds              r0, #0x10
        vst1.64           {d18, d19}, [r0:128]
        bx                lr

asm_test::atomic_memcpy_store_align16::release:
        push              {r4, r5, r6, lr}
        dmb               ish
        add.w             r6, r1, #0x8
        ldrd              r12, lr, [r1]
        ldm               r6, {r2, r3, r4, r5, r6}
        ldr               r1, [r1, #0x1c]
        str               r1, [r0, #0x1c]
        str               r6, [r0, #0x18]
        str               r5, [r0, #0x14]
        str               r4, [r0, #0x10]
        str               r3, [r0, #0xc]
        str               r2, [r0, #0x8]
        str.w             lr, [r0, #0x4]
        str.w             r12, [r0]
        pop               {r4, r5, r6, pc}
