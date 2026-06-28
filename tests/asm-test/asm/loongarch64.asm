asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        ld.d              $a2, $a1, 0
        ld.d              $a3, $a1, 8
        ld.d              $a4, $a1, 16
        ld.d              $a5, $a1, 24
        ld.d              $a6, $a1, 32
        ld.d              $a7, $a1, 40
        ld.d              $t0, $a1, 48
        ld.d              $a1, $a1, 56
        st.d              $a1, $a0, 56
        st.d              $t0, $a0, 48
        st.d              $a7, $a0, 40
        st.d              $a6, $a0, 32
        st.d              $a5, $a0, 24
        st.d              $a4, $a0, 16
        st.d              $a3, $a0, 8
        st.d              $a2, $a0, 0
        dbar              20
        ret

asm_test::atomic_memcpy_load_align1::acquire:
        addi.d            $sp, $sp, -80
        addi.d            $a3, $a1, 7
        bstrins.d         $a3, $zero, 2, 0
        bne               $a3, $a1, 0f
        move              $a2, $zero
        ori               $a3, $zero, 64
        b                 2f
0:
        sub.d             $a2, $a3, $a1
        sub.d             $a4, $a1, $a3
        addi.d            $a5, $sp, 16
        move              $a6, $a1
        nop
1:
        ld.b              $a7, $a6, 0
        st.b              $a7, $a5, 0
        addi.d            $a5, $a5, 1
        addi.d            $a4, $a4, 1
        addi.d            $a6, $a6, 1
        bnez              $a4, 1b
        sub.d             $a3, $a1, $a3
        addi.d            $a3, $a3, 64
        ori               $a4, $zero, 8
        bltu              $a3, $a4, 4f
2:
        addi.d            $a4, $sp, 16
        ori               $a5, $zero, 7
3:
        add.d             $a6, $a1, $a2
        ld.d              $a6, $a6, 0
        stx.d             $a6, $a2, $a4
        addi.d            $a3, $a3, -8
        addi.d            $a2, $a2, 8
        bltu              $a5, $a3, 3b
4:
        beqz              $a3, 6f
        add.d             $a1, $a1, $a2
        addi.d            $a4, $sp, 16
        add.d             $a2, $a4, $a2
        nop
        nop
5:
        ld.b              $a4, $a1, 0
        st.b              $a4, $a2, 0
        addi.d            $a1, $a1, 1
        addi.d            $a3, $a3, -1
        addi.d            $a2, $a2, 1
        bnez              $a3, 5b
6:
        vld               $vr0, $sp, 64
        vld               $vr1, $sp, 48
        vld               $vr2, $sp, 32
        vld               $vr3, $sp, 16
        vst               $vr0, $a0, 48
        vst               $vr1, $a0, 32
        vst               $vr2, $a0, 16
        vst               $vr3, $a0, 0
        dbar              20
        addi.d            $sp, $sp, 80
        ret

asm_test::atomic_memcpy_load_align2::read_volatile_acquire_fence:
        ld.d              $a2, $a1, 0
        ld.d              $a3, $a1, 8
        ld.d              $a4, $a1, 16
        ld.d              $a5, $a1, 24
        ld.d              $a6, $a1, 32
        ld.d              $a7, $a1, 40
        ld.d              $t0, $a1, 48
        ld.d              $a1, $a1, 56
        st.d              $a1, $a0, 56
        st.d              $t0, $a0, 48
        st.d              $a7, $a0, 40
        st.d              $a6, $a0, 32
        st.d              $a5, $a0, 24
        st.d              $a4, $a0, 16
        st.d              $a3, $a0, 8
        st.d              $a2, $a0, 0
        dbar              20
        ret

asm_test::atomic_memcpy_load_align2::acquire:
        addi.d            $sp, $sp, -80
        addi.d            $a3, $a1, 7
        bstrins.d         $a3, $zero, 2, 0
        bne               $a3, $a1, 0f
        move              $a2, $zero
        ori               $a3, $zero, 64
        b                 2f
0:
        sub.d             $a2, $a3, $a1
        sub.d             $a4, $a1, $a3
        addi.d            $a5, $sp, 16
        move              $a6, $a1
        nop
1:
        ld.b              $a7, $a6, 0
        st.b              $a7, $a5, 0
        addi.d            $a5, $a5, 1
        addi.d            $a4, $a4, 1
        addi.d            $a6, $a6, 1
        bnez              $a4, 1b
        sub.d             $a3, $a1, $a3
        addi.d            $a3, $a3, 64
        ori               $a4, $zero, 8
        bltu              $a3, $a4, 4f
