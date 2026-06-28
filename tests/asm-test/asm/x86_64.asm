asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        mov               rax, rdi
        mov               rcx, qword ptr [rsi]
        mov               rdx, qword ptr [rsi + 0x8]
        mov               rdi, qword ptr [rsi + 0x18]
        mov               r8, qword ptr [rsi + 0x10]
        mov               r9, qword ptr [rsi + 0x28]
        mov               r10, qword ptr [rsi + 0x20]
        mov               r11, qword ptr [rsi + 0x38]
        mov               rsi, qword ptr [rsi + 0x30]
        mov               qword ptr [rax + 0x30], rsi
        mov               qword ptr [rax + 0x38], r11
        mov               qword ptr [rax + 0x20], r10
        mov               qword ptr [rax + 0x28], r9
        mov               qword ptr [rax + 0x10], r8
        mov               qword ptr [rax + 0x18], rdi
        mov               qword ptr [rax], rcx
        mov               qword ptr [rax + 0x8], rdx
        ret

asm_test::atomic_memcpy_load_align1::acquire:
        mov               rax, rdi
        lea               rdx, [rsi + 0x7]
        and               rdx, -0x8
        mov               rcx, rdx
        sub               rcx, rsi
        jne               0f
        xor               ecx, ecx
        mov               edx, 0x40
        jmp               6f
0:
        mov               edi, ecx
        and               edi, 0x3
        mov               r8, rsi
        sub               r8, rdx
        cmp               r8, -0x4
        jbe               1f
        mov               edx, 0x40
        xor               r8d, r8d
        jmp               3f
1:
        mov               edx, ecx
        and               edx, 0x4
        xor               r8d, r8d
        nop               word ptr cs:[rax + rax]
2:
        movzx             r9d, byte ptr [rsi + r8]
        mov               byte ptr [rsp + r8 - 0x40], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x1]
        mov               byte ptr [rsp + r8 - 0x3f], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x2]
        mov               byte ptr [rsp + r8 - 0x3e], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x3]
        mov               byte ptr [rsp + r8 - 0x3d], r9b
        add               r8, 0x4
        cmp               rdx, r8
        jne               2b
        mov               edx, 0x40
        sub               rdx, r8
        test              rdi, rdi
        je                5f
3:
        lea               r9, [rsp + r8]
        add               r9, -0x40
        add               r8, rsi
        xor               r10d, r10d
        nop
4:
        movzx             r11d, byte ptr [r8 + r10]
        mov               byte ptr [r9 + r10], r11b
        inc               r10
        cmp               rdi, r10
        jne               4b
        sub               rdx, r10
5:
        cmp               rdx, 0x8
        jb                7f
        nop               word ptr [rax + rax]
6:
        mov               rdi, qword ptr [rsi + rcx]
        mov               qword ptr [rsp + rcx - 0x40], rdi
        add               rdx, -0x8
        add               rcx, 0x8
        cmp               rdx, 0x7
        ja                6b
7:
        test              rdx, rdx
        je                11f
        mov               r8, rdx
        mov               rdi, rcx
        and               r8, 0x3
        je                9f
        mov               rdi, rcx
        nop               dword ptr [rax + rax]
8:
        movzx             r9d, byte ptr [rsi + rdi]
        mov               byte ptr [rsp + rdi - 0x40], r9b
        inc               rdi
        dec               r8
        jne               8b
9:
        cmp               rdx, 0x4
        jb                11f
        add               rdx, rcx
        nop               dword ptr [rax + rax]
10:
        movzx             ecx, byte ptr [rsi + rdi]
        mov               byte ptr [rsp + rdi - 0x40], cl
        movzx             ecx, byte ptr [rsi + rdi + 0x1]
        mov               byte ptr [rsp + rdi - 0x3f], cl
        movzx             ecx, byte ptr [rsi + rdi + 0x2]
        mov               byte ptr [rsp + rdi - 0x3e], cl
        movzx             ecx, byte ptr [rsi + rdi + 0x3]
        mov               byte ptr [rsp + rdi - 0x3d], cl
        add               rdi, 0x4
        cmp               rdx, rdi
        jne               10b
