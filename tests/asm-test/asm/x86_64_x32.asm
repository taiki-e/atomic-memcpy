asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        push              rbp
        push              r15
        push              r14
        push              r13
        push              r12
        push              rbx
        mov               rax, rdi
        movzx             ecx, byte ptr [esi + 0x1f]
        mov               byte ptr [esp - 0x1], cl
        movzx             ecx, byte ptr [esi + 0x1e]
        mov               byte ptr [esp - 0x2], cl
        movzx             ecx, byte ptr [esi + 0x1d]
        mov               byte ptr [esp - 0x3], cl
        movzx             ecx, byte ptr [esi + 0x1c]
        mov               byte ptr [esp - 0x4], cl
        movzx             ecx, byte ptr [esi + 0x1b]
        mov               byte ptr [esp - 0x5], cl
        movzx             ecx, byte ptr [esi + 0x1a]
        mov               byte ptr [esp - 0x6], cl
        movzx             ecx, byte ptr [esi + 0x19]
        mov               byte ptr [esp - 0x7], cl
        movzx             ecx, byte ptr [esi + 0x18]
        mov               byte ptr [esp - 0x8], cl
        movzx             ecx, byte ptr [esi + 0x17]
        mov               byte ptr [esp - 0x9], cl
        movzx             ecx, byte ptr [esi + 0x16]
        mov               byte ptr [esp - 0xa], cl
        movzx             ecx, byte ptr [esi + 0x15]
        mov               byte ptr [esp - 0xb], cl
        movzx             ecx, byte ptr [esi + 0x14]
        mov               byte ptr [esp - 0xc], cl
        movzx             ecx, byte ptr [esi + 0x13]
        mov               byte ptr [esp - 0xd], cl
        movzx             ecx, byte ptr [esi + 0x12]
        mov               byte ptr [esp - 0xe], cl
        movzx             ecx, byte ptr [esi + 0x11]
        mov               byte ptr [esp - 0xf], cl
        movzx             ecx, byte ptr [esi + 0x10]
        mov               byte ptr [esp - 0x10], cl
        movzx             ecx, byte ptr [esi + 0xf]
        mov               byte ptr [esp - 0x11], cl
        movzx             ecx, byte ptr [esi + 0xe]
        mov               byte ptr [esp - 0x12], cl
        movzx             r13d, byte ptr [esi + 0xd]
        movzx             r12d, byte ptr [esi + 0xc]
        movzx             r15d, byte ptr [esi + 0xb]
        movzx             r14d, byte ptr [esi + 0xa]
        movzx             ebp, byte ptr [esi + 0x9]
        movzx             ebx, byte ptr [esi + 0x8]
        movzx             r11d, byte ptr [esi + 0x7]
        movzx             r10d, byte ptr [esi + 0x6]
        movzx             r9d, byte ptr [esi + 0x5]
        movzx             r8d, byte ptr [esi + 0x4]
        movzx             edi, byte ptr [esi + 0x3]
        movzx             edx, byte ptr [esi + 0x2]
        movzx             ecx, byte ptr [esi]
        movzx             esi, byte ptr [esi + 0x1]
        mov               byte ptr [eax], cl
        mov               byte ptr [eax + 0x1], sil
        mov               byte ptr [eax + 0x2], dl
        mov               byte ptr [eax + 0x3], dil
        mov               byte ptr [eax + 0x4], r8b
        mov               byte ptr [eax + 0x5], r9b
        mov               byte ptr [eax + 0x6], r10b
        mov               byte ptr [eax + 0x7], r11b
        mov               byte ptr [eax + 0x8], bl
        mov               byte ptr [eax + 0x9], bpl
        mov               byte ptr [eax + 0xa], r14b
        mov               byte ptr [eax + 0xb], r15b
        mov               byte ptr [eax + 0xc], r12b
        mov               byte ptr [eax + 0xd], r13b
        movzx             ecx, byte ptr [esp - 0x12]
        mov               byte ptr [eax + 0xe], cl
        movzx             ecx, byte ptr [esp - 0x11]
        mov               byte ptr [eax + 0xf], cl
        movzx             ecx, byte ptr [esp - 0x10]
        mov               byte ptr [eax + 0x10], cl
        movzx             ecx, byte ptr [esp - 0xf]
        mov               byte ptr [eax + 0x11], cl
        movzx             ecx, byte ptr [esp - 0xe]
        mov               byte ptr [eax + 0x12], cl
        movzx             ecx, byte ptr [esp - 0xd]
        mov               byte ptr [eax + 0x13], cl
        movzx             ecx, byte ptr [esp - 0xc]
        mov               byte ptr [eax + 0x14], cl
        movzx             ecx, byte ptr [esp - 0xb]
        mov               byte ptr [eax + 0x15], cl
        movzx             ecx, byte ptr [esp - 0xa]
        mov               byte ptr [eax + 0x16], cl
        movzx             ecx, byte ptr [esp - 0x9]
        mov               byte ptr [eax + 0x17], cl
        movzx             ecx, byte ptr [esp - 0x8]
        mov               byte ptr [eax + 0x18], cl
        movzx             ecx, byte ptr [esp - 0x7]
        mov               byte ptr [eax + 0x19], cl
        movzx             ecx, byte ptr [esp - 0x6]
        mov               byte ptr [eax + 0x1a], cl
        movzx             ecx, byte ptr [esp - 0x5]
        mov               byte ptr [eax + 0x1b], cl
        movzx             ecx, byte ptr [esp - 0x4]
        mov               byte ptr [eax + 0x1c], cl
        movzx             ecx, byte ptr [esp - 0x3]
        mov               byte ptr [eax + 0x1d], cl
        movzx             ecx, byte ptr [esp - 0x2]
        mov               byte ptr [eax + 0x1e], cl
        movzx             ecx, byte ptr [esp - 0x1]
        mov               byte ptr [eax + 0x1f], cl
        pop               rbx
        pop               r12
        pop               r13
        pop               r14
        pop               r15
        pop               rbp
        ret

