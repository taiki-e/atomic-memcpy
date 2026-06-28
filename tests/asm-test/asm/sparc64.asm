asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        save              %sp, -448, %sp
        ldub              [ %i1 + 8 ], %i2
        stx               %i2, [ %fp + 0x7f7 ]
        ldub              [ %i1 + 9 ], %i2
        stx               %i2, [ %fp + 0x7ef ]
        ldub              [ %i1 + 0xa ], %i2
        stx               %i2, [ %fp + 0x7e7 ]
        ldub              [ %i1 + 0xb ], %i2
        stx               %i2, [ %fp + 0x7df ]
        ldub              [ %i1 + 0xc ], %i2
        stx               %i2, [ %fp + 0x7d7 ]
        ldub              [ %i1 + 0xd ], %i2
        stx               %i2, [ %fp + 0x7cf ]
        ldub              [ %i1 + 0xe ], %i2
        stx               %i2, [ %fp + 0x7c7 ]
        ldub              [ %i1 + 0xf ], %i2
        stx               %i2, [ %fp + 0x7bf ]
        ldub              [ %i1 ], %i2
        stx               %i2, [ %fp + 0x7b7 ]
        ldub              [ %i1 + 1 ], %i2
        stx               %i2, [ %fp + 0x7af ]
        ldub              [ %i1 + 2 ], %i2
        stx               %i2, [ %fp + 0x7a7 ]
        ldub              [ %i1 + 3 ], %i2
        stx               %i2, [ %fp + 0x79f ]
        ldub              [ %i1 + 4 ], %i2
        stx               %i2, [ %fp + 0x797 ]
        ldub              [ %i1 + 5 ], %i2
        stx               %i2, [ %fp + 0x78f ]
        ldub              [ %i1 + 6 ], %i2
        stx               %i2, [ %fp + 0x787 ]
        ldub              [ %i1 + 7 ], %i2
        stx               %i2, [ %fp + 0x77f ]
        ldub              [ %i1 + 0x18 ], %i2
        stx               %i2, [ %fp + 0x777 ]
        ldub              [ %i1 + 0x19 ], %i2
        stx               %i2, [ %fp + 0x76f ]
        ldub              [ %i1 + 0x1a ], %i2
        stx               %i2, [ %fp + 0x767 ]
        ldub              [ %i1 + 0x1b ], %i2
        stx               %i2, [ %fp + 0x75f ]
        ldub              [ %i1 + 0x1c ], %i2
        stx               %i2, [ %fp + 0x757 ]
        ldub              [ %i1 + 0x1d ], %i2
        stx               %i2, [ %fp + 0x74f ]
        ldub              [ %i1 + 0x1e ], %i2
        stx               %i2, [ %fp + 0x747 ]
        ldub              [ %i1 + 0x1f ], %i2
        stx               %i2, [ %fp + 0x73f ]
        ldub              [ %i1 + 0x10 ], %i2
        stx               %i2, [ %fp + 0x737 ]
        ldub              [ %i1 + 0x11 ], %i2
        stx               %i2, [ %fp + 0x72f ]
        ldub              [ %i1 + 0x12 ], %i2
        stx               %i2, [ %fp + 0x727 ]
        ldub              [ %i1 + 0x13 ], %i2
        stx               %i2, [ %fp + 0x71f ]
        ldub              [ %i1 + 0x14 ], %i2
        stx               %i2, [ %fp + 0x717 ]
        ldub              [ %i1 + 0x15 ], %i2
        stx               %i2, [ %fp + 0x70f ]
        ldub              [ %i1 + 0x16 ], %i2
        stx               %i2, [ %fp + 0x707 ]
        ldub              [ %i1 + 0x17 ], %i2
        stx               %i2, [ %fp + 0x6ff ]
        ldub              [ %i1 + 0x28 ], %i2
        stx               %i2, [ %fp + 0x6f7 ]
        ldub              [ %i1 + 0x29 ], %i2
        stx               %i2, [ %fp + 0x6ef ]
        ldub              [ %i1 + 0x2a ], %i2
        stx               %i2, [ %fp + 0x6e7 ]
        ldub              [ %i1 + 0x2b ], %i2
        stx               %i2, [ %fp + 0x6df ]
        ldub              [ %i1 + 0x2c ], %i2
        stx               %i2, [ %fp + 0x6d7 ]
        ldub              [ %i1 + 0x2d ], %i2
        stx               %i2, [ %fp + 0x6cf ]
        ldub              [ %i1 + 0x2e ], %i2
        stx               %i2, [ %fp + 0x6c7 ]
        ldub              [ %i1 + 0x2f ], %i2
        stx               %i2, [ %fp + 0x6bf ]
        ldub              [ %i1 + 0x20 ], %o7
        ldub              [ %i1 + 0x21 ], %o5
        ldub              [ %i1 + 0x22 ], %o4
        ldub              [ %i1 + 0x23 ], %o3
        ldub              [ %i1 + 0x24 ], %o2
        ldub              [ %i1 + 0x25 ], %o1
        ldub              [ %i1 + 0x26 ], %o0
        ldub              [ %i1 + 0x27 ], %l7
        ldub              [ %i1 + 0x38 ], %l6
        ldub              [ %i1 + 0x39 ], %l5
        ldub              [ %i1 + 0x3a ], %l4
        ldub              [ %i1 + 0x3b ], %l3
        ldub              [ %i1 + 0x3c ], %l2
        ldub              [ %i1 + 0x3d ], %l1
        ldub              [ %i1 + 0x3e ], %l0
        ldub              [ %i1 + 0x3f ], %g5
        ldub              [ %i1 + 0x30 ], %g4
        ldub              [ %i1 + 0x31 ], %g3
        ldub              [ %i1 + 0x32 ], %g2
        ldub              [ %i1 + 0x33 ], %i5
        ldub              [ %i1 + 0x34 ], %i4
        ldub              [ %i1 + 0x35 ], %i3
        ldub              [ %i1 + 0x36 ], %i2
        ldub              [ %i1 + 0x37 ], %i1
        stb               %i1, [ %i0 + 0x37 ]
        stb               %i2, [ %i0 + 0x36 ]
        stb               %i3, [ %i0 + 0x35 ]
        stb               %i4, [ %i0 + 0x34 ]
        stb               %i5, [ %i0 + 0x33 ]
        stb               %g2, [ %i0 + 0x32 ]
        stb               %g3, [ %i0 + 0x31 ]
        stb               %g4, [ %i0 + 0x30 ]
        stb               %g5, [ %i0 + 0x3f ]
        stb               %l0, [ %i0 + 0x3e ]
        stb               %l1, [ %i0 + 0x3d ]
        stb               %l2, [ %i0 + 0x3c ]
        stb               %l3, [ %i0 + 0x3b ]
        stb               %l4, [ %i0 + 0x3a ]
        stb               %l5, [ %i0 + 0x39 ]
        stb               %l6, [ %i0 + 0x38 ]
        stb               %l7, [ %i0 + 0x27 ]
        stb               %o0, [ %i0 + 0x26 ]
        stb               %o1, [ %i0 + 0x25 ]
        stb               %o2, [ %i0 + 0x24 ]
        stb               %o3, [ %i0 + 0x23 ]
        stb               %o4, [ %i0 + 0x22 ]
        stb               %o5, [ %i0 + 0x21 ]
        stb               %o7, [ %i0 + 0x20 ]
        ldx               [ %fp + 0x6bf ], %i1
        stb               %i1, [ %i0 + 0x2f ]
        ldx               [ %fp + 0x6c7 ], %i1
        stb               %i1, [ %i0 + 0x2e ]
        ldx               [ %fp + 0x6cf ], %i1
        stb               %i1, [ %i0 + 0x2d ]
        ldx               [ %fp + 0x6d7 ], %i1
        stb               %i1, [ %i0 + 0x2c ]
        ldx               [ %fp + 0x6df ], %i1
        stb               %i1, [ %i0 + 0x2b ]
        ldx               [ %fp + 0x6e7 ], %i1
        stb               %i1, [ %i0 + 0x2a ]
        ldx               [ %fp + 0x6ef ], %i1
        stb               %i1, [ %i0 + 0x29 ]
        ldx               [ %fp + 0x6f7 ], %i1
        stb               %i1, [ %i0 + 0x28 ]
        ldx               [ %fp + 0x6ff ], %i1
        stb               %i1, [ %i0 + 0x17 ]
        ldx               [ %fp + 0x707 ], %i1
        stb               %i1, [ %i0 + 0x16 ]
        ldx               [ %fp + 0x70f ], %i1
        stb               %i1, [ %i0 + 0x15 ]
        ldx               [ %fp + 0x717 ], %i1
        stb               %i1, [ %i0 + 0x14 ]
        ldx               [ %fp + 0x71f ], %i1
        stb               %i1, [ %i0 + 0x13 ]
        ldx               [ %fp + 0x727 ], %i1
        stb               %i1, [ %i0 + 0x12 ]
        ldx               [ %fp + 0x72f ], %i1
        stb               %i1, [ %i0 + 0x11 ]
        ldx               [ %fp + 0x737 ], %i1
        stb               %i1, [ %i0 + 0x10 ]
        ldx               [ %fp + 0x73f ], %i1
        stb               %i1, [ %i0 + 0x1f ]
        ldx               [ %fp + 0x747 ], %i1
        stb               %i1, [ %i0 + 0x1e ]
        ldx               [ %fp + 0x74f ], %i1
        stb               %i1, [ %i0 + 0x1d ]
        ldx               [ %fp + 0x757 ], %i1
        stb               %i1, [ %i0 + 0x1c ]
        ldx               [ %fp + 0x75f ], %i1
        stb               %i1, [ %i0 + 0x1b ]
        ldx               [ %fp + 0x767 ], %i1
        stb               %i1, [ %i0 + 0x1a ]
        ldx               [ %fp + 0x76f ], %i1
        stb               %i1, [ %i0 + 0x19 ]
        ldx               [ %fp + 0x777 ], %i1
        stb               %i1, [ %i0 + 0x18 ]
        ldx               [ %fp + 0x77f ], %i1
        stb               %i1, [ %i0 + 7 ]
        ldx               [ %fp + 0x787 ], %i1
        stb               %i1, [ %i0 + 6 ]
        ldx               [ %fp + 0x78f ], %i1
        stb               %i1, [ %i0 + 5 ]
        ldx               [ %fp + 0x797 ], %i1
        stb               %i1, [ %i0 + 4 ]
        ldx               [ %fp + 0x79f ], %i1
        stb               %i1, [ %i0 + 3 ]
        ldx               [ %fp + 0x7a7 ], %i1
        stb               %i1, [ %i0 + 2 ]
        ldx               [ %fp + 0x7af ], %i1
        stb               %i1, [ %i0 + 1 ]
        ldx               [ %fp + 0x7b7 ], %i1
        stb               %i1, [ %i0 ]
        ldx               [ %fp + 0x7bf ], %i1
        stb               %i1, [ %i0 + 0xf ]
        ldx               [ %fp + 0x7c7 ], %i1
        stb               %i1, [ %i0 + 0xe ]
        ldx               [ %fp + 0x7cf ], %i1
        stb               %i1, [ %i0 + 0xd ]
        ldx               [ %fp + 0x7d7 ], %i1
        stb               %i1, [ %i0 + 0xc ]
        ldx               [ %fp + 0x7df ], %i1
        stb               %i1, [ %i0 + 0xb ]
        ldx               [ %fp + 0x7e7 ], %i1
        stb               %i1, [ %i0 + 0xa ]
        ldx               [ %fp + 0x7ef ], %i1
        stb               %i1, [ %i0 + 9 ]
        ldx               [ %fp + 0x7f7 ], %i1
        stb               %i1, [ %i0 + 8 ]
        membar            #LoadStore|#LoadLoad
        ret
        restore

