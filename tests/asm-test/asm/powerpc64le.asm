asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        ld                5, 0(4)
        ld                6, 8(4)
        ld                7, 16(4)
        ld                8, 24(4)
        ld                9, 32(4)
        ld                10, 40(4)
        ld                11, 48(4)
        ld                4, 56(4)
        std               4, 56(3)
        std               11, 48(3)
        std               10, 40(3)
        std               9, 32(3)
        std               8, 24(3)
        std               7, 16(3)
        std               6, 8(3)
        std               5, 0(3)
        lwsync
        blr

asm_test::atomic_memcpy_load_align1::acquire:
        addi              5, 4, 7
        rldicr            7, 5, 0, 60
        addi              5, 1, -64
        cmpld             7, 4
        bf                2, 0f
        li                6, 0
        li                7, 64
        b                 4f
0:
        sub               6, 7, 4
        sub               7, 4, 7
        li                8, -8
        cmpld             7, 8
        bt                1, 2f
        li                10, 1
        addi              9, 4, -8
        addi              8, 1, -72
        rldic             10, 10, 61, 2
        mtctr             10
        li                10, 0
        nop
1:
        lbz               11, 8(9)
        addi              10, 10, 8
        stbu              11, 8(8)
        lbz               11, 9(9)
        stb               11, 1(8)
        lbz               11, 10(9)
        stb               11, 2(8)
        lbz               11, 11(9)
        stb               11, 3(8)
        lbz               11, 12(9)
        stb               11, 4(8)
        lbz               11, 13(9)
        stb               11, 5(8)
        lbz               11, 14(9)
        stb               11, 6(8)
        lbz               11, 15(9)
        addi              9, 9, 8
        stb               11, 7(8)
        bdnz              1b
2:
        mtctr             6
        addi              8, 4, -1
        addi              9, 1, -65
        nop
        nop
3:
        lbz               10, 1(8)
        addi              8, 8, 1
        stbu              10, 1(9)
        bdnz              3b
        addi              7, 7, 64
        cmpldi            7, 8
        bt                0, 6f
4:
        addi              10, 7, -8
        li                11, 7
        addi              9, 6, -8
        cmpldi            10, 7
        add               8, 4, 9
        add               9, 5, 9
        isellt            10, 10, 11
        not               10, 10
        add               10, 10, 7
        rldicl            10, 10, 61, 3
        addi              10, 10, 1
        mtctr             10
        nop
5:
        ld                10, 8(8)
        addi              8, 8, 8
        addi              7, 7, -8
        addi              6, 6, 8
        std               10, 8(9)
        addi              9, 9, 8
        bdnz              5b
6:
        cmpldi            7, 0
        bt                2, 9f
        addi              9, 6, -1
        mtctr             7
        add               8, 4, 9
        add               9, 5, 9
        nop
        nop
        nop
7:
        lbz               10, 1(8)
        addi              8, 8, 1
        stbu              10, 1(9)
        bdnz              7b
        cmpldi            7, 8
        bt                0, 9f
        add               6, 7, 6
        addi              7, 6, -8
        add               6, 4, 7
        add               4, 5, 7
        li                7, 1
        rldic             7, 7, 61, 2
        mtctr             7
        nop
        nop
        nop
8:
        lbz               7, 8(6)
        stbu              7, 8(4)
        lbz               7, 9(6)
        stb               7, 1(4)
        lbz               7, 10(6)
        stb               7, 2(4)
        lbz               7, 11(6)
        stb               7, 3(4)
        lbz               7, 12(6)
        stb               7, 4(4)
        lbz               7, 13(6)
        stb               7, 5(4)
        lbz               7, 14(6)
        stb               7, 6(4)
        lbz               7, 15(6)
        addi              6, 6, 8
        stb               7, 7(4)
        bdnz              8b
9:
        li                4, 48
        lxvd2x            0, 5, 4
        stxvd2x           0, 3, 4
        li                4, 32
        lxvd2x            0, 5, 4
        stxvd2x           0, 3, 4
        li                4, 16
        lxvd2x            0, 5, 4
        stxvd2x           0, 3, 4
        lxvd2x            0, 0, 5
        stxvd2x           0, 0, 3
        lwsync
        blr

