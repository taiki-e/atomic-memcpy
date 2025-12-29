asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        addi              sp, sp, -0x190
        sd                ra, 0x188(sp)
        sd                s0, 0x180(sp)
        sd                s1, 0x178(sp)
        sd                s2, 0x170(sp)
        sd                s3, 0x168(sp)
        sd                s4, 0x160(sp)
        sd                s5, 0x158(sp)
        sd                s6, 0x150(sp)
        sd                s7, 0x148(sp)
        sd                s8, 0x140(sp)
        sd                s9, 0x138(sp)
        sd                s10, 0x130(sp)
        sd                s11, 0x128(sp)
        lbu               a2, 0x3f(a1)
        sd                a2, 0x120(sp)
        lbu               a2, 0x3e(a1)
        sd                a2, 0x118(sp)
        lbu               a2, 0x3d(a1)
        sd                a2, 0x110(sp)
        lbu               a2, 0x3c(a1)
        sd                a2, 0x108(sp)
        lbu               a2, 0x3b(a1)
        sd                a2, 0x100(sp)
        lbu               a2, 0x3a(a1)
        sd                a2, 0xf8(sp)
        lbu               a2, 0x39(a1)
        sd                a2, 0xf0(sp)
        lbu               a2, 0x38(a1)
        sd                a2, 0xe8(sp)
        lbu               a2, 0x37(a1)
        sd                a2, 0xe0(sp)
        lbu               a2, 0x36(a1)
        sd                a2, 0xd8(sp)
        lbu               a2, 0x35(a1)
        sd                a2, 0xd0(sp)
        lbu               a2, 0x34(a1)
        sd                a2, 0xc8(sp)
        lbu               a2, 0x33(a1)
        sd                a2, 0xc0(sp)
        lbu               a2, 0x32(a1)
        sd                a2, 0xb8(sp)
        lbu               a2, 0x31(a1)
        sd                a2, 0xb0(sp)
        lbu               a2, 0x30(a1)
        sd                a2, 0xa8(sp)
        lbu               a2, 0x2f(a1)
        sd                a2, 0xa0(sp)
        lbu               a2, 0x2e(a1)
        sd                a2, 0x98(sp)
        lbu               a2, 0x2d(a1)
        sd                a2, 0x90(sp)
        lbu               a2, 0x2c(a1)
        sd                a2, 0x88(sp)
        lbu               a2, 0x2b(a1)
        sd                a2, 0x80(sp)
        lbu               a2, 0x2a(a1)
        sd                a2, 0x78(sp)
        lbu               a2, 0x29(a1)
        sd                a2, 0x70(sp)
        lbu               a2, 0x28(a1)
        sd                a2, 0x68(sp)
        lbu               a2, 0x27(a1)
        sd                a2, 0x60(sp)
        lbu               a2, 0x26(a1)
        sd                a2, 0x58(sp)
        lbu               a2, 0x25(a1)
        sd                a2, 0x50(sp)
        lbu               a2, 0x24(a1)
        sd                a2, 0x48(sp)
        lbu               a2, 0x23(a1)
        sd                a2, 0x40(sp)
        lbu               a2, 0x22(a1)
        sd                a2, 0x38(sp)
        lbu               a2, 0x21(a1)
        sd                a2, 0x30(sp)
        lbu               a2, 0x20(a1)
        sd                a2, 0x28(sp)
        lbu               a2, 0x1f(a1)
        sd                a2, 0x20(sp)
        lbu               a2, 0x1e(a1)
        sd                a2, 0x18(sp)
        lbu               a2, 0x1d(a1)
        sd                a2, 0x10(sp)
        lbu               a2, 0x1c(a1)
        sd                a2, 0x8(sp)
        lbu               a2, 0x1b(a1)
        sd                a2, 0x0(sp)
        lbu               ra, 0x1a(a1)
        lbu               s11, 0x19(a1)
        lbu               s10, 0x18(a1)
        lbu               s9, 0x17(a1)
        lbu               s8, 0x16(a1)
        lbu               s7, 0x15(a1)
        lbu               s6, 0x14(a1)
        lbu               s5, 0x13(a1)
        lbu               s4, 0x12(a1)
        lbu               s3, 0x11(a1)
        lbu               s2, 0x10(a1)
        lbu               s1, 0xf(a1)
        lbu               s0, 0xe(a1)
        lbu               t6, 0xd(a1)
        lbu               t5, 0xc(a1)
        lbu               t4, 0xb(a1)
        lbu               t3, 0xa(a1)
        lbu               t2, 0x9(a1)
        lbu               t1, 0x8(a1)
        lbu               a7, 0x7(a1)
        lbu               a6, 0x6(a1)
        lbu               a3, 0x5(a1)
        lbu               a2, 0x4(a1)
        lbu               t0, 0x3(a1)
        lbu               a5, 0x2(a1)
        lbu               a4, 0x1(a1)
        lbu               a1, 0x0(a1)
        sb                a2, 0x4(a0)
        sb                a3, 0x5(a0)
        sb                a6, 0x6(a0)
        sb                a7, 0x7(a0)
        sb                a1, 0x0(a0)
        sb                a4, 0x1(a0)
        sb                a5, 0x2(a0)
        sb                t0, 0x3(a0)
        sb                t1, 0x8(a0)
        sb                t2, 0x9(a0)
        sb                t3, 0xa(a0)
        sb                t4, 0xb(a0)
        sb                t5, 0xc(a0)
        sb                t6, 0xd(a0)
        sb                s0, 0xe(a0)
        sb                s1, 0xf(a0)
        sb                s2, 0x10(a0)
        sb                s3, 0x11(a0)
        sb                s4, 0x12(a0)
        sb                s5, 0x13(a0)
        sb                s6, 0x14(a0)
        sb                s7, 0x15(a0)
        sb                s8, 0x16(a0)
        sb                s9, 0x17(a0)
        sb                s10, 0x18(a0)
        sb                s11, 0x19(a0)
        sb                ra, 0x1a(a0)
        ld                a1, 0x0(sp)
        sb                a1, 0x1b(a0)
        ld                a1, 0x8(sp)
        sb                a1, 0x1c(a0)
        ld                a1, 0x10(sp)
        sb                a1, 0x1d(a0)
        ld                a1, 0x18(sp)
        sb                a1, 0x1e(a0)
        ld                a1, 0x20(sp)
        sb                a1, 0x1f(a0)
        ld                a1, 0x28(sp)
        sb                a1, 0x20(a0)
        ld                a1, 0x30(sp)
        sb                a1, 0x21(a0)
        ld                a1, 0x38(sp)
        sb                a1, 0x22(a0)
        ld                a1, 0x40(sp)
        sb                a1, 0x23(a0)
        ld                a1, 0x48(sp)
        sb                a1, 0x24(a0)
        ld                a1, 0x50(sp)
        sb                a1, 0x25(a0)
        ld                a1, 0x58(sp)
        sb                a1, 0x26(a0)
        ld                a1, 0x60(sp)
        sb                a1, 0x27(a0)
        ld                a1, 0x68(sp)
        sb                a1, 0x28(a0)
        ld                a1, 0x70(sp)
        sb                a1, 0x29(a0)
        ld                a1, 0x78(sp)
        sb                a1, 0x2a(a0)
        ld                a1, 0x80(sp)
        sb                a1, 0x2b(a0)
        ld                a1, 0x88(sp)
        sb                a1, 0x2c(a0)
        ld                a1, 0x90(sp)
        sb                a1, 0x2d(a0)
        ld                a1, 0x98(sp)
        sb                a1, 0x2e(a0)
        ld                a1, 0xa0(sp)
        sb                a1, 0x2f(a0)
        ld                a1, 0xa8(sp)
        sb                a1, 0x30(a0)
        ld                a1, 0xb0(sp)
        sb                a1, 0x31(a0)
        ld                a1, 0xb8(sp)
        sb                a1, 0x32(a0)
        ld                a1, 0xc0(sp)
        sb                a1, 0x33(a0)
        ld                a1, 0xc8(sp)
        sb                a1, 0x34(a0)
        ld                a1, 0xd0(sp)
        sb                a1, 0x35(a0)
        ld                a1, 0xd8(sp)
        sb                a1, 0x36(a0)
        ld                a1, 0xe0(sp)
        sb                a1, 0x37(a0)
        ld                a1, 0xe8(sp)
        sb                a1, 0x38(a0)
        ld                a1, 0xf0(sp)
        sb                a1, 0x39(a0)
        ld                a1, 0xf8(sp)
        sb                a1, 0x3a(a0)
        ld                a1, 0x100(sp)
        sb                a1, 0x3b(a0)
        ld                a1, 0x108(sp)
        sb                a1, 0x3c(a0)
        ld                a1, 0x110(sp)
        sb                a1, 0x3d(a0)
        ld                a1, 0x118(sp)
        sb                a1, 0x3e(a0)
        ld                a1, 0x120(sp)
        sb                a1, 0x3f(a0)
        fence             r, rw
        ld                ra, 0x188(sp)
        ld                s0, 0x180(sp)
        ld                s1, 0x178(sp)
        ld                s2, 0x170(sp)
        ld                s3, 0x168(sp)
        ld                s4, 0x160(sp)
        ld                s5, 0x158(sp)
        ld                s6, 0x150(sp)
        ld                s7, 0x148(sp)
        ld                s8, 0x140(sp)
        ld                s9, 0x138(sp)
        ld                s10, 0x130(sp)
        ld                s11, 0x128(sp)
        addi              sp, sp, 0x190
        ret