asm_test::atomic_memcpy_load_align1::acquire:
        save              %sp, -240, %sp
        add               %i1, 7, %i2
        and               %i2, -8, %i2
        cmp               %i2, %i1
        bne               %xcc, 0f
        mov               %i0, %o0
        mov               %g0, %i0
        b                 2f
        mov               0x40, %i2
0:
        sub               %i2, %i1, %i0
        add               %fp, 0x7bf, %i3
        sub               %i1, %i2, %i4
        mov               %i1, %i5
1:
        ldub              [ %i5 ], %g2
        mov               %g0, %g3
        stb               %g2, [ %i3 ]
        inc               %i3
        inc               %i4
        movre             %i4, 1, %g3
        btst              1, %g3
        be                %icc, 1b
        inc               %i5
        sub               %i1, %i2, %i2
        add               %i2, 0x40, %i2
        cmp               %i2, 8
        bcs               %xcc, 4f
        nop
2:
        add               %fp, 0x7bf, %i3
3:
        ldx               [ %i1 + %i0 ], %i4
        add               %i3, %i0, %i5
        srlx              %i4, 0x38, %g2
        stb               %g2, [ %i3 + %i0 ]
        stb               %i4, [ %i5 + 7 ]
        srlx              %i4, 8, %g2
        stb               %g2, [ %i5 + 6 ]
        srlx              %i4, 0x10, %g2
        stb               %g2, [ %i5 + 5 ]
        srlx              %i4, 0x18, %g2
        stb               %g2, [ %i5 + 4 ]
        srlx              %i4, 0x20, %g2
        stb               %g2, [ %i5 + 3 ]
        srlx              %i4, 0x28, %g2
        stb               %g2, [ %i5 + 2 ]
        srlx              %i4, 0x30, %i4
        stb               %i4, [ %i5 + 1 ]
        add               %i2, -8, %i2
        cmp               %i2, 7
        bgu               %xcc, 3b
        add               %i0, 8, %i0