asm_test::atomic_memcpy_load_align1::acquire:
        mov               rax, rdi
        lea               edi, [rsi + 0x3]
        and               edi, -0x4
        mov               edx, edi
        sub               edx, esi
        jne               0f
        xor               edx, edx
        mov               ecx, 0x20
        jmp               4f
0:
        mov               ecx, esi
        sub               ecx, edi
        xor               edi, edi
        mov               r8d, 0x0
        cmp               ecx, -0x4
        ja                2f
        xor               r9d, r9d
        xor               r8d, r8d
        nop               word ptr cs:[rax + rax]
1:
        movzx             r10d, byte ptr [esi + r9d]
        mov               byte ptr [esp + r9d - 0x20], r10b
        movzx             r10d, byte ptr [esi + r9d + 0x1]
        mov               byte ptr [esp + r9d - 0x1f], r10b
        movzx             r10d, byte ptr [esi + r9d + 0x2]
        mov               byte ptr [esp + r9d - 0x1e], r10b
        add               r8d, 0x4
        movzx             r10d, byte ptr [esi + r9d + 0x3]
        mov               byte ptr [esp + r9d - 0x1d], r10b
        mov               r9d, r8d
        jne               1b
2:
        lea               r9d, [rsp + r8]
        add               r9d, -0x20
        add               r8d, esi
        nop               word ptr [rax + rax]
3:
        movzx             r10d, byte ptr [r8d + edi]
        mov               byte ptr [r9d + edi], r10b
        inc               edi
        cmp               edx, edi
        jne               3b
        add               ecx, 0x20
        cmp               ecx, 0x4
        jb                5f
        nop               dword ptr [rax]
4:
        mov               edi, dword ptr [esi + edx]
        mov               dword ptr [esp + edx - 0x20], edi
        add               ecx, -0x4
        add               edx, 0x4
        cmp               ecx, 0x3
        ja                4b
5:
        test              ecx, ecx
        je                8f
        lea               r8d, [rsp + rdx]
        add               r8d, -0x20
        lea               r9d, [rsi + rdx]
        xor               edi, edi
        nop               word ptr cs:[rax + rax]