11:
        movups            xmm0, xmmword ptr [rsp - 0x40]
        movups            xmm1, xmmword ptr [rsp - 0x30]
        movups            xmm2, xmmword ptr [rsp - 0x20]
        movups            xmm3, xmmword ptr [rsp - 0x10]
        movups            xmmword ptr [rax + 0x30], xmm3
        movups            xmmword ptr [rax + 0x20], xmm2
        movups            xmmword ptr [rax + 0x10], xmm1
        movups            xmmword ptr [rax], xmm0
        ret

asm_test::atomic_memcpy_load_align2::read_volatile_acquire_fence:
        mov               rax, rdi
        mov               rcx, qword ptr [rsi]
        mov               rdx, qword ptr [rsi + 0x8]
        mov               rdi, qword ptr [rsi + 0x18]
        mov               r8, qword ptr [rsi + 0x10]
        mov               r9, qword ptr [rsi + 0x28]
        mov               r10, qword ptr [rsi + 0x20]
        mov               r11, qword ptr [rsi + 0x38]
        mov               rsi, qword ptr [rsi + 0x30]
        mov               qword ptr [rax + 0x30], rsi
        mov               qword ptr [rax + 0x38], r11
        mov               qword ptr [rax + 0x20], r10
        mov               qword ptr [rax + 0x28], r9
        mov               qword ptr [rax + 0x10], r8
        mov               qword ptr [rax + 0x18], rdi
        mov               qword ptr [rax], rcx
        mov               qword ptr [rax + 0x8], rdx
        ret

asm_test::atomic_memcpy_load_align2::acquire:
        mov               rax, rdi
        lea               rdx, [rsi + 0x7]
        and               rdx, -0x8
        mov               rcx, rdx
        sub               rcx, rsi
        jne               0f
        xor               ecx, ecx
        mov               edx, 0x40
        jmp               6f
0:
        mov               edi, ecx
        and               edi, 0x3
        mov               r8, rsi
        sub               r8, rdx
        cmp               r8, -0x4
        jbe               1f
        mov               edx, 0x40
        xor               r8d, r8d
        jmp               3f
1:
        mov               edx, ecx
        and               edx, 0x4
        xor               r8d, r8d
        nop               word ptr cs:[rax + rax]
2:
        movzx             r9d, byte ptr [rsi + r8]
        mov               byte ptr [rsp + r8 - 0x40], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x1]
        mov               byte ptr [rsp + r8 - 0x3f], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x2]
        mov               byte ptr [rsp + r8 - 0x3e], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x3]
        mov               byte ptr [rsp + r8 - 0x3d], r9b
        add               r8, 0x4
        cmp               rdx, r8
        jne               2b
        mov               edx, 0x40
        sub               rdx, r8
        test              rdi, rdi
        je                5f
3:
        lea               r9, [rsp + r8]
        add               r9, -0x40
        add               r8, rsi
        xor               r10d, r10d
        nop
4:
        movzx             r11d, byte ptr [r8 + r10]
        mov               byte ptr [r9 + r10], r11b
        inc               r10
        cmp               rdi, r10
        jne               4b
        sub               rdx, r10
5:
        cmp               rdx, 0x8
        jb                7f
        nop               word ptr [rax + rax]
6:
        mov               rdi, qword ptr [rsi + rcx]
        mov               qword ptr [rsp + rcx - 0x40], rdi
        add               rdx, -0x8
        add               rcx, 0x8
        cmp               rdx, 0x7
        ja                6b