4:
        brz               %i2, 6f
        nop
        add               %i1, %i0, %i1
        add               %fp, 0x7bf, %i3
        add               %i3, %i0, %i0
5:
        ldub              [ %i1 ], %i3
        stb               %i3, [ %i0 ]
        inc               %i1
        add               %i2, -1, %i2
        brnz              %i2, 5b
        inc               %i0
6:
        add               %fp, 0x7bf, %o1
7:
        call              7f
        mov               0x40, %o2
        membar            #LoadStore|#LoadLoad
        ret
        restore

asm_test::atomic_memcpy_load_align2::read_volatile_acquire_fence:
        save              %sp, -192, %sp
        lduh              [ %i1 + 8 ], %i2
        stx               %i2, [ %fp + 0x7f7 ]
        lduh              [ %i1 + 0xa ], %i2
        stx               %i2, [ %fp + 0x7ef ]
        lduh              [ %i1 + 0xc ], %i2
        stx               %i2, [ %fp + 0x7e7 ]
        lduh              [ %i1 + 0xe ], %i2
        stx               %i2, [ %fp + 0x7df ]
        lduh              [ %i1 ], %i2
        stx               %i2, [ %fp + 0x7d7 ]
        lduh              [ %i1 + 2 ], %i2
        stx               %i2, [ %fp + 0x7cf ]
        lduh              [ %i1 + 4 ], %i2
        stx               %i2, [ %fp + 0x7c7 ]
        lduh              [ %i1 + 6 ], %i2
        stx               %i2, [ %fp + 0x7bf ]
        lduh              [ %i1 + 0x18 ], %l0
        lduh              [ %i1 + 0x1a ], %l1
        lduh              [ %i1 + 0x1c ], %l2
        lduh              [ %i1 + 0x1e ], %l3
        lduh              [ %i1 + 0x10 ], %l4
        lduh              [ %i1 + 0x12 ], %l5
        lduh              [ %i1 + 0x14 ], %l6
        lduh              [ %i1 + 0x16 ], %l7
        lduh              [ %i1 + 0x28 ], %o0
        lduh              [ %i1 + 0x2a ], %o1
        lduh              [ %i1 + 0x2c ], %o2
        lduh              [ %i1 + 0x2e ], %o3
        lduh              [ %i1 + 0x20 ], %o4
        lduh              [ %i1 + 0x22 ], %o5
        lduh              [ %i1 + 0x24 ], %o7
        lduh              [ %i1 + 0x26 ], %g5
        lduh              [ %i1 + 0x38 ], %g4
        lduh              [ %i1 + 0x3a ], %g3
        lduh              [ %i1 + 0x3c ], %g2
        lduh              [ %i1 + 0x3e ], %i5
        lduh              [ %i1 + 0x30 ], %i4
        lduh              [ %i1 + 0x32 ], %i3
        lduh              [ %i1 + 0x34 ], %i2
        lduh              [ %i1 + 0x36 ], %i1
        sth               %i1, [ %i0 + 0x36 ]
        sth               %i2, [ %i0 + 0x34 ]
        sth               %i3, [ %i0 + 0x32 ]
        sth               %i4, [ %i0 + 0x30 ]
        sth               %i5, [ %i0 + 0x3e ]
        sth               %g2, [ %i0 + 0x3c ]
        sth               %g3, [ %i0 + 0x3a ]
        sth               %g4, [ %i0 + 0x38 ]
        sth               %g5, [ %i0 + 0x26 ]
        sth               %o7, [ %i0 + 0x24 ]
        sth               %o5, [ %i0 + 0x22 ]
        sth               %o4, [ %i0 + 0x20 ]
        sth               %o3, [ %i0 + 0x2e ]
        sth               %o2, [ %i0 + 0x2c ]
        sth               %o1, [ %i0 + 0x2a ]
        sth               %o0, [ %i0 + 0x28 ]
        sth               %l7, [ %i0 + 0x16 ]
        sth               %l6, [ %i0 + 0x14 ]
        sth               %l5, [ %i0 + 0x12 ]
        sth               %l4, [ %i0 + 0x10 ]
        sth               %l3, [ %i0 + 0x1e ]
        sth               %l2, [ %i0 + 0x1c ]
        sth               %l1, [ %i0 + 0x1a ]
        sth               %l0, [ %i0 + 0x18 ]
        ldx               [ %fp + 0x7bf ], %i1
        sth               %i1, [ %i0 + 6 ]
        ldx               [ %fp + 0x7c7 ], %i1
        sth               %i1, [ %i0 + 4 ]
        ldx               [ %fp + 0x7cf ], %i1
        sth               %i1, [ %i0 + 2 ]
        ldx               [ %fp + 0x7d7 ], %i1
        sth               %i1, [ %i0 ]
        ldx               [ %fp + 0x7df ], %i1
        sth               %i1, [ %i0 + 0xe ]
        ldx               [ %fp + 0x7e7 ], %i1
        sth               %i1, [ %i0 + 0xc ]
        ldx               [ %fp + 0x7ef ], %i1
        sth               %i1, [ %i0 + 0xa ]
        ldx               [ %fp + 0x7f7 ], %i1
        sth               %i1, [ %i0 + 8 ]
        membar            #LoadStore|#LoadLoad
        ret
        restore