6:
        movzx             r10d, byte ptr [r9d + edi]
        mov               byte ptr [r8d + edi], r10b
        inc               edi
        cmp               ecx, edi
        jne               6b
        cmp               ecx, 0x4
        jb                8f
        lea               r8d, [rsp + rdx]
        add               r8d, -0x1d
        add               edx, esi
        add               edx, 0x3
        nop               word ptr cs:[rax + rax]
7:
        movzx             esi, byte ptr [edx + edi - 0x3]
        mov               byte ptr [r8d + edi - 0x3], sil
        movzx             esi, byte ptr [edx + edi - 0x2]
        mov               byte ptr [r8d + edi - 0x2], sil
        movzx             esi, byte ptr [edx + edi - 0x1]
        mov               byte ptr [r8d + edi - 0x1], sil
        movzx             esi, byte ptr [edx + edi]
        mov               byte ptr [r8d + edi], sil
        add               edi, 0x4
        cmp               ecx, edi
        jne               7b
8:
        movups            xmm0, xmmword ptr [esp - 0x20]
        movups            xmm1, xmmword ptr [esp - 0x10]
        movups            xmmword ptr [eax + 0x10], xmm1
        movups            xmmword ptr [eax], xmm0
        ret

asm_test::atomic_memcpy_load_align2::read_volatile_acquire_fence:
        push              rbp
        push              r15
        push              r14
        push              r13
        push              r12
        push              rbx
        mov               rax, rdi
        movzx             ecx, word ptr [esi + 0x1e]
        mov               word ptr [esp - 0x2], cx
        movzx             ecx, word ptr [esi + 0x1c]
        mov               word ptr [esp - 0x4], cx
        movzx             edi, word ptr [esi + 0x1a]
        movzx             r8d, word ptr [esi + 0x18]
        movzx             r9d, word ptr [esi + 0x16]
        movzx             r10d, word ptr [esi + 0x14]
        movzx             r11d, word ptr [esi + 0x12]
        movzx             ebx, word ptr [esi + 0x10]
        movzx             ebp, word ptr [esi + 0xe]
        movzx             r14d, word ptr [esi + 0xc]
        movzx             r15d, word ptr [esi + 0xa]
        movzx             r12d, word ptr [esi + 0x8]
        movzx             r13d, word ptr [esi + 0x6]
        movzx             edx, word ptr [esi + 0x4]
        movzx             ecx, word ptr [esi]
        movzx             esi, word ptr [esi + 0x2]
        mov               word ptr [eax], cx
        mov               word ptr [eax + 0x2], si
        mov               word ptr [eax + 0x4], dx
        mov               word ptr [eax + 0x6], r13w
        mov               word ptr [eax + 0x8], r12w
        mov               word ptr [eax + 0xa], r15w
        mov               word ptr [eax + 0xc], r14w
        mov               word ptr [eax + 0xe], bp
        mov               word ptr [eax + 0x10], bx
        mov               word ptr [eax + 0x12], r11w
        mov               word ptr [eax + 0x14], r10w
        mov               word ptr [eax + 0x16], r9w
        mov               word ptr [eax + 0x18], r8w
        mov               word ptr [eax + 0x1a], di
        movzx             ecx, word ptr [esp - 0x4]
        mov               word ptr [eax + 0x1c], cx
        movzx             ecx, word ptr [esp - 0x2]
        mov               word ptr [eax + 0x1e], cx
        pop               rbx
        pop               r12
        pop               r13
        pop               r14
        pop               r15
        pop               rbp
        ret

asm_test::atomic_memcpy_load_align2::acquire:
        mov               rax, rdi
        lea               edi, [rsi + 0x3]
        and               edi, -0x4
        mov               ecx, edi
        sub               ecx, esi
        jne               0f
        xor               ecx, ecx
        mov               edx, 0x20
        jmp               4f
0:
        mov               edx, esi
        sub               edx, edi
        xor               edi, edi
        mov               r8d, 0x0
        cmp               edx, -0x4
        ja                2f
        xor               r9d, r9d
        xor               r8d, r8d
        nop               word ptr cs:[rax + rax]
