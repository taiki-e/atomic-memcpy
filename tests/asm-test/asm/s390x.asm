asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        stmg              %r12,%r15,96(%r15)
        lg                %r0,0(%r3)
        lg                %r1,8(%r3)
        lg                %r4,16(%r3)
        lg                %r5,24(%r3)
        lg                %r14,32(%r3)
        lg                %r13,40(%r3)
        lg                %r12,48(%r3)
        lg                %r3,56(%r3)
        stg               %r3,56(%r2)
        stg               %r12,48(%r2)
        stg               %r13,40(%r2)
        stg               %r14,32(%r2)
        stg               %r5,24(%r2)
        stg               %r4,16(%r2)
        stg               %r1,8(%r2)
        stg               %r0,0(%r2)
        lmg               %r12,%r15,96(%r15)
        br                %r14

asm_test::atomic_memcpy_load_align1::acquire:
        stmg              %r11,%r15,88(%r15)
        aghi              %r15,-224
        la                %r5,7(%r3)
        nill              %r5,65528
        lgr               %r1,%r5
        sgr               %r1,%r3
        jne               0f
        lghi              %r1,0
        lghi              %r0,64
        j                 5f
0:
        risbgz            %r0,%r1,62,63
        lgr               %r4,%r3
        sgr               %r4,%r5
        lghi              %r5,-4
        clgr              %r4,%r5
        lghi              %r5,0
        jh                2f
        risbgz            %r14,%r1,61,61
        la                %r13,160(%r15)
        lgr               %r12,%r3
1:
        lb                %r11,0(%r12)
        stc               %r11,0(%r13)
        lb                %r11,1(%r12)
        stc               %r11,1(%r13)
        lb                %r11,2(%r12)
        stc               %r11,2(%r13)
        lb                %r11,3(%r12)
        la                %r5,4(%r5)
        stc               %r11,3(%r13)
        la                %r12,4(%r12)
        la                %r13,4(%r13)
        cgrjne            %r14,%r5,1b
        cgije             %r0,0,4f
2:
        la                %r14,160(%r5,%r15)
        agr               %r5,%r3
3:
        lb                %r13,0(%r5)
        stc               %r13,0(%r14)
        la                %r14,1(%r14)
        la                %r5,1(%r5)
        brctg             %r0,3b
4:
        la                %r0,64(%r4)
        clgijl            %r0,8,10f
5:
        lghi              %r4,7
        sgr               %r4,%r0
        lghi              %r5,-8
        clgrjh            %r4,%r5,6f
        lghi              %r4,-8
6:
        agr               %r4,%r0
        tmll              %r4,24
        jo                8f
        srlg              %r5,%r4,3
        la                %r5,1(%r5)
        risbgz            %r5,%r5,62,63
        sllg              %r14,%r5,3
        sgr               %r0,%r14
7:
        lg                %r14,0(%r1,%r3)
        stg               %r14,160(%r1,%r15)
        la                %r1,8(%r1)
        brctg             %r5,7b
8:
        clgijl            %r4,24,10f
9:
        lg                %r4,0(%r1,%r3)
        stg               %r4,160(%r1,%r15)
        lg                %r4,8(%r1,%r3)
        stg               %r4,168(%r1,%r15)
        lg                %r4,16(%r1,%r3)
        stg               %r4,176(%r1,%r15)
        lg                %r4,24(%r1,%r3)
        stg               %r4,184(%r1,%r15)
        aghi              %r0,-32
        la                %r1,32(%r1)
        clgijh            %r0,7,9b
10:
        cgije             %r0,0,14f
        tmll              %r0,3
        lgr               %r4,%r1
        je                12f
        risbgz            %r5,%r0,62,63
        lgr               %r4,%r1
11:
        lb                %r14,0(%r4,%r3)
        stc               %r14,160(%r4,%r15)
        la                %r4,1(%r4)
        brctg             %r5,11b
12:
        clgijl            %r0,4,14f
        agr               %r0,%r1
        sgr               %r0,%r4
        la                %r1,160(%r4,%r15)
        agr               %r3,%r4
13:
        lb                %r4,0(%r3)
        stc               %r4,0(%r1)
        lb                %r4,1(%r3)
        stc               %r4,1(%r1)
        lb                %r4,2(%r3)
        stc               %r4,2(%r1)
        lb                %r4,3(%r3)
        stc               %r4,3(%r1)
        aghi              %r0,-4
        la                %r1,4(%r1)
        la                %r3,4(%r3)
        jne               13b
