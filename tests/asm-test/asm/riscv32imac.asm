asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        addi              sp, sp, -0x50
        sw                ra, 0x4c(sp)
        sw                s0, 0x48(sp)
        sw                s1, 0x44(sp)
        sw                s2, 0x40(sp)
        sw                s3, 0x3c(sp)
        sw                s4, 0x38(sp)
        sw                s5, 0x34(sp)
        sw                s6, 0x30(sp)
        sw                s7, 0x2c(sp)
        sw                s8, 0x28(sp)
        sw                s9, 0x24(sp)
        sw                s10, 0x20(sp)
        sw                s11, 0x1c(sp)
        lbu               a2, 0x1f(a1)
        sw                a2, 0x18(sp)
        lbu               a2, 0x1e(a1)
        sw                a2, 0x14(sp)
        lbu               a2, 0x1d(a1)
        sw                a2, 0x10(sp)
        lbu               a2, 0x1c(a1)
        sw                a2, 0xc(sp)
        lbu               a2, 0x1b(a1)
        sw                a2, 0x8(sp)
        lbu               t3, 0x1a(a1)
        lbu               t4, 0x19(a1)
        lbu               t5, 0x18(a1)
        lbu               t6, 0x17(a1)
        lbu               s2, 0x16(a1)
        lbu               s3, 0x15(a1)
        lbu               s4, 0x14(a1)
        lbu               s5, 0x13(a1)
        lbu               s6, 0x12(a1)
        lbu               s7, 0x11(a1)
        lbu               s8, 0x10(a1)
        lbu               s9, 0xf(a1)
        lbu               s10, 0xe(a1)
        lbu               s11, 0xd(a1)
        lbu               ra, 0xc(a1)
        lbu               s1, 0xb(a1)
        lbu               t2, 0xa(a1)
        lbu               t1, 0x9(a1)
        lbu               t0, 0x8(a1)
        lbu               a6, 0x7(a1)
        lbu               s0, 0x6(a1)
        lbu               a3, 0x5(a1)
        lbu               a2, 0x4(a1)
        lbu               a7, 0x3(a1)
        lbu               a5, 0x2(a1)
        lbu               a4, 0x1(a1)
        lbu               a1, 0x0(a1)
        sb                a2, 0x4(a0)
        sb                a3, 0x5(a0)
        sb                s0, 0x6(a0)
        sb                a6, 0x7(a0)
        sb                a1, 0x0(a0)
        sb                a4, 0x1(a0)
        sb                a5, 0x2(a0)
        sb                a7, 0x3(a0)
        sb                t0, 0x8(a0)
        sb                t1, 0x9(a0)
        sb                t2, 0xa(a0)
        sb                s1, 0xb(a0)
        sb                ra, 0xc(a0)
        sb                s11, 0xd(a0)
        sb                s10, 0xe(a0)
        sb                s9, 0xf(a0)
        sb                s8, 0x10(a0)
        sb                s7, 0x11(a0)
        sb                s6, 0x12(a0)
        sb                s5, 0x13(a0)
        sb                s4, 0x14(a0)
        sb                s3, 0x15(a0)
        sb                s2, 0x16(a0)
        sb                t6, 0x17(a0)
        sb                t5, 0x18(a0)
        sb                t4, 0x19(a0)
        sb                t3, 0x1a(a0)
        lw                a1, 0x8(sp)
        sb                a1, 0x1b(a0)
        lw                a1, 0xc(sp)
        sb                a1, 0x1c(a0)
        lw                a1, 0x10(sp)
        sb                a1, 0x1d(a0)
        lw                a1, 0x14(sp)
        sb                a1, 0x1e(a0)
        lw                a1, 0x18(sp)
        sb                a1, 0x1f(a0)
        fence             r, rw
        lw                ra, 0x4c(sp)
        lw                s0, 0x48(sp)
        lw                s1, 0x44(sp)
        lw                s2, 0x40(sp)
        lw                s3, 0x3c(sp)
        lw                s4, 0x38(sp)
        lw                s5, 0x34(sp)
        lw                s6, 0x30(sp)
        lw                s7, 0x2c(sp)
        lw                s8, 0x28(sp)
        lw                s9, 0x24(sp)
        lw                s10, 0x20(sp)
        lw                s11, 0x1c(sp)
        addi              sp, sp, 0x50
        ret

asm_test::atomic_memcpy_load_align1::acquire:
        addi              sp, sp, -0x30
        sw                ra, 0x2c(sp)
        addi              a2, a1, 0x3
        andi              a6, a2, -0x4
        bne               a6, a1, 0f
        li                t0, 0x0
        li                a3, 0x20
        j                 2f