1:
        movzx             r10d, byte ptr [esi + r9d]
        mov               byte ptr [esp + r9d - 0x20], r10b
        movzx             r10d, byte ptr [esi + r9d + 0x1]
        mov               byte ptr [esp + r9d - 0x1f], r10b
        movzx             r10d, byte ptr [esi + r9d + 0x2]
        mov               byte ptr [esp + r9d - 0x1e], r10b
        add               r8d, 0x4
        movzx             r10d, byte ptr [esi + r9d + 0x3]
        mov               byte ptr [esp + r9d - 0x1d], r10b
        mov               r9d, r8d
        jne               1b
2:
        lea               r9d, [rsp + r8]
        add               r9d, -0x20
        add               r8d, esi
        nop               word ptr [rax + rax]
3:
        movzx             r10d, byte ptr [r8d + edi]
        mov               byte ptr [r9d + edi], r10b
        inc               edi
        cmp               ecx, edi
        jne               3b
        add               edx, 0x20
        cmp               edx, 0x4
        jb                5f
        nop               dword ptr [rax]
4:
        mov               edi, dword ptr [esi + ecx]
        mov               dword ptr [esp + ecx - 0x20], edi
        add               edx, -0x4
        add               ecx, 0x4
        cmp               edx, 0x3
        ja                4b
5:
        test              edx, edx
        je                6f
        movzx             edi, byte ptr [esi + ecx]
        mov               byte ptr [esp + ecx - 0x20], dil
        cmp               edx, 0x1
        je                6f
        movzx             edi, byte ptr [esi + ecx + 0x1]
        mov               byte ptr [esp + ecx - 0x1f], dil
        cmp               edx, 0x2
        je                6f
        movzx             edx, byte ptr [esi + ecx + 0x2]
        mov               byte ptr [esp + ecx - 0x1e], dl
6:
        movups            xmm0, xmmword ptr [esp - 0x20]
        movups            xmm1, xmmword ptr [esp - 0x10]
        movups            xmmword ptr [eax + 0x10], xmm1
        movups            xmmword ptr [eax], xmm0
        ret

asm_test::atomic_memcpy_load_align4::read_volatile_acquire_fence:
        mov               rax, rdi
        mov               ecx, dword ptr [esi + 0x1c]
        mov               edx, dword ptr [esi + 0x18]
        mov               edi, dword ptr [esi + 0x14]
        mov               r8d, dword ptr [esi + 0x10]
        mov               r9d, dword ptr [esi + 0xc]
        mov               r10d, dword ptr [esi + 0x8]
        mov               r11d, dword ptr [esi]
        mov               esi, dword ptr [esi + 0x4]
        mov               dword ptr [eax], r11d
        mov               dword ptr [eax + 0x4], esi
        mov               dword ptr [eax + 0x8], r10d
        mov               dword ptr [eax + 0xc], r9d
        mov               dword ptr [eax + 0x10], r8d
        mov               dword ptr [eax + 0x14], edi
        mov               dword ptr [eax + 0x18], edx
        mov               dword ptr [eax + 0x1c], ecx
        ret

asm_test::atomic_memcpy_load_align4::acquire:
        mov               rax, rdi
        mov               ecx, dword ptr [esi + 0x1c]
        mov               edx, dword ptr [esi + 0x18]
        mov               edi, dword ptr [esi + 0x14]
        mov               r8d, dword ptr [esi + 0x10]
        mov               r9d, dword ptr [esi + 0xc]
        mov               r10d, dword ptr [esi + 0x8]
        mov               r11d, dword ptr [esi + 0x4]
        mov               esi, dword ptr [esi]
        mov               dword ptr [eax], esi
        mov               dword ptr [eax + 0x4], r11d
        mov               dword ptr [eax + 0x8], r10d
        mov               dword ptr [eax + 0xc], r9d
        mov               dword ptr [eax + 0x10], r8d
        mov               dword ptr [eax + 0x14], edi
        mov               dword ptr [eax + 0x18], edx
        mov               dword ptr [eax + 0x1c], ecx
        ret