asm_test::atomic_memcpy_load_align2::acquire:
        save              %sp, -240, %sp
        add               %i1, 7, %i2
        and               %i2, -8, %i2
        cmp               %i2, %i1
        bne               %xcc, 0f
        mov               %i0, %o0
        mov               %g0, %i0
        b                 2f
        mov               0x40, %i2
0:
        sub               %i2, %i1, %i0
        add               %fp, 0x7bf, %i3
        sub               %i1, %i2, %i4
        mov               %i1, %i5
1:
        ldub              [ %i5 ], %g2
        mov               %g0, %g3
        stb               %g2, [ %i3 ]
        inc               %i3
        inc               %i4
        movre             %i4, 1, %g3
        btst              1, %g3
        be                %icc, 1b
        inc               %i5
        sub               %i1, %i2, %i2
        add               %i2, 0x40, %i2
        cmp               %i2, 8
        bcs               %xcc, 4f
        nop
2:
        add               %fp, 0x7bf, %i3
3:
        ldx               [ %i1 + %i0 ], %i4
        add               %i3, %i0, %i5
        srlx              %i4, 0x38, %g2
        stb               %g2, [ %i3 + %i0 ]
        stb               %i4, [ %i5 + 7 ]
        srlx              %i4, 8, %g2
        stb               %g2, [ %i5 + 6 ]
        srlx              %i4, 0x10, %g2
        stb               %g2, [ %i5 + 5 ]
        srlx              %i4, 0x18, %g2
        stb               %g2, [ %i5 + 4 ]
        srlx              %i4, 0x20, %g2
        stb               %g2, [ %i5 + 3 ]
        srlx              %i4, 0x28, %g2
        stb               %g2, [ %i5 + 2 ]
        srlx              %i4, 0x30, %i4
        stb               %i4, [ %i5 + 1 ]
        add               %i2, -8, %i2
        cmp               %i2, 7
        bgu               %xcc, 3b
        add               %i0, 8, %i0