7:
        test              rdx, rdx
        je                8f
        movzx             edi, byte ptr [rsi + rcx]
        mov               byte ptr [rsp + rcx - 0x40], dil
        cmp               rdx, 0x1
        je                8f
        movzx             edi, byte ptr [rsi + rcx + 0x1]
        mov               byte ptr [rsp + rcx - 0x3f], dil
        cmp               rdx, 0x2
        je                8f
        movzx             edi, byte ptr [rsi + rcx + 0x2]
        mov               byte ptr [rsp + rcx - 0x3e], dil
        cmp               rdx, 0x3
        je                8f
        movzx             edi, byte ptr [rsi + rcx + 0x3]
        mov               byte ptr [rsp + rcx - 0x3d], dil
        cmp               rdx, 0x4
        je                8f
        movzx             edi, byte ptr [rsi + rcx + 0x4]
        mov               byte ptr [rsp + rcx - 0x3c], dil
        cmp               rdx, 0x5
        je                8f
        movzx             edi, byte ptr [rsi + rcx + 0x5]
        mov               byte ptr [rsp + rcx - 0x3b], dil
        cmp               rdx, 0x6
        je                8f
        movzx             edx, byte ptr [rsi + rcx + 0x6]
        mov               byte ptr [rsp + rcx - 0x3a], dl
8:
        movups            xmm0, xmmword ptr [rsp - 0x40]
        movups            xmm1, xmmword ptr [rsp - 0x30]
        movups            xmm2, xmmword ptr [rsp - 0x20]
        movups            xmm3, xmmword ptr [rsp - 0x10]
        movups            xmmword ptr [rax + 0x30], xmm3
        movups            xmmword ptr [rax + 0x20], xmm2
        movups            xmmword ptr [rax + 0x10], xmm1
        movups            xmmword ptr [rax], xmm0
        ret

asm_test::atomic_memcpy_load_align4::read_volatile_acquire_fence:
        mov               rax, rdi
        mov               rcx, qword ptr [rsi]
        mov               rdx, qword ptr [rsi + 0x8]
        mov               rdi, qword ptr [rsi + 0x18]
        mov               r8, qword ptr [rsi + 0x10]
        mov               r9, qword ptr [rsi + 0x28]
        mov               r10, qword ptr [rsi + 0x20]
        mov               r11, qword ptr [rsi + 0x38]
        mov               rsi, qword ptr [rsi + 0x30]
        mov               qword ptr [rax + 0x30], rsi
        mov               qword ptr [rax + 0x38], r11
        mov               qword ptr [rax + 0x20], r10
        mov               qword ptr [rax + 0x28], r9
        mov               qword ptr [rax + 0x10], r8
        mov               qword ptr [rax + 0x18], rdi
        mov               qword ptr [rax], rcx
        mov               qword ptr [rax + 0x8], rdx
        ret

asm_test::atomic_memcpy_load_align4::acquire:
        mov               rax, rdi
        lea               rdx, [rsi + 0x7]
        and               rdx, -0x8
        mov               rcx, rdx
        sub               rcx, rsi
        jne               0f
        xor               ecx, ecx
        mov               edx, 0x40
        jmp               6f
0:
        mov               edi, ecx
        and               edi, 0x3
        mov               r8, rsi
        sub               r8, rdx
        cmp               r8, -0x4
        jbe               1f
        mov               edx, 0x40
        xor               r8d, r8d
        jmp               3f
1:
        mov               edx, ecx
        and               edx, 0x4
        xor               r8d, r8d
        nop               word ptr cs:[rax + rax]
2:
        movzx             r9d, byte ptr [rsi + r8]
        mov               byte ptr [rsp + r8 - 0x40], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x1]
        mov               byte ptr [rsp + r8 - 0x3f], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x2]
        mov               byte ptr [rsp + r8 - 0x3e], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x3]
        mov               byte ptr [rsp + r8 - 0x3d], r9b
        add               r8, 0x4
        cmp               rdx, r8
        jne               2b
        mov               edx, 0x40
        sub               rdx, r8
        test              rdi, rdi
        je                5f
3:
        lea               r9, [rsp + r8]
        add               r9, -0x40
        add               r8, rsi
        xor               r10d, r10d
        nop
4:
        movzx             r11d, byte ptr [r8 + r10]
        mov               byte ptr [r9 + r10], r11b
        inc               r10
        cmp               rdi, r10
        jne               4b
        sub               rdx, r10
5:
        cmp               rdx, 0x8
        jb                7f
        nop               word ptr [rax + rax]