14:
        mvc               0(64,%r2),160(%r15)
        lmg               %r11,%r15,312(%r15)
        br                %r14

asm_test::atomic_memcpy_load_align2::read_volatile_acquire_fence:
        stmg              %r12,%r15,96(%r15)
        lg                %r0,0(%r3)
        lg                %r1,8(%r3)
        lg                %r4,16(%r3)
        lg                %r5,24(%r3)
        lg                %r14,32(%r3)
        lg                %r13,40(%r3)
        lg                %r12,48(%r3)
        lg                %r3,56(%r3)
        stg               %r3,56(%r2)
        stg               %r12,48(%r2)
        stg               %r13,40(%r2)
        stg               %r14,32(%r2)
        stg               %r5,24(%r2)
        stg               %r4,16(%r2)
        stg               %r1,8(%r2)
        stg               %r0,0(%r2)
        lmg               %r12,%r15,96(%r15)
        br                %r14

asm_test::atomic_memcpy_load_align2::acquire:
        stmg              %r11,%r15,88(%r15)
        aghi              %r15,-224
        la                %r5,7(%r3)
        nill              %r5,65528
        lgr               %r1,%r5
        sgr               %r1,%r3
        jne               0f
        lghi              %r0,64
        lghi              %r1,0
        j                 5f
0:
        risbgz            %r0,%r1,62,63
        lgr               %r4,%r3
        sgr               %r4,%r5
        lghi              %r5,-4
        clgr              %r4,%r5
        lghi              %r5,0
        jh                2f
        risbgz            %r14,%r1,61,61
        la                %r13,160(%r15)
        lgr               %r12,%r3
1:
        lb                %r11,0(%r12)
        stc               %r11,0(%r13)
        lb                %r11,1(%r12)
        stc               %r11,1(%r13)
        lb                %r11,2(%r12)
        stc               %r11,2(%r13)
        lb                %r11,3(%r12)
        la                %r5,4(%r5)
        stc               %r11,3(%r13)
        la                %r12,4(%r12)
        la                %r13,4(%r13)
        cgrjne            %r14,%r5,1b
        cgije             %r0,0,4f
2:
        la                %r14,160(%r5,%r15)
        agr               %r5,%r3
3:
        lb                %r13,0(%r5)
        stc               %r13,0(%r14)
        la                %r14,1(%r14)
        la                %r5,1(%r5)
        brctg             %r0,3b
4:
        la                %r0,64(%r4)
        clgijl            %r0,8,10f
5:
        lghi              %r4,7
        sgr               %r4,%r0
        lghi              %r5,-8
        clgrjh            %r4,%r5,6f
        lghi              %r4,-8
6:
        agr               %r4,%r0
        tmll              %r4,24
        jo                8f
        srlg              %r5,%r4,3
        la                %r5,1(%r5)
        risbgz            %r5,%r5,62,63
        sllg              %r14,%r5,3
        sgr               %r0,%r14
7:
        lg                %r14,0(%r1,%r3)
        stg               %r14,160(%r1,%r15)
        la                %r1,8(%r1)
        brctg             %r5,7b
8:
        clgijl            %r4,24,10f
9:
        lg                %r4,0(%r1,%r3)
        stg               %r4,160(%r1,%r15)
        lg                %r4,8(%r1,%r3)
        stg               %r4,168(%r1,%r15)
        lg                %r4,16(%r1,%r3)
        stg               %r4,176(%r1,%r15)
        lg                %r4,24(%r1,%r3)
        stg               %r4,184(%r1,%r15)
        aghi              %r0,-32
        la                %r1,32(%r1)
        clgijh            %r0,7,9b
10:
        cgije             %r0,0,14f
        tmll              %r0,3
        lgr               %r4,%r1
        je                12f
        risbgz            %r5,%r0,62,63
        lgr               %r4,%r1
11:
        lb                %r14,0(%r4,%r3)
        stc               %r14,160(%r4,%r15)
        la                %r4,1(%r4)
        brctg             %r5,11b
12:
        clgijl            %r0,4,14f
        agr               %r0,%r1
        sgr               %r0,%r4
        la                %r1,160(%r4,%r15)
        agr               %r3,%r4
