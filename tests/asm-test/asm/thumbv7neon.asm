asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        push              {r4, r5, r7, lr}
        ldr.w             r12, [r1, #0x14]
        ldr               r3, [r1, #0x10]
        ldr               r2, [r1, #0x1c]
        str               r2, [r0, #0x1c]
        ldr.w             lr, [r1]
        ldr               r2, [r1, #0x4]
        ldr               r4, [r1, #0x8]
        ldr               r5, [r1, #0xc]
        ldr               r1, [r1, #0x18]
        str               r1, [r0, #0x18]
        str.w             r12, [r0, #0x14]
        str               r3, [r0, #0x10]
        str               r5, [r0, #0xc]
        str               r4, [r0, #0x8]
        str               r2, [r0, #0x4]
        str.w             lr, [r0]
        dmb               ish
        pop               {r4, r5, r7, pc}

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
        ldr.w             r12, [r1, #0x14]
        ldr               r3, [r1, #0x10]
        ldr               r2, [r1, #0x1c]
        str               r2, [r0, #0x1c]
        ldr.w             lr, [r1]
        ldr               r2, [r1, #0x4]
        ldr               r4, [r1, #0x8]
        ldr               r5, [r1, #0xc]
        ldr               r1, [r1, #0x18]
        str               r1, [r0, #0x18]
        str.w             r12, [r0, #0x14]
        str               r3, [r0, #0x10]
        str               r5, [r0, #0xc]
        str               r4, [r0, #0x8]
        str               r2, [r0, #0x4]
        str.w             lr, [r0]
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
        ldrd              r2, r3, [r1]
        ldrd              r12, lr, [r1, #8]
        ldrd              r4, r5, [r1, #16]
        ldrd              r1, r6, [r1, #24]
        stm.w             r0, {r2, r3, r12, lr}
        strd              r4, r5, [r0, #16]
        strd              r1, r6, [r0, #24]
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