asm_test::atomic_memcpy_load_align1::acquire:
        addi              sp, sp, -0x50
        sd                ra, 0x48(sp)
        addi              a2, a1, 0x7
        andi              a6, a2, -0x8
        bne               a6, a1, 0f
        li                t0, 0x0
        li                a3, 0x40
        j                 2f
0:
        sub               t0, a6, a1
        addi              a4, sp, 0x8
        add               a7, a4, t0
        mv                a3, a1
1:
        lb                a5, 0x0(a3)
        sb                a5, 0x0(a4)
        addi              a4, a4, 0x1
        addi              a3, a3, 0x1
        bne               a4, a7, 1b
        sub               a3, a1, a6
        addi              a3, a3, 0x40
        li                a4, 0x8
        bltu              a3, a4, 4f
2:
        add               a4, a1, t0
        addi              a5, sp, 0x8
        add               a5, a5, t0
        li                a6, 0x7
3:
        ld                a2, 0x0(a4)
        addi              a3, a3, -0x8
        addi              t0, t0, 0x8
        addi              a4, a4, 0x8
        srli              a7, a2, 0x38
        srli              t1, a2, 0x30
        srli              t2, a2, 0x28
        srli              t3, a2, 0x20
        srli              t4, a2, 0x18
        srli              t5, a2, 0x10
        sb                t3, 0x4(a5)
        sb                t2, 0x5(a5)
        sb                t1, 0x6(a5)
        sb                a7, 0x7(a5)
        srli              a7, a2, 0x8
        sb                a2, 0x0(a5)
        sb                a7, 0x1(a5)
        sb                t5, 0x2(a5)
        sb                t4, 0x3(a5)
        addi              a5, a5, 0x8
        bltu              a6, a3, 3b