13:
        lb                %r4,0(%r3)
        stc               %r4,0(%r1)
        lb                %r4,1(%r3)
        stc               %r4,1(%r1)
        lb                %r4,2(%r3)
        stc               %r4,2(%r1)
        lb                %r4,3(%r3)
        stc               %r4,3(%r1)
        aghi              %r0,-4
        la                %r1,4(%r1)
        la                %r3,4(%r3)
        jne               13b
14:
        mvc               0(64,%r2),160(%r15)
        lmg               %r11,%r15,312(%r15)
        br                %r14

asm_test::atomic_memcpy_load_align4::read_volatile_acquire_fence:
        stmg              %r12,%r15,96(%r15)
        lg                %r0,0(%r3)
        lg                %r1,8(%r3)
        lg                %r4,16(%r3)
        lg                %r5,24(%r3)
        lg                %r14,32(%r3)
        lg                %r13,40(%r3)
        lg                %r12,48(%r3)
        lg                %r3,56(%r3)
        stg               %r3,56(%r2)
        stg               %r12,48(%r2)
        stg               %r13,40(%r2)
        stg               %r14,32(%r2)
        stg               %r5,24(%r2)
        stg               %r4,16(%r2)
        stg               %r1,8(%r2)
        stg               %r0,0(%r2)
        lmg               %r12,%r15,96(%r15)
        br                %r14

asm_test::atomic_memcpy_load_align4::acquire:
        stmg              %r11,%r15,88(%r15)
        aghi              %r15,-224
        la                %r5,7(%r3)
        nill              %r5,65528
        lgr               %r1,%r5
        sgr               %r1,%r3
        jne               0f
        lghi              %r0,64
        lghi              %r1,0
        j                 5f
0:
        risbgz            %r0,%r1,62,63
        lgr               %r4,%r3
        sgr               %r4,%r5
        lghi              %r5,-4
        clgr              %r4,%r5
        lghi              %r5,0
        jh                2f
        risbgz            %r14,%r1,61,61
        la                %r13,160(%r15)
        lgr               %r12,%r3
1:
        lb                %r11,0(%r12)
        stc               %r11,0(%r13)
        lb                %r11,1(%r12)
        stc               %r11,1(%r13)
        lb                %r11,2(%r12)
        stc               %r11,2(%r13)
        lb                %r11,3(%r12)
        la                %r5,4(%r5)
        stc               %r11,3(%r13)
        la                %r12,4(%r12)
        la                %r13,4(%r13)
        cgrjne            %r14,%r5,1b
        cgije             %r0,0,4f
2:
        la                %r14,160(%r5,%r15)
        agr               %r5,%r3
3:
        lb                %r13,0(%r5)
        stc               %r13,0(%r14)
        la                %r14,1(%r14)
        la                %r5,1(%r5)
        brctg             %r0,3b
4:
        la                %r0,64(%r4)
        clgijl            %r0,8,10f
5:
        lghi              %r4,7
        sgr               %r4,%r0
        lghi              %r5,-8
        clgrjh            %r4,%r5,6f
        lghi              %r4,-8
6:
        agr               %r4,%r0
        tmll              %r4,24
        jo                8f
        srlg              %r5,%r4,3
        la                %r5,1(%r5)
        risbgz            %r5,%r5,62,63
        sllg              %r14,%r5,3
        sgr               %r0,%r14
7:
        lg                %r14,0(%r1,%r3)
        stg               %r14,160(%r1,%r15)
        la                %r1,8(%r1)
        brctg             %r5,7b
8:
        clgijl            %r4,24,10f
9:
        lg                %r4,0(%r1,%r3)
        stg               %r4,160(%r1,%r15)
        lg                %r4,8(%r1,%r3)
        stg               %r4,168(%r1,%r15)
        lg                %r4,16(%r1,%r3)
        stg               %r4,176(%r1,%r15)
        lg                %r4,24(%r1,%r3)
        stg               %r4,184(%r1,%r15)
        aghi              %r0,-32
        la                %r1,32(%r1)
        clgijh            %r0,7,9b
10:
        cgije             %r0,0,14f
        tmll              %r0,3
        lgr               %r4,%r1
        je                12f
        risbgz            %r5,%r0,62,63
        lgr               %r4,%r1