2:
        addi.d            $a4, $sp, 16
        ori               $a5, $zero, 7
3:
        add.d             $a6, $a1, $a2
        ld.d              $a6, $a6, 0
        stx.d             $a6, $a2, $a4
        addi.d            $a3, $a3, -8
        addi.d            $a2, $a2, 8
        bltu              $a5, $a3, 3b
4:
        beqz              $a3, 6f
        add.d             $a1, $a1, $a2
        addi.d            $a4, $sp, 16
        add.d             $a2, $a4, $a2
        nop
        nop
5:
        ld.b              $a4, $a1, 0
        st.b              $a4, $a2, 0
        addi.d            $a1, $a1, 1
        addi.d            $a3, $a3, -1
        addi.d            $a2, $a2, 1
        bnez              $a3, 5b
6:
        vld               $vr0, $sp, 64
        vld               $vr1, $sp, 48
        vld               $vr2, $sp, 32
        vld               $vr3, $sp, 16
        vst               $vr0, $a0, 48
        vst               $vr1, $a0, 32
        vst               $vr2, $a0, 16
        vst               $vr3, $a0, 0
        dbar              20
        addi.d            $sp, $sp, 80
        ret

asm_test::atomic_memcpy_load_align4::read_volatile_acquire_fence:
        ld.d              $a2, $a1, 0
        ld.d              $a3, $a1, 8
        ld.d              $a4, $a1, 16
        ld.d              $a5, $a1, 24
        ld.d              $a6, $a1, 32
        ld.d              $a7, $a1, 40
        ld.d              $t0, $a1, 48
        ld.d              $a1, $a1, 56
        st.d              $a1, $a0, 56
        st.d              $t0, $a0, 48
        st.d              $a7, $a0, 40
        st.d              $a6, $a0, 32
        st.d              $a5, $a0, 24
        st.d              $a4, $a0, 16
        st.d              $a3, $a0, 8
        st.d              $a2, $a0, 0
        dbar              20
        ret

asm_test::atomic_memcpy_load_align4::acquire:
        addi.d            $sp, $sp, -80
        addi.d            $a3, $a1, 7
        bstrins.d         $a3, $zero, 2, 0
        bne               $a3, $a1, 0f
        move              $a2, $zero
        ori               $a3, $zero, 64
        b                 2f
0:
        sub.d             $a2, $a3, $a1
        sub.d             $a4, $a1, $a3
        addi.d            $a5, $sp, 16
        move              $a6, $a1
        nop
1:
        ld.b              $a7, $a6, 0
        st.b              $a7, $a5, 0
        addi.d            $a5, $a5, 1
        addi.d            $a4, $a4, 1
        addi.d            $a6, $a6, 1
        bnez              $a4, 1b
        sub.d             $a3, $a1, $a3
        addi.d            $a3, $a3, 64
        ori               $a4, $zero, 8
        bltu              $a3, $a4, 4f
2:
        addi.d            $a4, $sp, 16
        ori               $a5, $zero, 7
3:
        add.d             $a6, $a1, $a2
        ld.d              $a6, $a6, 0
        stx.d             $a6, $a2, $a4
        addi.d            $a3, $a3, -8
        addi.d            $a2, $a2, 8
        bltu              $a5, $a3, 3b
4:
        beqz              $a3, 6f
        add.d             $a1, $a1, $a2
        addi.d            $a4, $sp, 16
        add.d             $a2, $a4, $a2
        nop
        nop
5:
        ld.b              $a4, $a1, 0
        st.b              $a4, $a2, 0
        addi.d            $a1, $a1, 1
        addi.d            $a3, $a3, -1
        addi.d            $a2, $a2, 1
        bnez              $a3, 5b
6:
        vld               $vr0, $sp, 64
        vld               $vr1, $sp, 48
        vld               $vr2, $sp, 32
        vld               $vr3, $sp, 16
        vst               $vr0, $a0, 48
        vst               $vr1, $a0, 32
        vst               $vr2, $a0, 16
        vst               $vr3, $a0, 0
        dbar              20
        addi.d            $sp, $sp, 80
        ret