4:
        beqz              a3, 6f
        add               a1, a1, t0
        addi              a4, sp, 0x8
        add               a2, a4, t0
5:
        lb                a4, 0x0(a1)
        addi              a1, a1, 0x1
        addi              a3, a3, -0x1
        sb                a4, 0x0(a2)
        addi              a2, a2, 0x1
        bnez              a3, 5b
6:
        addi              a1, sp, 0x8
        li                a2, 0x40
7:
        auipc             ra, 0x0
        jalr              r7b
        fence             r, rw
        ld                ra, 0x48(sp)
        addi              sp, sp, 0x50
        ret

asm_test::atomic_memcpy_load_align2::read_volatile_acquire_fence:
        addi              sp, sp, -0x90
        sd                ra, 0x88(sp)
        sd                s0, 0x80(sp)
        sd                s1, 0x78(sp)
        sd                s2, 0x70(sp)
        sd                s3, 0x68(sp)
        sd                s4, 0x60(sp)
        sd                s5, 0x58(sp)
        sd                s6, 0x50(sp)
        sd                s7, 0x48(sp)
        sd                s8, 0x40(sp)
        sd                s9, 0x38(sp)
        sd                s10, 0x30(sp)
        sd                s11, 0x28(sp)
        lh                a2, 0x3e(a1)
        sd                a2, 0x20(sp)
        lh                a2, 0x3c(a1)
        sd                a2, 0x18(sp)
        lh                a2, 0x3a(a1)
        sd                a2, 0x10(sp)
        lh                a2, 0x38(a1)
        sd                a2, 0x8(sp)
        lh                a2, 0x36(a1)
        sd                a2, 0x0(sp)
        lh                t3, 0x34(a1)
        lh                t4, 0x32(a1)
        lh                t5, 0x30(a1)
        lh                t6, 0x2e(a1)
        lh                s2, 0x2c(a1)
        lh                s3, 0x2a(a1)
        lh                s4, 0x28(a1)
        lh                s5, 0x26(a1)
        lh                s6, 0x24(a1)
        lh                s7, 0x22(a1)
        lh                s8, 0x20(a1)
        lh                s9, 0x1e(a1)
        lh                s10, 0x1c(a1)
        lh                s11, 0x1a(a1)
        lh                ra, 0x18(a1)
        lh                s1, 0x16(a1)
        lh                t2, 0x14(a1)
        lh                t1, 0x12(a1)
        lh                t0, 0x10(a1)
        lh                a6, 0xe(a1)
        lh                s0, 0xc(a1)
        lh                a3, 0xa(a1)
        lh                a2, 0x8(a1)
        lh                a7, 0x6(a1)
        lh                a5, 0x4(a1)
        lh                a4, 0x2(a1)
        lh                a1, 0x0(a1)
        sh                a2, 0x8(a0)
        sh                a3, 0xa(a0)
        sh                s0, 0xc(a0)
        sh                a6, 0xe(a0)
        sh                a1, 0x0(a0)
        sh                a4, 0x2(a0)
        sh                a5, 0x4(a0)
        sh                a7, 0x6(a0)
        sh                t0, 0x10(a0)
        sh                t1, 0x12(a0)
        sh                t2, 0x14(a0)
        sh                s1, 0x16(a0)
        sh                ra, 0x18(a0)
        sh                s11, 0x1a(a0)
        sh                s10, 0x1c(a0)
        sh                s9, 0x1e(a0)
        sh                s8, 0x20(a0)
        sh                s7, 0x22(a0)
        sh                s6, 0x24(a0)
        sh                s5, 0x26(a0)
        sh                s4, 0x28(a0)
        sh                s3, 0x2a(a0)
        sh                s2, 0x2c(a0)
        sh                t6, 0x2e(a0)
        sh                t5, 0x30(a0)
        sh                t4, 0x32(a0)
        sh                t3, 0x34(a0)
        ld                a1, 0x0(sp)
        sh                a1, 0x36(a0)
        ld                a1, 0x8(sp)
        sh                a1, 0x38(a0)
        ld                a1, 0x10(sp)
        sh                a1, 0x3a(a0)
        ld                a1, 0x18(sp)
        sh                a1, 0x3c(a0)
        ld                a1, 0x20(sp)
        sh                a1, 0x3e(a0)
        fence             r, rw
        ld                ra, 0x88(sp)
        ld                s0, 0x80(sp)
        ld                s1, 0x78(sp)
        ld                s2, 0x70(sp)
        ld                s3, 0x68(sp)
        ld                s4, 0x60(sp)
        ld                s5, 0x58(sp)
        ld                s6, 0x50(sp)
        ld                s7, 0x48(sp)
        ld                s8, 0x40(sp)
        ld                s9, 0x38(sp)
        ld                s10, 0x30(sp)
        ld                s11, 0x28(sp)
        addi              sp, sp, 0x90
        ret