6:
        mov               rdi, qword ptr [rsi + rcx]
        mov               qword ptr [rsp + rcx - 0x40], rdi
        add               rdx, -0x8
        add               rcx, 0x8
        cmp               rdx, 0x7
        ja                6b
7:
        test              rdx, rdx
        je                8f
        movzx             edi, byte ptr [rsi + rcx]
        mov               byte ptr [rsp + rcx - 0x40], dil
        cmp               rdx, 0x1
        je                8f
        movzx             edi, byte ptr [rsi + rcx + 0x1]
        mov               byte ptr [rsp + rcx - 0x3f], dil
        cmp               rdx, 0x2
        je                8f
        movzx             edi, byte ptr [rsi + rcx + 0x2]
        mov               byte ptr [rsp + rcx - 0x3e], dil
        cmp               rdx, 0x3
        je                8f
        movzx             edi, byte ptr [rsi + rcx + 0x3]
        mov               byte ptr [rsp + rcx - 0x3d], dil
        cmp               rdx, 0x4
        je                8f
        movzx             edi, byte ptr [rsi + rcx + 0x4]
        mov               byte ptr [rsp + rcx - 0x3c], dil
        cmp               rdx, 0x5
        je                8f
        movzx             edi, byte ptr [rsi + rcx + 0x5]
        mov               byte ptr [rsp + rcx - 0x3b], dil
        cmp               rdx, 0x6
        je                8f
        movzx             edx, byte ptr [rsi + rcx + 0x6]
        mov               byte ptr [rsp + rcx - 0x3a], dl
8:
        movups            xmm0, xmmword ptr [rsp - 0x40]
        movups            xmm1, xmmword ptr [rsp - 0x30]
        movups            xmm2, xmmword ptr [rsp - 0x20]
        movups            xmm3, xmmword ptr [rsp - 0x10]
        movups            xmmword ptr [rax + 0x30], xmm3
        movups            xmmword ptr [rax + 0x20], xmm2
        movups            xmmword ptr [rax + 0x10], xmm1
        movups            xmmword ptr [rax], xmm0
        ret

asm_test::atomic_memcpy_load_align8::read_volatile_acquire_fence:
        mov               rax, rdi
        mov               rcx, qword ptr [rsi]
        mov               rdx, qword ptr [rsi + 0x8]
        mov               rdi, qword ptr [rsi + 0x18]
        mov               r8, qword ptr [rsi + 0x10]
        mov               r9, qword ptr [rsi + 0x28]
        mov               r10, qword ptr [rsi + 0x20]
        mov               r11, qword ptr [rsi + 0x38]
        mov               rsi, qword ptr [rsi + 0x30]
        mov               qword ptr [rax + 0x30], rsi
        mov               qword ptr [rax + 0x38], r11
        mov               qword ptr [rax + 0x20], r10
        mov               qword ptr [rax + 0x28], r9
        mov               qword ptr [rax + 0x10], r8
        mov               qword ptr [rax + 0x18], rdi
        mov               qword ptr [rax], rcx
        mov               qword ptr [rax + 0x8], rdx
        ret

asm_test::atomic_memcpy_load_align8::acquire:
        mov               rax, rdi
        mov               rcx, qword ptr [rsi + 0x38]
        mov               rdx, qword ptr [rsi + 0x30]
        mov               rdi, qword ptr [rsi + 0x28]
        mov               r8, qword ptr [rsi + 0x20]
        mov               r9, qword ptr [rsi + 0x18]
        mov               r10, qword ptr [rsi + 0x10]
        mov               r11, qword ptr [rsi + 0x8]
        mov               rsi, qword ptr [rsi]
        mov               qword ptr [rax], rsi
        mov               qword ptr [rax + 0x8], r11
        mov               qword ptr [rax + 0x10], r10
        mov               qword ptr [rax + 0x18], r9
        mov               qword ptr [rax + 0x20], r8
        mov               qword ptr [rax + 0x28], rdi
        mov               qword ptr [rax + 0x30], rdx
        mov               qword ptr [rax + 0x38], rcx
        ret