4:
        brz               %i2, 6f
        nop
        add               %i1, %i0, %i1
        add               %fp, 0x7bf, %i3
        add               %i3, %i0, %i0
5:
        ldub              [ %i1 ], %i3
        stb               %i3, [ %i0 ]
        inc               %i1
        add               %i2, -1, %i2
        brnz              %i2, 5b
        inc               %i0
6:
        add               %fp, 0x7bf, %o1
7:
        call              7f
        mov               0x40, %o2
        membar            #LoadStore|#LoadLoad
        ret
        restore

asm_test::atomic_memcpy_load_align4::read_volatile_acquire_fence:
        save              %sp, -128, %sp
        ld                [ %i1 + 0xc ], %i2
        ld                [ %i1 + 8 ], %i3
        ld                [ %i1 + 4 ], %i4
        ld                [ %i1 ], %i5
        ld                [ %i1 + 0x1c ], %g2
        ld                [ %i1 + 0x18 ], %g3
        ld                [ %i1 + 0x14 ], %g4
        ld                [ %i1 + 0x10 ], %g5
        ld                [ %i1 + 0x2c ], %l0
        ld                [ %i1 + 0x28 ], %l1
        ld                [ %i1 + 0x24 ], %l2
        ld                [ %i1 + 0x20 ], %l3
        ld                [ %i1 + 0x3c ], %l4
        ld                [ %i1 + 0x38 ], %l5
        ld                [ %i1 + 0x34 ], %l6
        ld                [ %i1 + 0x30 ], %i1
        st                %i1, [ %i0 + 0x30 ]
        st                %l6, [ %i0 + 0x34 ]
        st                %l5, [ %i0 + 0x38 ]
        st                %l4, [ %i0 + 0x3c ]
        st                %l3, [ %i0 + 0x20 ]
        st                %l2, [ %i0 + 0x24 ]
        st                %l1, [ %i0 + 0x28 ]
        st                %l0, [ %i0 + 0x2c ]
        st                %g5, [ %i0 + 0x10 ]
        st                %g4, [ %i0 + 0x14 ]
        st                %g3, [ %i0 + 0x18 ]
        st                %g2, [ %i0 + 0x1c ]
        st                %i5, [ %i0 ]
        st                %i4, [ %i0 + 4 ]
        st                %i3, [ %i0 + 8 ]
        st                %i2, [ %i0 + 0xc ]
        membar            #LoadStore|#LoadLoad
        ret
        restore

asm_test::atomic_memcpy_load_align4::acquire:
        save              %sp, -240, %sp
        add               %i1, 7, %i2
        and               %i2, -8, %i2
        cmp               %i2, %i1
        bne               %xcc, 0f
        mov               %i0, %o0
        mov               %g0, %i0
        b                 2f
        mov               0x40, %i2
0:
        sub               %i2, %i1, %i0
        add               %fp, 0x7bf, %i3
        sub               %i1, %i2, %i4
        mov               %i1, %i5
1:
        ldub              [ %i5 ], %g2
        mov               %g0, %g3
        stb               %g2, [ %i3 ]
        inc               %i3
        inc               %i4
        movre             %i4, 1, %g3
        btst              1, %g3
        be                %icc, 1b
        inc               %i5
        sub               %i1, %i2, %i2
        add               %i2, 0x40, %i2
        cmp               %i2, 8
        bcs               %xcc, 4f
        nop
2:
        add               %fp, 0x7bf, %i3
3:
        ldx               [ %i1 + %i0 ], %i4
        add               %i3, %i0, %i5
        srlx              %i4, 0x38, %g2
        stb               %g2, [ %i3 + %i0 ]
        stb               %i4, [ %i5 + 7 ]
        srlx              %i4, 8, %g2
        stb               %g2, [ %i5 + 6 ]
        srlx              %i4, 0x10, %g2
        stb               %g2, [ %i5 + 5 ]
        srlx              %i4, 0x18, %g2
        stb               %g2, [ %i5 + 4 ]
        srlx              %i4, 0x20, %g2
        stb               %g2, [ %i5 + 3 ]
        srlx              %i4, 0x28, %g2
        stb               %g2, [ %i5 + 2 ]
        srlx              %i4, 0x30, %i4
        stb               %i4, [ %i5 + 1 ]
        add               %i2, -8, %i2
        cmp               %i2, 7
        bgu               %xcc, 3b
        add               %i0, 8, %i0
4:
        brz               %i2, 6f
        nop
        add               %i1, %i0, %i1
        add               %fp, 0x7bf, %i3
        add               %i3, %i0, %i0
5:
        ldub              [ %i1 ], %i3
        stb               %i3, [ %i0 ]
        inc               %i1
        add               %i2, -1, %i2
        brnz              %i2, 5b
        inc               %i0
6:
        add               %fp, 0x7bf, %o1
7:
        call              7f
        mov               0x40, %o2
        membar            #LoadStore|#LoadLoad
        ret
        restore