asm_test::atomic_memcpy_load_align2::acquire:
        addi              sp, sp, -0x50
        sd                ra, 0x48(sp)
        addi              a2, a1, 0x7
        andi              a6, a2, -0x8
        bne               a6, a1, 0f
        li                t0, 0x0
        li                t2, 0x40
        j                 2f
0:
        sub               t0, a6, a1
        addi              a4, sp, 0x8
        add               a7, a4, t0
        mv                a3, a1
1:
        lb                a5, 0x0(a3)
        sb                a5, 0x0(a4)
        addi              a4, a4, 0x1
        addi              a3, a3, 0x1
        bne               a4, a7, 1b
        sub               a3, a1, a6
        addi              t2, a3, 0x40
        li                a4, 0x8
        bltu              t2, a4, 4f
2:
        add               a4, a1, t0
        addi              a5, sp, 0x8
        add               a5, a5, t0
        li                a6, 0x7
3:
        ld                a2, 0x0(a4)
        addi              t2, t2, -0x8
        addi              t0, t0, 0x8
        addi              a4, a4, 0x8
        srli              a7, a2, 0x38
        srli              t1, a2, 0x30
        srli              t3, a2, 0x28
        srli              a3, a2, 0x20
        srli              t4, a2, 0x18
        srli              t5, a2, 0x10
        sb                a3, 0x4(a5)
        sb                t3, 0x5(a5)
        sb                t1, 0x6(a5)
        sb                a7, 0x7(a5)
        srli              a3, a2, 0x8
        sb                a2, 0x0(a5)
        sb                a3, 0x1(a5)
        sb                t5, 0x2(a5)
        sb                t4, 0x3(a5)
        addi              a5, a5, 0x8
        bltu              a6, t2, 3b