asm_test::atomic_memcpy_load_align2::read_volatile_acquire_fence:
        ld                5, 0(4)
        ld                6, 8(4)
        ld                7, 16(4)
        ld                8, 24(4)
        ld                9, 32(4)
        ld                10, 40(4)
        ld                11, 48(4)
        ld                4, 56(4)
        std               4, 56(3)
        std               11, 48(3)
        std               10, 40(3)
        std               9, 32(3)
        std               8, 24(3)
        std               7, 16(3)
        std               6, 8(3)
        std               5, 0(3)
        lwsync
        blr

asm_test::atomic_memcpy_load_align2::acquire:
        addi              5, 4, 7
        rldicr            7, 5, 0, 60
        addi              5, 1, -64
        cmpld             7, 4
        bf                2, 0f
        li                7, 64
        li                6, 0
        b                 4f
0:
        sub               6, 7, 4
        sub               7, 4, 7
        li                8, -8
        cmpld             7, 8
        bt                1, 2f
        li                10, 1
        addi              9, 4, -8
        addi              8, 1, -72
        rldic             10, 10, 61, 2
        mtctr             10
        li                10, 0
        nop
1:
        lbz               11, 8(9)
        addi              10, 10, 8
        stbu              11, 8(8)
        lbz               11, 9(9)
        stb               11, 1(8)
        lbz               11, 10(9)
        stb               11, 2(8)
        lbz               11, 11(9)
        stb               11, 3(8)
        lbz               11, 12(9)
        stb               11, 4(8)
        lbz               11, 13(9)
        stb               11, 5(8)
        lbz               11, 14(9)
        stb               11, 6(8)
        lbz               11, 15(9)
        addi              9, 9, 8
        stb               11, 7(8)
        bdnz              1b
2:
        mtctr             6
        addi              8, 4, -1
        addi              9, 1, -65
        nop
        nop
3:
        lbz               10, 1(8)
        addi              8, 8, 1
        stbu              10, 1(9)
        bdnz              3b
        addi              7, 7, 64
        cmpldi            7, 8
        bt                0, 6f
4:
        addi              10, 7, -8
        li                11, 7
        addi              9, 6, -8
        cmpldi            10, 7
        add               8, 4, 9
        add               9, 5, 9
        isellt            10, 10, 11
        not               10, 10
        add               10, 10, 7
        rldicl            10, 10, 61, 3
        addi              10, 10, 1
        mtctr             10
        nop
5:
        ld                10, 8(8)
        addi              8, 8, 8
        addi              7, 7, -8
        addi              6, 6, 8
        std               10, 8(9)
        addi              9, 9, 8
        bdnz              5b
6:
        cmpldi            7, 0
        bt                2, 7f
        cmpldi            7, 1
        lbzx              9, 4, 6
        mr                8, 6
        stbux             9, 8, 5
        bt                2, 7f
        add               4, 4, 6
        cmpldi            7, 2
        lbz               6, 1(4)
        stb               6, 1(8)
        bt                2, 7f
        cmpldi            7, 3
        lbz               6, 2(4)
        stb               6, 2(8)
        bt                2, 7f
        cmpldi            7, 4
        lbz               6, 3(4)
        stb               6, 3(8)
        bt                2, 7f
        cmpldi            7, 5
        lbz               6, 4(4)
        stb               6, 4(8)
        bt                2, 7f
        cmpldi            7, 6
        lbz               6, 5(4)
        stb               6, 5(8)
        bt                2, 7f
        lbz               4, 6(4)
        stb               4, 6(8)
7:
        li                4, 48
        lxvd2x            0, 5, 4
        stxvd2x           0, 3, 4
        li                4, 32
        lxvd2x            0, 5, 4
        stxvd2x           0, 3, 4
        li                4, 16
        lxvd2x            0, 5, 4
        stxvd2x           0, 3, 4
        lxvd2x            0, 0, 5
        stxvd2x           0, 0, 3
        lwsync
        blr

asm_test::atomic_memcpy_load_align4::read_volatile_acquire_fence:
        ld                5, 0(4)
        ld                6, 8(4)
        ld                7, 16(4)
        ld                8, 24(4)
        ld                9, 32(4)
        ld                10, 40(4)
        ld                11, 48(4)
        ld                4, 56(4)
        std               4, 56(3)
        std               11, 48(3)
        std               10, 40(3)
        std               9, 32(3)
        std               8, 24(3)
        std               7, 16(3)
        std               6, 8(3)
        std               5, 0(3)
        lwsync
        blr

asm_test::atomic_memcpy_load_align4::acquire:
        addi              5, 4, 7
        rldicr            7, 5, 0, 60
        addi              5, 1, -64
        cmpld             7, 4
        bf                2, 0f
        li                7, 64
        li                6, 0
        b                 4f