asm_test::atomic_memcpy_load_align8::read_volatile_acquire_fence:
        ldx               [ %o1 + 8 ], %o2
        ldx               [ %o1 ], %o3
        ldx               [ %o1 + 0x18 ], %o4
        ldx               [ %o1 + 0x10 ], %o5
        ldx               [ %o1 + 0x28 ], %g2
        ldx               [ %o1 + 0x20 ], %g3
        ldx               [ %o1 + 0x38 ], %g4
        ldx               [ %o1 + 0x30 ], %o1
        stx               %o1, [ %o0 + 0x30 ]
        stx               %g4, [ %o0 + 0x38 ]
        stx               %g3, [ %o0 + 0x20 ]
        stx               %g2, [ %o0 + 0x28 ]
        stx               %o5, [ %o0 + 0x10 ]
        stx               %o4, [ %o0 + 0x18 ]
        stx               %o3, [ %o0 ]
        stx               %o2, [ %o0 + 8 ]
        membar            #LoadStore|#LoadLoad
        retl
        nop

asm_test::atomic_memcpy_load_align8::acquire:
        ldx               [ %o1 ], %o2
        ldx               [ %o1 + 8 ], %o3
        ldx               [ %o1 + 0x10 ], %o4
        ldx               [ %o1 + 0x18 ], %o5
        ldx               [ %o1 + 0x20 ], %g2
        ldx               [ %o1 + 0x28 ], %g3
        ldx               [ %o1 + 0x30 ], %g4
        ldx               [ %o1 + 0x38 ], %o1
        stx               %o2, [ %o0 ]
        stx               %o3, [ %o0 + 8 ]
        stx               %o4, [ %o0 + 0x10 ]
        stx               %o5, [ %o0 + 0x18 ]
        stx               %g2, [ %o0 + 0x20 ]
        stx               %g3, [ %o0 + 0x28 ]
        stx               %g4, [ %o0 + 0x30 ]
        stx               %o1, [ %o0 + 0x38 ]
        membar            #LoadStore|#LoadLoad
        retl
        nop

asm_test::atomic_memcpy_load_align16::read_volatile_acquire_fence:
        ldx               [ %o1 + 8 ], %o2
        ldx               [ %o1 ], %o3
        ldx               [ %o1 + 0x18 ], %o4
        ldx               [ %o1 + 0x10 ], %o5
        ldx               [ %o1 + 0x28 ], %g2
        ldx               [ %o1 + 0x20 ], %g3
        ldx               [ %o1 + 0x38 ], %g4
        ldx               [ %o1 + 0x30 ], %o1
        stx               %o1, [ %o0 + 0x30 ]
        stx               %g4, [ %o0 + 0x38 ]
        stx               %g3, [ %o0 + 0x20 ]
        stx               %g2, [ %o0 + 0x28 ]
        stx               %o5, [ %o0 + 0x10 ]
        stx               %o4, [ %o0 + 0x18 ]
        stx               %o3, [ %o0 ]
        stx               %o2, [ %o0 + 8 ]
        membar            #LoadStore|#LoadLoad
        retl
        nop

asm_test::atomic_memcpy_load_align16::acquire:
        ldx               [ %o1 ], %o2
        ldx               [ %o1 + 8 ], %o3
        ldx               [ %o1 + 0x10 ], %o4
        ldx               [ %o1 + 0x18 ], %o5
        ldx               [ %o1 + 0x20 ], %g2
        ldx               [ %o1 + 0x28 ], %g3
        ldx               [ %o1 + 0x30 ], %g4
        ldx               [ %o1 + 0x38 ], %o1
        stx               %o2, [ %o0 ]
        stx               %o3, [ %o0 + 8 ]
        stx               %o4, [ %o0 + 0x10 ]
        stx               %o5, [ %o0 + 0x18 ]
        stx               %g2, [ %o0 + 0x20 ]
        stx               %g3, [ %o0 + 0x28 ]
        stx               %g4, [ %o0 + 0x30 ]
        stx               %o1, [ %o0 + 0x38 ]
        membar            #LoadStore|#LoadLoad
        retl
        nop

asm_test::atomic_memcpy_store_align1::write_volatile_release_fence:
        mov               0x40, %o2
        membar            #StoreStore|#LoadStore
        mov               %o7, %g1
0:
        call              0f
        mov               %g1, %o7

asm_test::atomic_memcpy_store_align1::release:
        add               %o0, 7, %o2
        and               %o2, -8, %o3
        cmp               %o3, %o0
        membar            #StoreStore|#LoadStore
        bne               %xcc, 0f
        nop
        mov               %g0, %o2
        b                 2f
        mov               0x40, %o3
0:
        sub               %o3, %o0, %o2
        sub               %o0, %o3, %o4
        mov               %o1, %o5
        mov               %o0, %g2
1:
        ldub              [ %o5 ], %g3
        mov               %g0, %g4
        stb               %g3, [ %g2 ]
        inc               %g2
        inc               %o4
        movre             %o4, 1, %g4
        btst              1, %g4
        be                %icc, 1b
        inc               %o5
        sub               %o0, %o3, %o3
        add               %o3, 0x40, %o3
        cmp               %o3, 8
        bcs               %xcc, 3f
        nop