4:
        beqz              t2, 6f
        add               a4, a1, t0
        addi              a5, sp, 0x8
        add               a3, t2, t0
        add               a2, a5, t0
        add               a1, a1, a3
5:
        lb                a3, 0x0(a4)
        addi              a4, a4, 0x1
        sb                a3, 0x0(a2)
        addi              a2, a2, 0x1
        bne               a4, a1, 5b
6:
        addi              a1, sp, 0x8
        li                a2, 0x40
7:
        auipc             ra, 0x0
        jalr              r7b
        fence             r, rw
        ld                ra, 0x48(sp)
        addi              sp, sp, 0x50
        ret

asm_test::atomic_memcpy_load_align4::read_volatile_acquire_fence:
        addi              sp, sp, -0x10
        sd                s0, 0x8(sp)
        sd                s1, 0x0(sp)
        lw                a6, 0x3c(a1)
        lw                a7, 0x38(a1)
        lw                t0, 0x34(a1)
        lw                t1, 0x30(a1)
        lw                t2, 0x2c(a1)
        lw                t3, 0x28(a1)
        lw                t4, 0x24(a1)
        lw                t5, 0x20(a1)
        lw                t6, 0x1c(a1)
        lw                a3, 0x18(a1)
        lw                a4, 0x14(a1)
        lw                a5, 0x10(a1)
        lw                a2, 0xc(a1)
        lw                s0, 0x8(a1)
        lw                s1, 0x4(a1)
        lw                a1, 0x0(a1)
        sw                a2, 0xc(a0)
        sw                s0, 0x8(a0)
        sw                s1, 0x4(a0)
        sw                a1, 0x0(a0)
        sw                a5, 0x10(a0)
        sw                a4, 0x14(a0)
        sw                a3, 0x18(a0)
        sw                t6, 0x1c(a0)
        sw                t5, 0x20(a0)
        sw                t4, 0x24(a0)
        sw                t3, 0x28(a0)
        sw                t2, 0x2c(a0)
        sw                t1, 0x30(a0)
        sw                t0, 0x34(a0)
        sw                a7, 0x38(a0)
        sw                a6, 0x3c(a0)
        fence             r, rw
        ld                s0, 0x8(sp)
        ld                s1, 0x0(sp)
        addi              sp, sp, 0x10
        ret

asm_test::atomic_memcpy_load_align4::acquire:
        addi              sp, sp, -0x50
        sd                ra, 0x48(sp)
        addi              a2, a1, 0x7
        andi              a6, a2, -0x8
        bne               a6, a1, 0f
        li                t0, 0x0
        li                t2, 0x40
        j                 2f
0:
        sub               t0, a6, a1
        addi              a4, sp, 0x8
        add               a7, a4, t0
        mv                a3, a1
1:
        lb                a5, 0x0(a3)
        sb                a5, 0x0(a4)
        addi              a4, a4, 0x1
        addi              a3, a3, 0x1
        bne               a4, a7, 1b
        sub               a3, a1, a6
        addi              t2, a3, 0x40
        li                a4, 0x8
        bltu              t2, a4, 4f
2:
        add               a4, a1, t0
        addi              a5, sp, 0x8
        add               a5, a5, t0
        li                a6, 0x7