asm_test::atomic_memcpy_load_align16::read_volatile_acquire_fence:
        mov               rax, rdi
        mov               rcx, qword ptr [rsi]
        mov               rdx, qword ptr [rsi + 0x8]
        mov               rdi, qword ptr [rsi + 0x18]
        mov               r8, qword ptr [rsi + 0x10]
        mov               r9, qword ptr [rsi + 0x28]
        mov               r10, qword ptr [rsi + 0x20]
        mov               r11, qword ptr [rsi + 0x38]
        mov               rsi, qword ptr [rsi + 0x30]
        mov               qword ptr [rax + 0x30], rsi
        mov               qword ptr [rax + 0x38], r11
        mov               qword ptr [rax + 0x20], r10
        mov               qword ptr [rax + 0x28], r9
        mov               qword ptr [rax + 0x10], r8
        mov               qword ptr [rax + 0x18], rdi
        mov               qword ptr [rax], rcx
        mov               qword ptr [rax + 0x8], rdx
        ret

asm_test::atomic_memcpy_load_align16::acquire:
        mov               rax, rdi
        mov               rcx, qword ptr [rsi + 0x38]
        mov               rdx, qword ptr [rsi + 0x30]
        mov               rdi, qword ptr [rsi + 0x28]
        mov               r8, qword ptr [rsi + 0x20]
        mov               r9, qword ptr [rsi + 0x18]
        mov               r10, qword ptr [rsi + 0x10]
        mov               r11, qword ptr [rsi + 0x8]
        mov               rsi, qword ptr [rsi]
        mov               qword ptr [rax], rsi
        mov               qword ptr [rax + 0x8], r11
        mov               qword ptr [rax + 0x10], r10
        mov               qword ptr [rax + 0x18], r9
        mov               qword ptr [rax + 0x20], r8
        mov               qword ptr [rax + 0x28], rdi
        mov               qword ptr [rax + 0x30], rdx
        mov               qword ptr [rax + 0x38], rcx
        ret

asm_test::atomic_memcpy_store_align1::write_volatile_release_fence:
        movups            xmm0, xmmword ptr [rsi]
        movups            xmm1, xmmword ptr [rsi + 0x10]
        movups            xmm2, xmmword ptr [rsi + 0x20]
        movups            xmm3, xmmword ptr [rsi + 0x30]
        movups            xmmword ptr [rdi + 0x30], xmm3
        movups            xmmword ptr [rdi + 0x20], xmm2
        movups            xmmword ptr [rdi + 0x10], xmm1
        movups            xmmword ptr [rdi], xmm0
        ret

asm_test::atomic_memcpy_store_align1::release:
        lea               rcx, [rdi + 0x7]
        and               rcx, -0x8
        mov               rax, rcx
        sub               rax, rdi
        jne               0f
        xor               eax, eax
        mov               ecx, 0x40
        jmp               6f
0:
        mov               edx, eax
        and               edx, 0x3
        mov               r8, rdi
        sub               r8, rcx
        cmp               r8, -0x4
        jbe               1f
        mov               ecx, 0x40
        xor               r8d, r8d
        jmp               3f
1:
        mov               ecx, eax
        and               ecx, 0x4
        xor               r8d, r8d
        nop
2:
        movzx             r9d, byte ptr [rsi + r8]
        mov               byte ptr [rdi + r8], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x1]
        mov               byte ptr [rdi + r8 + 0x1], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x2]
        mov               byte ptr [rdi + r8 + 0x2], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x3]
        mov               byte ptr [rdi + r8 + 0x3], r9b
        add               r8, 0x4
        cmp               rcx, r8
        jne               2b
        mov               ecx, 0x40
        sub               rcx, r8
        test              rdx, rdx
        je                5f
3:
        lea               r9, [rdi + r8]
        add               r8, rsi
        xor               r10d, r10d
        nop               word ptr [rax + rax]
4:
        movzx             r11d, byte ptr [r8 + r10]
        mov               byte ptr [r9 + r10], r11b
        inc               r10
        cmp               rdx, r10
        jne               4b
        sub               rcx, r10
