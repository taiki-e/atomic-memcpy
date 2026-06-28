asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        lwz               5, 0(4)
        lwz               6, 4(4)
        lwz               7, 8(4)
        lwz               8, 12(4)
        lwz               9, 16(4)
        lwz               10, 20(4)
        lwz               11, 24(4)
        lwz               4, 28(4)
        stw               11, 24(3)
        stw               4, 28(3)
        stw               10, 20(3)
        stw               9, 16(3)
        stw               8, 12(3)
        stw               7, 8(3)
        stw               6, 4(3)
        stw               5, 0(3)
        lwsync
        blr

asm_test::atomic_memcpy_load_align1::acquire:
        stwu              1, -48(1)
        addi              5, 4, 3
        rlwinm            7, 5, 0, 0, 29
        cmplw             7, 4
        addi              5, 1, 16
        bf                2, 0f
        li                6, 0
        li                7, 32
        b                 2f
0:
        sub               6, 7, 4
        addi              8, 4, -1
        addi              9, 1, 15
        mtctr             6
1:
        lbz               10, 1(8)
        addi              8, 8, 1
        stbu              10, 1(9)
        bdnz              1b
        sub               7, 4, 7
        addi              7, 7, 32
        cmplwi            7, 4
        bt                0, 5f
2:
        addi              10, 7, -4
        cmplwi            10, 3
        addi              9, 6, -4
        bt                0, 3f
        li                10, 3
3:
        not               10, 10
        add               10, 10, 7
        srwi              10, 10, 2
        add               8, 4, 9
        add               9, 5, 9
        addi              10, 10, 1
        mtctr             10
4:
        lwz               10, 4(8)
        addi              8, 8, 4
        addi              7, 7, -4
        addi              6, 6, 4
        stwu              10, 4(9)
        bdnz              4b
5:
        cmplwi            7, 0
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
        lwz               4, 44(1)
        lwz               5, 40(1)
        stw               4, 28(3)
        lwz               4, 36(1)
        stw               5, 24(3)
        lwz               5, 32(1)
        stw               4, 20(3)
        lwz               4, 28(1)
        stw               5, 16(3)
        lwz               5, 24(1)
        stw               4, 12(3)
        lwz               4, 20(1)
        stw               5, 8(3)
        lwz               5, 16(1)
        stw               4, 4(3)
        stw               5, 0(3)
        lwsync
        addi              1, 1, 48
        blr

asm_test::atomic_memcpy_load_align2::read_volatile_acquire_fence:
        lwz               5, 0(4)
        lwz               6, 4(4)
        lwz               7, 8(4)
        lwz               8, 12(4)
        lwz               9, 16(4)
        lwz               10, 20(4)
        lwz               11, 24(4)
        lwz               4, 28(4)
        stw               11, 24(3)
        stw               4, 28(3)
        stw               10, 20(3)
        stw               9, 16(3)
        stw               8, 12(3)
        stw               7, 8(3)
        stw               6, 4(3)
        stw               5, 0(3)
        lwsync
        blr

asm_test::atomic_memcpy_load_align2::acquire:
        stwu              1, -48(1)
        addi              5, 4, 3
        rlwinm            7, 5, 0, 0, 29
        cmplw             7, 4
        addi              5, 1, 16
        bf                2, 0f
        li                7, 32
        li                6, 0
        b                 2f
0:
        sub               6, 7, 4
        addi              8, 4, -1
        addi              9, 1, 15
        mtctr             6
1:
        lbz               10, 1(8)
        addi              8, 8, 1
        stbu              10, 1(9)
        bdnz              1b
        sub               7, 4, 7
        addi              7, 7, 32
        cmplwi            7, 4
        bt                0, 5f
2:
        addi              10, 7, -4
        cmplwi            10, 3
        addi              9, 6, -4
        bt                0, 3f
        li                10, 3
3:
        not               10, 10
        add               10, 10, 7
        srwi              10, 10, 2
        add               8, 4, 9
        add               9, 5, 9
        addi              10, 10, 1
        mtctr             10
4:
        lwz               10, 4(8)
        addi              8, 8, 4
        addi              7, 7, -4
        addi              6, 6, 4
        stwu              10, 4(9)
        bdnz              4b
5:
        cmplwi            7, 0
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
        lwz               4, 44(1)
        lwz               5, 40(1)
        stw               4, 28(3)
        lwz               4, 36(1)
        stw               5, 24(3)
        lwz               5, 32(1)
        stw               4, 20(3)
        lwz               4, 28(1)
        stw               5, 16(3)
        lwz               5, 24(1)
        stw               4, 12(3)
        lwz               4, 20(1)
        stw               5, 8(3)
        lwz               5, 16(1)
        stw               4, 4(3)
        stw               5, 0(3)
        lwsync
        addi              1, 1, 48
        blr