3:
        ld                a2, 0x0(a4)
        addi              t2, t2, -0x8
        addi              t0, t0, 0x8
        addi              a4, a4, 0x8
        srli              a7, a2, 0x38
        srli              t1, a2, 0x30
        srli              t3, a2, 0x28
        srli              a3, a2, 0x20
        srli              t4, a2, 0x18
        srli              t5, a2, 0x10
        sb                a3, 0x4(a5)
        sb                t3, 0x5(a5)
        sb                t1, 0x6(a5)
        sb                a7, 0x7(a5)
        srli              a3, a2, 0x8
        sb                a2, 0x0(a5)
        sb                a3, 0x1(a5)
        sb                t5, 0x2(a5)
        sb                t4, 0x3(a5)
        addi              a5, a5, 0x8
        bltu              a6, t2, 3b
4:
        beqz              t2, 6f
        add               a4, a1, t0
        addi              a5, sp, 0x8
        add               a3, t2, t0
        add               a2, a5, t0
        add               a1, a1, a3
5:
        lb                a3, 0x0(a4)
        addi              a4, a4, 0x1
        sb                a3, 0x0(a2)
        addi              a2, a2, 0x1
        bne               a4, a1, 5b
6:
        addi              a1, sp, 0x8
        li                a2, 0x40
7:
        auipc             ra, 0x0
        jalr              r7b
        fence             r, rw
        ld                ra, 0x48(sp)
        addi              sp, sp, 0x50
        ret

asm_test::atomic_memcpy_load_align8::read_volatile_acquire_fence:
        ld                a6, 0x38(a1)
        ld                a7, 0x30(a1)
        ld                t0, 0x28(a1)
        ld                a5, 0x20(a1)
        ld                a2, 0x18(a1)
        ld                a3, 0x10(a1)
        ld                a4, 0x8(a1)
        ld                a1, 0x0(a1)
        sd                a2, 0x18(a0)
        sd                a3, 0x10(a0)
        sd                a4, 0x8(a0)
        sd                a1, 0x0(a0)
        sd                a5, 0x20(a0)
        sd                t0, 0x28(a0)
        sd                a7, 0x30(a0)
        sd                a6, 0x38(a0)
        fence             r, rw
        ret

asm_test::atomic_memcpy_load_align8::acquire:
        ld                a6, 0x38(a1)
        ld                a7, 0x30(a1)
        ld                t0, 0x28(a1)
        ld                a5, 0x20(a1)
        ld                a2, 0x18(a1)
        ld                a3, 0x10(a1)
        ld                a4, 0x8(a1)
        ld                a1, 0x0(a1)
        sd                a2, 0x18(a0)
        sd                a3, 0x10(a0)
        sd                a4, 0x8(a0)
        sd                a1, 0x0(a0)
        sd                a5, 0x20(a0)
        sd                t0, 0x28(a0)
        sd                a7, 0x30(a0)
        sd                a6, 0x38(a0)
        fence             r, rw
        ret

asm_test::atomic_memcpy_load_align16::read_volatile_acquire_fence:
        ld                a6, 0x38(a1)
        ld                a7, 0x30(a1)
        ld                t0, 0x28(a1)
        ld                a5, 0x20(a1)
        ld                a2, 0x18(a1)
        ld                a3, 0x10(a1)
        ld                a4, 0x8(a1)
        ld                a1, 0x0(a1)
        sd                a2, 0x18(a0)
        sd                a3, 0x10(a0)
        sd                a4, 0x8(a0)
        sd                a1, 0x0(a0)
        sd                a5, 0x20(a0)
        sd                t0, 0x28(a0)
        sd                a7, 0x30(a0)
        sd                a6, 0x38(a0)
        fence             r, rw
        ret

asm_test::atomic_memcpy_load_align16::acquire:
        ld                a6, 0x38(a1)
        ld                a7, 0x30(a1)
        ld                t0, 0x28(a1)
        ld                a5, 0x20(a1)
        ld                a2, 0x18(a1)
        ld                a3, 0x10(a1)
        ld                a4, 0x8(a1)
        ld                a1, 0x0(a1)
        sd                a2, 0x18(a0)
        sd                a3, 0x10(a0)
        sd                a4, 0x8(a0)
        sd                a1, 0x0(a0)
        sd                a5, 0x20(a0)
        sd                t0, 0x28(a0)
        sd                a7, 0x30(a0)
        sd                a6, 0x38(a0)
        fence             r, rw
        ret