asm_test::atomic_memcpy_load_align8::read_volatile_acquire_fence:
        ld.d              $a2, $a1, 0
        ld.d              $a3, $a1, 8
        ld.d              $a4, $a1, 16
        ld.d              $a5, $a1, 24
        ld.d              $a6, $a1, 32
        ld.d              $a7, $a1, 40
        ld.d              $t0, $a1, 48
        ld.d              $a1, $a1, 56
        st.d              $a1, $a0, 56
        st.d              $t0, $a0, 48
        st.d              $a7, $a0, 40
        st.d              $a6, $a0, 32
        st.d              $a5, $a0, 24
        st.d              $a4, $a0, 16
        st.d              $a3, $a0, 8
        st.d              $a2, $a0, 0
        dbar              20
        ret

asm_test::atomic_memcpy_load_align8::acquire:
        ld.d              $a2, $a1, 56
        ld.d              $a3, $a1, 48
        ld.d              $a4, $a1, 40
        ld.d              $a5, $a1, 32
        ld.d              $a6, $a1, 24
        ld.d              $a7, $a1, 16
        ld.d              $t0, $a1, 8
        ld.d              $a1, $a1, 0
        st.d              $a1, $a0, 0
        st.d              $t0, $a0, 8
        st.d              $a7, $a0, 16
        st.d              $a6, $a0, 24
        st.d              $a5, $a0, 32
        st.d              $a4, $a0, 40
        st.d              $a3, $a0, 48
        st.d              $a2, $a0, 56
        dbar              20
        ret

asm_test::atomic_memcpy_load_align16::read_volatile_acquire_fence:
        ld.d              $a2, $a1, 0
        ld.d              $a3, $a1, 8
        ld.d              $a4, $a1, 16
        ld.d              $a5, $a1, 24
        ld.d              $a6, $a1, 32
        ld.d              $a7, $a1, 40
        ld.d              $t0, $a1, 48
        ld.d              $a1, $a1, 56
        st.d              $a1, $a0, 56
        st.d              $t0, $a0, 48
        st.d              $a7, $a0, 40
        st.d              $a6, $a0, 32
        st.d              $a5, $a0, 24
        st.d              $a4, $a0, 16
        st.d              $a3, $a0, 8
        st.d              $a2, $a0, 0
        dbar              20
        ret

asm_test::atomic_memcpy_load_align16::acquire:
        ld.d              $a2, $a1, 56
        ld.d              $a3, $a1, 48
        ld.d              $a4, $a1, 40
        ld.d              $a5, $a1, 32
        ld.d              $a6, $a1, 24
        ld.d              $a7, $a1, 16
        ld.d              $t0, $a1, 8
        ld.d              $a1, $a1, 0
        st.d              $a1, $a0, 0
        st.d              $t0, $a0, 8
        st.d              $a7, $a0, 16
        st.d              $a6, $a0, 24
        st.d              $a5, $a0, 32
        st.d              $a4, $a0, 40
        st.d              $a3, $a0, 48
        st.d              $a2, $a0, 56
        dbar              20
        ret

asm_test::atomic_memcpy_store_align1::write_volatile_release_fence:
        dbar              18
        ld.d              $a2, $a1, 56
        st.d              $a2, $a0, 56
        ld.d              $a2, $a1, 48
        st.d              $a2, $a0, 48
        ld.d              $a2, $a1, 40
        st.d              $a2, $a0, 40
        ld.d              $a2, $a1, 32
        st.d              $a2, $a0, 32
        ld.d              $a2, $a1, 24
        st.d              $a2, $a0, 24
        ld.d              $a2, $a1, 16
        st.d              $a2, $a0, 16
        ld.d              $a2, $a1, 8
        st.d              $a2, $a0, 8
        ld.d              $a1, $a1, 0
        st.d              $a1, $a0, 0
        ret

asm_test::atomic_memcpy_store_align1::release:
        addi.d            $a3, $a0, 7
        bstrins.d         $a3, $zero, 2, 0
        dbar              18
        bne               $a3, $a0, 0f
        move              $a2, $zero
        ori               $a3, $zero, 64
        b                 2f
0:
        sub.d             $a2, $a3, $a0
        sub.d             $a4, $a0, $a3
        move              $a5, $a1
        move              $a6, $a0
        nop