asm_test::atomic_memcpy_load_align4::read_volatile_acquire_fence:
        lwz               5, 0(4)
        lwz               6, 4(4)
        lwz               7, 8(4)
        lwz               8, 12(4)
        lwz               9, 16(4)
        lwz               10, 20(4)
        lwz               11, 24(4)
        lwz               4, 28(4)
        stw               11, 24(3)
        stw               4, 28(3)
        stw               10, 20(3)
        stw               9, 16(3)
        stw               8, 12(3)
        stw               7, 8(3)
        stw               6, 4(3)
        stw               5, 0(3)
        lwsync
        blr

asm_test::atomic_memcpy_load_align4::acquire:
        lwz               5, 0(4)
        lwz               6, 4(4)
        lwz               7, 8(4)
        lwz               8, 12(4)
        lwz               9, 16(4)
        lwz               10, 20(4)
        lwz               11, 24(4)
        lwz               4, 28(4)
        stw               5, 0(3)
        stw               6, 4(3)
        stw               7, 8(3)
        stw               8, 12(3)
        stw               9, 16(3)
        stw               10, 20(3)
        stw               11, 24(3)
        stw               4, 28(3)
        lwsync
        blr

asm_test::atomic_memcpy_load_align8::read_volatile_acquire_fence:
        lwz               5, 0(4)
        lwz               6, 4(4)
        lwz               7, 8(4)
        lwz               8, 12(4)
        lwz               9, 16(4)
        lwz               10, 20(4)
        lwz               11, 24(4)
        lwz               4, 28(4)
        stw               11, 24(3)
        stw               4, 28(3)
        stw               10, 20(3)
        stw               9, 16(3)
        stw               8, 12(3)
        stw               7, 8(3)
        stw               6, 4(3)
        stw               5, 0(3)
        lwsync
        blr

asm_test::atomic_memcpy_load_align8::acquire:
        lwz               5, 0(4)
        lwz               6, 4(4)
        lwz               7, 8(4)
        lwz               8, 12(4)
        lwz               9, 16(4)
        lwz               10, 20(4)
        lwz               11, 24(4)
        lwz               4, 28(4)
        stw               5, 0(3)
        stw               6, 4(3)
        stw               7, 8(3)
        stw               8, 12(3)
        stw               9, 16(3)
        stw               10, 20(3)
        stw               11, 24(3)
        stw               4, 28(3)
        lwsync
        blr

asm_test::atomic_memcpy_load_align16::read_volatile_acquire_fence:
        lwz               5, 0(4)
        lwz               6, 4(4)
        lwz               7, 8(4)
        lwz               8, 12(4)
        lwz               9, 16(4)
        lwz               10, 20(4)
        lwz               11, 24(4)
        lwz               4, 28(4)
        stw               11, 24(3)
        stw               4, 28(3)
        stw               10, 20(3)
        stw               9, 16(3)
        stw               8, 12(3)
        stw               7, 8(3)
        stw               6, 4(3)
        stw               5, 0(3)
        lwsync
        blr

asm_test::atomic_memcpy_load_align16::acquire:
        lwz               5, 0(4)
        lwz               6, 4(4)
        lwz               7, 8(4)
        lwz               8, 12(4)
        lwz               9, 16(4)
        lwz               10, 20(4)
        lwz               11, 24(4)
        lwz               4, 28(4)
        stw               5, 0(3)
        stw               6, 4(3)
        stw               7, 8(3)
        stw               8, 12(3)
        stw               9, 16(3)
        stw               10, 20(3)
        stw               11, 24(3)
        stw               4, 28(3)
        lwsync
        blr

asm_test::atomic_memcpy_store_align1::write_volatile_release_fence:
        lwsync
        lwz               5, 28(4)
        stw               5, 28(3)
        lwz               5, 24(4)
        stw               5, 24(3)
        lwz               5, 20(4)
        stw               5, 20(3)
        lwz               5, 16(4)
        stw               5, 16(3)
        lwz               5, 12(4)
        stw               5, 12(3)
        lwz               5, 8(4)
        stw               5, 8(3)
        lwz               5, 4(4)
        stw               5, 4(3)
        lwz               4, 0(4)
        stw               4, 0(3)
        blr

asm_test::atomic_memcpy_store_align1::release:
        addi              5, 3, 3
        rlwinm            6, 5, 0, 0, 29
        cmplw             6, 3
        lwsync
        bf                2, 0f
        li                5, 0
        li                6, 32
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
        addi              6, 6, 32
        cmplwi            6, 4
        bt                0, 5f
2:
        addi              9, 6, -4
        cmplwi            9, 3
        addi              8, 5, -4
        bt                0, 3f
        li                9, 3
3:
        not               9, 9
        add               9, 9, 6
        srwi              9, 9, 2
        add               7, 4, 8
        add               8, 3, 8
        addi              9, 9, 1
        mtctr             9
4:
        lwzu              9, 4(7)
        addi              6, 6, -4
        addi              5, 5, 4
        stw               9, 4(8)
        addi              8, 8, 4
        bdnz              4b
