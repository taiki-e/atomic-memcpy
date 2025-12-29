asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        push              ebx
        push              esi
        sub               esp, 0x1c
        mov               esi, dword ptr [esp + 0x2c]
        mov               eax, dword ptr [esp + 0x28]
        movzx             ecx, byte ptr [esi + 0x1f]
        mov               byte ptr [esp + 0x1b], cl
        movzx             ecx, byte ptr [esi + 0x1e]
        mov               byte ptr [esp + 0x1a], cl
        movzx             ecx, byte ptr [esi + 0x1d]
        mov               byte ptr [esp + 0x19], cl
        movzx             ecx, byte ptr [esi + 0x1c]
        mov               byte ptr [esp + 0x18], cl
        movzx             ecx, byte ptr [esi + 0x1b]
        mov               byte ptr [esp + 0x17], cl
        movzx             ecx, byte ptr [esi + 0x1a]
        mov               byte ptr [esp + 0x16], cl
        movzx             ecx, byte ptr [esi + 0x19]
        mov               byte ptr [esp + 0x15], cl
        movzx             ecx, byte ptr [esi + 0x18]
        mov               byte ptr [esp + 0x14], cl
        movzx             ecx, byte ptr [esi + 0x17]
        mov               byte ptr [esp + 0x13], cl
        movzx             ecx, byte ptr [esi + 0x16]
        mov               byte ptr [esp + 0x12], cl
        movzx             ecx, byte ptr [esi + 0x15]
        mov               byte ptr [esp + 0x11], cl
        movzx             ecx, byte ptr [esi + 0x14]
        mov               byte ptr [esp + 0x10], cl
        movzx             ecx, byte ptr [esi + 0x13]
        mov               byte ptr [esp + 0xf], cl
        movzx             ecx, byte ptr [esi + 0x12]
        mov               byte ptr [esp + 0xe], cl
        movzx             ecx, byte ptr [esi + 0x11]
        mov               byte ptr [esp + 0xd], cl
        movzx             ecx, byte ptr [esi + 0x10]
        mov               byte ptr [esp + 0xc], cl
        movzx             ecx, byte ptr [esi + 0xf]
        mov               byte ptr [esp + 0xb], cl
        movzx             ecx, byte ptr [esi + 0xe]
        mov               byte ptr [esp + 0xa], cl
        movzx             ecx, byte ptr [esi + 0xd]
        mov               byte ptr [esp + 0x9], cl
        movzx             ecx, byte ptr [esi + 0xc]
        mov               byte ptr [esp + 0x8], cl
        movzx             ecx, byte ptr [esi + 0xb]
        mov               byte ptr [esp + 0x7], cl
        movzx             ecx, byte ptr [esi + 0xa]
        mov               byte ptr [esp + 0x6], cl
        movzx             ecx, byte ptr [esi + 0x9]
        mov               byte ptr [esp + 0x5], cl
        movzx             ecx, byte ptr [esi + 0x8]
        mov               byte ptr [esp + 0x4], cl
        movzx             ecx, byte ptr [esi + 0x7]
        mov               byte ptr [esp + 0x3], cl
        movzx             ecx, byte ptr [esi + 0x6]
        mov               byte ptr [esp + 0x2], cl
        mov               bh, byte ptr [esi + 0x5]
        mov               bl, byte ptr [esi + 0x4]
        mov               dh, byte ptr [esi + 0x3]
        mov               ch, byte ptr [esi + 0x2]
        mov               cl, byte ptr [esi]
        mov               dl, byte ptr [esi + 0x1]
        mov               byte ptr [eax], cl
        mov               cl, byte ptr [esp + 0x2]
        mov               byte ptr [eax + 0x1], dl
        mov               byte ptr [eax + 0x2], ch
        mov               byte ptr [eax + 0x3], dh
        mov               byte ptr [eax + 0x4], bl
        mov               byte ptr [eax + 0x5], bh
        mov               ch, byte ptr [esp + 0x1a]
        movzx             edx, byte ptr [esp + 0x1b]
        mov               byte ptr [eax + 0x6], cl
        mov               cl, byte ptr [esp + 0x3]
        mov               byte ptr [eax + 0x7], cl
        mov               cl, byte ptr [esp + 0x4]
        mov               byte ptr [eax + 0x8], cl
        mov               cl, byte ptr [esp + 0x5]
        mov               byte ptr [eax + 0x9], cl
        mov               cl, byte ptr [esp + 0x6]
        mov               byte ptr [eax + 0xa], cl
        mov               cl, byte ptr [esp + 0x7]
        mov               byte ptr [eax + 0xb], cl
        mov               cl, byte ptr [esp + 0x8]
        mov               byte ptr [eax + 0xc], cl
        mov               cl, byte ptr [esp + 0x9]
        mov               byte ptr [eax + 0xd], cl
        mov               cl, byte ptr [esp + 0xa]
        mov               byte ptr [eax + 0xe], cl
        mov               cl, byte ptr [esp + 0xb]
        mov               byte ptr [eax + 0xf], cl
        mov               cl, byte ptr [esp + 0xc]
        mov               byte ptr [eax + 0x10], cl
        mov               cl, byte ptr [esp + 0xd]
        mov               byte ptr [eax + 0x11], cl
        mov               cl, byte ptr [esp + 0xe]
        mov               byte ptr [eax + 0x12], cl
        mov               cl, byte ptr [esp + 0xf]
        mov               byte ptr [eax + 0x13], cl
        mov               cl, byte ptr [esp + 0x10]
        mov               byte ptr [eax + 0x14], cl
        mov               cl, byte ptr [esp + 0x11]
        mov               byte ptr [eax + 0x15], cl
        mov               cl, byte ptr [esp + 0x12]
        mov               byte ptr [eax + 0x16], cl
        mov               cl, byte ptr [esp + 0x13]
        mov               byte ptr [eax + 0x17], cl
        mov               cl, byte ptr [esp + 0x14]
        mov               byte ptr [eax + 0x18], cl
        mov               cl, byte ptr [esp + 0x15]
        mov               byte ptr [eax + 0x19], cl
        mov               cl, byte ptr [esp + 0x16]
        mov               byte ptr [eax + 0x1a], cl
        mov               cl, byte ptr [esp + 0x17]
        mov               byte ptr [eax + 0x1b], cl
        mov               cl, byte ptr [esp + 0x18]
        mov               byte ptr [eax + 0x1c], cl
        mov               cl, byte ptr [esp + 0x19]
        mov               byte ptr [eax + 0x1d], cl
        mov               byte ptr [eax + 0x1e], ch
        mov               byte ptr [eax + 0x1f], dl
        add               esp, 0x1c
        pop               esi
        pop               ebx
        ret               0x4