asm_test::atomic_memcpy_load_align8::read_volatile_acquire_fence:
        mov               rax, rdi
        mov               rcx, qword ptr [esi + 0x18]
        mov               rdx, qword ptr [esi + 0x10]
        mov               rdi, qword ptr [esi]
        mov               rsi, qword ptr [esi + 0x8]
        mov               qword ptr [eax], rdi
        mov               qword ptr [eax + 0x8], rsi
        mov               qword ptr [eax + 0x10], rdx
        mov               qword ptr [eax + 0x18], rcx
        ret

asm_test::atomic_memcpy_load_align8::acquire:
        mov               rax, rdi
        mov               ecx, dword ptr [esi + 0x1c]
        mov               edx, dword ptr [esi + 0x18]
        mov               edi, dword ptr [esi + 0x14]
        mov               r8d, dword ptr [esi + 0x10]
        mov               r9d, dword ptr [esi + 0xc]
        mov               r10d, dword ptr [esi + 0x8]
        mov               r11d, dword ptr [esi + 0x4]
        mov               esi, dword ptr [esi]
        mov               dword ptr [eax], esi
        mov               dword ptr [eax + 0x4], r11d
        mov               dword ptr [eax + 0x8], r10d
        mov               dword ptr [eax + 0xc], r9d
        mov               dword ptr [eax + 0x10], r8d
        mov               dword ptr [eax + 0x14], edi
        mov               dword ptr [eax + 0x18], edx
        mov               dword ptr [eax + 0x1c], ecx
        ret

asm_test::atomic_memcpy_load_align16::read_volatile_acquire_fence:
        mov               rax, rdi
        mov               rcx, qword ptr [esi + 0x18]
        mov               rdx, qword ptr [esi + 0x10]
        mov               rdi, qword ptr [esi]
        mov               rsi, qword ptr [esi + 0x8]
        mov               qword ptr [eax], rdi
        mov               qword ptr [eax + 0x8], rsi
        mov               qword ptr [eax + 0x10], rdx
        mov               qword ptr [eax + 0x18], rcx
        ret

asm_test::atomic_memcpy_load_align16::acquire:
        mov               rax, rdi
        mov               ecx, dword ptr [esi + 0x1c]
        mov               edx, dword ptr [esi + 0x18]
        mov               edi, dword ptr [esi + 0x14]
        mov               r8d, dword ptr [esi + 0x10]
        mov               r9d, dword ptr [esi + 0xc]
        mov               r10d, dword ptr [esi + 0x8]
        mov               r11d, dword ptr [esi + 0x4]
        mov               esi, dword ptr [esi]
        mov               dword ptr [eax], esi
        mov               dword ptr [eax + 0x4], r11d
        mov               dword ptr [eax + 0x8], r10d
        mov               dword ptr [eax + 0xc], r9d
        mov               dword ptr [eax + 0x10], r8d
        mov               dword ptr [eax + 0x14], edi
        mov               dword ptr [eax + 0x18], edx
        mov               dword ptr [eax + 0x1c], ecx
        ret

asm_test::atomic_memcpy_store_align1::write_volatile_release_fence:
        movups            xmm0, xmmword ptr [esi]
        movups            xmm1, xmmword ptr [esi + 0x10]
        movups            xmmword ptr [edi + 0x10], xmm1
        movups            xmmword ptr [edi], xmm0
        ret

asm_test::atomic_memcpy_store_align1::release:
        lea               edx, [rdi + 0x3]
        and               edx, -0x4
        mov               ecx, edx
        sub               ecx, edi
        jne               0f
        xor               ecx, ecx
        mov               eax, 0x20
        jmp               4f
0:
        mov               eax, edi
        sub               eax, edx
        xor               edx, edx
        mov               r8d, 0x0
        cmp               eax, -0x4
        ja                2f
        xor               r9d, r9d
        xor               r8d, r8d
        nop
1:
        movzx             r10d, byte ptr [esi + r9d]
        mov               byte ptr [edi + r9d], r10b
        movzx             r10d, byte ptr [esi + r9d + 0x1]
        mov               byte ptr [edi + r9d + 0x1], r10b
        movzx             r10d, byte ptr [esi + r9d + 0x2]
        mov               byte ptr [edi + r9d + 0x2], r10b
        add               r8d, 0x4
        movzx             r10d, byte ptr [esi + r9d + 0x3]
        mov               byte ptr [edi + r9d + 0x3], r10b
        mov               r9d, r8d
        jne               1b
