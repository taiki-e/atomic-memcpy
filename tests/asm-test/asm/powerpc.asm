asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        stwu              1, -112(1)
        stw               14, 40(1)
        stw               15, 44(1)
        stw               16, 48(1)
        stw               17, 52(1)
        stw               18, 56(1)
        stw               19, 60(1)
        stw               20, 64(1)
        stw               21, 68(1)
        stw               22, 72(1)
        stw               23, 76(1)
        stw               24, 80(1)
        stw               25, 84(1)
        stw               26, 88(1)
        stw               27, 92(1)
        stw               28, 96(1)
        stw               29, 100(1)
        stw               31, 108(1)
        lbz               5, 31(4)
        stw               5, 36(1)
        lbz               5, 30(4)
        stw               5, 32(1)
        lbz               5, 29(4)
        stw               5, 28(1)
        lbz               5, 28(4)
        stw               5, 24(1)
        lbz               5, 27(4)
        stw               5, 20(1)
        lbz               10, 26(4)
        lbz               11, 25(4)
        lbz               12, 24(4)
        lbz               0, 23(4)
        lbz               29, 22(4)
        lbz               28, 21(4)
        lbz               27, 20(4)
        lbz               26, 19(4)
        lbz               25, 18(4)
        lbz               24, 17(4)
        lbz               23, 16(4)
        lbz               22, 15(4)
        lbz               21, 14(4)
        lbz               20, 13(4)
        lbz               19, 12(4)
        lbz               18, 11(4)
        lbz               17, 10(4)
        lbz               16, 9(4)
        lbz               15, 8(4)
        lbz               14, 7(4)
        lbz               31, 6(4)
        lbz               9, 5(4)
        lbz               8, 4(4)
        lbz               7, 3(4)
        lbz               6, 2(4)
        lbz               5, 1(4)
        lbz               4, 0(4)
        stb               5, 1(3)
        stb               4, 0(3)
        lwz               4, 20(1)
        stb               6, 2(3)
        stb               4, 27(3)
        lwz               4, 24(1)
        stb               7, 3(3)
        stb               4, 28(3)
        lwz               4, 28(1)
        stb               8, 4(3)
        stb               4, 29(3)
        lwz               4, 32(1)
        stb               9, 5(3)
        stb               4, 30(3)
        lwz               4, 36(1)
        stb               31, 6(3)
        stb               14, 7(3)
        stb               15, 8(3)
        stb               16, 9(3)
        stb               17, 10(3)
        stb               18, 11(3)
        stb               19, 12(3)
        stb               20, 13(3)
        stb               21, 14(3)
        stb               22, 15(3)
        stb               23, 16(3)
        stb               24, 17(3)
        stb               25, 18(3)
        stb               26, 19(3)
        stb               27, 20(3)
        stb               28, 21(3)
        stb               29, 22(3)
        stb               0, 23(3)
        stb               12, 24(3)
        stb               11, 25(3)
        stb               10, 26(3)
        stb               4, 31(3)
        lwsync
        lwz               31, 108(1)
        lwz               29, 100(1)
        lwz               28, 96(1)
        lwz               27, 92(1)
        lwz               26, 88(1)
        lwz               25, 84(1)
        lwz               24, 80(1)
        lwz               23, 76(1)
        lwz               22, 72(1)
        lwz               21, 68(1)
        lwz               20, 64(1)
        lwz               19, 60(1)
        lwz               18, 56(1)
        lwz               17, 52(1)
        lwz               16, 48(1)
        lwz               15, 44(1)
        lwz               14, 40(1)
        addi              1, 1, 112
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
        stwu              1, -48(1)
        stw               24, 16(1)
        stw               25, 20(1)
        stw               26, 24(1)
        stw               27, 28(1)
        stw               28, 32(1)
        stw               29, 36(1)
        lhz               5, 30(4)
        lhz               6, 28(4)
        lhz               7, 26(4)
        lhz               8, 24(4)
        lhz               9, 22(4)
        lhz               10, 20(4)
        lhz               11, 18(4)
        lhz               12, 16(4)
        lhz               0, 14(4)
        lhz               29, 12(4)
        lhz               28, 10(4)
        lhz               27, 8(4)
        lhz               26, 6(4)
        lhz               25, 4(4)
        lhz               24, 2(4)
        lhz               4, 0(4)
        sth               24, 2(3)
        sth               4, 0(3)
        sth               25, 4(3)
        sth               26, 6(3)
        sth               27, 8(3)
        sth               28, 10(3)
        sth               29, 12(3)
        sth               0, 14(3)
        sth               12, 16(3)
        sth               11, 18(3)
        sth               10, 20(3)
        sth               9, 22(3)
        sth               8, 24(3)
        sth               7, 26(3)
        sth               6, 28(3)
        sth               5, 30(3)
        lwsync
        lwz               29, 36(1)
        lwz               28, 32(1)
        lwz               27, 28(1)
        lwz               26, 24(1)
        lwz               25, 20(1)
        lwz               24, 16(1)
        addi              1, 1, 48
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
        lwz               5, 28(4)
        lwz               6, 24(4)
        lwz               7, 20(4)
        lwz               8, 16(4)
        lwz               9, 12(4)
        lwz               10, 8(4)
        lwz               11, 4(4)
        lwz               4, 0(4)
        stw               11, 4(3)
        stw               4, 0(3)
        stw               10, 8(3)
        stw               9, 12(3)
        stw               8, 16(3)
        stw               7, 20(3)
        stw               6, 24(3)
        stw               5, 28(3)
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
        lwz               5, 24(4)
        lwz               6, 28(4)
        lwz               7, 16(4)
        lwz               8, 20(4)
        lwz               9, 8(4)
        lwz               10, 12(4)
        lwz               11, 0(4)
        lwz               4, 4(4)
        stw               11, 0(3)
        stw               4, 4(3)
        stw               10, 12(3)
        stw               9, 8(3)
        stw               8, 20(3)
        stw               7, 16(3)
        stw               6, 28(3)
        stw               5, 24(3)
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
        lwz               5, 24(4)
        lwz               6, 28(4)
        lwz               7, 16(4)
        lwz               8, 20(4)
        lwz               9, 8(4)
        lwz               10, 12(4)
        lwz               11, 0(4)
        lwz               4, 4(4)
        stw               11, 0(3)
        stw               4, 4(3)
        stw               10, 12(3)
        stw               9, 8(3)
        stw               8, 20(3)
        stw               7, 16(3)
        stw               6, 28(3)
        stw               5, 24(3)
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