asm_test::atomic_memcpy_load_align1::acquire:
        push              ebx
        push              edi
        push              esi
        sub               esp, 0x20
        mov               ecx, dword ptr [esp + 0x34]
        mov               eax, dword ptr [esp + 0x30]
        lea               edi, [ecx + 0x3]
        and               edi, -0x4
        mov               edx, edi
        sub               edx, ecx
        jne               0f
        xor               edx, edx
        mov               esi, 0x20
        jmp               2f
0:
        xor               esi, esi
        nop               word ptr cs:[eax + eax]
        nop
1:
        movzx             ebx, byte ptr [ecx + esi]
        mov               byte ptr [esp + esi], bl
        inc               esi
        cmp               edx, esi
        jne               1b
        mov               esi, ecx
        sub               esi, edi
        add               esi, 0x20
        cmp               esi, 0x4
        jb                3f
        nop               dword ptr [eax + eax]
2:
        mov               edi, dword ptr [ecx + edx]
        add               esi, -0x4
        mov               dword ptr [esp + edx], edi
        add               edx, 0x4
        cmp               esi, 0x3
        ja                2b
3:
        test              esi, esi
        je                5f
        add               ecx, edx
        add               edx, esp
        xor               edi, edi
        nop               dword ptr [eax + eax]
4:
        movzx             ebx, byte ptr [ecx + edi]
        mov               byte ptr [edx + edi], bl
        inc               edi
        cmp               esi, edi
        jne               4b