0:
        sub               t0, a6, a1
        addi              a4, sp, 0xc
        add               a7, a4, t0
        mv                a3, a1
1:
        lb                a5, 0x0(a3)
        sb                a5, 0x0(a4)
        addi              a4, a4, 0x1
        addi              a3, a3, 0x1
        bne               a4, a7, 1b
        sub               a3, a1, a6
        addi              a3, a3, 0x20
        li                a4, 0x4
        bltu              a3, a4, 4f
2:
        add               a4, a1, t0
        addi              a5, sp, 0xc
        add               a5, a5, t0
        li                a6, 0x3
3:
        lw                a2, 0x0(a4)
        addi              a3, a3, -0x4
        addi              t0, t0, 0x4
        addi              a4, a4, 0x4
        srli              a7, a2, 0x18
        srli              t1, a2, 0x10
        srli              t2, a2, 0x8
        sb                a2, 0x0(a5)
        sb                t2, 0x1(a5)
        sb                t1, 0x2(a5)
        sb                a7, 0x3(a5)
        addi              a5, a5, 0x4
        bltu              a6, a3, 3b
4:
        beqz              a3, 6f
        add               a1, a1, t0
        addi              a4, sp, 0xc
        add               a2, a4, t0
5:
        lb                a4, 0x0(a1)
        addi              a1, a1, 0x1
        addi              a3, a3, -0x1
        sb                a4, 0x0(a2)
        addi              a2, a2, 0x1
        bnez              a3, 5b
6:
        addi              a1, sp, 0xc
        li                a2, 0x20
7:
        auipc             ra, 0x0
        jalr              r7b
        fence             r, rw
        lw                ra, 0x2c(sp)
        addi              sp, sp, 0x30
        ret

asm_test::atomic_memcpy_load_align2::read_volatile_acquire_fence:
        addi              sp, sp, -0x10
        sw                s0, 0xc(sp)
        sw                s1, 0x8(sp)
        lh                a6, 0x1e(a1)
        lh                a7, 0x1c(a1)
        lh                t0, 0x1a(a1)
        lh                t1, 0x18(a1)
        lh                t2, 0x16(a1)
        lh                t3, 0x14(a1)
        lh                t4, 0x12(a1)
        lh                t5, 0x10(a1)
        lh                t6, 0xe(a1)
        lh                a3, 0xc(a1)
        lh                a4, 0xa(a1)
        lh                a5, 0x8(a1)
        lh                a2, 0x6(a1)
        lh                s0, 0x4(a1)
        lh                s1, 0x2(a1)
        lh                a1, 0x0(a1)
        sh                a2, 0x6(a0)
        sh                s0, 0x4(a0)
        sh                s1, 0x2(a0)
        sh                a1, 0x0(a0)
        sh                a5, 0x8(a0)
        sh                a4, 0xa(a0)
        sh                a3, 0xc(a0)
        sh                t6, 0xe(a0)
        sh                t5, 0x10(a0)
        sh                t4, 0x12(a0)
        sh                t3, 0x14(a0)
        sh                t2, 0x16(a0)
        sh                t1, 0x18(a0)
        sh                t0, 0x1a(a0)
        sh                a7, 0x1c(a0)
        sh                a6, 0x1e(a0)
        fence             r, rw
        lw                s0, 0xc(sp)
        lw                s1, 0x8(sp)
        addi              sp, sp, 0x10
        ret

asm_test::atomic_memcpy_load_align2::acquire:
        addi              sp, sp, -0x30
        sw                ra, 0x2c(sp)
        addi              a2, a1, 0x3
        andi              a6, a2, -0x4
        bne               a6, a1, 0f
        li                t0, 0x0
        li                a3, 0x20
        j                 2f
0:
        sub               t0, a6, a1
        addi              a4, sp, 0xc
        add               a7, a4, t0
        mv                a3, a1
1:
        lb                a5, 0x0(a3)
        sb                a5, 0x0(a4)
        addi              a4, a4, 0x1
        addi              a3, a3, 0x1
        bne               a4, a7, 1b
        sub               a3, a1, a6
        addi              a3, a3, 0x20
        li                a4, 0x4
        bltu              a3, a4, 4f
2:
        add               a4, a1, t0
        addi              a5, sp, 0xc
        add               a5, a5, t0
        li                a6, 0x3
3:
        lw                a2, 0x0(a4)
        addi              a3, a3, -0x4
        addi              t0, t0, 0x4
        addi              a4, a4, 0x4
        srli              a7, a2, 0x18
        srli              t1, a2, 0x10
        srli              t2, a2, 0x8
        sb                a2, 0x0(a5)
        sb                t2, 0x1(a5)
        sb                t1, 0x2(a5)
        sb                a7, 0x3(a5)
        addi              a5, a5, 0x4
        bltu              a6, a3, 3b