2:
        lea               r9d, [rdi + r8]
        add               r8d, esi
        nop               word ptr cs:[rax + rax]
3:
        movzx             r10d, byte ptr [r8d + edx]
        mov               byte ptr [r9d + edx], r10b
        inc               edx
        cmp               ecx, edx
        jne               3b
        add               eax, 0x20
        cmp               eax, 0x4
        jb                5f
        nop               dword ptr [rax]
4:
        mov               edx, dword ptr [esi + ecx]
        mov               dword ptr [edi + ecx], edx
        add               eax, -0x4
        add               ecx, 0x4
        cmp               eax, 0x3
        ja                4b
5:
        test              eax, eax
        je                8f
        lea               r8d, [rdi + rcx]
        lea               r9d, [rsi + rcx]
        xor               edx, edx
        nop               word ptr cs:[rax + rax]
6:
        movzx             r10d, byte ptr [r9d + edx]
        mov               byte ptr [r8d + edx], r10b
        inc               edx
        cmp               eax, edx
        jne               6b
        cmp               eax, 0x4
        jb                8f
        add               edi, ecx
        add               edi, 0x3
        add               ecx, esi
        add               ecx, 0x3
7:
        movzx             esi, byte ptr [ecx + edx - 0x3]
        mov               byte ptr [edi + edx - 0x3], sil
        movzx             esi, byte ptr [ecx + edx - 0x2]
        mov               byte ptr [edi + edx - 0x2], sil
        movzx             esi, byte ptr [ecx + edx - 0x1]
        mov               byte ptr [edi + edx - 0x1], sil
        movzx             esi, byte ptr [ecx + edx]
        mov               byte ptr [edi + edx], sil
        add               edx, 0x4
        cmp               eax, edx
        jne               7b
8:
        ret

asm_test::atomic_memcpy_store_align2::write_volatile_release_fence:
        movups            xmm0, xmmword ptr [esi]
        movups            xmm1, xmmword ptr [esi + 0x10]
        movups            xmmword ptr [edi + 0x10], xmm1
        movups            xmmword ptr [edi], xmm0
        ret

asm_test::atomic_memcpy_store_align2::release:
        lea               edx, [rdi + 0x3]
        and               edx, -0x4
        mov               eax, edx
        sub               eax, edi
        jne               0f
        xor               eax, eax
        mov               ecx, 0x20
        jmp               4f
0:
        mov               ecx, edi
        sub               ecx, edx
        xor               edx, edx
        mov               r8d, 0x0
        cmp               ecx, -0x4
        ja                2f
        xor               r9d, r9d
        xor               r8d, r8d
        nop
1:
        movzx             r10d, byte ptr [esi + r9d]
        mov               byte ptr [edi + r9d], r10b
        movzx             r10d, byte ptr [esi + r9d + 0x1]
        mov               byte ptr [edi + r9d + 0x1], r10b
        movzx             r10d, byte ptr [esi + r9d + 0x2]
        mov               byte ptr [edi + r9d + 0x2], r10b
        add               r8d, 0x4
        movzx             r10d, byte ptr [esi + r9d + 0x3]
        mov               byte ptr [edi + r9d + 0x3], r10b
        mov               r9d, r8d
        jne               1b
2:
        lea               r9d, [rdi + r8]
        add               r8d, esi
        nop               word ptr cs:[rax + rax]
3:
        movzx             r10d, byte ptr [r8d + edx]
        mov               byte ptr [r9d + edx], r10b
        inc               edx
        cmp               eax, edx
        jne               3b
        add               ecx, 0x20
        cmp               ecx, 0x4
        jb                5f
        nop               dword ptr [rax]
4:
        mov               edx, dword ptr [esi + eax]
        mov               dword ptr [edi + eax], edx
        add               ecx, -0x4
        add               eax, 0x4
        cmp               ecx, 0x3
        ja                4b