0:
        sub               6, 7, 4
        sub               7, 4, 7
        li                8, -8
        cmpld             7, 8
        bt                1, 2f
        li                10, 1
        addi              9, 4, -8
        addi              8, 1, -72
        rldic             10, 10, 61, 2
        mtctr             10
        li                10, 0
        nop
1:
        lbz               11, 8(9)
        addi              10, 10, 8
        stbu              11, 8(8)
        lbz               11, 9(9)
        stb               11, 1(8)
        lbz               11, 10(9)
        stb               11, 2(8)
        lbz               11, 11(9)
        stb               11, 3(8)
        lbz               11, 12(9)
        stb               11, 4(8)
        lbz               11, 13(9)
        stb               11, 5(8)
        lbz               11, 14(9)
        stb               11, 6(8)
        lbz               11, 15(9)
        addi              9, 9, 8
        stb               11, 7(8)
        bdnz              1b
2:
        mtctr             6
        addi              8, 4, -1
        addi              9, 1, -65
        nop
        nop
3:
        lbz               10, 1(8)
        addi              8, 8, 1
        stbu              10, 1(9)
        bdnz              3b
        addi              7, 7, 64
        cmpldi            7, 8
        bt                0, 6f
4:
        addi              10, 7, -8
        li                11, 7
        addi              9, 6, -8
        cmpldi            10, 7
        add               8, 4, 9
        add               9, 5, 9
        isellt            10, 10, 11
        not               10, 10
        add               10, 10, 7
        rldicl            10, 10, 61, 3
        addi              10, 10, 1
        mtctr             10
        nop
5:
        ld                10, 8(8)
        addi              8, 8, 8
        addi              7, 7, -8
        addi              6, 6, 8
        std               10, 8(9)
        addi              9, 9, 8
        bdnz              5b
6:
        cmpldi            7, 0
        bt                2, 7f
        cmpldi            7, 1
        lbzx              9, 4, 6
        mr                8, 6
        stbux             9, 8, 5
        bt                2, 7f
        add               4, 4, 6
        cmpldi            7, 2
        lbz               6, 1(4)
        stb               6, 1(8)
        bt                2, 7f
        cmpldi            7, 3
        lbz               6, 2(4)
        stb               6, 2(8)
        bt                2, 7f
        cmpldi            7, 4
        lbz               6, 3(4)
        stb               6, 3(8)
        bt                2, 7f
        cmpldi            7, 5
        lbz               6, 4(4)
        stb               6, 4(8)
        bt                2, 7f
        cmpldi            7, 6
        lbz               6, 5(4)
        stb               6, 5(8)
        bt                2, 7f
        lbz               4, 6(4)
        stb               4, 6(8)
7:
        li                4, 48
        lxvd2x            0, 5, 4
        stxvd2x           0, 3, 4
        li                4, 32
        lxvd2x            0, 5, 4
        stxvd2x           0, 3, 4
        li                4, 16
        lxvd2x            0, 5, 4
        stxvd2x           0, 3, 4
        lxvd2x            0, 0, 5
        stxvd2x           0, 0, 3
        lwsync
        blr

asm_test::atomic_memcpy_load_align8::read_volatile_acquire_fence:
        ld                5, 0(4)
        ld                6, 8(4)
        ld                7, 16(4)
        ld                8, 24(4)
        ld                9, 32(4)
        ld                10, 40(4)
        ld                11, 48(4)
        ld                4, 56(4)
        std               4, 56(3)
        std               11, 48(3)
        std               10, 40(3)
        std               9, 32(3)
        std               8, 24(3)
        std               7, 16(3)
        std               6, 8(3)
        std               5, 0(3)
        lwsync
        blr

asm_test::atomic_memcpy_load_align8::acquire:
        ld                5, 56(4)
        ld                6, 48(4)
        ld                7, 40(4)
        ld                8, 32(4)
        ld                9, 24(4)
        ld                10, 16(4)
        ld                11, 8(4)
        ld                4, 0(4)
        std               4, 0(3)
        std               11, 8(3)
        std               10, 16(3)
        std               9, 24(3)
        std               8, 32(3)
        std               7, 40(3)
        std               6, 48(3)
        std               5, 56(3)
        lwsync
        blr