4:
        beqz              a3, 6f
        add               a4, a1, t0
        addi              a5, sp, 0xc
        add               a3, a3, t0
        add               a2, a5, t0
        add               a1, a1, a3
5:
        lb                a3, 0x0(a4)
        addi              a4, a4, 0x1
        sb                a3, 0x0(a2)
        addi              a2, a2, 0x1
        bne               a4, a1, 5b
6:
        addi              a1, sp, 0xc
        li                a2, 0x20
7:
        auipc             ra, 0x0
        jalr              r7b
        fence             r, rw
        lw                ra, 0x2c(sp)
        addi              sp, sp, 0x30
        ret

asm_test::atomic_memcpy_load_align4::read_volatile_acquire_fence:
        lw                a6, 0x1c(a1)
        lw                a7, 0x18(a1)
        lw                t0, 0x14(a1)
        lw                a5, 0x10(a1)
        lw                a2, 0xc(a1)
        lw                a3, 0x8(a1)
        lw                a4, 0x4(a1)
        lw                a1, 0x0(a1)
        sw                a2, 0xc(a0)
        sw                a3, 0x8(a0)
        sw                a4, 0x4(a0)
        sw                a1, 0x0(a0)
        sw                a5, 0x10(a0)
        sw                t0, 0x14(a0)
        sw                a7, 0x18(a0)
        sw                a6, 0x1c(a0)
        fence             r, rw
        ret

asm_test::atomic_memcpy_load_align4::acquire:
        lw                a6, 0x1c(a1)
        lw                a7, 0x18(a1)
        lw                t0, 0x14(a1)
        lw                a5, 0x10(a1)
        lw                a2, 0xc(a1)
        lw                a3, 0x8(a1)
        lw                a4, 0x4(a1)
        lw                a1, 0x0(a1)
        sw                a2, 0xc(a0)
        sw                a3, 0x8(a0)
        sw                a4, 0x4(a0)
        sw                a1, 0x0(a0)
        sw                a5, 0x10(a0)
        sw                t0, 0x14(a0)
        sw                a7, 0x18(a0)
        sw                a6, 0x1c(a0)
        fence             r, rw
        ret

asm_test::atomic_memcpy_load_align8::read_volatile_acquire_fence:
        lw                a6, 0x18(a1)
        lw                a7, 0x1c(a1)
        lw                t0, 0x10(a1)
        lw                a5, 0x14(a1)
        lw                a2, 0x8(a1)
        lw                a3, 0xc(a1)
        lw                a4, 0x0(a1)
        lw                a1, 0x4(a1)
        sw                a2, 0x8(a0)
        sw                a3, 0xc(a0)
        sw                a4, 0x0(a0)
        sw                a1, 0x4(a0)
        sw                t0, 0x10(a0)
        sw                a5, 0x14(a0)
        sw                a6, 0x18(a0)
        sw                a7, 0x1c(a0)
        fence             r, rw
        ret

asm_test::atomic_memcpy_load_align8::acquire:
        lw                a6, 0x1c(a1)
        lw                a7, 0x18(a1)
        lw                t0, 0x14(a1)
        lw                a5, 0x10(a1)
        lw                a2, 0xc(a1)
        lw                a3, 0x8(a1)
        lw                a4, 0x4(a1)
        lw                a1, 0x0(a1)
        sw                a2, 0xc(a0)
        sw                a3, 0x8(a0)
        sw                a4, 0x4(a0)
        sw                a1, 0x0(a0)
        sw                a5, 0x10(a0)
        sw                t0, 0x14(a0)
        sw                a7, 0x18(a0)
        sw                a6, 0x1c(a0)
        fence             r, rw
        ret

asm_test::atomic_memcpy_load_align16::read_volatile_acquire_fence:
        lw                a6, 0x18(a1)
        lw                a7, 0x1c(a1)
        lw                t0, 0x10(a1)
        lw                a5, 0x14(a1)
        lw                a2, 0x8(a1)
        lw                a3, 0xc(a1)
        lw                a4, 0x0(a1)
        lw                a1, 0x4(a1)
        sw                a2, 0x8(a0)
        sw                a3, 0xc(a0)
        sw                a4, 0x0(a0)
        sw                a1, 0x4(a0)
        sw                t0, 0x10(a0)
        sw                a5, 0x14(a0)
        sw                a6, 0x18(a0)
        sw                a7, 0x1c(a0)
        fence             r, rw
        ret