5:
        test              ecx, ecx
        je                6f
        movzx             edx, byte ptr [esi + eax]
        mov               byte ptr [edi + eax], dl
        cmp               ecx, 0x1
        je                6f
        movzx             edx, byte ptr [esi + eax + 0x1]
        mov               byte ptr [edi + eax + 0x1], dl
        cmp               ecx, 0x2
        je                6f
        movzx             ecx, byte ptr [esi + eax + 0x2]
        mov               byte ptr [edi + eax + 0x2], cl
6:
        ret

asm_test::atomic_memcpy_store_align4::write_volatile_release_fence:
        movups            xmm0, xmmword ptr [esi]
        movups            xmm1, xmmword ptr [esi + 0x10]
        movups            xmmword ptr [edi + 0x10], xmm1
        movups            xmmword ptr [edi], xmm0
        ret

asm_test::atomic_memcpy_store_align4::release:
        mov               eax, dword ptr [esi + 0x1c]
        mov               dword ptr [edi + 0x1c], eax
        mov               eax, dword ptr [esi + 0x18]
        mov               dword ptr [edi + 0x18], eax
        mov               eax, dword ptr [esi + 0x14]
        mov               dword ptr [edi + 0x14], eax
        mov               eax, dword ptr [esi + 0x10]
        mov               dword ptr [edi + 0x10], eax
        mov               eax, dword ptr [esi + 0xc]
        mov               dword ptr [edi + 0xc], eax
        mov               eax, dword ptr [esi + 0x8]
        mov               dword ptr [edi + 0x8], eax
        mov               eax, dword ptr [esi + 0x4]
        mov               dword ptr [edi + 0x4], eax
        mov               eax, dword ptr [esi]
        mov               dword ptr [edi], eax
        ret

asm_test::atomic_memcpy_store_align8::write_volatile_release_fence:
        movups            xmm0, xmmword ptr [esi]
        movups            xmm1, xmmword ptr [esi + 0x10]
        movups            xmmword ptr [edi + 0x10], xmm1
        movups            xmmword ptr [edi], xmm0
        ret

asm_test::atomic_memcpy_store_align8::release:
        mov               eax, dword ptr [esi + 0x1c]
        mov               dword ptr [edi + 0x1c], eax
        mov               eax, dword ptr [esi + 0x18]
        mov               dword ptr [edi + 0x18], eax
        mov               eax, dword ptr [esi + 0x14]
        mov               dword ptr [edi + 0x14], eax
        mov               eax, dword ptr [esi + 0x10]
        mov               dword ptr [edi + 0x10], eax
        mov               eax, dword ptr [esi + 0xc]
        mov               dword ptr [edi + 0xc], eax
        mov               eax, dword ptr [esi + 0x8]
        mov               dword ptr [edi + 0x8], eax
        mov               eax, dword ptr [esi + 0x4]
        mov               dword ptr [edi + 0x4], eax
        mov               eax, dword ptr [esi]
        mov               dword ptr [edi], eax
        ret

asm_test::atomic_memcpy_store_align16::write_volatile_release_fence:
        movaps            xmm0, xmmword ptr [esi]
        movaps            xmm1, xmmword ptr [esi + 0x10]
        movaps            xmmword ptr [edi + 0x10], xmm1
        movaps            xmmword ptr [edi], xmm0
        ret

asm_test::atomic_memcpy_store_align16::release:
        mov               eax, dword ptr [esi + 0x1c]
        mov               dword ptr [edi + 0x1c], eax
        mov               eax, dword ptr [esi + 0x18]
        mov               dword ptr [edi + 0x18], eax
        mov               eax, dword ptr [esi + 0x14]
        mov               dword ptr [edi + 0x14], eax
        mov               eax, dword ptr [esi + 0x10]
        mov               dword ptr [edi + 0x10], eax
        mov               eax, dword ptr [esi + 0xc]
        mov               dword ptr [edi + 0xc], eax
        mov               eax, dword ptr [esi + 0x8]
        mov               dword ptr [edi + 0x8], eax
        mov               eax, dword ptr [esi + 0x4]
        mov               dword ptr [edi + 0x4], eax
        mov               eax, dword ptr [esi]
        mov               dword ptr [edi], eax
        ret