5:
        movsd             xmm1, qword ptr [esp + 0x10]
        movsd             xmm0, qword ptr [esp + 0x18]
        movsd             xmm2, qword ptr [esp]
        movsd             qword ptr [eax + 0x10], xmm1
        movsd             xmm1, qword ptr [esp + 0x8]
        movsd             qword ptr [eax + 0x18], xmm0
        movsd             qword ptr [eax], xmm2
        movsd             qword ptr [eax + 0x8], xmm1
        add               esp, 0x20
        pop               esi
        pop               edi
        pop               ebx
        ret               0x4

asm_test::atomic_memcpy_load_align2::read_volatile_acquire_fence:
        push              ebp
        push              ebx
        push              edi
        push              esi
        sub               esp, 0x14
        mov               eax, dword ptr [esp + 0x2c]
        movzx             ecx, word ptr [eax + 0x1e]
        mov               word ptr [esp + 0x12], cx
        movzx             ecx, word ptr [eax + 0x1c]
        mov               word ptr [esp + 0x10], cx
        movzx             ecx, word ptr [eax + 0x1a]
        mov               word ptr [esp + 0xe], cx
        movzx             ecx, word ptr [eax + 0x18]
        mov               word ptr [esp + 0xc], cx
        movzx             ecx, word ptr [eax + 0x16]
        mov               word ptr [esp + 0xa], cx
        movzx             ecx, word ptr [eax + 0x14]
        mov               word ptr [esp + 0x8], cx
        movzx             ecx, word ptr [eax + 0x12]
        mov               word ptr [esp + 0x6], cx
        movzx             ecx, word ptr [eax + 0x10]
        mov               word ptr [esp + 0x4], cx
        movzx             ecx, word ptr [eax + 0xe]
        mov               word ptr [esp + 0x2], cx
        movzx             ecx, word ptr [eax + 0xc]
        mov               word ptr [esp], cx
        movzx             ebp, word ptr [eax + 0xa]
        movzx             ebx, word ptr [eax + 0x8]
        movzx             edi, word ptr [eax + 0x6]
        movzx             esi, word ptr [eax + 0x4]
        movzx             ecx, word ptr [eax]
        movzx             edx, word ptr [eax + 0x2]
        mov               eax, dword ptr [esp + 0x28]
        mov               word ptr [eax], cx
        mov               word ptr [eax + 0x2], dx
        mov               word ptr [eax + 0x4], si
        movzx             esi, word ptr [esp]
        movzx             edx, word ptr [esp + 0x2]
        mov               word ptr [eax + 0x6], di
        mov               word ptr [eax + 0x8], bx
        mov               word ptr [eax + 0xa], bp
        mov               word ptr [eax + 0xc], si
        mov               word ptr [eax + 0xe], dx
        movzx             esi, word ptr [esp + 0x4]
        movzx             edx, word ptr [esp + 0x6]
        mov               word ptr [eax + 0x10], si
        mov               word ptr [eax + 0x12], dx
        movzx             esi, word ptr [esp + 0x8]
        movzx             edx, word ptr [esp + 0xa]
        mov               word ptr [eax + 0x14], si
        mov               word ptr [eax + 0x16], dx
        movzx             esi, word ptr [esp + 0xc]
        movzx             edx, word ptr [esp + 0xe]
        mov               word ptr [eax + 0x18], si
        mov               word ptr [eax + 0x1a], dx
        movzx             esi, word ptr [esp + 0x10]
        movzx             edx, word ptr [esp + 0x12]
        mov               word ptr [eax + 0x1c], si
        mov               word ptr [eax + 0x1e], dx
        add               esp, 0x14
        pop               esi
        pop               edi
        pop               ebx
        pop               ebp
        ret               0x4