11:
        lb                %r14,0(%r4,%r3)
        stc               %r14,160(%r4,%r15)
        la                %r4,1(%r4)
        brctg             %r5,11b
12:
        clgijl            %r0,4,14f
        agr               %r0,%r1
        sgr               %r0,%r4
        la                %r1,160(%r4,%r15)
        agr               %r3,%r4
13:
        lb                %r4,0(%r3)
        stc               %r4,0(%r1)
        lb                %r4,1(%r3)
        stc               %r4,1(%r1)
        lb                %r4,2(%r3)
        stc               %r4,2(%r1)
        lb                %r4,3(%r3)
        stc               %r4,3(%r1)
        aghi              %r0,-4
        la                %r1,4(%r1)
        la                %r3,4(%r3)
        jne               13b
14:
        mvc               0(64,%r2),160(%r15)
        lmg               %r11,%r15,312(%r15)
        br                %r14

asm_test::atomic_memcpy_load_align8::read_volatile_acquire_fence:
        stmg              %r12,%r15,96(%r15)
        lg                %r0,0(%r3)
        lg                %r1,8(%r3)
        lg                %r4,16(%r3)
        lg                %r5,24(%r3)
        lg                %r14,32(%r3)
        lg                %r13,40(%r3)
        lg                %r12,48(%r3)
        lg                %r3,56(%r3)
        stg               %r3,56(%r2)
        stg               %r12,48(%r2)
        stg               %r13,40(%r2)
        stg               %r14,32(%r2)
        stg               %r5,24(%r2)
        stg               %r4,16(%r2)
        stg               %r1,8(%r2)
        stg               %r0,0(%r2)
        lmg               %r12,%r15,96(%r15)
        br                %r14

asm_test::atomic_memcpy_load_align8::acquire:
        stmg              %r12,%r15,96(%r15)
        lg                %r0,0(%r3)
        lg                %r1,8(%r3)
        lg                %r4,16(%r3)
        lg                %r5,24(%r3)
        lg                %r14,32(%r3)
        lg                %r13,40(%r3)
        lg                %r12,48(%r3)
        lg                %r3,56(%r3)
        stg               %r0,0(%r2)
        stg               %r1,8(%r2)
        stg               %r4,16(%r2)
        stg               %r5,24(%r2)
        stg               %r14,32(%r2)
        stg               %r13,40(%r2)
        stg               %r12,48(%r2)
        stg               %r3,56(%r2)
        lmg               %r12,%r15,96(%r15)
        br                %r14

asm_test::atomic_memcpy_load_align16::read_volatile_acquire_fence:
        stmg              %r12,%r15,96(%r15)
        lg                %r0,0(%r3)
        lg                %r1,8(%r3)
        lg                %r4,16(%r3)
        lg                %r5,24(%r3)
        lg                %r14,32(%r3)
        lg                %r13,40(%r3)
        lg                %r12,48(%r3)
        lg                %r3,56(%r3)
        stg               %r3,56(%r2)
        stg               %r12,48(%r2)
        stg               %r13,40(%r2)
        stg               %r14,32(%r2)
        stg               %r5,24(%r2)
        stg               %r4,16(%r2)
        stg               %r1,8(%r2)
        stg               %r0,0(%r2)
        lmg               %r12,%r15,96(%r15)
        br                %r14

asm_test::atomic_memcpy_load_align16::acquire:
        stmg              %r12,%r15,96(%r15)
        lg                %r0,0(%r3)
        lg                %r1,8(%r3)
        lg                %r4,16(%r3)
        lg                %r5,24(%r3)
        lg                %r14,32(%r3)
        lg                %r13,40(%r3)
        lg                %r12,48(%r3)
        lg                %r3,56(%r3)
        stg               %r0,0(%r2)
        stg               %r1,8(%r2)
        stg               %r4,16(%r2)
        stg               %r5,24(%r2)
        stg               %r14,32(%r2)
        stg               %r13,40(%r2)
        stg               %r12,48(%r2)
        stg               %r3,56(%r2)
        lmg               %r12,%r15,96(%r15)
        br                %r14

asm_test::atomic_memcpy_store_align1::write_volatile_release_fence:
        lghi              %r4,64
0:
        jg                0f