1:
        ld.b              $a7, $a5, 0
        st.b              $a7, $a6, 0
        addi.d            $a6, $a6, 1
        addi.d            $a4, $a4, 1
        addi.d            $a5, $a5, 1
        bnez              $a4, 1b
        sub.d             $a3, $a0, $a3
        addi.d            $a3, $a3, 64
        ori               $a4, $zero, 8
        bltu              $a3, $a4, 4f
2:
        ori               $a4, $zero, 7
        nop
3:
        ldx.d             $a5, $a1, $a2
        add.d             $a6, $a0, $a2
        st.d              $a5, $a6, 0
        addi.d            $a3, $a3, -8
        addi.d            $a2, $a2, 8
        bltu              $a4, $a3, 3b
4:
        beqz              $a3, 6f
        add.d             $a1, $a1, $a2
        add.d             $a0, $a0, $a2
        nop
        nop
        nop
5:
        ld.b              $a2, $a1, 0
        st.b              $a2, $a0, 0
        addi.d            $a1, $a1, 1
        addi.d            $a3, $a3, -1
        addi.d            $a0, $a0, 1
        bnez              $a3, 5b
6:
        ret

asm_test::atomic_memcpy_store_align2::write_volatile_release_fence:
        dbar              18
        ld.d              $a2, $a1, 56
        st.d              $a2, $a0, 56
        ld.d              $a2, $a1, 48
        st.d              $a2, $a0, 48
        ld.d              $a2, $a1, 40
        st.d              $a2, $a0, 40
        ld.d              $a2, $a1, 32
        st.d              $a2, $a0, 32
        ld.d              $a2, $a1, 24
        st.d              $a2, $a0, 24
        ld.d              $a2, $a1, 16
        st.d              $a2, $a0, 16
        ld.d              $a2, $a1, 8
        st.d              $a2, $a0, 8
        ld.d              $a1, $a1, 0
        st.d              $a1, $a0, 0
        ret

asm_test::atomic_memcpy_store_align2::release:
        addi.d            $a3, $a0, 7
        bstrins.d         $a3, $zero, 2, 0
        dbar              18
        bne               $a3, $a0, 0f
        move              $a2, $zero
        ori               $a3, $zero, 64
        b                 2f
0:
        sub.d             $a2, $a3, $a0
        sub.d             $a4, $a0, $a3
        move              $a5, $a1
        move              $a6, $a0
        nop
1:
        ld.b              $a7, $a5, 0
        st.b              $a7, $a6, 0
        addi.d            $a6, $a6, 1
        addi.d            $a4, $a4, 1
        addi.d            $a5, $a5, 1
        bnez              $a4, 1b
        sub.d             $a3, $a0, $a3
        addi.d            $a3, $a3, 64
        ori               $a4, $zero, 8
        bltu              $a3, $a4, 4f
2:
        ori               $a4, $zero, 7
        nop
3:
        ldx.d             $a5, $a1, $a2
        add.d             $a6, $a0, $a2
        st.d              $a5, $a6, 0
        addi.d            $a3, $a3, -8
        addi.d            $a2, $a2, 8
        bltu              $a4, $a3, 3b
4:
        beqz              $a3, 6f
        add.d             $a1, $a1, $a2
        add.d             $a0, $a0, $a2
        nop
        nop
        nop
5:
        ld.b              $a2, $a1, 0
        st.b              $a2, $a0, 0
        addi.d            $a1, $a1, 1
        addi.d            $a3, $a3, -1
        addi.d            $a0, $a0, 1
        bnez              $a3, 5b
6:
        ret

asm_test::atomic_memcpy_store_align4::write_volatile_release_fence:
        dbar              18
        ld.d              $a2, $a1, 56
        st.d              $a2, $a0, 56
        ld.d              $a2, $a1, 48
        st.d              $a2, $a0, 48
        ld.d              $a2, $a1, 40
        st.d              $a2, $a0, 40
        ld.d              $a2, $a1, 32
        st.d              $a2, $a0, 32
        ld.d              $a2, $a1, 24
        st.d              $a2, $a0, 24
        ld.d              $a2, $a1, 16
        st.d              $a2, $a0, 16
        ld.d              $a2, $a1, 8
        st.d              $a2, $a0, 8
        ld.d              $a1, $a1, 0
        st.d              $a1, $a0, 0
        ret

asm_test::atomic_memcpy_store_align4::release:
        addi.d            $a3, $a0, 7
        bstrins.d         $a3, $zero, 2, 0
        dbar              18
        bne               $a3, $a0, 0f
        move              $a2, $zero
        ori               $a3, $zero, 64
        b                 2f