5:
        cmplwi            6, 0
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
        lwz               5, 28(4)
        stw               5, 28(3)
        lwz               5, 24(4)
        stw               5, 24(3)
        lwz               5, 20(4)
        stw               5, 20(3)
        lwz               5, 16(4)
        stw               5, 16(3)
        lwz               5, 12(4)
        stw               5, 12(3)
        lwz               5, 8(4)
        stw               5, 8(3)
        lwz               5, 4(4)
        stw               5, 4(3)
        lwz               4, 0(4)
        stw               4, 0(3)
        blr

asm_test::atomic_memcpy_store_align2::release:
        addi              5, 3, 3
        rlwinm            6, 5, 0, 0, 29
        cmplw             6, 3
        lwsync
        bf                2, 0f
        li                6, 32
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
        addi              6, 6, 32
        cmplwi            6, 4
        bt                0, 5f
2:
        addi              9, 6, -4
        cmplwi            9, 3
        addi              8, 5, -4
        bt                0, 3f
        li                9, 3
3:
        not               9, 9
        add               9, 9, 6
        srwi              9, 9, 2
        add               7, 4, 8
        add               8, 3, 8
        addi              9, 9, 1
        mtctr             9
4:
        lwzu              9, 4(7)
        addi              6, 6, -4
        addi              5, 5, 4
        stw               9, 4(8)
        addi              8, 8, 4
        bdnz              4b
5:
        cmplwi            6, 0
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
        lwz               5, 28(4)
        stw               5, 28(3)
        lwz               5, 24(4)
        stw               5, 24(3)
        lwz               5, 20(4)
        stw               5, 20(3)
        lwz               5, 16(4)
        stw               5, 16(3)
        lwz               5, 12(4)
        stw               5, 12(3)
        lwz               5, 8(4)
        stw               5, 8(3)
        lwz               5, 4(4)
        stw               5, 4(3)
        lwz               4, 0(4)
        stw               4, 0(3)
        blr

asm_test::atomic_memcpy_store_align4::release:
        lwsync
        lwz               5, 0(4)
        stw               5, 0(3)
        lwz               5, 4(4)
        stw               5, 4(3)
        lwz               5, 8(4)
        stw               5, 8(3)
        lwz               5, 12(4)
        stw               5, 12(3)
        lwz               5, 16(4)
        stw               5, 16(3)
        lwz               5, 20(4)
        stw               5, 20(3)
        lwz               5, 24(4)
        stw               5, 24(3)
        lwz               4, 28(4)
        stw               4, 28(3)
        blr

asm_test::atomic_memcpy_store_align8::write_volatile_release_fence:
        lwsync
        lwz               5, 28(4)
        stw               5, 28(3)
        lwz               5, 24(4)
        stw               5, 24(3)
        lwz               5, 20(4)
        stw               5, 20(3)
        lwz               5, 16(4)
        stw               5, 16(3)
        lwz               5, 12(4)
        stw               5, 12(3)
        lwz               5, 8(4)
        stw               5, 8(3)
        lwz               5, 4(4)
        stw               5, 4(3)
        lwz               4, 0(4)
        stw               4, 0(3)
        blr

asm_test::atomic_memcpy_store_align8::release:
        lwsync
        lwz               5, 0(4)
        stw               5, 0(3)
        lwz               5, 4(4)
        stw               5, 4(3)
        lwz               5, 8(4)
        stw               5, 8(3)
        lwz               5, 12(4)
        stw               5, 12(3)
        lwz               5, 16(4)
        stw               5, 16(3)
        lwz               5, 20(4)
        stw               5, 20(3)
        lwz               5, 24(4)
        stw               5, 24(3)
        lwz               4, 28(4)
        stw               4, 28(3)
        blr

asm_test::atomic_memcpy_store_align16::write_volatile_release_fence:
        lwsync
        lwz               5, 28(4)
        stw               5, 28(3)
        lwz               5, 24(4)
        stw               5, 24(3)
        lwz               5, 20(4)
        stw               5, 20(3)
        lwz               5, 16(4)
        stw               5, 16(3)
        lwz               5, 12(4)
        stw               5, 12(3)
        lwz               5, 8(4)
        stw               5, 8(3)
        lwz               5, 4(4)
        stw               5, 4(3)
        lwz               4, 0(4)
        stw               4, 0(3)
        blr

asm_test::atomic_memcpy_store_align16::release:
        lwsync
        lwz               5, 0(4)
        stw               5, 0(3)
        lwz               5, 4(4)
        stw               5, 4(3)
        lwz               5, 8(4)
        stw               5, 8(3)
        lwz               5, 12(4)
        stw               5, 12(3)
        lwz               5, 16(4)
        stw               5, 16(3)
        lwz               5, 20(4)
        stw               5, 20(3)
        lwz               5, 24(4)
        stw               5, 24(3)
        lwz               4, 28(4)
        stw               4, 28(3)
        blr