asm_test::atomic_memcpy_load_align16::read_volatile_acquire_fence:
        ld                5, 0(4)
        ld                6, 8(4)
        ld                7, 16(4)
        ld                8, 24(4)
        ld                9, 32(4)
        ld                10, 40(4)
        ld                11, 48(4)
        ld                4, 56(4)
        std               4, 56(3)
        std               11, 48(3)
        std               10, 40(3)
        std               9, 32(3)
        std               8, 24(3)
        std               7, 16(3)
        std               6, 8(3)
        std               5, 0(3)
        lwsync
        blr

asm_test::atomic_memcpy_load_align16::acquire:
        ld                5, 56(4)
        ld                6, 48(4)
        ld                7, 40(4)
        ld                8, 32(4)
        ld                9, 24(4)
        ld                10, 16(4)
        ld                11, 8(4)
        ld                4, 0(4)
        std               4, 0(3)
        std               11, 8(3)
        std               10, 16(3)
        std               9, 24(3)
        std               8, 32(3)
        std               7, 40(3)
        std               6, 48(3)
        std               5, 56(3)
        lwsync
        blr

asm_test::atomic_memcpy_store_align1::write_volatile_release_fence:
        li                5, 48
        lwsync
        lxvd2x            0, 4, 5
        stxvd2x           0, 3, 5
        li                5, 32
        lxvd2x            0, 4, 5
        stxvd2x           0, 3, 5
        li                5, 16
        lxvd2x            0, 4, 5
        stxvd2x           0, 3, 5
        lxvd2x            0, 0, 4
        stxvd2x           0, 0, 3
        blr

asm_test::atomic_memcpy_store_align1::release:
        addi              5, 3, 7
        lwsync
        rldicr            6, 5, 0, 60
        cmpld             6, 3
        bf                2, 0f
        li                5, 0
        li                6, 64
        b                 4f
0:
        sub               5, 6, 3
        sub               6, 3, 6
        li                7, -8
        cmpld             6, 7
        bt                1, 2f
        li                8, 1
        addi              7, 4, -8
        addi              9, 3, -8
        rldic             8, 8, 61, 2
        mtctr             8
        li                8, 0
        nop
1:
        lbzu              10, 8(7)
        addi              8, 8, 8
        stb               10, 8(9)
        lbz               10, 1(7)
        stb               10, 9(9)
        lbz               10, 2(7)
        stb               10, 10(9)
        lbz               10, 3(7)
        stb               10, 11(9)
        lbz               10, 4(7)
        stb               10, 12(9)
        lbz               10, 5(7)
        stb               10, 13(9)
        lbz               10, 6(7)
        stb               10, 14(9)
        lbz               10, 7(7)
        stb               10, 15(9)
        addi              9, 9, 8
        bdnz              1b
2:
        mtctr             5
        addi              7, 4, -1
        addi              8, 3, -1
        nop
        nop
3:
        lbzu              9, 1(7)
        stb               9, 1(8)
        addi              8, 8, 1
        bdnz              3b
        addi              6, 6, 64
        cmpldi            6, 8
        bt                0, 6f
4:
        addi              9, 6, -8
        li                10, 7
        addi              8, 5, -8
        cmpldi            9, 7
        add               7, 4, 8
        add               8, 3, 8
        isellt            9, 9, 10
        not               9, 9
        add               9, 9, 6
        rldicl            9, 9, 61, 3
        addi              9, 9, 1
        mtctr             9
        nop
5:
        ld                9, 8(7)
        addi              7, 7, 8
        addi              6, 6, -8
        addi              5, 5, 8
        std               9, 8(8)
        addi              8, 8, 8
        bdnz              5b
6:
        cmpldi            6, 0
        bclr              12, 2
        addi              8, 5, -1
        mtctr             6
        add               7, 4, 8
        add               8, 3, 8
        nop
        nop
        nop
7:
        lbzu              9, 1(7)
        stb               9, 1(8)
        addi              8, 8, 1
        bdnz              7b
        cmpldi            6, 8
        bclr              12, 0
        add               5, 6, 5
        addi              5, 5, -8
        add               4, 4, 5
        add               3, 3, 5
        li                5, 1
        rldic             5, 5, 61, 2
        mtctr             5
        nop
        nop
        nop
8:
        lbzu              5, 8(4)
        stb               5, 8(3)
        lbz               5, 1(4)
        stb               5, 9(3)
        lbz               5, 2(4)
        stb               5, 10(3)
        lbz               5, 3(4)
        stb               5, 11(3)
        lbz               5, 4(4)
        stb               5, 12(3)
        lbz               5, 5(4)
        stb               5, 13(3)
        lbz               5, 6(4)
        stb               5, 14(3)
        lbz               5, 7(4)
        stb               5, 15(3)
        addi              3, 3, 8
        bdnz              8b
        blr