0:
        sub.d             $a2, $a3, $a0
        sub.d             $a4, $a0, $a3
        move              $a5, $a1
        move              $a6, $a0
        nop
1:
        ld.b              $a7, $a5, 0
        st.b              $a7, $a6, 0
        addi.d            $a6, $a6, 1
        addi.d            $a4, $a4, 1
        addi.d            $a5, $a5, 1
        bnez              $a4, 1b
        sub.d             $a3, $a0, $a3
        addi.d            $a3, $a3, 64
        ori               $a4, $zero, 8
        bltu              $a3, $a4, 4f
2:
        ori               $a4, $zero, 7
        nop
3:
        ldx.d             $a5, $a1, $a2
        add.d             $a6, $a0, $a2
        st.d              $a5, $a6, 0
        addi.d            $a3, $a3, -8
        addi.d            $a2, $a2, 8
        bltu              $a4, $a3, 3b
4:
        beqz              $a3, 6f
        add.d             $a1, $a1, $a2
        add.d             $a0, $a0, $a2
        nop
        nop
        nop
5:
        ld.b              $a2, $a1, 0
        st.b              $a2, $a0, 0
        addi.d            $a1, $a1, 1
        addi.d            $a3, $a3, -1
        addi.d            $a0, $a0, 1
        bnez              $a3, 5b
6:
        ret

asm_test::atomic_memcpy_store_align8::write_volatile_release_fence:
        dbar              18
        ld.d              $a2, $a1, 56
        st.d              $a2, $a0, 56
        ld.d              $a2, $a1, 48
        st.d              $a2, $a0, 48
        ld.d              $a2, $a1, 40
        st.d              $a2, $a0, 40
        ld.d              $a2, $a1, 32
        st.d              $a2, $a0, 32
        ld.d              $a2, $a1, 24
        st.d              $a2, $a0, 24
        ld.d              $a2, $a1, 16
        st.d              $a2, $a0, 16
        ld.d              $a2, $a1, 8
        st.d              $a2, $a0, 8
        ld.d              $a1, $a1, 0
        st.d              $a1, $a0, 0
        ret

asm_test::atomic_memcpy_store_align8::release:
        dbar              18
        ld.d              $a2, $a1, 56
        st.d              $a2, $a0, 56
        ld.d              $a2, $a1, 48
        st.d              $a2, $a0, 48
        ld.d              $a2, $a1, 40
        st.d              $a2, $a0, 40
        ld.d              $a2, $a1, 32
        st.d              $a2, $a0, 32
        ld.d              $a2, $a1, 24
        st.d              $a2, $a0, 24
        ld.d              $a2, $a1, 16
        st.d              $a2, $a0, 16
        ld.d              $a2, $a1, 8
        st.d              $a2, $a0, 8
        ld.d              $a1, $a1, 0
        st.d              $a1, $a0, 0
        ret

asm_test::atomic_memcpy_store_align16::write_volatile_release_fence:
        dbar              18
        ld.d              $a2, $a1, 56
        st.d              $a2, $a0, 56
        ld.d              $a2, $a1, 48
        st.d              $a2, $a0, 48
        ld.d              $a2, $a1, 40
        st.d              $a2, $a0, 40
        ld.d              $a2, $a1, 32
        st.d              $a2, $a0, 32
        ld.d              $a2, $a1, 24
        st.d              $a2, $a0, 24
        ld.d              $a2, $a1, 16
        st.d              $a2, $a0, 16
        ld.d              $a2, $a1, 8
        st.d              $a2, $a0, 8
        ld.d              $a1, $a1, 0
        st.d              $a1, $a0, 0
        ret

asm_test::atomic_memcpy_store_align16::release:
        dbar              18
        ld.d              $a2, $a1, 56
        st.d              $a2, $a0, 56
        ld.d              $a2, $a1, 48
        st.d              $a2, $a0, 48
        ld.d              $a2, $a1, 40
        st.d              $a2, $a0, 40
        ld.d              $a2, $a1, 32
        st.d              $a2, $a0, 32
        ld.d              $a2, $a1, 24
        st.d              $a2, $a0, 24
        ld.d              $a2, $a1, 16
        st.d              $a2, $a0, 16
        ld.d              $a2, $a1, 8
        st.d              $a2, $a0, 8
        ld.d              $a1, $a1, 0
        st.d              $a1, $a0, 0
        ret
