asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        push              ebp
        push              ebx
        push              edi
        push              esi
        sub               esp, 0x8
        mov               eax, dword ptr [esp + 0x20]
        mov               ecx, dword ptr [eax]
        mov               dword ptr [esp + 0x4], ecx
        mov               ecx, dword ptr [eax + 0x4]
        mov               dword ptr [esp], ecx
        mov               esi, dword ptr [eax + 0xc]
        mov               edi, dword ptr [eax + 0x8]
        mov               ebx, dword ptr [eax + 0x14]
        mov               ebp, dword ptr [eax + 0x10]
        mov               edx, dword ptr [eax + 0x1c]
        mov               ecx, dword ptr [eax + 0x18]
        mov               eax, dword ptr [esp + 0x1c]
        mov               dword ptr [eax + 0x1c], edx
        mov               dword ptr [eax + 0xc], esi
        mov               esi, dword ptr [esp + 0x4]
        mov               edx, dword ptr [esp]
        mov               dword ptr [eax + 0x18], ecx
        mov               dword ptr [eax + 0x10], ebp
        mov               dword ptr [eax + 0x14], ebx
        mov               dword ptr [eax + 0x8], edi
        mov               dword ptr [eax], esi
        mov               dword ptr [eax + 0x4], edx
        add               esp, 0x8
        pop               esi
        pop               edi
        pop               ebx
        pop               ebp
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
        sub               esp, 0x8
        mov               eax, dword ptr [esp + 0x20]
        mov               ecx, dword ptr [eax]
        mov               dword ptr [esp + 0x4], ecx
        mov               ecx, dword ptr [eax + 0x4]
        mov               dword ptr [esp], ecx
        mov               esi, dword ptr [eax + 0xc]
        mov               edi, dword ptr [eax + 0x8]
        mov               ebx, dword ptr [eax + 0x14]
        mov               ebp, dword ptr [eax + 0x10]
        mov               edx, dword ptr [eax + 0x1c]
        mov               ecx, dword ptr [eax + 0x18]
        mov               eax, dword ptr [esp + 0x1c]
        mov               dword ptr [eax + 0x1c], edx
        mov               dword ptr [eax + 0xc], esi
        mov               esi, dword ptr [esp + 0x4]
        mov               edx, dword ptr [esp]
        mov               dword ptr [eax + 0x18], ecx
        mov               dword ptr [eax + 0x10], ebp
        mov               dword ptr [eax + 0x14], ebx
        mov               dword ptr [eax + 0x8], edi
        mov               dword ptr [eax], esi
        mov               dword ptr [eax + 0x4], edx
        add               esp, 0x8
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
        mov               ecx, dword ptr [eax]
        mov               dword ptr [esp + 0x4], ecx
        mov               ecx, dword ptr [eax + 0x4]
        mov               dword ptr [esp], ecx
        mov               esi, dword ptr [eax + 0xc]
        mov               edi, dword ptr [eax + 0x8]
        mov               ebx, dword ptr [eax + 0x14]
        mov               ebp, dword ptr [eax + 0x10]
        mov               edx, dword ptr [eax + 0x1c]
        mov               ecx, dword ptr [eax + 0x18]
        mov               eax, dword ptr [esp + 0x1c]
        mov               dword ptr [eax + 0x1c], edx
        mov               dword ptr [eax + 0xc], esi
        mov               esi, dword ptr [esp + 0x4]
        mov               edx, dword ptr [esp]
        mov               dword ptr [eax + 0x18], ecx
        mov               dword ptr [eax + 0x10], ebp
        mov               dword ptr [eax + 0x14], ebx
        mov               dword ptr [eax + 0x8], edi
        mov               dword ptr [eax], esi
        mov               dword ptr [eax + 0x4], edx
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
        mov               ecx, dword ptr [eax]
        mov               dword ptr [esp + 0x4], ecx
        mov               ecx, dword ptr [eax + 0x4]
        mov               dword ptr [esp], ecx
        mov               esi, dword ptr [eax + 0xc]
        mov               edi, dword ptr [eax + 0x8]
        mov               ebx, dword ptr [eax + 0x14]
        mov               ebp, dword ptr [eax + 0x10]
        mov               edx, dword ptr [eax + 0x1c]
        mov               ecx, dword ptr [eax + 0x18]
        mov               eax, dword ptr [esp + 0x1c]
        mov               dword ptr [eax + 0x1c], edx
        mov               dword ptr [eax + 0xc], esi
        mov               esi, dword ptr [esp + 0x4]
        mov               edx, dword ptr [esp]
        mov               dword ptr [eax + 0x18], ecx
        mov               dword ptr [eax + 0x10], ebp
        mov               dword ptr [eax + 0x14], ebx
        mov               dword ptr [eax + 0x8], edi
        mov               dword ptr [eax], esi
        mov               dword ptr [eax + 0x4], edx
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
        mov               ecx, dword ptr [eax]
        mov               dword ptr [esp + 0x4], ecx
        mov               ecx, dword ptr [eax + 0x4]
        mov               dword ptr [esp], ecx
        mov               esi, dword ptr [eax + 0xc]
        mov               edi, dword ptr [eax + 0x8]
        mov               ebx, dword ptr [eax + 0x14]
        mov               ebp, dword ptr [eax + 0x10]
        mov               edx, dword ptr [eax + 0x1c]
        mov               ecx, dword ptr [eax + 0x18]
        mov               eax, dword ptr [esp + 0x1c]
        mov               dword ptr [eax + 0x1c], edx
        mov               dword ptr [eax + 0xc], esi
        mov               esi, dword ptr [esp + 0x4]
        mov               edx, dword ptr [esp]
        mov               dword ptr [eax + 0x18], ecx
        mov               dword ptr [eax + 0x10], ebp
        mov               dword ptr [eax + 0x14], ebx
        mov               dword ptr [eax + 0x8], edi
        mov               dword ptr [eax], esi
        mov               dword ptr [eax + 0x4], edx
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