asm_test::atomic_memcpy_load_align2::acquire:
        push              ebx
        push              edi
        push              esi
        sub               esp, 0x20
        mov               ecx, dword ptr [esp + 0x34]
        mov               eax, dword ptr [esp + 0x30]
        lea               edi, [ecx + 0x3]
        and               edi, -0x4
        mov               edx, edi
        sub               edx, ecx
        jne               0f
        xor               edx, edx
        mov               esi, 0x20
        jmp               2f
0:
        xor               esi, esi
        nop               word ptr cs:[eax + eax]
        nop
1:
        movzx             ebx, byte ptr [ecx + esi]
        mov               byte ptr [esp + esi], bl
        inc               esi
        cmp               edx, esi
        jne               1b
        mov               esi, ecx
        sub               esi, edi
        add               esi, 0x20
        cmp               esi, 0x4
        jb                3f
        nop               dword ptr [eax + eax]
2:
        mov               edi, dword ptr [ecx + edx]
        add               esi, -0x4
        mov               dword ptr [esp + edx], edi
        add               edx, 0x4
        cmp               esi, 0x3
        ja                2b
3:
        test              esi, esi
        je                5f
        add               ecx, edx
        add               edx, esp
        xor               edi, edi
        nop               dword ptr [eax + eax]
4:
        movzx             ebx, byte ptr [ecx + edi]
        mov               byte ptr [edx + edi], bl
        inc               edi
        cmp               esi, edi
        jne               4b
5:
        movsd             xmm1, qword ptr [esp + 0x10]
        movsd             xmm0, qword ptr [esp + 0x18]
        movsd             xmm2, qword ptr [esp]
        movsd             qword ptr [eax + 0x10], xmm1
        movsd             xmm1, qword ptr [esp + 0x8]
        movsd             qword ptr [eax + 0x18], xmm0
        movsd             qword ptr [eax], xmm2
        movsd             qword ptr [eax + 0x8], xmm1
        add               esp, 0x20
        pop               esi
        pop               edi
        pop               ebx
        ret               0x4

asm_test::atomic_memcpy_load_align4::read_volatile_acquire_fence:
        push              ebp
        push              ebx
        push              edi
        push              esi
        sub               esp, 0x8
        mov               eax, dword ptr [esp + 0x20]
        mov               ecx, dword ptr [eax + 0x1c]
        mov               dword ptr [esp + 0x4], ecx
        mov               ecx, dword ptr [eax + 0x18]
        mov               dword ptr [esp], ecx
        mov               esi, dword ptr [eax + 0x14]
        mov               edi, dword ptr [eax + 0x10]
        mov               ebx, dword ptr [eax + 0xc]
        mov               ebp, dword ptr [eax + 0x8]
        mov               ecx, dword ptr [eax]
        mov               edx, dword ptr [eax + 0x4]
        mov               eax, dword ptr [esp + 0x1c]
        mov               dword ptr [eax], ecx
        mov               dword ptr [eax + 0x4], edx
        mov               dword ptr [eax + 0x8], ebp
        mov               dword ptr [eax + 0xc], ebx
        mov               dword ptr [eax + 0x10], edi
        mov               dword ptr [eax + 0x14], esi
        mov               esi, dword ptr [esp]
        mov               edx, dword ptr [esp + 0x4]
        mov               dword ptr [eax + 0x18], esi
        mov               dword ptr [eax + 0x1c], edx
        add               esp, 0x8
        pop               esi
        pop               edi
        pop               ebx
        pop               ebp
        ret               0x4