asm_test::atomic_memcpy_store_align1::write_volatile_release_fence:
        li                a2, 0x40
        fence             rw, w
0:
        auipc             t1, 0x0
        jr                t0b

asm_test::atomic_memcpy_store_align1::release:
        addi              a2, a0, 0x7
        andi              a6, a2, -0x8
        fence             rw, w
        bne               a6, a0, 0f
        li                t0, 0x0
        li                a3, 0x40
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
        addi              a3, a3, 0x40
        li                a4, 0x8
        bltu              a3, a4, 4f
2:
        add               a4, a1, t0
        add               a5, a0, t0
        li                a6, 0x7
3:
        lbu               a7, 0x1(a4)
        lbu               t1, 0x2(a4)
        lbu               a2, 0x3(a4)
        lbu               t2, 0x0(a4)
        slli              a7, a7, 0x8
        slli              t1, t1, 0x10
        slli              a2, a2, 0x18
        or                a7, a7, t2
        or                t1, a2, t1
        lbu               t3, 0x5(a4)
        lbu               t2, 0x4(a4)
        lbu               t4, 0x6(a4)
        lbu               a2, 0x7(a4)
        slli              t3, t3, 0x8
        or                t2, t3, t2
        slli              t4, t4, 0x10
        slli              a2, a2, 0x18
        or                t3, a2, t4
        addi              a3, a3, -0x8
        addi              t0, t0, 0x8
        addi              a4, a4, 0x8
        or                a7, t1, a7
        or                a2, t3, t2
        slli              a2, a2, 0x20
        or                a2, a2, a7
        sd                a2, 0x0(a5)
        addi              a5, a5, 0x8
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
        li                a2, 0x40
        fence             rw, w
0:
        auipc             t1, 0x0
        jr                t0b

asm_test::atomic_memcpy_store_align2::release:
        addi              a2, a0, 0x7
        andi              a6, a2, -0x8
        fence             rw, w
        bne               a6, a0, 0f
        li                t0, 0x0
        li                t1, 0x40
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
        addi              t1, a3, 0x40
        li                a4, 0x8
        bltu              t1, a4, 4f
2:
        add               a4, a1, t0
        add               a5, a0, t0
        li                a6, 0x7
3:
        lbu               a7, 0x1(a4)
        lbu               t2, 0x2(a4)
        lbu               a3, 0x3(a4)
        lbu               a2, 0x0(a4)
        slli              a7, a7, 0x8
        slli              t2, t2, 0x10
        slli              a3, a3, 0x18
        or                a7, a7, a2
        or                t2, a3, t2
        lbu               t3, 0x5(a4)
        lbu               t4, 0x4(a4)
        lbu               a2, 0x6(a4)
        lbu               a3, 0x7(a4)
        slli              t3, t3, 0x8
        or                t3, t3, t4
        slli              a2, a2, 0x10
        slli              a3, a3, 0x18
        or                a2, a2, a3
        addi              t1, t1, -0x8
        addi              t0, t0, 0x8
        addi              a4, a4, 0x8
        or                a3, t2, a7
        or                a2, a2, t3
        slli              a2, a2, 0x20
        or                a2, a2, a3
        sd                a2, 0x0(a5)
        addi              a5, a5, 0x8
        bltu              a6, t1, 3b
4:
        beqz              t1, 6f
        add               a4, a1, t0
        add               a0, a0, t0
        add               a2, t1, t0
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
        li                a2, 0x40
        fence             rw, w
0:
        auipc             t1, 0x0
        jr                t0b

asm_test::atomic_memcpy_store_align4::release:
        addi              a2, a0, 0x7
        andi              a6, a2, -0x8
        fence             rw, w
        bne               a6, a0, 0f
        li                t0, 0x0
        li                t1, 0x40
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
        addi              t1, a3, 0x40
        li                a4, 0x8
        bltu              t1, a4, 4f
2:
        add               a4, a1, t0
        add               a5, a0, t0
        li                a6, 0x7