asm_test::atomic_memcpy_store_align1::release:
        stmg              %r11,%r15,88(%r15)
        la                %r5,7(%r2)
        nill              %r5,65528
        lgr               %r1,%r5
        sgr               %r1,%r2
        jne               0f
        lghi              %r1,0
        lghi              %r0,64
        j                 5f
0:
        risbgz            %r0,%r1,62,63
        lgr               %r4,%r2
        sgr               %r4,%r5
        lghi              %r5,-4
        clgr              %r4,%r5
        lghi              %r5,0
        jh                2f
        risbgz            %r14,%r1,61,61
        lgr               %r13,%r2
        lgr               %r12,%r3
1:
        lb                %r11,0(%r12)
        stc               %r11,0(%r13)
        lb                %r11,1(%r12)
        stc               %r11,1(%r13)
        lb                %r11,2(%r12)
        stc               %r11,2(%r13)
        lb                %r11,3(%r12)
        la                %r5,4(%r5)
        stc               %r11,3(%r13)
        la                %r12,4(%r12)
        la                %r13,4(%r13)
        cgrjne            %r14,%r5,1b
        cgije             %r0,0,4f
2:
        lgr               %r14,%r2
        agr               %r14,%r5
        agr               %r5,%r3
3:
        lb                %r13,0(%r5)
        stc               %r13,0(%r14)
        la                %r14,1(%r14)
        la                %r5,1(%r5)
        brctg             %r0,3b
4:
        la                %r0,64(%r4)
        clgijl            %r0,8,10f
5:
        lghi              %r4,7
        sgr               %r4,%r0
        lghi              %r5,-8
        clgrjh            %r4,%r5,6f
        lghi              %r4,-8
6:
        agr               %r4,%r0
        tmll              %r4,24
        jo                8f
        srlg              %r5,%r4,3
        la                %r5,1(%r5)
        risbgz            %r5,%r5,62,63
        sllg              %r14,%r5,3
        sgr               %r0,%r14
7:
        lg                %r14,0(%r1,%r3)
        stg               %r14,0(%r1,%r2)
        la                %r1,8(%r1)
        brctg             %r5,7b
8:
        clgijl            %r4,24,10f
9:
        lg                %r4,0(%r1,%r3)
        stg               %r4,0(%r1,%r2)
        lg                %r4,8(%r1,%r3)
        stg               %r4,8(%r1,%r2)
        lg                %r4,16(%r1,%r3)
        stg               %r4,16(%r1,%r2)
        lg                %r4,24(%r1,%r3)
        stg               %r4,24(%r1,%r2)
        aghi              %r0,-32
        la                %r1,32(%r1)
        clgijh            %r0,7,9b
10:
        cgije             %r0,0,14f
        tmll              %r0,3
        lgr               %r4,%r1
        je                12f
        risbgz            %r5,%r0,62,63
        lgr               %r4,%r1
11:
        lb                %r14,0(%r4,%r3)
        stc               %r14,0(%r4,%r2)
        la                %r4,1(%r4)
        brctg             %r5,11b
12:
        clgijl            %r0,4,14f
        agr               %r0,%r1
        sgr               %r0,%r4
        agr               %r2,%r4
        agr               %r3,%r4
13:
        lb                %r1,0(%r3)
        stc               %r1,0(%r2)
        lb                %r1,1(%r3)
        stc               %r1,1(%r2)
        lb                %r1,2(%r3)
        stc               %r1,2(%r2)
        lb                %r1,3(%r3)
        stc               %r1,3(%r2)
        aghi              %r0,-4
        la                %r2,4(%r2)
        la                %r3,4(%r3)
        jne               13b
14:
        lmg               %r11,%r15,88(%r15)
        br                %r14

asm_test::atomic_memcpy_store_align2::write_volatile_release_fence:
        lghi              %r4,64
0:
        jg                0f

asm_test::atomic_memcpy_store_align2::release:
        stmg              %r11,%r15,88(%r15)
        la                %r5,7(%r2)
        nill              %r5,65528
        lgr               %r1,%r5
        sgr               %r1,%r2
        jne               0f
        lghi              %r0,64
        lghi              %r1,0
        j                 5f
0:
        risbgz            %r0,%r1,62,63
        lgr               %r4,%r2
        sgr               %r4,%r5
        lghi              %r5,-4
        clgr              %r4,%r5
        lghi              %r5,0
        jh                2f
        risbgz            %r14,%r1,61,61
        lgr               %r13,%r2
        lgr               %r12,%r3
