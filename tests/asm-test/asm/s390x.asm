asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        stmg              %r6,%r15,48(%r15)
        aghi              %r15,-360
        lb                %r0,63(%r3)
        st                %r0,356(%r15)
        lb                %r0,62(%r3)
        st                %r0,352(%r15)
        lb                %r0,61(%r3)
        st                %r0,348(%r15)
        lb                %r0,60(%r3)
        st                %r0,344(%r15)
        lb                %r0,59(%r3)
        st                %r0,340(%r15)
        lb                %r0,58(%r3)
        st                %r0,336(%r15)
        lb                %r0,57(%r3)
        st                %r0,332(%r15)
        lb                %r0,56(%r3)
        st                %r0,328(%r15)
        lb                %r0,55(%r3)
        st                %r0,324(%r15)
        lb                %r0,54(%r3)
        st                %r0,320(%r15)
        lb                %r0,53(%r3)
        st                %r0,316(%r15)
        lb                %r0,52(%r3)
        st                %r0,312(%r15)
        lb                %r0,51(%r3)
        st                %r0,308(%r15)
        lb                %r0,50(%r3)
        st                %r0,304(%r15)
        lb                %r0,49(%r3)
        st                %r0,300(%r15)
        lb                %r0,48(%r3)
        st                %r0,296(%r15)
        lb                %r0,47(%r3)
        st                %r0,292(%r15)
        lb                %r0,46(%r3)
        st                %r0,288(%r15)
        lb                %r0,45(%r3)
        st                %r0,284(%r15)
        lb                %r0,44(%r3)
        st                %r0,280(%r15)
        lb                %r0,43(%r3)
        st                %r0,276(%r15)
        lb                %r0,42(%r3)
        st                %r0,272(%r15)
        lb                %r0,41(%r3)
        st                %r0,268(%r15)
        lb                %r0,40(%r3)
        st                %r0,264(%r15)
        lb                %r0,39(%r3)
        st                %r0,260(%r15)
        lb                %r0,38(%r3)
        st                %r0,256(%r15)
        lb                %r0,37(%r3)
        st                %r0,252(%r15)
        lb                %r0,36(%r3)
        st                %r0,248(%r15)
        lb                %r0,35(%r3)
        st                %r0,244(%r15)
        lb                %r0,34(%r3)
        st                %r0,240(%r15)
        lb                %r0,33(%r3)
        st                %r0,236(%r15)
        lb                %r0,32(%r3)
        st                %r0,232(%r15)
        lb                %r0,31(%r3)
        st                %r0,228(%r15)
        lb                %r0,30(%r3)
        st                %r0,224(%r15)
        lb                %r0,29(%r3)
        st                %r0,220(%r15)
        lb                %r0,28(%r3)
        st                %r0,216(%r15)
        lb                %r0,27(%r3)
        st                %r0,212(%r15)
        lb                %r0,26(%r3)
        st                %r0,208(%r15)
        lb                %r0,25(%r3)
        st                %r0,204(%r15)
        lb                %r0,24(%r3)
        st                %r0,200(%r15)
        lb                %r0,23(%r3)
        st                %r0,196(%r15)
        lb                %r0,22(%r3)
        st                %r0,192(%r15)
        lb                %r0,21(%r3)
        st                %r0,188(%r15)
        lb                %r0,20(%r3)
        st                %r0,184(%r15)
        lb                %r0,19(%r3)
        st                %r0,180(%r15)
        lb                %r0,18(%r3)
        st                %r0,176(%r15)
        lb                %r0,17(%r3)
        st                %r0,172(%r15)
        lb                %r0,16(%r3)
        st                %r0,168(%r15)
        lb                %r0,15(%r3)
        st                %r0,164(%r15)
        lb                %r0,14(%r3)
        st                %r0,160(%r15)
        lb                %r6,13(%r3)
        lb                %r7,12(%r3)
        lb                %r8,11(%r3)
        lb                %r9,10(%r3)
        lb                %r10,9(%r3)
        lb                %r11,8(%r3)
        lb                %r12,7(%r3)
        lb                %r13,6(%r3)
        lb                %r14,5(%r3)
        lb                %r5,4(%r3)
        lb                %r4,3(%r3)
        lb                %r1,2(%r3)
        lb                %r0,1(%r3)
        lb                %r3,0(%r3)
        stc               %r3,0(%r2)
        stc               %r0,1(%r2)
        stc               %r1,2(%r2)
        stc               %r4,3(%r2)
        stc               %r5,4(%r2)
        stc               %r14,5(%r2)
        stc               %r13,6(%r2)
        stc               %r12,7(%r2)
        stc               %r11,8(%r2)
        stc               %r10,9(%r2)
        stc               %r9,10(%r2)
        stc               %r8,11(%r2)
        stc               %r7,12(%r2)
        stc               %r6,13(%r2)
        l                 %r0,160(%r15)
        stc               %r0,14(%r2)
        l                 %r0,164(%r15)
        stc               %r0,15(%r2)
        l                 %r0,168(%r15)
        stc               %r0,16(%r2)
        l                 %r0,172(%r15)
        stc               %r0,17(%r2)
        l                 %r0,176(%r15)
        stc               %r0,18(%r2)
        l                 %r0,180(%r15)
        stc               %r0,19(%r2)
        l                 %r0,184(%r15)
        stc               %r0,20(%r2)
        l                 %r0,188(%r15)
        stc               %r0,21(%r2)
        l                 %r0,192(%r15)
        stc               %r0,22(%r2)
        l                 %r0,196(%r15)
        stc               %r0,23(%r2)
        l                 %r0,200(%r15)
        stc               %r0,24(%r2)
        l                 %r0,204(%r15)
        stc               %r0,25(%r2)
        l                 %r0,208(%r15)
        stc               %r0,26(%r2)
        l                 %r0,212(%r15)
        stc               %r0,27(%r2)
        l                 %r0,216(%r15)
        stc               %r0,28(%r2)
        l                 %r0,220(%r15)
        stc               %r0,29(%r2)
        l                 %r0,224(%r15)
        stc               %r0,30(%r2)
        l                 %r0,228(%r15)
        stc               %r0,31(%r2)
        l                 %r0,232(%r15)
        stc               %r0,32(%r2)
        l                 %r0,236(%r15)
        stc               %r0,33(%r2)
        l                 %r0,240(%r15)
        stc               %r0,34(%r2)
        l                 %r0,244(%r15)
        stc               %r0,35(%r2)
        l                 %r0,248(%r15)
        stc               %r0,36(%r2)
        l                 %r0,252(%r15)
        stc               %r0,37(%r2)
        l                 %r0,256(%r15)
        stc               %r0,38(%r2)
        l                 %r0,260(%r15)
        stc               %r0,39(%r2)
        l                 %r0,264(%r15)
        stc               %r0,40(%r2)
        l                 %r0,268(%r15)
        stc               %r0,41(%r2)
        l                 %r0,272(%r15)
        stc               %r0,42(%r2)
        l                 %r0,276(%r15)
        stc               %r0,43(%r2)
        l                 %r0,280(%r15)
        stc               %r0,44(%r2)
        l                 %r0,284(%r15)
        stc               %r0,45(%r2)
        l                 %r0,288(%r15)
        stc               %r0,46(%r2)
        l                 %r0,292(%r15)
        stc               %r0,47(%r2)
        l                 %r0,296(%r15)
        stc               %r0,48(%r2)
        l                 %r0,300(%r15)
        stc               %r0,49(%r2)
        l                 %r0,304(%r15)
        stc               %r0,50(%r2)
        l                 %r0,308(%r15)
        stc               %r0,51(%r2)
        l                 %r0,312(%r15)
        stc               %r0,52(%r2)
        l                 %r0,316(%r15)
        stc               %r0,53(%r2)
        l                 %r0,320(%r15)
        stc               %r0,54(%r2)
        l                 %r0,324(%r15)
        stc               %r0,55(%r2)
        l                 %r0,328(%r15)
        stc               %r0,56(%r2)
        l                 %r0,332(%r15)
        stc               %r0,57(%r2)
        l                 %r0,336(%r15)
        stc               %r0,58(%r2)
        l                 %r0,340(%r15)
        stc               %r0,59(%r2)
        l                 %r0,344(%r15)
        stc               %r0,60(%r2)
        l                 %r0,348(%r15)
        stc               %r0,61(%r2)
        l                 %r0,352(%r15)
        stc               %r0,62(%r2)
        l                 %r0,356(%r15)
        stc               %r0,63(%r2)
        lmg               %r6,%r15,408(%r15)
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
        stmg              %r6,%r15,48(%r15)
        aghi              %r15,-232
        lh                %r0,62(%r3)
        st                %r0,228(%r15)
        lh                %r0,60(%r3)
        st                %r0,224(%r15)
        lh                %r0,58(%r3)
        st                %r0,220(%r15)
        lh                %r0,56(%r3)
        st                %r0,216(%r15)
        lh                %r0,54(%r3)
        st                %r0,212(%r15)
        lh                %r0,52(%r3)
        st                %r0,208(%r15)
        lh                %r0,50(%r3)
        st                %r0,204(%r15)
        lh                %r0,48(%r3)
        st                %r0,200(%r15)
        lh                %r0,46(%r3)
        st                %r0,196(%r15)
        lh                %r0,44(%r3)
        st                %r0,192(%r15)
        lh                %r0,42(%r3)
        st                %r0,188(%r15)
        lh                %r0,40(%r3)
        st                %r0,184(%r15)
        lh                %r0,38(%r3)
        st                %r0,180(%r15)
        lh                %r0,36(%r3)
        st                %r0,176(%r15)
        lh                %r0,34(%r3)
        st                %r0,172(%r15)
        lh                %r0,32(%r3)
        st                %r0,168(%r15)
        lh                %r0,30(%r3)
        st                %r0,164(%r15)
        lh                %r0,28(%r3)
        st                %r0,160(%r15)
        lh                %r6,26(%r3)
        lh                %r7,24(%r3)
        lh                %r8,22(%r3)
        lh                %r9,20(%r3)
        lh                %r10,18(%r3)
        lh                %r11,16(%r3)
        lh                %r12,14(%r3)
        lh                %r13,12(%r3)
        lh                %r14,10(%r3)
        lh                %r5,8(%r3)
        lh                %r4,6(%r3)
        lh                %r1,4(%r3)
        lh                %r0,2(%r3)
        lh                %r3,0(%r3)
        sth               %r3,0(%r2)
        sth               %r0,2(%r2)
        sth               %r1,4(%r2)
        sth               %r4,6(%r2)
        sth               %r5,8(%r2)
        sth               %r14,10(%r2)
        sth               %r13,12(%r2)
        sth               %r12,14(%r2)
        sth               %r11,16(%r2)
        sth               %r10,18(%r2)
        sth               %r9,20(%r2)
        sth               %r8,22(%r2)
        sth               %r7,24(%r2)
        sth               %r6,26(%r2)
        l                 %r0,160(%r15)
        sth               %r0,28(%r2)
        l                 %r0,164(%r15)
        sth               %r0,30(%r2)
        l                 %r0,168(%r15)
        sth               %r0,32(%r2)
        l                 %r0,172(%r15)
        sth               %r0,34(%r2)
        l                 %r0,176(%r15)
        sth               %r0,36(%r2)
        l                 %r0,180(%r15)
        sth               %r0,38(%r2)
        l                 %r0,184(%r15)
        sth               %r0,40(%r2)
        l                 %r0,188(%r15)
        sth               %r0,42(%r2)
        l                 %r0,192(%r15)
        sth               %r0,44(%r2)
        l                 %r0,196(%r15)
        sth               %r0,46(%r2)
        l                 %r0,200(%r15)
        sth               %r0,48(%r2)
        l                 %r0,204(%r15)
        sth               %r0,50(%r2)
        l                 %r0,208(%r15)
        sth               %r0,52(%r2)
        l                 %r0,212(%r15)
        sth               %r0,54(%r2)
        l                 %r0,216(%r15)
        sth               %r0,56(%r2)
        l                 %r0,220(%r15)
        sth               %r0,58(%r2)
        l                 %r0,224(%r15)
        sth               %r0,60(%r2)
        l                 %r0,228(%r15)
        sth               %r0,62(%r2)
        lmg               %r6,%r15,280(%r15)
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
        stmg              %r6,%r15,48(%r15)
        aghi              %r15,-168
        l                 %r0,60(%r3)
        st                %r0,164(%r15)
        l                 %r0,56(%r3)
        st                %r0,160(%r15)
        l                 %r4,52(%r3)
        l                 %r5,48(%r3)
        l                 %r14,44(%r3)
        l                 %r13,40(%r3)
        l                 %r12,36(%r3)
        l                 %r11,32(%r3)
        l                 %r10,28(%r3)
        l                 %r9,24(%r3)
        l                 %r8,20(%r3)
        l                 %r7,16(%r3)
        l                 %r6,12(%r3)
        l                 %r1,8(%r3)
        l                 %r0,4(%r3)
        l                 %r3,0(%r3)
        st                %r3,0(%r2)
        st                %r0,4(%r2)
        st                %r1,8(%r2)
        st                %r6,12(%r2)
        st                %r7,16(%r2)
        st                %r8,20(%r2)
        st                %r9,24(%r2)
        st                %r10,28(%r2)
        st                %r11,32(%r2)
        st                %r12,36(%r2)
        st                %r13,40(%r2)
        st                %r14,44(%r2)
        st                %r5,48(%r2)
        st                %r4,52(%r2)
        mvc               56(4,%r2),160(%r15)
        mvc               60(4,%r2),164(%r15)
        lmg               %r6,%r15,216(%r15)
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
        lg                %r0,56(%r3)
        lg                %r1,48(%r3)
        lg                %r4,40(%r3)
        lg                %r5,32(%r3)
        lg                %r14,24(%r3)
        lg                %r13,16(%r3)
        lg                %r12,8(%r3)
        lg                %r3,0(%r3)
        stg               %r3,0(%r2)
        stg               %r12,8(%r2)
        stg               %r13,16(%r2)
        stg               %r14,24(%r2)
        stg               %r5,32(%r2)
        stg               %r4,40(%r2)
        stg               %r1,48(%r2)
        stg               %r0,56(%r2)
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
        lg                %r0,56(%r3)
        lg                %r1,48(%r3)
        lg                %r4,40(%r3)
        lg                %r5,32(%r3)
        lg                %r14,24(%r3)
        lg                %r13,16(%r3)
        lg                %r12,8(%r3)
        lg                %r3,0(%r3)
        stg               %r3,0(%r2)
        stg               %r12,8(%r2)
        stg               %r13,16(%r2)
        stg               %r14,24(%r2)
        stg               %r5,32(%r2)
        stg               %r4,40(%r2)
        stg               %r1,48(%r2)
        stg               %r0,56(%r2)
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