5:
        cmp               rcx, 0x8
        jb                7f
        nop               word ptr [rax + rax]
6:
        mov               rdx, qword ptr [rsi + rax]
        mov               qword ptr [rdi + rax], rdx
        add               rcx, -0x8
        add               rax, 0x8
        cmp               rcx, 0x7
        ja                6b
7:
        test              rcx, rcx
        je                11f
        mov               r8, rcx
        mov               rdx, rax
        and               r8, 0x3
        je                9f
        mov               rdx, rax
        nop               word ptr [rax + rax]
8:
        movzx             r9d, byte ptr [rsi + rdx]
        mov               byte ptr [rdi + rdx], r9b
        inc               rdx
        dec               r8
        jne               8b
9:
        cmp               rcx, 0x4
        jb                11f
        add               rcx, rax
        nop               word ptr [rax + rax]
10:
        movzx             eax, byte ptr [rsi + rdx]
        mov               byte ptr [rdi + rdx], al
        movzx             eax, byte ptr [rsi + rdx + 0x1]
        mov               byte ptr [rdi + rdx + 0x1], al
        movzx             eax, byte ptr [rsi + rdx + 0x2]
        mov               byte ptr [rdi + rdx + 0x2], al
        movzx             eax, byte ptr [rsi + rdx + 0x3]
        mov               byte ptr [rdi + rdx + 0x3], al
        add               rdx, 0x4
        cmp               rcx, rdx
        jne               10b
11:
        ret

asm_test::atomic_memcpy_store_align2::write_volatile_release_fence:
        movups            xmm0, xmmword ptr [rsi]
        movups            xmm1, xmmword ptr [rsi + 0x10]
        movups            xmm2, xmmword ptr [rsi + 0x20]
        movups            xmm3, xmmword ptr [rsi + 0x30]
        movups            xmmword ptr [rdi + 0x30], xmm3
        movups            xmmword ptr [rdi + 0x20], xmm2
        movups            xmmword ptr [rdi + 0x10], xmm1
        movups            xmmword ptr [rdi], xmm0
        ret

asm_test::atomic_memcpy_store_align2::release:
        lea               rcx, [rdi + 0x7]
        and               rcx, -0x8
        mov               rax, rcx
        sub               rax, rdi
        jne               0f
        xor               eax, eax
        mov               ecx, 0x40
        jmp               6f
0:
        mov               edx, eax
        and               edx, 0x3
        mov               r8, rdi
        sub               r8, rcx
        cmp               r8, -0x4
        jbe               1f
        mov               ecx, 0x40
        xor               r8d, r8d
        jmp               3f
1:
        mov               ecx, eax
        and               ecx, 0x4
        xor               r8d, r8d
        nop
2:
        movzx             r9d, byte ptr [rsi + r8]
        mov               byte ptr [rdi + r8], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x1]
        mov               byte ptr [rdi + r8 + 0x1], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x2]
        mov               byte ptr [rdi + r8 + 0x2], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x3]
        mov               byte ptr [rdi + r8 + 0x3], r9b
        add               r8, 0x4
        cmp               rcx, r8
        jne               2b
        mov               ecx, 0x40
        sub               rcx, r8
        test              rdx, rdx
        je                5f
3:
        lea               r9, [rdi + r8]
        add               r8, rsi
        xor               r10d, r10d
        nop               word ptr [rax + rax]
4:
        movzx             r11d, byte ptr [r8 + r10]
        mov               byte ptr [r9 + r10], r11b
        inc               r10
        cmp               rdx, r10
        jne               4b
        sub               rcx, r10
5:
        cmp               rcx, 0x8
        jb                7f
        nop               word ptr [rax + rax]
6:
        mov               rdx, qword ptr [rsi + rax]
        mov               qword ptr [rdi + rax], rdx
        add               rcx, -0x8
        add               rax, 0x8
        cmp               rcx, 0x7
        ja                6b