1:
        lb                %r11,0(%r12)
        stc               %r11,0(%r13)
        lb                %r11,1(%r12)
        stc               %r11,1(%r13)
        lb                %r11,2(%r12)
        stc               %r11,2(%r13)
        lb                %r11,3(%r12)
        la                %r5,4(%r5)
        stc               %r11,3(%r13)
        la                %r12,4(%r12)
        la                %r13,4(%r13)
        cgrjne            %r14,%r5,1b
        cgije             %r0,0,4f
2:
        lgr               %r14,%r2
        agr               %r14,%r5
        agr               %r5,%r3
3:
        lb                %r13,0(%r5)
        stc               %r13,0(%r14)
        la                %r14,1(%r14)
        la                %r5,1(%r5)
        brctg             %r0,3b
4:
        la                %r0,64(%r4)
        clgijl            %r0,8,10f
5:
        lghi              %r4,7
        sgr               %r4,%r0
        lghi              %r5,-8
        clgrjh            %r4,%r5,6f
        lghi              %r4,-8
6:
        agr               %r4,%r0
        tmll              %r4,24
        jo                8f
        srlg              %r5,%r4,3
        la                %r5,1(%r5)
        risbgz            %r5,%r5,62,63
        sllg              %r14,%r5,3
        sgr               %r0,%r14
7:
        lg                %r14,0(%r1,%r3)
        stg               %r14,0(%r1,%r2)
        la                %r1,8(%r1)
        brctg             %r5,7b
8:
        clgijl            %r4,24,10f
9:
        lg                %r4,0(%r1,%r3)
        stg               %r4,0(%r1,%r2)
        lg                %r4,8(%r1,%r3)
        stg               %r4,8(%r1,%r2)
        lg                %r4,16(%r1,%r3)
        stg               %r4,16(%r1,%r2)
        lg                %r4,24(%r1,%r3)
        stg               %r4,24(%r1,%r2)
        aghi              %r0,-32
        la                %r1,32(%r1)
        clgijh            %r0,7,9b
10:
        cgije             %r0,0,14f
        tmll              %r0,3
        lgr               %r4,%r1
        je                12f
        risbgz            %r5,%r0,62,63
        lgr               %r4,%r1
11:
        lb                %r14,0(%r4,%r3)
        stc               %r14,0(%r4,%r2)
        la                %r4,1(%r4)
        brctg             %r5,11b
12:
        clgijl            %r0,4,14f
        agr               %r0,%r1
        sgr               %r0,%r4
        agr               %r2,%r4
        agr               %r3,%r4
13:
        lb                %r1,0(%r3)
        stc               %r1,0(%r2)
        lb                %r1,1(%r3)
        stc               %r1,1(%r2)
        lb                %r1,2(%r3)
        stc               %r1,2(%r2)
        lb                %r1,3(%r3)
        stc               %r1,3(%r2)
        aghi              %r0,-4
        la                %r2,4(%r2)
        la                %r3,4(%r3)
        jne               13b
14:
        lmg               %r11,%r15,88(%r15)
        br                %r14

asm_test::atomic_memcpy_store_align4::write_volatile_release_fence:
        lghi              %r4,64
0:
        jg                0f

asm_test::atomic_memcpy_store_align4::release:
        stmg              %r11,%r15,88(%r15)
        la                %r5,7(%r2)
        nill              %r5,65528
        lgr               %r1,%r5
        sgr               %r1,%r2
        jne               0f
        lghi              %r0,64
        lghi              %r1,0
        j                 5f
0:
        risbgz            %r0,%r1,62,63
        lgr               %r4,%r2
        sgr               %r4,%r5
        lghi              %r5,-4
        clgr              %r4,%r5
        lghi              %r5,0
        jh                2f
        risbgz            %r14,%r1,61,61
        lgr               %r13,%r2
        lgr               %r12,%r3
1:
        lb                %r11,0(%r12)
        stc               %r11,0(%r13)
        lb                %r11,1(%r12)
        stc               %r11,1(%r13)
        lb                %r11,2(%r12)
        stc               %r11,2(%r13)
        lb                %r11,3(%r12)
        la                %r5,4(%r5)
        stc               %r11,3(%r13)
        la                %r12,4(%r12)
        la                %r13,4(%r13)
        cgrjne            %r14,%r5,1b
        cgije             %r0,0,4f