asm_test::atomic_memcpy_load_align4::acquire:
        push              ebp
        push              ebx
        push              edi
        push              esi
        sub               esp, 0x8
        mov               eax, dword ptr [esp + 0x20]
        mov               ecx, dword ptr [eax + 0x1c]
        mov               dword ptr [esp + 0x4], ecx
        mov               ecx, dword ptr [eax + 0x18]
        mov               dword ptr [esp], ecx
        mov               esi, dword ptr [eax + 0x14]
        mov               edi, dword ptr [eax + 0x10]
        mov               ebx, dword ptr [eax + 0xc]
        mov               ebp, dword ptr [eax + 0x8]
        mov               edx, dword ptr [eax + 0x4]
        mov               ecx, dword ptr [eax]
        mov               eax, dword ptr [esp + 0x1c]
        mov               dword ptr [eax], ecx
        mov               dword ptr [eax + 0x4], edx
        mov               dword ptr [eax + 0x8], ebp
        mov               dword ptr [eax + 0xc], ebx
        mov               dword ptr [eax + 0x10], edi
        mov               dword ptr [eax + 0x14], esi
        mov               esi, dword ptr [esp]
        mov               edx, dword ptr [esp + 0x4]
        mov               dword ptr [eax + 0x18], esi
        mov               dword ptr [eax + 0x1c], edx
        add               esp, 0x8
        pop               esi
        pop               edi
        pop               ebx
        pop               ebp
        ret               0x4

asm_test::atomic_memcpy_load_align8::read_volatile_acquire_fence:
        push              ebp
        push              ebx
        push              edi
        push              esi
        sub               esp, 0x8
        mov               eax, dword ptr [esp + 0x20]
        mov               ecx, dword ptr [eax + 0x1c]
        mov               dword ptr [esp + 0x4], ecx
        mov               ecx, dword ptr [eax + 0x18]
        mov               dword ptr [esp], ecx
        mov               esi, dword ptr [eax + 0x14]
        mov               edi, dword ptr [eax + 0x10]
        mov               ebx, dword ptr [eax + 0xc]
        mov               ebp, dword ptr [eax + 0x8]
        mov               ecx, dword ptr [eax]
        mov               edx, dword ptr [eax + 0x4]
        mov               eax, dword ptr [esp + 0x1c]
        mov               dword ptr [eax + 0x4], edx
        mov               dword ptr [eax], ecx
        mov               dword ptr [eax + 0x8], ebp
        mov               dword ptr [eax + 0xc], ebx
        mov               dword ptr [eax + 0x14], esi
        mov               esi, dword ptr [esp]
        mov               edx, dword ptr [esp + 0x4]
        mov               dword ptr [eax + 0x10], edi
        mov               dword ptr [eax + 0x18], esi
        mov               dword ptr [eax + 0x1c], edx
        add               esp, 0x8
        pop               esi
        pop               edi
        pop               ebx
        pop               ebp
        ret               0x4

asm_test::atomic_memcpy_load_align8::acquire:
        push              ebp
        push              ebx
        push              edi
        push              esi
        sub               esp, 0x8
        mov               eax, dword ptr [esp + 0x20]
        mov               ecx, dword ptr [eax + 0x1c]
        mov               dword ptr [esp + 0x4], ecx
        mov               ecx, dword ptr [eax + 0x18]
        mov               dword ptr [esp], ecx
        mov               esi, dword ptr [eax + 0x14]
        mov               edi, dword ptr [eax + 0x10]
        mov               ebx, dword ptr [eax + 0xc]
        mov               ebp, dword ptr [eax + 0x8]
        mov               edx, dword ptr [eax + 0x4]
        mov               ecx, dword ptr [eax]
        mov               eax, dword ptr [esp + 0x1c]
        mov               dword ptr [eax], ecx
        mov               dword ptr [eax + 0x4], edx
        mov               dword ptr [eax + 0x8], ebp
        mov               dword ptr [eax + 0xc], ebx
        mov               dword ptr [eax + 0x10], edi
        mov               dword ptr [eax + 0x14], esi
        mov               esi, dword ptr [esp]
        mov               edx, dword ptr [esp + 0x4]
        mov               dword ptr [eax + 0x18], esi
        mov               dword ptr [eax + 0x1c], edx
        add               esp, 0x8
        pop               esi
        pop               edi
        pop               ebx
        pop               ebp
        ret               0x4

