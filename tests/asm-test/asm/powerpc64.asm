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
        cmpld             7, 4
        addi              5, 1, -64
        bf                2, 0f
        li                6, 0
        li                7, 64
        b                 2f
0:
        sub               6, 7, 4
        addi              8, 4, -1
        addi              9, 1, -65
        mtctr             6
1:
        lbz               10, 1(8)
        addi              8, 8, 1
        stbu              10, 1(9)
        bdnz              1b
        sub               7, 4, 7
        addi              7, 7, 64
        cmpldi            7, 8
        bt                0, 5f
2:
        addi              8, 7, -8
        addi              9, 6, -8
        cmpldi            8, 7
        bt                0, 3f
        li                8, 7
3:
        not               8, 8
        add               8, 8, 7
        rldicl            10, 8, 61, 3
        add               8, 4, 9
        addi              10, 10, 1
        add               9, 5, 9
        mtctr             10
4:
        ld                10, 8(8)
        addi              11, 9, 8
        addi              8, 8, 8
        addi              7, 7, -8
        addi              6, 6, 8
        std               10, 8(9)
        mr                9, 11
        bdnz              4b
5:
        cmpldi            7, 0
        bt                2, 7f
        addi              6, 6, -1
        add               4, 4, 6
        add               6, 5, 6
        mtctr             7
6:
        lbz               7, 1(4)
        addi              4, 4, 1
        stbu              7, 1(6)
        bdnz              6b
7:
        ld                4, 56(5)
        std               4, 56(3)
        ld                4, 48(5)
        std               4, 48(3)
        ld                4, 40(5)
        std               4, 40(3)
        ld                4, 32(5)
        std               4, 32(3)
        ld                4, 24(5)
        std               4, 24(3)
        ld                4, 16(5)
        std               4, 16(3)
        ld                4, 8(5)
        ldx               5, 0, 5
        std               4, 8(3)
        std               5, 0(3)
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
        cmpld             7, 4
        addi              5, 1, -64
        bf                2, 0f
        li                7, 64
        li                6, 0
        b                 2f
0:
        sub               6, 7, 4
        addi              8, 4, -1
        addi              9, 1, -65
        mtctr             6
1:
        lbz               10, 1(8)
        addi              8, 8, 1
        stbu              10, 1(9)
        bdnz              1b
        sub               7, 4, 7
        addi              7, 7, 64
        cmpldi            7, 8
        bt                0, 5f
2:
        addi              8, 7, -8
        addi              9, 6, -8
        cmpldi            8, 7
        bt                0, 3f
        li                8, 7
3:
        not               8, 8
        add               8, 8, 7
        rldicl            10, 8, 61, 3
        add               8, 4, 9
        addi              10, 10, 1
        add               9, 5, 9
        mtctr             10
4:
        ld                10, 8(8)
        addi              11, 9, 8
        addi              8, 8, 8
        addi              7, 7, -8
        addi              6, 6, 8
        std               10, 8(9)
        mr                9, 11
        bdnz              4b
5:
        cmpldi            7, 0
        bt                2, 7f
        addi              6, 6, -1
        add               4, 4, 6
        add               6, 5, 6
        mtctr             7
6:
        lbz               7, 1(4)
        addi              4, 4, 1
        stbu              7, 1(6)
        bdnz              6b
7:
        ld                4, 56(5)
        std               4, 56(3)
        ld                4, 48(5)
        std               4, 48(3)
        ld                4, 40(5)
        std               4, 40(3)
        ld                4, 32(5)
        std               4, 32(3)
        ld                4, 24(5)
        std               4, 24(3)
        ld                4, 16(5)
        std               4, 16(3)
        ld                4, 8(5)
        ldx               5, 0, 5
        std               4, 8(3)
        std               5, 0(3)
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
        cmpld             7, 4
        addi              5, 1, -64
        bf                2, 0f
        li                7, 64
        li                6, 0
        b                 2f
0:
        sub               6, 7, 4
        addi              8, 4, -1
        addi              9, 1, -65
        mtctr             6
1:
        lbz               10, 1(8)
        addi              8, 8, 1
        stbu              10, 1(9)
        bdnz              1b
        sub               7, 4, 7
        addi              7, 7, 64
        cmpldi            7, 8
        bt                0, 5f
2:
        addi              8, 7, -8
        addi              9, 6, -8
        cmpldi            8, 7
        bt                0, 3f
        li                8, 7
