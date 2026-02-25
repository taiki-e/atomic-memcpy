asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        sub               sp, sp, #0xf0
        str               x30, [sp, #0x90]
        stp               x28, x27, [sp, #0xa0]
        stp               x26, x25, [sp, #0xb0]
        stp               x24, x23, [sp, #0xc0]
        stp               x22, x21, [sp, #0xd0]
        stp               x20, x19, [sp, #0xe0]
        ldrb              w10, [x0, #0x3f]
        ldrb              w9, [x0, #0x3e]
        stp               w9, w10, [sp, #0x98]
        ldrb              w10, [x0, #0x3d]
        ldrb              w9, [x0, #0x3c]
        stp               w9, w10, [sp, #0x88]
        ldrb              w10, [x0, #0x3b]
        ldrb              w9, [x0, #0x3a]
        stp               w9, w10, [sp, #0x80]
        ldrb              w10, [x0, #0x39]
        ldrb              w9, [x0, #0x38]
        stp               w9, w10, [sp, #0x78]
        ldrb              w10, [x0, #0x37]
        ldrb              w9, [x0, #0x36]
        stp               w9, w10, [sp, #0x70]
        ldrb              w10, [x0, #0x35]
        ldrb              w9, [x0, #0x34]
        stp               w9, w10, [sp, #0x68]
        ldrb              w10, [x0, #0x33]
        ldrb              w9, [x0, #0x32]
        stp               w9, w10, [sp, #0x60]
        ldrb              w10, [x0, #0x31]
        ldrb              w9, [x0, #0x30]
        stp               w9, w10, [sp, #0x58]
        ldrb              w10, [x0, #0x2f]
        ldrb              w9, [x0, #0x2e]
        stp               w9, w10, [sp, #0x50]
        ldrb              w10, [x0, #0x2d]
        ldrb              w9, [x0, #0x2c]
        stp               w9, w10, [sp, #0x48]
        ldrb              w10, [x0, #0x2b]
        ldrb              w9, [x0, #0x2a]
        stp               w9, w10, [sp, #0x40]
        ldrb              w10, [x0, #0x29]
        ldrb              w9, [x0, #0x28]
        stp               w9, w10, [sp, #0x38]
        ldrb              w10, [x0, #0x27]
        ldrb              w9, [x0, #0x26]
        stp               w9, w10, [sp, #0x30]
        ldrb              w10, [x0, #0x25]
        ldrb              w9, [x0, #0x24]
        stp               w9, w10, [sp, #0x28]
        ldrb              w10, [x0, #0x23]
        ldrb              w9, [x0, #0x22]
        stp               w9, w10, [sp, #0x20]
        ldrb              w10, [x0, #0x21]
        ldrb              w9, [x0, #0x20]
        stp               w9, w10, [sp, #0x18]
        ldrb              w10, [x0, #0x1f]
        ldrb              w9, [x0, #0x1e]
        stp               w9, w10, [sp, #0x10]
        ldrb              w9, [x0, #0x1d]
        str               w9, [sp, #0xc]
        ldrb              w30, [x0, #0x1c]
        ldrb              w28, [x0, #0x1b]
        ldrb              w27, [x0, #0x1a]
        ldrb              w26, [x0, #0x19]
        ldrb              w25, [x0, #0x18]
        ldrb              w24, [x0, #0x17]
        ldrb              w23, [x0, #0x16]
        ldrb              w22, [x0, #0x15]
        ldrb              w21, [x0, #0x14]
        ldrb              w20, [x0, #0x13]
        ldrb              w19, [x0, #0x12]
        ldrb              w7, [x0, #0x11]
        ldrb              w6, [x0, #0x10]
        ldrb              w5, [x0, #0xf]
        ldrb              w4, [x0, #0xe]
        ldrb              w3, [x0, #0xd]
        ldrb              w2, [x0, #0xc]
        ldrb              w1, [x0, #0xb]
        ldrb              w18, [x0, #0xa]
        ldrb              w17, [x0, #0x9]
        ldrb              w16, [x0, #0x8]
        ldrb              w15, [x0, #0x7]
        ldrb              w14, [x0, #0x6]
        ldrb              w13, [x0, #0x5]
        ldrb              w10, [x0, #0x4]
        ldrb              w12, [x0, #0x3]
        ldrb              w11, [x0, #0x2]
        ldrb              w9, [x0, #0x1]
        ldrb              w0, [x0]
        strb              w13, [x8, #0x5]
        strb              w10, [x8, #0x4]
        strb              w9, [x8, #0x1]
        ldp               w10, w9, [sp, #0xc]
        strb              w0, [x8]
        strb              w11, [x8, #0x2]
        strb              w10, [x8, #0x1d]
        strb              w9, [x8, #0x1e]
        ldp               w10, w9, [sp, #0x14]
        strb              w12, [x8, #0x3]
        strb              w14, [x8, #0x6]
        strb              w10, [x8, #0x1f]
        strb              w9, [x8, #0x20]
        ldp               w10, w9, [sp, #0x1c]
        strb              w15, [x8, #0x7]
        strb              w16, [x8, #0x8]
        strb              w10, [x8, #0x21]
        strb              w9, [x8, #0x22]
        ldp               w10, w9, [sp, #0x24]
        strb              w17, [x8, #0x9]
        strb              w18, [x8, #0xa]
        strb              w10, [x8, #0x23]
        strb              w9, [x8, #0x24]
        ldp               w10, w9, [sp, #0x2c]
        strb              w1, [x8, #0xb]
        strb              w2, [x8, #0xc]
        strb              w10, [x8, #0x25]
        strb              w9, [x8, #0x26]
        ldp               w10, w9, [sp, #0x34]
        strb              w3, [x8, #0xd]
        strb              w4, [x8, #0xe]
        strb              w10, [x8, #0x27]
        strb              w9, [x8, #0x28]
        ldp               w10, w9, [sp, #0x3c]
        strb              w5, [x8, #0xf]
        strb              w6, [x8, #0x10]
        strb              w10, [x8, #0x29]
        strb              w9, [x8, #0x2a]
        ldp               w10, w9, [sp, #0x44]
        strb              w7, [x8, #0x11]
        strb              w19, [x8, #0x12]
        strb              w10, [x8, #0x2b]
        strb              w9, [x8, #0x2c]
        ldp               w10, w9, [sp, #0x4c]
        strb              w20, [x8, #0x13]
        strb              w21, [x8, #0x14]
        strb              w10, [x8, #0x2d]
        strb              w9, [x8, #0x2e]
        ldp               w10, w9, [sp, #0x54]
        strb              w22, [x8, #0x15]
        strb              w23, [x8, #0x16]
        strb              w10, [x8, #0x2f]
        strb              w9, [x8, #0x30]
        ldp               w10, w9, [sp, #0x5c]
        strb              w24, [x8, #0x17]
        strb              w25, [x8, #0x18]
        strb              w10, [x8, #0x31]
        strb              w9, [x8, #0x32]
        ldp               w10, w9, [sp, #0x64]
        strb              w26, [x8, #0x19]
        strb              w27, [x8, #0x1a]
        strb              w10, [x8, #0x33]
        strb              w9, [x8, #0x34]
        ldp               w10, w9, [sp, #0x6c]
        strb              w28, [x8, #0x1b]
        strb              w30, [x8, #0x1c]
        strb              w10, [x8, #0x35]
        strb              w9, [x8, #0x36]
        ldp               w10, w9, [sp, #0x74]
        strb              w10, [x8, #0x37]
        strb              w9, [x8, #0x38]
        ldp               w10, w9, [sp, #0x7c]
        strb              w10, [x8, #0x39]
        strb              w9, [x8, #0x3a]
        ldp               w10, w9, [sp, #0x84]
        strb              w9, [x8, #0x3c]
        ldr               w9, [sp, #0x8c]
        strb              w10, [x8, #0x3b]
        strb              w9, [x8, #0x3d]
        ldp               w10, w9, [sp, #0x98]
        strb              w10, [x8, #0x3e]
        strb              w9, [x8, #0x3f]
        dmb               ishld
        ldp               x20, x19, [sp, #0xe0]
        ldr               x30, [sp, #0x90]
        ldp               x22, x21, [sp, #0xd0]
        ldp               x24, x23, [sp, #0xc0]
        ldp               x26, x25, [sp, #0xb0]
        ldp               x28, x27, [sp, #0xa0]
        add               sp, sp, #0xf0
        ret

asm_test::atomic_memcpy_load_align1::acquire:
        sub               sp, sp, #0x40
        add               x9, x0, #0x7
        and               x10, x9, #0xfffffffffffffff8
        subs              x9, x10, x0
        b.ne              0f
        mov               w10, #0x40              // =64
        b                 2f
0:
        sub               x10, x0, x10
        mov               x11, sp
        mov               x13, x0
        mov               x12, x10
1:
        ldrb              w14, [x13], #0x1
        adds              x12, x12, #0x1
        strb              w14, [x11], #0x1
        b.lo              1b
        add               x10, x10, #0x40
        cmp               x10, #0x8
        b.lo              4f
2:
        mov               x11, sp
3:
        sub               x10, x10, #0x8
        ldr               x12, [x0, x9]
        cmp               x10, #0x7
        str               x12, [x11, x9]
        add               x9, x9, #0x8
        b.hi              3b
4:
        cbz               x10, 6f
        mov               x12, sp
        add               x11, x0, x9
        add               x9, x12, x9
5:
        ldrb              w12, [x11], #0x1
        subs              x10, x10, #0x1
        strb              w12, [x9], #0x1
        b.ne              5b
6:
        ldp               q0, q1, [sp]
        stp               q0, q1, [x8]
        ldp               q0, q2, [sp, #0x20]
        stp               q0, q2, [x8, #0x20]
        dmb               ishld
        add               sp, sp, #0x40
        ret

asm_test::atomic_memcpy_load_align2::read_volatile_acquire_fence:
        sub               sp, sp, #0x70
        str               x30, [sp, #0x10]
        stp               x28, x27, [sp, #0x20]
        stp               x26, x25, [sp, #0x30]
        stp               x24, x23, [sp, #0x40]
        stp               x22, x21, [sp, #0x50]
        stp               x20, x19, [sp, #0x60]
        ldrh              w10, [x0, #0x3e]
        ldrh              w9, [x0, #0x3c]
        stp               w9, w10, [sp, #0x18]
        ldrh              w9, [x0, #0x3a]
        str               w9, [sp, #0xc]
        ldrh              w12, [x0, #0x38]
        ldrh              w13, [x0, #0x36]
        ldrh              w14, [x0, #0x34]
        ldrh              w15, [x0, #0x32]
        ldrh              w16, [x0, #0x30]
        ldrh              w17, [x0, #0x2e]
        ldrh              w18, [x0, #0x2c]
        ldrh              w1, [x0, #0x2a]
        ldrh              w2, [x0, #0x28]
        ldrh              w3, [x0, #0x26]
        ldrh              w4, [x0, #0x24]
        ldrh              w5, [x0, #0x22]
        ldrh              w6, [x0, #0x20]
        ldrh              w7, [x0, #0x1e]
        ldrh              w19, [x0, #0x1c]
        ldrh              w20, [x0, #0x1a]
        ldrh              w21, [x0, #0x18]
        ldrh              w22, [x0, #0x16]
        ldrh              w23, [x0, #0x14]
        ldrh              w24, [x0, #0x12]
        ldrh              w25, [x0, #0x10]
        ldrh              w26, [x0, #0xe]
        ldrh              w27, [x0, #0xc]
        ldrh              w28, [x0, #0xa]
        ldrh              w30, [x0, #0x8]
        ldrh              w11, [x0, #0x6]
        ldrh              w9, [x0, #0x4]
        ldrh              w10, [x0, #0x2]
        ldrh              w0, [x0]
        strh              w28, [x8, #0xa]
        strh              w9, [x8, #0x4]
        ldr               w9, [sp, #0xc]
        strh              w10, [x8, #0x2]
        strh              w9, [x8, #0x3a]
        ldp               w10, w9, [sp, #0x18]
        strh              w0, [x8]
        strh              w11, [x8, #0x6]
        strh              w30, [x8, #0x8]
        strh              w27, [x8, #0xc]
        strh              w26, [x8, #0xe]
        strh              w25, [x8, #0x10]
        strh              w24, [x8, #0x12]
        strh              w23, [x8, #0x14]
        strh              w22, [x8, #0x16]
        strh              w21, [x8, #0x18]
        strh              w20, [x8, #0x1a]
        strh              w19, [x8, #0x1c]
        strh              w7, [x8, #0x1e]
        strh              w6, [x8, #0x20]
        strh              w5, [x8, #0x22]
        strh              w4, [x8, #0x24]
        strh              w3, [x8, #0x26]
        strh              w2, [x8, #0x28]
        strh              w1, [x8, #0x2a]
        strh              w18, [x8, #0x2c]
        strh              w17, [x8, #0x2e]
        strh              w16, [x8, #0x30]
        strh              w15, [x8, #0x32]
        strh              w14, [x8, #0x34]
        strh              w13, [x8, #0x36]
        strh              w12, [x8, #0x38]
        strh              w10, [x8, #0x3c]
        strh              w9, [x8, #0x3e]
        dmb               ishld
        ldp               x20, x19, [sp, #0x60]
        ldr               x30, [sp, #0x10]
        ldp               x22, x21, [sp, #0x50]
        ldp               x24, x23, [sp, #0x40]
        ldp               x26, x25, [sp, #0x30]
        ldp               x28, x27, [sp, #0x20]
        add               sp, sp, #0x70
        ret

asm_test::atomic_memcpy_load_align2::acquire:
        sub               sp, sp, #0x40
        add               x9, x0, #0x7
        and               x10, x9, #0xfffffffffffffff8
        subs              x9, x10, x0
        b.ne              0f
        mov               w10, #0x40              // =64
        b                 2f
0:
        sub               x10, x0, x10
        mov               x11, sp
        mov               x13, x0
        mov               x12, x10
1:
        ldrb              w14, [x13], #0x1
        adds              x12, x12, #0x1
        strb              w14, [x11], #0x1
        b.lo              1b
        add               x10, x10, #0x40
        cmp               x10, #0x8
        b.lo              4f
2:
        mov               x11, sp
3:
        sub               x10, x10, #0x8
        ldr               x12, [x0, x9]
        cmp               x10, #0x7
        str               x12, [x11, x9]
        add               x9, x9, #0x8
        b.hi              3b
4:
        cbz               x10, 5f
        ldrb              w12, [x0, x9]
        mov               x11, sp
        cmp               x10, #0x1
        strb              w12, [x11, x9]
        b.eq              5f
        add               x12, x9, #0x1
        cmp               x10, #0x2
        ldrb              w13, [x0, x12]
        strb              w13, [x11, x12]
        b.eq              5f
        add               x12, x9, #0x2
        cmp               x10, #0x3
        ldrb              w13, [x0, x12]
        strb              w13, [x11, x12]
        b.eq              5f
        add               x12, x9, #0x3
        cmp               x10, #0x4
        ldrb              w13, [x0, x12]
        strb              w13, [x11, x12]
        b.eq              5f
        add               x12, x9, #0x4
        cmp               x10, #0x5
        ldrb              w13, [x0, x12]
        strb              w13, [x11, x12]
        b.eq              5f
        add               x12, x9, #0x5
        cmp               x10, #0x6
        ldrb              w13, [x0, x12]
        strb              w13, [x11, x12]
        b.eq              5f
        add               x9, x9, #0x6
        ldrb              w10, [x0, x9]
        strb              w10, [x11, x9]
5:
        ldp               q0, q1, [sp]
        stp               q0, q1, [x8]
        ldp               q0, q2, [sp, #0x20]
        stp               q0, q2, [x8, #0x20]
        dmb               ishld
        add               sp, sp, #0x40
        ret

asm_test::atomic_memcpy_load_align4::read_volatile_acquire_fence:
        ldr               w9, [x0, #0x3c]
        ldr               w10, [x0, #0x38]
        ldr               w11, [x0, #0x34]
        ldr               w12, [x0, #0x30]
        ldr               w13, [x0, #0x2c]
        ldr               w14, [x0, #0x28]
        ldr               w15, [x0, #0x24]
        ldr               w16, [x0, #0x20]
        ldr               w17, [x0, #0x1c]
        ldr               w18, [x0, #0x18]
        ldr               w1, [x0, #0x14]
        ldr               w2, [x0, #0x10]
        ldr               w3, [x0, #0xc]
        ldr               w4, [x0, #0x8]
        ldr               w5, [x0, #0x4]
        ldr               w0, [x0]
        stp               w1, w18, [x8, #0x14]
        stp               w3, w2, [x8, #0xc]
        stp               w0, w5, [x8]
        str               w4, [x8, #0x8]
        stp               w17, w16, [x8, #0x1c]
        stp               w15, w14, [x8, #0x24]
        stp               w13, w12, [x8, #0x2c]
        stp               w11, w10, [x8, #0x34]
        str               w9, [x8, #0x3c]
        dmb               ishld
        ret

asm_test::atomic_memcpy_load_align4::acquire:
        sub               sp, sp, #0x40
        add               x9, x0, #0x7
        and               x10, x9, #0xfffffffffffffff8
        subs              x9, x10, x0
        b.ne              0f
        mov               w10, #0x40              // =64
        b                 2f
0:
        sub               x10, x0, x10
        mov               x11, sp
        mov               x13, x0
        mov               x12, x10
1:
        ldrb              w14, [x13], #0x1
        adds              x12, x12, #0x1
        strb              w14, [x11], #0x1
        b.lo              1b
        add               x10, x10, #0x40
        cmp               x10, #0x8
        b.lo              4f
2:
        mov               x11, sp
3:
        sub               x10, x10, #0x8
        ldr               x12, [x0, x9]
        cmp               x10, #0x7
        str               x12, [x11, x9]
        add               x9, x9, #0x8
        b.hi              3b
4:
        cbz               x10, 5f
        ldrb              w12, [x0, x9]
        mov               x11, sp
        cmp               x10, #0x1
        strb              w12, [x11, x9]
        b.eq              5f
        add               x12, x9, #0x1
        cmp               x10, #0x2
        ldrb              w13, [x0, x12]
        strb              w13, [x11, x12]
        b.eq              5f
        add               x12, x9, #0x2
        cmp               x10, #0x3
        ldrb              w13, [x0, x12]
        strb              w13, [x11, x12]
        b.eq              5f
        add               x12, x9, #0x3
        cmp               x10, #0x4
        ldrb              w13, [x0, x12]
        strb              w13, [x11, x12]
        b.eq              5f
        add               x12, x9, #0x4
        cmp               x10, #0x5
        ldrb              w13, [x0, x12]
        strb              w13, [x11, x12]
        b.eq              5f
        add               x12, x9, #0x5
        cmp               x10, #0x6
        ldrb              w13, [x0, x12]
        strb              w13, [x11, x12]
        b.eq              5f
        add               x9, x9, #0x6
        ldrb              w10, [x0, x9]
        strb              w10, [x11, x9]
5:
        ldp               q0, q1, [sp]
        stp               q0, q1, [x8]
        ldp               q0, q2, [sp, #0x20]
        stp               q0, q2, [x8, #0x20]
        dmb               ishld
        add               sp, sp, #0x40
        ret

asm_test::atomic_memcpy_load_align8::read_volatile_acquire_fence:
        ldr               x9, [x0, #0x38]
        ldr               x10, [x0, #0x30]
        ldr               x11, [x0, #0x28]
        ldr               x12, [x0, #0x20]
        ldr               x13, [x0, #0x18]
        ldr               x14, [x0, #0x10]
        ldr               x15, [x0, #0x8]
        ldr               x16, [x0]
        stp               x10, x9, [x8, #0x30]
        stp               x12, x11, [x8, #0x20]
        stp               x16, x15, [x8]
        stp               x14, x13, [x8, #0x10]
        dmb               ishld
        ret

asm_test::atomic_memcpy_load_align8::acquire:
        ldr               x9, [x0, #0x38]
        ldr               x10, [x0, #0x30]
        ldr               x11, [x0, #0x28]
        ldr               x12, [x0, #0x20]
        ldr               x13, [x0, #0x18]
        ldr               x14, [x0, #0x10]
        ldr               x15, [x0, #0x8]
        ldr               x16, [x0]
        stp               x10, x9, [x8, #0x30]
        stp               x12, x11, [x8, #0x20]
        stp               x16, x15, [x8]
        stp               x14, x13, [x8, #0x10]
        dmb               ishld
        ret

asm_test::atomic_memcpy_load_align16::read_volatile_acquire_fence:
        ldr               x9, [x0, #0x38]
        ldr               x10, [x0, #0x30]
        ldr               x11, [x0, #0x28]
        ldr               x12, [x0, #0x20]
        ldr               x13, [x0, #0x18]
        ldr               x14, [x0, #0x10]
        ldr               x15, [x0, #0x8]
        ldr               x16, [x0]
        stp               x10, x9, [x8, #0x30]
        stp               x12, x11, [x8, #0x20]
        stp               x16, x15, [x8]
        stp               x14, x13, [x8, #0x10]
        dmb               ishld
        ret

asm_test::atomic_memcpy_load_align16::acquire:
        ldr               x9, [x0, #0x38]
        ldr               x10, [x0, #0x30]
        ldr               x11, [x0, #0x28]
        ldr               x12, [x0, #0x20]
        ldr               x13, [x0, #0x18]
        ldr               x14, [x0, #0x10]
        ldr               x15, [x0, #0x8]
        ldr               x16, [x0]
        stp               x10, x9, [x8, #0x30]
        stp               x12, x11, [x8, #0x20]
        stp               x16, x15, [x8]
        stp               x14, x13, [x8, #0x10]
        dmb               ishld
        ret

asm_test::atomic_memcpy_store_align1::write_volatile_release_fence:
        dmb               ish
        ldr               q0, [x1]
        ldr               q1, [x1, #0x10]
        ldr               q2, [x1, #0x20]
        ldr               q3, [x1, #0x30]
        str               q3, [x0, #0x30]
        str               q2, [x0, #0x20]
        str               q1, [x0, #0x10]
        str               q0, [x0]
        ret

asm_test::atomic_memcpy_store_align1::release:
        add               x8, x0, #0x7
        dmb               ish
        and               x9, x8, #0xfffffffffffffff8
        subs              x8, x9, x0
        b.ne              0f
        mov               w9, #0x40               // =64
        b                 2f
0:
        sub               x9, x0, x9
        mov               x11, x1
        mov               x12, x0
        mov               x10, x9
1:
        ldrb              w13, [x11], #0x1
        adds              x10, x10, #0x1
        strb              w13, [x12], #0x1
        b.lo              1b
        add               x9, x9, #0x40
        cmp               x9, #0x8
        b.lo              3f
2:
        sub               x9, x9, #0x8
        ldr               x10, [x1, x8]
        cmp               x9, #0x7
        str               x10, [x0, x8]
        add               x8, x8, #0x8
        b.hi              2b
3:
        cbz               x9, 5f
        add               x10, x1, x8
        add               x8, x0, x8
4:
        ldrb              w11, [x10], #0x1
        subs              x9, x9, #0x1
        strb              w11, [x8], #0x1
        b.ne              4b
5:
        ret

asm_test::atomic_memcpy_store_align2::write_volatile_release_fence:
        dmb               ish
        ldr               q0, [x1]
        ldr               q1, [x1, #0x10]
        ldr               q2, [x1, #0x20]
        ldr               q3, [x1, #0x30]
        str               q3, [x0, #0x30]
        str               q2, [x0, #0x20]
        str               q1, [x0, #0x10]
        str               q0, [x0]
        ret

asm_test::atomic_memcpy_store_align2::release:
        add               x8, x0, #0x7
        dmb               ish
        and               x9, x8, #0xfffffffffffffff8
        subs              x8, x9, x0
        b.ne              0f
        mov               w9, #0x40               // =64
        b                 2f
0:
        sub               x9, x0, x9
        mov               x11, x1
        mov               x12, x0
        mov               x10, x9
1:
        ldrb              w13, [x11], #0x1
        adds              x10, x10, #0x1
        strb              w13, [x12], #0x1
        b.lo              1b
        add               x9, x9, #0x40
        cmp               x9, #0x8
        b.lo              3f
2:
        sub               x9, x9, #0x8
        ldr               x10, [x1, x8]
        cmp               x9, #0x7
        str               x10, [x0, x8]
        add               x8, x8, #0x8
        b.hi              2b
3:
        cbz               x9, 4f
        ldrb              w10, [x1, x8]
        cmp               x9, #0x1
        strb              w10, [x0, x8]
        b.eq              4f
        add               x10, x8, #0x1
        cmp               x9, #0x2
        ldrb              w11, [x1, x10]
        strb              w11, [x0, x10]
        b.eq              4f
        add               x10, x8, #0x2
        cmp               x9, #0x3
        ldrb              w11, [x1, x10]
        strb              w11, [x0, x10]
        b.eq              4f
        add               x10, x8, #0x3
        cmp               x9, #0x4
        ldrb              w11, [x1, x10]
        strb              w11, [x0, x10]
        b.eq              4f
        add               x10, x8, #0x4
        cmp               x9, #0x5
        ldrb              w11, [x1, x10]
        strb              w11, [x0, x10]
        b.eq              4f
        add               x10, x8, #0x5
        cmp               x9, #0x6
        ldrb              w11, [x1, x10]
        strb              w11, [x0, x10]
        b.eq              4f
        add               x8, x8, #0x6
        ldrb              w9, [x1, x8]
        strb              w9, [x0, x8]
4:
        ret

asm_test::atomic_memcpy_store_align4::write_volatile_release_fence:
        dmb               ish
        ldr               q0, [x1]
        ldr               q1, [x1, #0x10]
        ldr               q2, [x1, #0x20]
        ldr               q3, [x1, #0x30]
        str               q3, [x0, #0x30]
        str               q2, [x0, #0x20]
        str               q1, [x0, #0x10]
        str               q0, [x0]
        ret

asm_test::atomic_memcpy_store_align4::release:
        add               x8, x0, #0x7
        dmb               ish
        and               x9, x8, #0xfffffffffffffff8
        subs              x8, x9, x0
        b.ne              0f
        mov               w9, #0x40               // =64
        b                 2f
0:
        sub               x9, x0, x9
        mov               x11, x1
        mov               x12, x0
        mov               x10, x9
1:
        ldrb              w13, [x11], #0x1
        adds              x10, x10, #0x1
        strb              w13, [x12], #0x1
        b.lo              1b
        add               x9, x9, #0x40
        cmp               x9, #0x8
        b.lo              3f
2:
        sub               x9, x9, #0x8
        ldr               x10, [x1, x8]
        cmp               x9, #0x7
        str               x10, [x0, x8]
        add               x8, x8, #0x8
        b.hi              2b
3:
        cbz               x9, 4f
        ldrb              w10, [x1, x8]
        cmp               x9, #0x1
        strb              w10, [x0, x8]
        b.eq              4f
        add               x10, x8, #0x1
        cmp               x9, #0x2
        ldrb              w11, [x1, x10]
        strb              w11, [x0, x10]
        b.eq              4f
        add               x10, x8, #0x2
        cmp               x9, #0x3
        ldrb              w11, [x1, x10]
        strb              w11, [x0, x10]
        b.eq              4f
        add               x10, x8, #0x3
        cmp               x9, #0x4
        ldrb              w11, [x1, x10]
        strb              w11, [x0, x10]
        b.eq              4f
        add               x10, x8, #0x4
        cmp               x9, #0x5
        ldrb              w11, [x1, x10]
        strb              w11, [x0, x10]
        b.eq              4f
        add               x10, x8, #0x5
        cmp               x9, #0x6
        ldrb              w11, [x1, x10]
        strb              w11, [x0, x10]
        b.eq              4f
        add               x8, x8, #0x6
        ldrb              w9, [x1, x8]
        strb              w9, [x0, x8]
4:
        ret

asm_test::atomic_memcpy_store_align8::write_volatile_release_fence:
        dmb               ish
        ldr               q0, [x1]
        ldr               q1, [x1, #0x10]
        ldr               q2, [x1, #0x20]
        ldr               q3, [x1, #0x30]
        str               q3, [x0, #0x30]
        str               q2, [x0, #0x20]
        str               q1, [x0, #0x10]
        str               q0, [x0]
        ret

asm_test::atomic_memcpy_store_align8::release:
        dmb               ish
        ldp               x8, x9, [x1, #0x30]
        str               x9, [x0, #0x38]
        str               x8, [x0, #0x30]
        ldp               x8, x9, [x1, #0x20]
        str               x9, [x0, #0x28]
        str               x8, [x0, #0x20]
        ldp               x8, x9, [x1, #0x10]
        str               x9, [x0, #0x18]
        str               x8, [x0, #0x10]
        ldp               x8, x9, [x1]
        str               x9, [x0, #0x8]
        str               x8, [x0]
        ret

asm_test::atomic_memcpy_store_align16::write_volatile_release_fence:
        dmb               ish
        ldr               q0, [x1]
        ldr               q1, [x1, #0x10]
        ldr               q2, [x1, #0x20]
        ldr               q3, [x1, #0x30]
        str               q3, [x0, #0x30]
        str               q2, [x0, #0x20]
        str               q1, [x0, #0x10]
        str               q0, [x0]
        ret

asm_test::atomic_memcpy_store_align16::release:
        dmb               ish
        ldp               x8, x9, [x1, #0x30]
        str               x9, [x0, #0x38]
        str               x8, [x0, #0x30]
        ldp               x8, x9, [x1, #0x20]
        str               x9, [x0, #0x28]
        str               x8, [x0, #0x20]
        ldp               x8, x9, [x1, #0x10]
        str               x9, [x0, #0x18]
        str               x8, [x0, #0x10]
        ldp               x8, x9, [x1]
        str               x9, [x0, #0x8]
        str               x8, [x0]
        ret