asm_test::atomic_memcpy_load_align16::read_volatile_acquire_fence:
        push              ebp
        push              ebx
        push              edi
        push              esi
        sub               esp, 0x8
        mov               eax, dword ptr [esp + 0x20]
        mov               ecx, dword ptr [eax + 0x1c]
        mov               dword ptr [esp + 0x4], ecx
        mov               ecx, dword ptr [eax + 0x18]
        mov               dword ptr [esp], ecx
        mov               esi, dword ptr [eax + 0x14]
        mov               edi, dword ptr [eax + 0x10]
        mov               ebx, dword ptr [eax + 0xc]
        mov               ebp, dword ptr [eax + 0x8]
        mov               ecx, dword ptr [eax]
        mov               edx, dword ptr [eax + 0x4]
        mov               eax, dword ptr [esp + 0x1c]
        mov               dword ptr [eax + 0x4], edx
        mov               dword ptr [eax], ecx
        mov               dword ptr [eax + 0x8], ebp
        mov               dword ptr [eax + 0xc], ebx
        mov               dword ptr [eax + 0x14], esi
        mov               esi, dword ptr [esp]
        mov               edx, dword ptr [esp + 0x4]
        mov               dword ptr [eax + 0x10], edi
        mov               dword ptr [eax + 0x18], esi
        mov               dword ptr [eax + 0x1c], edx
        add               esp, 0x8
        pop               esi
        pop               edi
        pop               ebx
        pop               ebp
        ret               0x4

asm_test::atomic_memcpy_load_align16::acquire:
        push              ebp
        push              ebx
        push              edi
        push              esi
        sub               esp, 0x8
        mov               eax, dword ptr [esp + 0x20]
        mov               ecx, dword ptr [eax + 0x1c]
        mov               dword ptr [esp + 0x4], ecx
        mov               ecx, dword ptr [eax + 0x18]
        mov               dword ptr [esp], ecx
        mov               esi, dword ptr [eax + 0x14]
        mov               edi, dword ptr [eax + 0x10]
        mov               ebx, dword ptr [eax + 0xc]
        mov               ebp, dword ptr [eax + 0x8]
        mov               edx, dword ptr [eax + 0x4]
        mov               ecx, dword ptr [eax]
        mov               eax, dword ptr [esp + 0x1c]
        mov               dword ptr [eax], ecx
        mov               dword ptr [eax + 0x4], edx
        mov               dword ptr [eax + 0x8], ebp
        mov               dword ptr [eax + 0xc], ebx
        mov               dword ptr [eax + 0x10], edi
        mov               dword ptr [eax + 0x14], esi
        mov               esi, dword ptr [esp]
        mov               edx, dword ptr [esp + 0x4]
        mov               dword ptr [eax + 0x18], esi
        mov               dword ptr [eax + 0x1c], edx
        add               esp, 0x8
        pop               esi
        pop               edi
        pop               ebx
        pop               ebp
        ret               0x4

asm_test::atomic_memcpy_store_align1::write_volatile_release_fence:
        mov               ecx, dword ptr [esp + 0x8]
        mov               eax, dword ptr [esp + 0x4]
        movsd             xmm0, qword ptr [ecx + 0x18]
        movsd             qword ptr [eax + 0x18], xmm0
        movsd             xmm0, qword ptr [ecx + 0x10]
        movsd             qword ptr [eax + 0x10], xmm0
        movsd             xmm0, qword ptr [ecx]
        movsd             xmm1, qword ptr [ecx + 0x8]
        movsd             qword ptr [eax + 0x8], xmm1
        movsd             qword ptr [eax], xmm0
        ret

asm_test::atomic_memcpy_store_align1::release:
        push              ebx
        push              edi
        push              esi
        mov               ecx, dword ptr [esp + 0x10]
        mov               eax, dword ptr [esp + 0x14]
        lea               edi, [ecx + 0x3]
        and               edi, -0x4
        mov               edx, edi
        sub               edx, ecx
        jne               0f
        xor               edx, edx
        mov               esi, 0x20
        jmp               2f
0:
        xor               esi, esi
        nop               word ptr cs:[eax + eax]
        nop               dword ptr [eax]