asm_test::atomic_memcpy_load_align16::acquire:
        lw                a6, 0x1c(a1)
        lw                a7, 0x18(a1)
        lw                t0, 0x14(a1)
        lw                a5, 0x10(a1)
        lw                a2, 0xc(a1)
        lw                a3, 0x8(a1)
        lw                a4, 0x4(a1)
        lw                a1, 0x0(a1)
        sw                a2, 0xc(a0)
        sw                a3, 0x8(a0)
        sw                a4, 0x4(a0)
        sw                a1, 0x0(a0)
        sw                a5, 0x10(a0)
        sw                t0, 0x14(a0)
        sw                a7, 0x18(a0)
        sw                a6, 0x1c(a0)
        fence             r, rw
        ret

asm_test::atomic_memcpy_store_align1::write_volatile_release_fence:
        li                a2, 0x20
        fence             rw, w
0:
        auipc             t1, 0x0
        jr                t0b

asm_test::atomic_memcpy_store_align1::release:
        addi              a2, a0, 0x3
        andi              a6, a2, -0x4
        fence             rw, w
        bne               a6, a0, 0f
        li                t0, 0x0
        li                a3, 0x20
        j                 2f
0:
        sub               t0, a6, a0
        add               a7, a0, t0
        mv                a5, a1
        mv                a3, a0
1:
        lbu               a4, 0x0(a5)
        sb                a4, 0x0(a3)
        addi              a3, a3, 0x1
        addi              a5, a5, 0x1
        bne               a3, a7, 1b
        sub               a3, a0, a6
        addi              a3, a3, 0x20
        li                a4, 0x4
        bltu              a3, a4, 4f
2:
        add               a4, a1, t0
        add               a5, a0, t0
        li                a6, 0x3
3:
        lbu               a2, 0x1(a4)
        lbu               a7, 0x0(a4)
        lbu               t1, 0x2(a4)
        lbu               t2, 0x3(a4)
        slli              a2, a2, 0x8
        or                a7, a2, a7
        addi              a3, a3, -0x4
        addi              t0, t0, 0x4
        addi              a4, a4, 0x4
        slli              t1, t1, 0x10
        slli              t2, t2, 0x18
        or                a2, t2, t1
        or                a2, a2, a7
        sw                a2, 0x0(a5)
        addi              a5, a5, 0x4
        bltu              a6, a3, 3b
4:
        beqz              a3, 6f
        add               a1, a1, t0
        add               a0, a0, t0
5:
        lbu               a2, 0x0(a1)
        addi              a1, a1, 0x1
        addi              a3, a3, -0x1
        sb                a2, 0x0(a0)
        addi              a0, a0, 0x1
        bnez              a3, 5b
6:
        ret

asm_test::atomic_memcpy_store_align2::write_volatile_release_fence:
        li                a2, 0x20
        fence             rw, w
0:
        auipc             t1, 0x0
        jr                t0b

asm_test::atomic_memcpy_store_align2::release:
        addi              a2, a0, 0x3
        andi              a6, a2, -0x4
        fence             rw, w
        bne               a6, a0, 0f
        li                t0, 0x0
        li                a3, 0x20
        j                 2f
0:
        sub               t0, a6, a0
        add               a7, a0, t0
        mv                a5, a1
        mv                a3, a0
1:
        lbu               a4, 0x0(a5)
        sb                a4, 0x0(a3)
        addi              a3, a3, 0x1
        addi              a5, a5, 0x1
        bne               a3, a7, 1b
        sub               a3, a0, a6
        addi              a3, a3, 0x20
        li                a4, 0x4
        bltu              a3, a4, 4f
2:
        add               a4, a1, t0
        add               a5, a0, t0
        li                a6, 0x3
3:
        lbu               a2, 0x1(a4)
        lbu               a7, 0x0(a4)
        lbu               t1, 0x2(a4)
        lbu               t2, 0x3(a4)
        slli              a2, a2, 0x8
        or                a7, a2, a7
        addi              a3, a3, -0x4
        addi              t0, t0, 0x4
        addi              a4, a4, 0x4
        slli              t1, t1, 0x10
        slli              t2, t2, 0x18
        or                a2, t2, t1
        or                a2, a2, a7
        sw                a2, 0x0(a5)
        addi              a5, a5, 0x4
        bltu              a6, a3, 3b
4:
        beqz              a3, 6f
        add               a4, a1, t0
        add               a0, a0, t0
        add               a2, a3, t0
        add               a1, a1, a2