asm_test::atomic_memcpy_store_align2::write_volatile_release_fence:
        li                5, 48
        lwsync
        lxvd2x            0, 4, 5
        stxvd2x           0, 3, 5
        li                5, 32
        lxvd2x            0, 4, 5
        stxvd2x           0, 3, 5
        li                5, 16
        lxvd2x            0, 4, 5
        stxvd2x           0, 3, 5
        lxvd2x            0, 0, 4
        stxvd2x           0, 0, 3
        blr

asm_test::atomic_memcpy_store_align2::release:
        addi              5, 3, 7
        lwsync
        rldicr            6, 5, 0, 60
        cmpld             6, 3
        bf                2, 0f
        li                6, 64
        li                5, 0
        b                 4f
0:
        sub               5, 6, 3
        sub               6, 3, 6
        li                7, -8
        cmpld             6, 7
        bt                1, 2f
        li                8, 1
        addi              7, 4, -8
        addi              9, 3, -8
        rldic             8, 8, 61, 2
        mtctr             8
        li                8, 0
        nop
1:
        lbzu              10, 8(7)
        addi              8, 8, 8
        stb               10, 8(9)
        lbz               10, 1(7)
        stb               10, 9(9)
        lbz               10, 2(7)
        stb               10, 10(9)
        lbz               10, 3(7)
        stb               10, 11(9)
        lbz               10, 4(7)
        stb               10, 12(9)
        lbz               10, 5(7)
        stb               10, 13(9)
        lbz               10, 6(7)
        stb               10, 14(9)
        lbz               10, 7(7)
        stb               10, 15(9)
        addi              9, 9, 8
        bdnz              1b
2:
        mtctr             5
        addi              7, 4, -1
        addi              8, 3, -1
        nop
        nop
3:
        lbzu              9, 1(7)
        stb               9, 1(8)
        addi              8, 8, 1
        bdnz              3b
        addi              6, 6, 64
        cmpldi            6, 8
        bt                0, 6f
4:
        addi              9, 6, -8
        li                10, 7
        addi              8, 5, -8
        cmpldi            9, 7
        add               7, 4, 8
        add               8, 3, 8
        isellt            9, 9, 10
        not               9, 9
        add               9, 9, 6
        rldicl            9, 9, 61, 3
        addi              9, 9, 1
        mtctr             9
        nop
5:
        ld                9, 8(7)
        addi              7, 7, 8
        addi              6, 6, -8
        addi              5, 5, 8
        std               9, 8(8)
        addi              8, 8, 8
        bdnz              5b
6:
        cmpldi            6, 0
        bclr              12, 2
        cmpldi            6, 1
        lbzux             7, 4, 5
        stbx              7, 3, 5
        bclr              12, 2
        cmpldi            6, 2
        add               3, 3, 5
        lbz               5, 1(4)
        stb               5, 1(3)
        bclr              12, 2
        cmpldi            6, 3
        lbz               5, 2(4)
        stb               5, 2(3)
        bclr              12, 2
        cmpldi            6, 4
        lbz               5, 3(4)
        stb               5, 3(3)
        bclr              12, 2
        cmpldi            6, 5
        lbz               5, 4(4)
        stb               5, 4(3)
        bclr              12, 2
        cmpldi            6, 6
        lbz               5, 5(4)
        stb               5, 5(3)
        bclr              12, 2
        lbz               4, 6(4)
        stb               4, 6(3)
        blr

asm_test::atomic_memcpy_store_align4::write_volatile_release_fence:
        li                5, 48
        lwsync
        lxvd2x            0, 4, 5
        stxvd2x           0, 3, 5
        li                5, 32
        lxvd2x            0, 4, 5
        stxvd2x           0, 3, 5
        li                5, 16
        lxvd2x            0, 4, 5
        stxvd2x           0, 3, 5
        lxvd2x            0, 0, 4
        stxvd2x           0, 0, 3
        blr

asm_test::atomic_memcpy_store_align4::release:
        addi              5, 3, 7
        lwsync
        rldicr            6, 5, 0, 60
        cmpld             6, 3
        bf                2, 0f
        li                6, 64
        li                5, 0
        b                 4f
0:
        sub               5, 6, 3
        sub               6, 3, 6
        li                7, -8
        cmpld             6, 7
        bt                1, 2f
        li                8, 1
        addi              7, 4, -8
        addi              9, 3, -8
        rldic             8, 8, 61, 2
        mtctr             8
        li                8, 0
        nop