3:
        not               8, 8
        add               8, 8, 7
        rldicl            10, 8, 61, 3
        add               8, 4, 9
        addi              10, 10, 1
        add               9, 5, 9
        mtctr             10
4:
        ld                10, 8(8)
        addi              11, 9, 8
        addi              8, 8, 8
        addi              7, 7, -8
        addi              6, 6, 8
        std               10, 8(9)
        mr                9, 11
        bdnz              4b
5:
        cmpldi            7, 0
        bt                2, 7f
        addi              6, 6, -1
        add               4, 4, 6
        add               5, 5, 6
        mtctr             7
6:
        lbz               6, 1(4)
        addi              4, 4, 1
        stbu              6, 1(5)
        bdnz              6b
7:
        ld                4, -8(1)
        std               4, 56(3)
        ld                4, -16(1)
        std               4, 48(3)
        ld                4, -24(1)
        std               4, 40(3)
        ld                4, -32(1)
        std               4, 32(3)
        ld                4, -40(1)
        std               4, 24(3)
        ld                4, -48(1)
        std               4, 16(3)
        ld                4, -56(1)
        std               4, 8(3)
        ld                4, -64(1)
        std               4, 0(3)
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
        ld                5, 0(4)
        ld                6, 8(4)
        ld                7, 16(4)
        ld                8, 24(4)
        ld                9, 32(4)
        ld                10, 40(4)
        ld                11, 48(4)
        ld                4, 56(4)
        std               5, 0(3)
        std               6, 8(3)
        std               7, 16(3)
        std               8, 24(3)
        std               9, 32(3)
        std               10, 40(3)
        std               11, 48(3)
        std               4, 56(3)
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
        ld                5, 0(4)
        ld                6, 8(4)
        ld                7, 16(4)
        ld                8, 24(4)
        ld                9, 32(4)
        ld                10, 40(4)
        ld                11, 48(4)
        ld                4, 56(4)
        std               5, 0(3)
        std               6, 8(3)
        std               7, 16(3)
        std               8, 24(3)
        std               9, 32(3)
        std               10, 40(3)
        std               11, 48(3)
        std               4, 56(3)
        lwsync
        blr

asm_test::atomic_memcpy_store_align1::write_volatile_release_fence:
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

asm_test::atomic_memcpy_store_align1::release:
        addi              5, 3, 7
        lwsync
        rldicr            6, 5, 0, 60
        cmpld             6, 3
        bf                2, 0f
        li                5, 0
        li                6, 64
        b                 2f
0:
        sub               5, 6, 3
        addi              7, 4, -1
        addi              8, 3, -1
        mtctr             5
1:
        lbzu              9, 1(7)
        addi              10, 8, 1
        stb               9, 1(8)
        mr                8, 10
        bdnz              1b
        sub               6, 3, 6
        addi              6, 6, 64
        cmpldi            6, 8
        bt                0, 5f
2:
        addi              7, 6, -8
        addi              8, 5, -8
        cmpldi            7, 7
        bt                0, 3f
        li                7, 7
3:
        not               7, 7
        add               7, 7, 6
        rldicl            9, 7, 61, 3
        add               7, 4, 8
        addi              9, 9, 1
        add               8, 3, 8
        mtctr             9
4:
        ld                9, 8(7)
        addi              10, 8, 8
        addi              7, 7, 8
        addi              6, 6, -8
        addi              5, 5, 8
        std               9, 8(8)
        mr                8, 10
        bdnz              4b
5:
        cmpldi            6, 0
        bclr              12, 2
        addi              5, 5, -1
        add               4, 4, 5
        add               3, 3, 5
        mtctr             6
6:
        lbzu              5, 1(4)
        addi              6, 3, 1
        stb               5, 1(3)
        mr                3, 6
        bdnz              6b
        blr

asm_test::atomic_memcpy_store_align2::write_volatile_release_fence:
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

asm_test::atomic_memcpy_store_align2::release:
        addi              5, 3, 7
        lwsync
        rldicr            6, 5, 0, 60
        cmpld             6, 3
        bf                2, 0f
        li                6, 64
        li                5, 0
        b                 2f
0:
        sub               5, 6, 3
        addi              7, 4, -1
        addi              8, 3, -1
        mtctr             5