7:
        test              rcx, rcx
        je                8f
        movzx             edx, byte ptr [rsi + rax]
        mov               byte ptr [rdi + rax], dl
        cmp               rcx, 0x1
        je                8f
        movzx             edx, byte ptr [rsi + rax + 0x1]
        mov               byte ptr [rdi + rax + 0x1], dl
        cmp               rcx, 0x2
        je                8f
        movzx             edx, byte ptr [rsi + rax + 0x2]
        mov               byte ptr [rdi + rax + 0x2], dl
        cmp               rcx, 0x3
        je                8f
        movzx             edx, byte ptr [rsi + rax + 0x3]
        mov               byte ptr [rdi + rax + 0x3], dl
        cmp               rcx, 0x4
        je                8f
        movzx             edx, byte ptr [rsi + rax + 0x4]
        mov               byte ptr [rdi + rax + 0x4], dl
        cmp               rcx, 0x5
        je                8f
        movzx             edx, byte ptr [rsi + rax + 0x5]
        mov               byte ptr [rdi + rax + 0x5], dl
        cmp               rcx, 0x6
        je                8f
        movzx             ecx, byte ptr [rsi + rax + 0x6]
        mov               byte ptr [rdi + rax + 0x6], cl
8:
        ret

asm_test::atomic_memcpy_store_align4::write_volatile_release_fence:
        movups            xmm0, xmmword ptr [rsi]
        movups            xmm1, xmmword ptr [rsi + 0x10]
        movups            xmm2, xmmword ptr [rsi + 0x20]
        movups            xmm3, xmmword ptr [rsi + 0x30]
        movups            xmmword ptr [rdi + 0x30], xmm3
        movups            xmmword ptr [rdi + 0x20], xmm2
        movups            xmmword ptr [rdi + 0x10], xmm1
        movups            xmmword ptr [rdi], xmm0
        ret

asm_test::atomic_memcpy_store_align4::release:
        lea               rcx, [rdi + 0x7]
        and               rcx, -0x8
        mov               rax, rcx
        sub               rax, rdi
        jne               0f
        xor               eax, eax
        mov               ecx, 0x40
        jmp               6f
0:
        mov               edx, eax
        and               edx, 0x3
        mov               r8, rdi
        sub               r8, rcx
        cmp               r8, -0x4
        jbe               1f
        mov               ecx, 0x40
        xor               r8d, r8d
        jmp               3f
1:
        mov               ecx, eax
        and               ecx, 0x4
        xor               r8d, r8d
        nop
2:
        movzx             r9d, byte ptr [rsi + r8]
        mov               byte ptr [rdi + r8], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x1]
        mov               byte ptr [rdi + r8 + 0x1], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x2]
        mov               byte ptr [rdi + r8 + 0x2], r9b
        movzx             r9d, byte ptr [rsi + r8 + 0x3]
        mov               byte ptr [rdi + r8 + 0x3], r9b
        add               r8, 0x4
        cmp               rcx, r8
        jne               2b
        mov               ecx, 0x40
        sub               rcx, r8
        test              rdx, rdx
        je                5f
3:
        lea               r9, [rdi + r8]
        add               r8, rsi
        xor               r10d, r10d
        nop               word ptr [rax + rax]
4:
        movzx             r11d, byte ptr [r8 + r10]
        mov               byte ptr [r9 + r10], r11b
        inc               r10
        cmp               rdx, r10
        jne               4b
        sub               rcx, r10
5:
        cmp               rcx, 0x8
        jb                7f
        nop               word ptr [rax + rax]
6:
        mov               rdx, qword ptr [rsi + rax]
        mov               qword ptr [rdi + rax], rdx
        add               rcx, -0x8
        add               rax, 0x8
        cmp               rcx, 0x7
        ja                6b