2:
        lgr               %r14,%r2
        agr               %r14,%r5
        agr               %r5,%r3
3:
        lb                %r13,0(%r5)
        stc               %r13,0(%r14)
        la                %r14,1(%r14)
        la                %r5,1(%r5)
        brctg             %r0,3b
4:
        la                %r0,64(%r4)
        clgijl            %r0,8,10f
5:
        lghi              %r4,7
        sgr               %r4,%r0
        lghi              %r5,-8
        clgrjh            %r4,%r5,6f
        lghi              %r4,-8
6:
        agr               %r4,%r0
        tmll              %r4,24
        jo                8f
        srlg              %r5,%r4,3
        la                %r5,1(%r5)
        risbgz            %r5,%r5,62,63
        sllg              %r14,%r5,3
        sgr               %r0,%r14
7:
        lg                %r14,0(%r1,%r3)
        stg               %r14,0(%r1,%r2)
        la                %r1,8(%r1)
        brctg             %r5,7b
8:
        clgijl            %r4,24,10f
9:
        lg                %r4,0(%r1,%r3)
        stg               %r4,0(%r1,%r2)
        lg                %r4,8(%r1,%r3)
        stg               %r4,8(%r1,%r2)
        lg                %r4,16(%r1,%r3)
        stg               %r4,16(%r1,%r2)
        lg                %r4,24(%r1,%r3)
        stg               %r4,24(%r1,%r2)
        aghi              %r0,-32
        la                %r1,32(%r1)
        clgijh            %r0,7,9b
10:
        cgije             %r0,0,14f
        tmll              %r0,3
        lgr               %r4,%r1
        je                12f
        risbgz            %r5,%r0,62,63
        lgr               %r4,%r1
11:
        lb                %r14,0(%r4,%r3)
        stc               %r14,0(%r4,%r2)
        la                %r4,1(%r4)
        brctg             %r5,11b
12:
        clgijl            %r0,4,14f
        agr               %r0,%r1
        sgr               %r0,%r4
        agr               %r2,%r4
        agr               %r3,%r4
13:
        lb                %r1,0(%r3)
        stc               %r1,0(%r2)
        lb                %r1,1(%r3)
        stc               %r1,1(%r2)
        lb                %r1,2(%r3)
        stc               %r1,2(%r2)
        lb                %r1,3(%r3)
        stc               %r1,3(%r2)
        aghi              %r0,-4
        la                %r2,4(%r2)
        la                %r3,4(%r3)
        jne               13b
14:
        lmg               %r11,%r15,88(%r15)
        br                %r14

asm_test::atomic_memcpy_store_align8::write_volatile_release_fence:
        lghi              %r4,64
0:
        jg                0f

asm_test::atomic_memcpy_store_align8::release:
        lg                %r0,0(%r3)
        stg               %r0,0(%r2)
        lg                %r0,8(%r3)
        stg               %r0,8(%r2)
        lg                %r0,16(%r3)
        stg               %r0,16(%r2)
        lg                %r0,24(%r3)
        stg               %r0,24(%r2)
        lg                %r0,32(%r3)
        stg               %r0,32(%r2)
        lg                %r0,40(%r3)
        stg               %r0,40(%r2)
        lg                %r0,48(%r3)
        stg               %r0,48(%r2)
        lg                %r0,56(%r3)
        stg               %r0,56(%r2)
        br                %r14

asm_test::atomic_memcpy_store_align16::write_volatile_release_fence:
        lghi              %r4,64
0:
        jg                0f

asm_test::atomic_memcpy_store_align16::release:
        lg                %r0,0(%r3)
        stg               %r0,0(%r2)
        lg                %r0,8(%r3)
        stg               %r0,8(%r2)
        lg                %r0,16(%r3)
        stg               %r0,16(%r2)
        lg                %r0,24(%r3)
        stg               %r0,24(%r2)
        lg                %r0,32(%r3)
        stg               %r0,32(%r2)
        lg                %r0,40(%r3)
        stg               %r0,40(%r2)
        lg                %r0,48(%r3)
        stg               %r0,48(%r2)
        lg                %r0,56(%r3)
        stg               %r0,56(%r2)
        br                %r14