1:
        lbzu              9, 1(7)
        addi              10, 8, 1
        stb               9, 1(8)
        mr                8, 10
        bdnz              1b
        sub               6, 3, 6
        addi              6, 6, 64
        cmpldi            6, 8
        bt                0, 5f
2:
        addi              7, 6, -8
        addi              8, 5, -8
        cmpldi            7, 7
        bt                0, 3f
        li                7, 7
3:
        not               7, 7
        add               7, 7, 6
        rldicl            9, 7, 61, 3
        add               7, 4, 8
        addi              9, 9, 1
        add               8, 3, 8
        mtctr             9
4:
        ld                9, 8(7)
        addi              10, 8, 8
        addi              7, 7, 8
        addi              6, 6, -8
        addi              5, 5, 8
        std               9, 8(8)
        mr                8, 10
        bdnz              4b
5:
        cmpldi            6, 0
        bclr              12, 2
        addi              5, 5, -1
        add               4, 4, 5
        add               3, 3, 5
        mtctr             6
6:
        lbzu              5, 1(4)
        addi              6, 3, 1
        stb               5, 1(3)
        mr                3, 6
        bdnz              6b
        blr

asm_test::atomic_memcpy_store_align4::write_volatile_release_fence:
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

asm_test::atomic_memcpy_store_align4::release:
        addi              5, 3, 7
        lwsync
        rldicr            6, 5, 0, 60
        cmpld             6, 3
        bf                2, 0f
        li                6, 64
        li                5, 0
        b                 2f
0:
        sub               5, 6, 3
        addi              7, 4, -1
        addi              8, 3, -1
        mtctr             5
1:
        lbzu              9, 1(7)
        addi              10, 8, 1
        stb               9, 1(8)
        mr                8, 10
        bdnz              1b
        sub               6, 3, 6
        addi              6, 6, 64
        cmpldi            6, 8
        bt                0, 5f
2:
        addi              7, 6, -8
        addi              8, 5, -8
        cmpldi            7, 7
        bt                0, 3f
        li                7, 7
3:
        not               7, 7
        add               7, 7, 6
        rldicl            9, 7, 61, 3
        add               7, 4, 8
        addi              9, 9, 1
        add               8, 3, 8
        mtctr             9
4:
        ld                9, 8(7)
        addi              10, 8, 8
        addi              7, 7, 8
        addi              6, 6, -8
        addi              5, 5, 8
        std               9, 8(8)
        mr                8, 10
        bdnz              4b
5:
        cmpldi            6, 0
        bclr              12, 2
        addi              5, 5, -1
        add               4, 4, 5
        add               3, 3, 5
        mtctr             6
6:
        lbzu              5, 1(4)
        addi              6, 3, 1
        stb               5, 1(3)
        mr                3, 6
        bdnz              6b
        blr

asm_test::atomic_memcpy_store_align8::write_volatile_release_fence:
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

asm_test::atomic_memcpy_store_align8::release:
        lwsync
        ld                5, 0(4)
        std               5, 0(3)
        ld                5, 8(4)
        std               5, 8(3)
        ld                5, 16(4)
        std               5, 16(3)
        ld                5, 24(4)
        std               5, 24(3)
        ld                5, 32(4)
        std               5, 32(3)
        ld                5, 40(4)
        std               5, 40(3)
        ld                5, 48(4)
        std               5, 48(3)
        ld                4, 56(4)
        std               4, 56(3)
        blr

asm_test::atomic_memcpy_store_align16::write_volatile_release_fence:
        lwsync
        li                5, 48
        lvx               2, 4, 5
        stvx              2, 3, 5
        li                5, 32
        lvx               2, 4, 5
        stvx              2, 3, 5
        li                5, 16
        lvx               2, 4, 5
        stvx              2, 3, 5
        lvx               2, 0, 4
        stvx              2, 0, 3
        blr

asm_test::atomic_memcpy_store_align16::release:
        lwsync
        ld                5, 0(4)
        std               5, 0(3)
        ld                5, 8(4)
        std               5, 8(3)
        ld                5, 16(4)
        std               5, 16(3)
        ld                5, 24(4)
        std               5, 24(3)
        ld                5, 32(4)
        std               5, 32(3)
        ld                5, 40(4)
        std               5, 40(3)
        ld                5, 48(4)
        std               5, 48(3)
        ld                4, 56(4)
        std               4, 56(3)
        blr