1:
        movzx             ebx, byte ptr [eax + esi]
        mov               byte ptr [ecx + esi], bl
        inc               esi
        cmp               edx, esi
        jne               1b
        mov               esi, ecx
        sub               esi, edi
        add               esi, 0x20
        cmp               esi, 0x4
        jb                3f
        nop               dword ptr [eax + eax]
2:
        mov               edi, dword ptr [eax + edx]
        add               esi, -0x4
        mov               dword ptr [ecx + edx], edi
        add               edx, 0x4
        cmp               esi, 0x3
        ja                2b
3:
        test              esi, esi
        je                5f
        add               eax, edx
        add               ecx, edx
        xor               edx, edx
        nop               dword ptr [eax + eax]
4:
        movzx             ebx, byte ptr [eax + edx]
        mov               byte ptr [ecx + edx], bl
        inc               edx
        cmp               esi, edx
        jne               4b
5:
        pop               esi
        pop               edi
        pop               ebx
        ret

asm_test::atomic_memcpy_store_align2::write_volatile_release_fence:
        mov               ecx, dword ptr [esp + 0x8]
        mov               eax, dword ptr [esp + 0x4]
        movsd             xmm0, qword ptr [ecx + 0x18]
        movsd             qword ptr [eax + 0x18], xmm0
        movsd             xmm0, qword ptr [ecx + 0x10]
        movsd             qword ptr [eax + 0x10], xmm0
        movsd             xmm0, qword ptr [ecx]
        movsd             xmm1, qword ptr [ecx + 0x8]
        movsd             qword ptr [eax + 0x8], xmm1
        movsd             qword ptr [eax], xmm0
        ret

asm_test::atomic_memcpy_store_align2::release:
        push              ebx
        push              edi
        push              esi
        mov               ecx, dword ptr [esp + 0x10]
        mov               eax, dword ptr [esp + 0x14]
        lea               edi, [ecx + 0x3]
        and               edi, -0x4
        mov               edx, edi
        sub               edx, ecx
        jne               0f
        xor               edx, edx
        mov               esi, 0x20
        jmp               2f
0:
        xor               esi, esi
        nop               word ptr cs:[eax + eax]
        nop               dword ptr [eax]
1:
        movzx             ebx, byte ptr [eax + esi]
        mov               byte ptr [ecx + esi], bl
        inc               esi
        cmp               edx, esi
        jne               1b
        mov               esi, ecx
        sub               esi, edi
        add               esi, 0x20
        cmp               esi, 0x4
        jb                3f
        nop               dword ptr [eax + eax]
2:
        mov               edi, dword ptr [eax + edx]
        add               esi, -0x4
        mov               dword ptr [ecx + edx], edi
        add               edx, 0x4
        cmp               esi, 0x3
        ja                2b
3:
        test              esi, esi
        je                5f
        add               eax, edx
        add               ecx, edx
        xor               edx, edx
        nop               dword ptr [eax + eax]
4:
        movzx             ebx, byte ptr [eax + edx]
        mov               byte ptr [ecx + edx], bl
        inc               edx
        cmp               esi, edx
        jne               4b
5:
        pop               esi
        pop               edi
        pop               ebx
        ret

asm_test::atomic_memcpy_store_align4::write_volatile_release_fence:
        mov               ecx, dword ptr [esp + 0x8]
        mov               eax, dword ptr [esp + 0x4]
        movsd             xmm0, qword ptr [ecx + 0x18]
        movsd             qword ptr [eax + 0x18], xmm0
        movsd             xmm0, qword ptr [ecx + 0x10]
        movsd             qword ptr [eax + 0x10], xmm0
        movsd             xmm0, qword ptr [ecx]
        movsd             xmm1, qword ptr [ecx + 0x8]
        movsd             qword ptr [eax + 0x8], xmm1
        movsd             qword ptr [eax], xmm0
        ret