7:
        test              rcx, rcx
        je                8f
        movzx             edx, byte ptr [rsi + rax]
        mov               byte ptr [rdi + rax], dl
        cmp               rcx, 0x1
        je                8f
        movzx             edx, byte ptr [rsi + rax + 0x1]
        mov               byte ptr [rdi + rax + 0x1], dl
        cmp               rcx, 0x2
        je                8f
        movzx             edx, byte ptr [rsi + rax + 0x2]
        mov               byte ptr [rdi + rax + 0x2], dl
        cmp               rcx, 0x3
        je                8f
        movzx             edx, byte ptr [rsi + rax + 0x3]
        mov               byte ptr [rdi + rax + 0x3], dl
        cmp               rcx, 0x4
        je                8f
        movzx             edx, byte ptr [rsi + rax + 0x4]
        mov               byte ptr [rdi + rax + 0x4], dl
        cmp               rcx, 0x5
        je                8f
        movzx             edx, byte ptr [rsi + rax + 0x5]
        mov               byte ptr [rdi + rax + 0x5], dl
        cmp               rcx, 0x6
        je                8f
        movzx             ecx, byte ptr [rsi + rax + 0x6]
        mov               byte ptr [rdi + rax + 0x6], cl
8:
        ret

asm_test::atomic_memcpy_store_align8::write_volatile_release_fence:
        movups            xmm0, xmmword ptr [rsi]
        movups            xmm1, xmmword ptr [rsi + 0x10]
        movups            xmm2, xmmword ptr [rsi + 0x20]
        movups            xmm3, xmmword ptr [rsi + 0x30]
        movups            xmmword ptr [rdi + 0x30], xmm3
        movups            xmmword ptr [rdi + 0x20], xmm2
        movups            xmmword ptr [rdi + 0x10], xmm1
        movups            xmmword ptr [rdi], xmm0
        ret

asm_test::atomic_memcpy_store_align8::release:
        mov               rax, qword ptr [rsi + 0x38]
        mov               qword ptr [rdi + 0x38], rax
        mov               rax, qword ptr [rsi + 0x30]
        mov               qword ptr [rdi + 0x30], rax
        mov               rax, qword ptr [rsi + 0x28]
        mov               qword ptr [rdi + 0x28], rax
        mov               rax, qword ptr [rsi + 0x20]
        mov               qword ptr [rdi + 0x20], rax
        mov               rax, qword ptr [rsi + 0x18]
        mov               qword ptr [rdi + 0x18], rax
        mov               rax, qword ptr [rsi + 0x10]
        mov               qword ptr [rdi + 0x10], rax
        mov               rax, qword ptr [rsi + 0x8]
        mov               qword ptr [rdi + 0x8], rax
        mov               rax, qword ptr [rsi]
        mov               qword ptr [rdi], rax
        ret

asm_test::atomic_memcpy_store_align16::write_volatile_release_fence:
        movaps            xmm0, xmmword ptr [rsi]
        movaps            xmm1, xmmword ptr [rsi + 0x10]
        movaps            xmm2, xmmword ptr [rsi + 0x20]
        movaps            xmm3, xmmword ptr [rsi + 0x30]
        movaps            xmmword ptr [rdi + 0x30], xmm3
        movaps            xmmword ptr [rdi + 0x20], xmm2
        movaps            xmmword ptr [rdi + 0x10], xmm1
        movaps            xmmword ptr [rdi], xmm0
        ret

asm_test::atomic_memcpy_store_align16::release:
        mov               rax, qword ptr [rsi + 0x38]
        mov               qword ptr [rdi + 0x38], rax
        mov               rax, qword ptr [rsi + 0x30]
        mov               qword ptr [rdi + 0x30], rax
        mov               rax, qword ptr [rsi + 0x28]
        mov               qword ptr [rdi + 0x28], rax
        mov               rax, qword ptr [rsi + 0x20]
        mov               qword ptr [rdi + 0x20], rax
        mov               rax, qword ptr [rsi + 0x18]
        mov               qword ptr [rdi + 0x18], rax
        mov               rax, qword ptr [rsi + 0x10]
        mov               qword ptr [rdi + 0x10], rax
        mov               rax, qword ptr [rsi + 0x8]
        mov               qword ptr [rdi + 0x8], rax
        mov               rax, qword ptr [rsi]
        mov               qword ptr [rdi], rax
        ret