3:
        lbu               a7, 0x1(a4)
        lbu               t2, 0x2(a4)
        lbu               a3, 0x3(a4)
        lbu               a2, 0x0(a4)
        slli              a7, a7, 0x8
        slli              t2, t2, 0x10
        slli              a3, a3, 0x18
        or                a7, a7, a2
        or                t2, a3, t2
        lbu               t3, 0x5(a4)
        lbu               t4, 0x4(a4)
        lbu               a2, 0x6(a4)
        lbu               a3, 0x7(a4)
        slli              t3, t3, 0x8
        or                t3, t3, t4
        slli              a2, a2, 0x10
        slli              a3, a3, 0x18
        or                a2, a2, a3
        addi              t1, t1, -0x8
        addi              t0, t0, 0x8
        addi              a4, a4, 0x8
        or                a3, t2, a7
        or                a2, a2, t3
        slli              a2, a2, 0x20
        or                a2, a2, a3
        sd                a2, 0x0(a5)
        addi              a5, a5, 0x8
        bltu              a6, t1, 3b
4:
        beqz              t1, 6f
        add               a4, a1, t0
        add               a0, a0, t0
        add               a2, t1, t0
        add               a1, a1, a2
5:
        lbu               a2, 0x0(a4)
        addi              a4, a4, 0x1
        sb                a2, 0x0(a0)
        addi              a0, a0, 0x1
        bne               a4, a1, 5b
6:
        ret

asm_test::atomic_memcpy_store_align8::write_volatile_release_fence:
        fence             rw, w
        ld                a2, 0x38(a1)
        sd                a2, 0x38(a0)
        ld                a2, 0x30(a1)
        sd                a2, 0x30(a0)
        ld                a2, 0x28(a1)
        sd                a2, 0x28(a0)
        ld                a2, 0x20(a1)
        sd                a2, 0x20(a0)
        ld                a2, 0x18(a1)
        sd                a2, 0x18(a0)
        ld                a2, 0x10(a1)
        sd                a2, 0x10(a0)
        ld                a2, 0x8(a1)
        sd                a2, 0x8(a0)
        ld                a1, 0x0(a1)
        sd                a1, 0x0(a0)
        ret

asm_test::atomic_memcpy_store_align8::release:
        fence             rw, w
        ld                a2, 0x38(a1)
        sd                a2, 0x38(a0)
        ld                a2, 0x30(a1)
        sd                a2, 0x30(a0)
        ld                a2, 0x28(a1)
        sd                a2, 0x28(a0)
        ld                a2, 0x20(a1)
        sd                a2, 0x20(a0)
        ld                a2, 0x18(a1)
        sd                a2, 0x18(a0)
        ld                a2, 0x10(a1)
        sd                a2, 0x10(a0)
        ld                a2, 0x8(a1)
        sd                a2, 0x8(a0)
        ld                a1, 0x0(a1)
        sd                a1, 0x0(a0)
        ret

asm_test::atomic_memcpy_store_align16::write_volatile_release_fence:
        fence             rw, w
        ld                a2, 0x38(a1)
        sd                a2, 0x38(a0)
        ld                a2, 0x30(a1)
        sd                a2, 0x30(a0)
        ld                a2, 0x28(a1)
        sd                a2, 0x28(a0)
        ld                a2, 0x20(a1)
        sd                a2, 0x20(a0)
        ld                a2, 0x18(a1)
        sd                a2, 0x18(a0)
        ld                a2, 0x10(a1)
        sd                a2, 0x10(a0)
        ld                a2, 0x8(a1)
        sd                a2, 0x8(a0)
        ld                a1, 0x0(a1)
        sd                a1, 0x0(a0)
        ret

asm_test::atomic_memcpy_store_align16::release:
        fence             rw, w
        ld                a2, 0x38(a1)
        sd                a2, 0x38(a0)
        ld                a2, 0x30(a1)
        sd                a2, 0x30(a0)
        ld                a2, 0x28(a1)
        sd                a2, 0x28(a0)
        ld                a2, 0x20(a1)
        sd                a2, 0x20(a0)
        ld                a2, 0x18(a1)
        sd                a2, 0x18(a0)
        ld                a2, 0x10(a1)
        sd                a2, 0x10(a0)
        ld                a2, 0x8(a1)
        sd                a2, 0x8(a0)
        ld                a1, 0x0(a1)
        sd                a1, 0x0(a0)
        ret