1:
        lbzu              10, 8(7)
        addi              8, 8, 8
        stb               10, 8(9)
        lbz               10, 1(7)
        stb               10, 9(9)
        lbz               10, 2(7)
        stb               10, 10(9)
        lbz               10, 3(7)
        stb               10, 11(9)
        lbz               10, 4(7)
        stb               10, 12(9)
        lbz               10, 5(7)
        stb               10, 13(9)
        lbz               10, 6(7)
        stb               10, 14(9)
        lbz               10, 7(7)
        stb               10, 15(9)
        addi              9, 9, 8
        bdnz              1b
2:
        mtctr             5
        addi              7, 4, -1
        addi              8, 3, -1
        nop
        nop
3:
        lbzu              9, 1(7)
        stb               9, 1(8)
        addi              8, 8, 1
        bdnz              3b
        addi              6, 6, 64
        cmpldi            6, 8
        bt                0, 6f
4:
        addi              9, 6, -8
        li                10, 7
        addi              8, 5, -8
        cmpldi            9, 7
        add               7, 4, 8
        add               8, 3, 8
        isellt            9, 9, 10
        not               9, 9
        add               9, 9, 6
        rldicl            9, 9, 61, 3
        addi              9, 9, 1
        mtctr             9
        nop
5:
        ld                9, 8(7)
        addi              7, 7, 8
        addi              6, 6, -8
        addi              5, 5, 8
        std               9, 8(8)
        addi              8, 8, 8
        bdnz              5b
6:
        cmpldi            6, 0
        bclr              12, 2
        cmpldi            6, 1
        lbzux             7, 4, 5
        stbx              7, 3, 5
        bclr              12, 2
        cmpldi            6, 2
        add               3, 3, 5
        lbz               5, 1(4)
        stb               5, 1(3)
        bclr              12, 2
        cmpldi            6, 3
        lbz               5, 2(4)
        stb               5, 2(3)
        bclr              12, 2
        cmpldi            6, 4
        lbz               5, 3(4)
        stb               5, 3(3)
        bclr              12, 2
        cmpldi            6, 5
        lbz               5, 4(4)
        stb               5, 4(3)
        bclr              12, 2
        cmpldi            6, 6
        lbz               5, 5(4)
        stb               5, 5(3)
        bclr              12, 2
        lbz               4, 6(4)
        stb               4, 6(3)
        blr

asm_test::atomic_memcpy_store_align8::write_volatile_release_fence:
        li                5, 48
        lwsync
        lxvd2x            0, 4, 5
        stxvd2x           0, 3, 5
        li                5, 32
        lxvd2x            0, 4, 5
        stxvd2x           0, 3, 5
        li                5, 16
        lxvd2x            0, 4, 5
        stxvd2x           0, 3, 5
        lxvd2x            0, 0, 4
        stxvd2x           0, 0, 3
        blr

asm_test::atomic_memcpy_store_align8::release:
        lwsync
        ld                5, 56(4)
        std               5, 56(3)
        ld                5, 48(4)
        std               5, 48(3)
        ld                5, 40(4)
        std               5, 40(3)
        ld                5, 32(4)
        std               5, 32(3)
        ld                5, 24(4)
        std               5, 24(3)
        ld                5, 16(4)
        std               5, 16(3)
        ld                5, 8(4)
        std               5, 8(3)
        ld                4, 0(4)
        std               4, 0(3)
        blr

asm_test::atomic_memcpy_store_align16::write_volatile_release_fence:
        li                5, 48
        lwsync
        lxvd2x            0, 4, 5
        stxvd2x           0, 3, 5
        li                5, 32
        lxvd2x            0, 4, 5
        stxvd2x           0, 3, 5
        li                5, 16
        lxvd2x            0, 4, 5
        stxvd2x           0, 3, 5
        lxvd2x            0, 0, 4
        stxvd2x           0, 0, 3
        blr

asm_test::atomic_memcpy_store_align16::release:
        lwsync
        ld                5, 56(4)
        std               5, 56(3)
        ld                5, 48(4)
        std               5, 48(3)
        ld                5, 40(4)
        std               5, 40(3)
        ld                5, 32(4)
        std               5, 32(3)
        ld                5, 24(4)
        std               5, 24(3)
        ld                5, 16(4)
        std               5, 16(3)
        ld                5, 8(4)
        std               5, 8(3)
        ld                4, 0(4)
        std               4, 0(3)
        blr