asm_test::atomic_memcpy_store_align4::release:
        mov               ecx, dword ptr [esp + 0x8]
        mov               eax, dword ptr [esp + 0x4]
        mov               edx, dword ptr [ecx + 0x1c]
        mov               dword ptr [eax + 0x1c], edx
        mov               edx, dword ptr [ecx + 0x18]
        mov               dword ptr [eax + 0x18], edx
        mov               edx, dword ptr [ecx + 0x14]
        mov               dword ptr [eax + 0x14], edx
        mov               edx, dword ptr [ecx + 0x10]
        mov               dword ptr [eax + 0x10], edx
        mov               edx, dword ptr [ecx + 0xc]
        mov               dword ptr [eax + 0xc], edx
        mov               edx, dword ptr [ecx + 0x8]
        mov               dword ptr [eax + 0x8], edx
        mov               edx, dword ptr [ecx + 0x4]
        mov               dword ptr [eax + 0x4], edx
        mov               ecx, dword ptr [ecx]
        mov               dword ptr [eax], ecx
        ret

asm_test::atomic_memcpy_store_align8::write_volatile_release_fence:
        mov               ecx, dword ptr [esp + 0x8]
        mov               eax, dword ptr [esp + 0x4]
        movsd             xmm0, qword ptr [ecx + 0x18]
        movsd             qword ptr [eax + 0x18], xmm0
        movsd             xmm0, qword ptr [ecx + 0x10]
        movsd             qword ptr [eax + 0x10], xmm0
        movsd             xmm0, qword ptr [ecx]
        movsd             xmm1, qword ptr [ecx + 0x8]
        movsd             qword ptr [eax + 0x8], xmm1
        movsd             qword ptr [eax], xmm0
        ret

asm_test::atomic_memcpy_store_align8::release:
        mov               ecx, dword ptr [esp + 0x8]
        mov               eax, dword ptr [esp + 0x4]
        mov               edx, dword ptr [ecx + 0x1c]
        mov               dword ptr [eax + 0x1c], edx
        mov               edx, dword ptr [ecx + 0x18]
        mov               dword ptr [eax + 0x18], edx
        mov               edx, dword ptr [ecx + 0x14]
        mov               dword ptr [eax + 0x14], edx
        mov               edx, dword ptr [ecx + 0x10]
        mov               dword ptr [eax + 0x10], edx
        mov               edx, dword ptr [ecx + 0xc]
        mov               dword ptr [eax + 0xc], edx
        mov               edx, dword ptr [ecx + 0x8]
        mov               dword ptr [eax + 0x8], edx
        mov               edx, dword ptr [ecx + 0x4]
        mov               dword ptr [eax + 0x4], edx
        mov               ecx, dword ptr [ecx]
        mov               dword ptr [eax], ecx
        ret

asm_test::atomic_memcpy_store_align16::write_volatile_release_fence:
        mov               ecx, dword ptr [esp + 0x8]
        mov               eax, dword ptr [esp + 0x4]
        movaps            xmm0, xmmword ptr [ecx]
        movaps            xmm1, xmmword ptr [ecx + 0x10]
        movaps            xmmword ptr [eax + 0x10], xmm1
        movaps            xmmword ptr [eax], xmm0
        ret

asm_test::atomic_memcpy_store_align16::release:
        mov               ecx, dword ptr [esp + 0x8]
        mov               eax, dword ptr [esp + 0x4]
        mov               edx, dword ptr [ecx + 0x1c]
        mov               dword ptr [eax + 0x1c], edx
        mov               edx, dword ptr [ecx + 0x18]
        mov               dword ptr [eax + 0x18], edx
        mov               edx, dword ptr [ecx + 0x14]
        mov               dword ptr [eax + 0x14], edx
        mov               edx, dword ptr [ecx + 0x10]
        mov               dword ptr [eax + 0x10], edx
        mov               edx, dword ptr [ecx + 0xc]
        mov               dword ptr [eax + 0xc], edx
        mov               edx, dword ptr [ecx + 0x8]
        mov               dword ptr [eax + 0x8], edx
        mov               edx, dword ptr [ecx + 0x4]
        mov               dword ptr [eax + 0x4], edx
        mov               ecx, dword ptr [ecx]
        mov               dword ptr [eax], ecx
        ret