2:
        add               %o1, %o2, %o4
        ldub              [ %o4 + 6 ], %o5
        ldub              [ %o4 + 7 ], %g2
        ldub              [ %o4 + 5 ], %g3
        ldub              [ %o4 + 4 ], %g4
        sllx              %o5, 8, %o5
        or                %o5, %g2, %o5
        sllx              %g3, 0x10, %g2
        sllx              %g4, 0x18, %g3
        or                %g3, %g2, %g2
        or                %g2, %o5, %o5
        ldub              [ %o4 + 2 ], %g2
        ldub              [ %o4 + 3 ], %g3
        ldub              [ %o1 + %o2 ], %g4
        ldub              [ %o4 + 1 ], %o4
        sllx              %g2, 8, %g2
        or                %g2, %g3, %g2
        sllx              %g4, 0x18, %g3
        sllx              %o4, 0x10, %o4
        or                %g3, %o4, %o4
        or                %o4, %g2, %o4
        sllx              %o4, 0x20, %o4
        or                %o4, %o5, %o4
        stx               %o4, [ %o0 + %o2 ]
        add               %o3, -8, %o3
        cmp               %o3, 7
        bgu               %xcc, 2b
        add               %o2, 8, %o2
3:
        brz               %o3, 5f
        nop
        add               %o1, %o2, %o1
        add               %o0, %o2, %o0
4:
        ldub              [ %o1 ], %o2
        stb               %o2, [ %o0 ]
        inc               %o1
        add               %o3, -1, %o3
        brnz              %o3, 4b
        inc               %o0
5:
        retl
        nop

asm_test::atomic_memcpy_store_align2::write_volatile_release_fence:
        mov               0x40, %o2
        membar            #StoreStore|#LoadStore
        mov               %o7, %g1
0:
        call              0f
        mov               %g1, %o7

asm_test::atomic_memcpy_store_align2::release:
        add               %o0, 7, %o2
        and               %o2, -8, %o3
        cmp               %o3, %o0
        membar            #StoreStore|#LoadStore
        bne               %xcc, 0f
        nop
        mov               %g0, %o2
        b                 2f
        mov               0x40, %o3
0:
        sub               %o3, %o0, %o2
        sub               %o0, %o3, %o4
        mov               %o1, %o5
        mov               %o0, %g2
1:
        ldub              [ %o5 ], %g3
        mov               %g0, %g4
        stb               %g3, [ %g2 ]
        inc               %g2
        inc               %o4
        movre             %o4, 1, %g4
        btst              1, %g4
        be                %icc, 1b
        inc               %o5
        sub               %o0, %o3, %o3
        add               %o3, 0x40, %o3
        cmp               %o3, 8
        bcs               %xcc, 3f
        nop
2:
        add               %o1, %o2, %o4
        ldub              [ %o4 + 6 ], %o5
        ldub              [ %o4 + 7 ], %g2
        ldub              [ %o4 + 5 ], %g3
        ldub              [ %o4 + 4 ], %g4
        sllx              %o5, 8, %o5
        or                %o5, %g2, %o5
        sllx              %g3, 0x10, %g2
        sllx              %g4, 0x18, %g3
        or                %g3, %g2, %g2
        or                %g2, %o5, %o5
        ldub              [ %o4 + 2 ], %g2
        ldub              [ %o4 + 3 ], %g3
        ldub              [ %o1 + %o2 ], %g4
        ldub              [ %o4 + 1 ], %o4
        sllx              %g2, 8, %g2
        or                %g2, %g3, %g2
        sllx              %g4, 0x18, %g3
        sllx              %o4, 0x10, %o4
        or                %g3, %o4, %o4
        or                %o4, %g2, %o4
        sllx              %o4, 0x20, %o4
        or                %o4, %o5, %o4
        stx               %o4, [ %o0 + %o2 ]
        add               %o3, -8, %o3
        cmp               %o3, 7
        bgu               %xcc, 2b
        add               %o2, 8, %o2
3:
        brz               %o3, 5f
        nop
        add               %o1, %o2, %o1
        add               %o0, %o2, %o0
4:
        ldub              [ %o1 ], %o2
        stb               %o2, [ %o0 ]
        inc               %o1
        add               %o3, -1, %o3
        brnz              %o3, 4b
        inc               %o0
5:
        retl
        nop

asm_test::atomic_memcpy_store_align4::write_volatile_release_fence:
        mov               0x40, %o2
        membar            #StoreStore|#LoadStore
        mov               %o7, %g1
0:
        call              0f
        mov               %g1, %o7

asm_test::atomic_memcpy_store_align4::release:
        add               %o0, 7, %o2
        and               %o2, -8, %o3
        cmp               %o3, %o0
        membar            #StoreStore|#LoadStore
        bne               %xcc, 0f
        nop
        mov               %g0, %o2
        b                 2f
        mov               0x40, %o3
0:
        sub               %o3, %o0, %o2
        sub               %o0, %o3, %o4
        mov               %o1, %o5
        mov               %o0, %g2
1:
        ldub              [ %o5 ], %g3
        mov               %g0, %g4
        stb               %g3, [ %g2 ]
        inc               %g2
        inc               %o4
        movre             %o4, 1, %g4
        btst              1, %g4
        be                %icc, 1b
        inc               %o5
        sub               %o0, %o3, %o3
        add               %o3, 0x40, %o3
        cmp               %o3, 8
        bcs               %xcc, 3f
        nop
