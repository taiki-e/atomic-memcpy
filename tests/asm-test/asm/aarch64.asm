asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        ldp               x9, x10, [x0]
        ldp               x11, x12, [x0, #0x10]
        ldp               x13, x14, [x0, #0x20]
        ldp               x15, x16, [x0, #0x30]
        str               x9, [x8]
        stp               x10, x11, [x8, #0x8]
        stp               x12, x13, [x8, #0x18]
        stp               x14, x15, [x8, #0x28]
        str               x16, [x8, #0x38]
        dmb               ishld
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
        ldp               x9, x10, [x0]
        ldp               x11, x12, [x0, #0x10]
        ldp               x13, x14, [x0, #0x20]
        ldp               x15, x16, [x0, #0x30]
        str               x9, [x8]
        stp               x10, x11, [x8, #0x8]
        stp               x12, x13, [x8, #0x18]
        stp               x14, x15, [x8, #0x28]
        str               x16, [x8, #0x38]
        dmb               ishld
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
        ldp               x9, x10, [x0]
        ldp               x11, x12, [x0, #0x10]
        ldp               x13, x14, [x0, #0x20]
        ldp               x15, x16, [x0, #0x30]
        str               x9, [x8]
        stp               x10, x11, [x8, #0x8]
        stp               x12, x13, [x8, #0x18]
        stp               x14, x15, [x8, #0x28]
        str               x16, [x8, #0x38]
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
        ldp               x9, x10, [x0]
        ldp               x11, x12, [x0, #0x10]
        ldp               x13, x14, [x0, #0x20]
        ldp               x15, x16, [x0, #0x30]
        str               x9, [x8]
        stp               x10, x11, [x8, #0x8]
        stp               x12, x13, [x8, #0x18]
        stp               x14, x15, [x8, #0x28]
        str               x16, [x8, #0x38]
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
        ldp               x9, x10, [x0]
        ldp               x11, x12, [x0, #0x10]
        ldp               x13, x14, [x0, #0x20]
        ldp               x15, x16, [x0, #0x30]
        str               x9, [x8]
        stp               x10, x11, [x8, #0x8]
        stp               x12, x13, [x8, #0x18]
        stp               x14, x15, [x8, #0x28]
        str               x16, [x8, #0x38]
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