5:
        lbu               a2, 0x0(a4)
        addi              a4, a4, 0x1
        sb                a2, 0x0(a0)
        addi              a0, a0, 0x1
        bne               a4, a1, 5b
6:
        ret

asm_test::atomic_memcpy_store_align4::write_volatile_release_fence:
        fence             rw, w
        lw                a2, 0x1c(a1)
        sw                a2, 0x1c(a0)
        lw                a2, 0x18(a1)
        sw                a2, 0x18(a0)
        lw                a2, 0x14(a1)
        sw                a2, 0x14(a0)
        lw                a2, 0x10(a1)
        sw                a2, 0x10(a0)
        lw                a2, 0xc(a1)
        sw                a2, 0xc(a0)
        lw                a2, 0x8(a1)
        sw                a2, 0x8(a0)
        lw                a2, 0x4(a1)
        sw                a2, 0x4(a0)
        lw                a1, 0x0(a1)
        sw                a1, 0x0(a0)
        ret

asm_test::atomic_memcpy_store_align4::release:
        fence             rw, w
        lw                a2, 0x1c(a1)
        sw                a2, 0x1c(a0)
        lw                a2, 0x18(a1)
        sw                a2, 0x18(a0)
        lw                a2, 0x14(a1)
        sw                a2, 0x14(a0)
        lw                a2, 0x10(a1)
        sw                a2, 0x10(a0)
        lw                a2, 0xc(a1)
        sw                a2, 0xc(a0)
        lw                a2, 0x8(a1)
        sw                a2, 0x8(a0)
        lw                a2, 0x4(a1)
        sw                a2, 0x4(a0)
        lw                a1, 0x0(a1)
        sw                a1, 0x0(a0)
        ret

asm_test::atomic_memcpy_store_align8::write_volatile_release_fence:
        fence             rw, w
        lw                a2, 0x1c(a1)
        sw                a2, 0x1c(a0)
        lw                a2, 0x18(a1)
        sw                a2, 0x18(a0)
        lw                a2, 0x14(a1)
        sw                a2, 0x14(a0)
        lw                a2, 0x10(a1)
        sw                a2, 0x10(a0)
        lw                a2, 0xc(a1)
        sw                a2, 0xc(a0)
        lw                a2, 0x8(a1)
        sw                a2, 0x8(a0)
        lw                a2, 0x4(a1)
        sw                a2, 0x4(a0)
        lw                a1, 0x0(a1)
        sw                a1, 0x0(a0)
        ret

asm_test::atomic_memcpy_store_align8::release:
        fence             rw, w
        lw                a2, 0x1c(a1)
        sw                a2, 0x1c(a0)
        lw                a2, 0x18(a1)
        sw                a2, 0x18(a0)
        lw                a2, 0x14(a1)
        sw                a2, 0x14(a0)
        lw                a2, 0x10(a1)
        sw                a2, 0x10(a0)
        lw                a2, 0xc(a1)
        sw                a2, 0xc(a0)
        lw                a2, 0x8(a1)
        sw                a2, 0x8(a0)
        lw                a2, 0x4(a1)
        sw                a2, 0x4(a0)
        lw                a1, 0x0(a1)
        sw                a1, 0x0(a0)
        ret

asm_test::atomic_memcpy_store_align16::write_volatile_release_fence:
        fence             rw, w
        lw                a2, 0x1c(a1)
        sw                a2, 0x1c(a0)
        lw                a2, 0x18(a1)
        sw                a2, 0x18(a0)
        lw                a2, 0x14(a1)
        sw                a2, 0x14(a0)
        lw                a2, 0x10(a1)
        sw                a2, 0x10(a0)
        lw                a2, 0xc(a1)
        sw                a2, 0xc(a0)
        lw                a2, 0x8(a1)
        sw                a2, 0x8(a0)
        lw                a2, 0x4(a1)
        sw                a2, 0x4(a0)
        lw                a1, 0x0(a1)
        sw                a1, 0x0(a0)
        ret

asm_test::atomic_memcpy_store_align16::release:
        fence             rw, w
        lw                a2, 0x1c(a1)
        sw                a2, 0x1c(a0)
        lw                a2, 0x18(a1)
        sw                a2, 0x18(a0)
        lw                a2, 0x14(a1)
        sw                a2, 0x14(a0)
        lw                a2, 0x10(a1)
        sw                a2, 0x10(a0)
        lw                a2, 0xc(a1)
        sw                a2, 0xc(a0)
        lw                a2, 0x8(a1)
        sw                a2, 0x8(a0)
        lw                a2, 0x4(a1)
        sw                a2, 0x4(a0)
        lw                a1, 0x0(a1)
        sw                a1, 0x0(a0)
        ret