2:
        add               %o1, %o2, %o4
        ldub              [ %o4 + 6 ], %o5
        ldub              [ %o4 + 7 ], %g2
        ldub              [ %o4 + 5 ], %g3
        ldub              [ %o4 + 4 ], %g4
        sllx              %o5, 8, %o5
        or                %o5, %g2, %o5
        sllx              %g3, 0x10, %g2
        sllx              %g4, 0x18, %g3
        or                %g3, %g2, %g2
        or                %g2, %o5, %o5
        ldub              [ %o4 + 2 ], %g2
        ldub              [ %o4 + 3 ], %g3
        ldub              [ %o1 + %o2 ], %g4
        ldub              [ %o4 + 1 ], %o4
        sllx              %g2, 8, %g2
        or                %g2, %g3, %g2
        sllx              %g4, 0x18, %g3
        sllx              %o4, 0x10, %o4
        or                %g3, %o4, %o4
        or                %o4, %g2, %o4
        sllx              %o4, 0x20, %o4
        or                %o4, %o5, %o4
        stx               %o4, [ %o0 + %o2 ]
        add               %o3, -8, %o3
        cmp               %o3, 7
        bgu               %xcc, 2b
        add               %o2, 8, %o2
3:
        brz               %o3, 5f
        nop
        add               %o1, %o2, %o1
        add               %o0, %o2, %o0
4:
        ldub              [ %o1 ], %o2
        stb               %o2, [ %o0 ]
        inc               %o1
        add               %o3, -1, %o3
        brnz              %o3, 4b
        inc               %o0
5:
        retl
        nop

asm_test::atomic_memcpy_store_align8::write_volatile_release_fence:
        membar            #StoreStore|#LoadStore
        ldx               [ %o1 + 0x38 ], %o2
        stx               %o2, [ %o0 + 0x38 ]
        ldx               [ %o1 + 0x30 ], %o2
        stx               %o2, [ %o0 + 0x30 ]
        ldx               [ %o1 + 0x28 ], %o2
        stx               %o2, [ %o0 + 0x28 ]
        ldx               [ %o1 + 0x20 ], %o2
        stx               %o2, [ %o0 + 0x20 ]
        ldx               [ %o1 + 0x18 ], %o2
        stx               %o2, [ %o0 + 0x18 ]
        ldx               [ %o1 + 0x10 ], %o2
        stx               %o2, [ %o0 + 0x10 ]
        ldx               [ %o1 + 8 ], %o2
        stx               %o2, [ %o0 + 8 ]
        ldx               [ %o1 ], %o1
        retl
        stx               %o1, [ %o0 ]

asm_test::atomic_memcpy_store_align8::release:
        membar            #StoreStore|#LoadStore
        ldx               [ %o1 ], %o2
        stx               %o2, [ %o0 ]
        ldx               [ %o1 + 8 ], %o2
        stx               %o2, [ %o0 + 8 ]
        ldx               [ %o1 + 0x10 ], %o2
        stx               %o2, [ %o0 + 0x10 ]
        ldx               [ %o1 + 0x18 ], %o2
        stx               %o2, [ %o0 + 0x18 ]
        ldx               [ %o1 + 0x20 ], %o2
        stx               %o2, [ %o0 + 0x20 ]
        ldx               [ %o1 + 0x28 ], %o2
        stx               %o2, [ %o0 + 0x28 ]
        ldx               [ %o1 + 0x30 ], %o2
        stx               %o2, [ %o0 + 0x30 ]
        ldx               [ %o1 + 0x38 ], %o1
        retl
        stx               %o1, [ %o0 + 0x38 ]

asm_test::atomic_memcpy_store_align16::write_volatile_release_fence:
        membar            #StoreStore|#LoadStore
        ldx               [ %o1 + 0x38 ], %o2
        stx               %o2, [ %o0 + 0x38 ]
        ldx               [ %o1 + 0x30 ], %o2
        stx               %o2, [ %o0 + 0x30 ]
        ldx               [ %o1 + 0x28 ], %o2
        stx               %o2, [ %o0 + 0x28 ]
        ldx               [ %o1 + 0x20 ], %o2
        stx               %o2, [ %o0 + 0x20 ]
        ldx               [ %o1 + 0x18 ], %o2
        stx               %o2, [ %o0 + 0x18 ]
        ldx               [ %o1 + 0x10 ], %o2
        stx               %o2, [ %o0 + 0x10 ]
        ldx               [ %o1 + 8 ], %o2
        stx               %o2, [ %o0 + 8 ]
        ldx               [ %o1 ], %o1
        retl
        stx               %o1, [ %o0 ]

asm_test::atomic_memcpy_store_align16::release:
        membar            #StoreStore|#LoadStore
        ldx               [ %o1 ], %o2
        stx               %o2, [ %o0 ]
        ldx               [ %o1 + 8 ], %o2
        stx               %o2, [ %o0 + 8 ]
        ldx               [ %o1 + 0x10 ], %o2
        stx               %o2, [ %o0 + 0x10 ]
        ldx               [ %o1 + 0x18 ], %o2
        stx               %o2, [ %o0 + 0x18 ]
        ldx               [ %o1 + 0x20 ], %o2
        stx               %o2, [ %o0 + 0x20 ]
        ldx               [ %o1 + 0x28 ], %o2
        stx               %o2, [ %o0 + 0x28 ]
        ldx               [ %o1 + 0x30 ], %o2
        stx               %o2, [ %o0 + 0x30 ]
        ldx               [ %o1 + 0x38 ], %o1
        retl
        stx               %o1, [ %o0 + 0x38 ]
