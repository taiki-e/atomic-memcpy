asm_test::atomic_memcpy_load_align1::read_volatile_acquire_fence:
        push              rbp
        push              r15
        push              r14
        push              r13
        push              r12
        push              rbx
        mov               rax, rdi
        movzx             ecx, byte ptr [rsi + 0x3f]
        mov               byte ptr [rsp - 0x1], cl
        movzx             ecx, byte ptr [rsi + 0x3e]
        mov               byte ptr [rsp - 0x2], cl
        movzx             ecx, byte ptr [rsi + 0x3d]
        mov               byte ptr [rsp - 0x3], cl
        movzx             ecx, byte ptr [rsi + 0x3c]
        mov               byte ptr [rsp - 0x4], cl
        movzx             ecx, byte ptr [rsi + 0x3b]
        mov               byte ptr [rsp - 0x5], cl
        movzx             ecx, byte ptr [rsi + 0x3a]
        mov               byte ptr [rsp - 0x6], cl
        movzx             ecx, byte ptr [rsi + 0x39]
        mov               byte ptr [rsp - 0x7], cl
        movzx             ecx, byte ptr [rsi + 0x38]
        mov               byte ptr [rsp - 0x8], cl
        movzx             ecx, byte ptr [rsi + 0x37]
        mov               byte ptr [rsp - 0x9], cl
        movzx             ecx, byte ptr [rsi + 0x36]
        mov               byte ptr [rsp - 0xa], cl
        movzx             ecx, byte ptr [rsi + 0x35]
        mov               byte ptr [rsp - 0xb], cl
        movzx             ecx, byte ptr [rsi + 0x34]
        mov               byte ptr [rsp - 0xc], cl
        movzx             ecx, byte ptr [rsi + 0x33]
        mov               byte ptr [rsp - 0xd], cl
        movzx             ecx, byte ptr [rsi + 0x32]
        mov               byte ptr [rsp - 0xe], cl
        movzx             ecx, byte ptr [rsi + 0x31]
        mov               byte ptr [rsp - 0xf], cl
        movzx             ecx, byte ptr [rsi + 0x30]
        mov               byte ptr [rsp - 0x10], cl
        movzx             ecx, byte ptr [rsi + 0x2f]
        mov               byte ptr [rsp - 0x11], cl
        movzx             ecx, byte ptr [rsi + 0x2e]
        mov               byte ptr [rsp - 0x12], cl
        movzx             ecx, byte ptr [rsi + 0x2d]
        mov               byte ptr [rsp - 0x13], cl
        movzx             ecx, byte ptr [rsi + 0x2c]
        mov               byte ptr [rsp - 0x14], cl
        movzx             ecx, byte ptr [rsi + 0x2b]
        mov               byte ptr [rsp - 0x15], cl
        movzx             ecx, byte ptr [rsi + 0x2a]
        mov               byte ptr [rsp - 0x16], cl
        movzx             ecx, byte ptr [rsi + 0x29]
        mov               byte ptr [rsp - 0x17], cl
        movzx             ecx, byte ptr [rsi + 0x28]
        mov               byte ptr [rsp - 0x18], cl
        movzx             ecx, byte ptr [rsi + 0x27]
        mov               byte ptr [rsp - 0x19], cl
        movzx             ecx, byte ptr [rsi + 0x26]
        mov               byte ptr [rsp - 0x1a], cl
        movzx             ecx, byte ptr [rsi + 0x25]
        mov               byte ptr [rsp - 0x1b], cl
        movzx             ecx, byte ptr [rsi + 0x24]
        mov               byte ptr [rsp - 0x1c], cl
        movzx             ecx, byte ptr [rsi + 0x23]
        mov               byte ptr [rsp - 0x1d], cl
        movzx             ecx, byte ptr [rsi + 0x22]
        mov               byte ptr [rsp - 0x1e], cl
        movzx             ecx, byte ptr [rsi + 0x21]
        mov               byte ptr [rsp - 0x1f], cl
        movzx             ecx, byte ptr [rsi + 0x20]
        mov               byte ptr [rsp - 0x20], cl
        movzx             ecx, byte ptr [rsi + 0x1f]
        mov               byte ptr [rsp - 0x21], cl
        movzx             ecx, byte ptr [rsi + 0x1e]
        mov               byte ptr [rsp - 0x22], cl
        movzx             ecx, byte ptr [rsi + 0x1d]
        mov               byte ptr [rsp - 0x23], cl
        movzx             ecx, byte ptr [rsi + 0x1c]
        mov               byte ptr [rsp - 0x24], cl
        movzx             ecx, byte ptr [rsi + 0x1b]
        mov               byte ptr [rsp - 0x25], cl
        movzx             ecx, byte ptr [rsi + 0x1a]
        mov               byte ptr [rsp - 0x26], cl
        movzx             ecx, byte ptr [rsi + 0x19]
        mov               byte ptr [rsp - 0x27], cl
        movzx             ecx, byte ptr [rsi + 0x18]
        mov               byte ptr [rsp - 0x28], cl
        movzx             ecx, byte ptr [rsi + 0x17]
        mov               byte ptr [rsp - 0x29], cl
        movzx             ecx, byte ptr [rsi + 0x16]
        mov               byte ptr [rsp - 0x2a], cl
        movzx             ecx, byte ptr [rsi + 0x15]
        mov               byte ptr [rsp - 0x2b], cl
        movzx             ecx, byte ptr [rsi + 0x14]
        mov               byte ptr [rsp - 0x2c], cl
        movzx             ecx, byte ptr [rsi + 0x13]
        mov               byte ptr [rsp - 0x2d], cl
        movzx             ecx, byte ptr [rsi + 0x12]
        mov               byte ptr [rsp - 0x2e], cl
        movzx             ecx, byte ptr [rsi + 0x11]
        mov               byte ptr [rsp - 0x2f], cl
        movzx             ecx, byte ptr [rsi + 0x10]
        mov               byte ptr [rsp - 0x30], cl
        movzx             ecx, byte ptr [rsi + 0xf]
        mov               byte ptr [rsp - 0x31], cl
        movzx             ecx, byte ptr [rsi + 0xe]
        mov               byte ptr [rsp - 0x32], cl
        movzx             r13d, byte ptr [rsi + 0xd]
        movzx             r12d, byte ptr [rsi + 0xc]
        movzx             r15d, byte ptr [rsi + 0xb]
        movzx             r14d, byte ptr [rsi + 0xa]
        movzx             ebp, byte ptr [rsi + 0x9]
        movzx             ebx, byte ptr [rsi + 0x8]
        movzx             r11d, byte ptr [rsi + 0x7]
        movzx             r10d, byte ptr [rsi + 0x6]
        movzx             r9d, byte ptr [rsi + 0x5]
        movzx             r8d, byte ptr [rsi + 0x4]
        movzx             edi, byte ptr [rsi + 0x3]
        movzx             edx, byte ptr [rsi + 0x2]
        movzx             ecx, byte ptr [rsi]
        movzx             esi, byte ptr [rsi + 0x1]
        mov               byte ptr [rax], cl
        mov               byte ptr [rax + 0x1], sil
        mov               byte ptr [rax + 0x2], dl
        mov               byte ptr [rax + 0x3], dil
        mov               byte ptr [rax + 0x4], r8b
        mov               byte ptr [rax + 0x5], r9b
        mov               byte ptr [rax + 0x6], r10b
        mov               byte ptr [rax + 0x7], r11b
        mov               byte ptr [rax + 0x8], bl
        mov               byte ptr [rax + 0x9], bpl
        mov               byte ptr [rax + 0xa], r14b
        mov               byte ptr [rax + 0xb], r15b
        mov               byte ptr [rax + 0xc], r12b
        mov               byte ptr [rax + 0xd], r13b
        movzx             ecx, byte ptr [rsp - 0x32]
        mov               byte ptr [rax + 0xe], cl
        movzx             ecx, byte ptr [rsp - 0x31]
        mov               byte ptr [rax + 0xf], cl
        movzx             ecx, byte ptr [rsp - 0x30]
        mov               byte ptr [rax + 0x10], cl
        movzx             ecx, byte ptr [rsp - 0x2f]
        mov               byte ptr [rax + 0x11], cl
        movzx             ecx, byte ptr [rsp - 0x2e]
        mov               byte ptr [rax + 0x12], cl
        movzx             ecx, byte ptr [rsp - 0x2d]
        mov               byte ptr [rax + 0x13], cl
        movzx             ecx, byte ptr [rsp - 0x2c]
        mov               byte ptr [rax + 0x14], cl
        movzx             ecx, byte ptr [rsp - 0x2b]
        mov               byte ptr [rax + 0x15], cl
        movzx             ecx, byte ptr [rsp - 0x2a]
        mov               byte ptr [rax + 0x16], cl
        movzx             ecx, byte ptr [rsp - 0x29]
        mov               byte ptr [rax + 0x17], cl
        movzx             ecx, byte ptr [rsp - 0x28]
        mov               byte ptr [rax + 0x18], cl
        movzx             ecx, byte ptr [rsp - 0x27]
        mov               byte ptr [rax + 0x19], cl
        movzx             ecx, byte ptr [rsp - 0x26]
        mov               byte ptr [rax + 0x1a], cl
        movzx             ecx, byte ptr [rsp - 0x25]
        mov               byte ptr [rax + 0x1b], cl
        movzx             ecx, byte ptr [rsp - 0x24]
        mov               byte ptr [rax + 0x1c], cl
        movzx             ecx, byte ptr [rsp - 0x23]
        mov               byte ptr [rax + 0x1d], cl
        movzx             ecx, byte ptr [rsp - 0x22]
        mov               byte ptr [rax + 0x1e], cl
        movzx             ecx, byte ptr [rsp - 0x21]
        mov               byte ptr [rax + 0x1f], cl
        movzx             ecx, byte ptr [rsp - 0x20]
        mov               byte ptr [rax + 0x20], cl
        movzx             ecx, byte ptr [rsp - 0x1f]
        mov               byte ptr [rax + 0x21], cl
        movzx             ecx, byte ptr [rsp - 0x1e]
        mov               byte ptr [rax + 0x22], cl
        movzx             ecx, byte ptr [rsp - 0x1d]
        mov               byte ptr [rax + 0x23], cl
        movzx             ecx, byte ptr [rsp - 0x1c]
        mov               byte ptr [rax + 0x24], cl
        movzx             ecx, byte ptr [rsp - 0x1b]
        mov               byte ptr [rax + 0x25], cl
        movzx             ecx, byte ptr [rsp - 0x1a]
        mov               byte ptr [rax + 0x26], cl
        movzx             ecx, byte ptr [rsp - 0x19]
        mov               byte ptr [rax + 0x27], cl
        movzx             ecx, byte ptr [rsp - 0x18]
        mov               byte ptr [rax + 0x28], cl
        movzx             ecx, byte ptr [rsp - 0x17]
        mov               byte ptr [rax + 0x29], cl
        movzx             ecx, byte ptr [rsp - 0x16]
        mov               byte ptr [rax + 0x2a], cl
        movzx             ecx, byte ptr [rsp - 0x15]
        mov               byte ptr [rax + 0x2b], cl
        movzx             ecx, byte ptr [rsp - 0x14]
        mov               byte ptr [rax + 0x2c], cl
        movzx             ecx, byte ptr [rsp - 0x13]
        mov               byte ptr [rax + 0x2d], cl
        movzx             ecx, byte ptr [rsp - 0x12]
        mov               byte ptr [rax + 0x2e], cl
        movzx             ecx, byte ptr [rsp - 0x11]
        mov               byte ptr [rax + 0x2f], cl
        movzx             ecx, byte ptr [rsp - 0x10]
        mov               byte ptr [rax + 0x30], cl
        movzx             ecx, byte ptr [rsp - 0xf]
        mov               byte ptr [rax + 0x31], cl
        movzx             ecx, byte ptr [rsp - 0xe]
        mov               byte ptr [rax + 0x32], cl
        movzx             ecx, byte ptr [rsp - 0xd]
        mov               byte ptr [rax + 0x33], cl
        movzx             ecx, byte ptr [rsp - 0xc]
        mov               byte ptr [rax + 0x34], cl
        movzx             ecx, byte ptr [rsp - 0xb]
        mov               byte ptr [rax + 0x35], cl
        movzx             ecx, byte ptr [rsp - 0xa]
        mov               byte ptr [rax + 0x36], cl
        movzx             ecx, byte ptr [rsp - 0x9]
        mov               byte ptr [rax + 0x37], cl
        movzx             ecx, byte ptr [rsp - 0x8]
        mov               byte ptr [rax + 0x38], cl
        movzx             ecx, byte ptr [rsp - 0x7]
        mov               byte ptr [rax + 0x39], cl
        movzx             ecx, byte ptr [rsp - 0x6]
        mov               byte ptr [rax + 0x3a], cl
        movzx             ecx, byte ptr [rsp - 0x5]
        mov               byte ptr [rax + 0x3b], cl
        movzx             ecx, byte ptr [rsp - 0x4]
        mov               byte ptr [rax + 0x3c], cl
        movzx             ecx, byte ptr [rsp - 0x3]
        mov               byte ptr [rax + 0x3d], cl
        movzx             ecx, byte ptr [rsp - 0x2]
        mov               byte ptr [rax + 0x3e], cl
        movzx             ecx, byte ptr [rsp - 0x1]
        mov               byte ptr [rax + 0x3f], cl
        pop               rbx
        pop               r12
        pop               r13
        pop               r14
        pop               r15
        pop               rbp
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
        push              rbp
        push              r15
        push              r14
        push              r13
        push              r12
        push              rbx
        mov               rax, rdi
        movzx             ecx, word ptr [rsi + 0x3e]
        mov               word ptr [rsp - 0x2], cx
        movzx             ecx, word ptr [rsi + 0x3c]
        mov               word ptr [rsp - 0x4], cx
        movzx             ecx, word ptr [rsi + 0x3a]
        mov               word ptr [rsp - 0x6], cx
        movzx             ecx, word ptr [rsi + 0x38]
        mov               word ptr [rsp - 0x8], cx
        movzx             ecx, word ptr [rsi + 0x36]
        mov               word ptr [rsp - 0xa], cx
        movzx             ecx, word ptr [rsi + 0x34]
        mov               word ptr [rsp - 0xc], cx
        movzx             ecx, word ptr [rsi + 0x32]
        mov               word ptr [rsp - 0xe], cx
        movzx             ecx, word ptr [rsi + 0x30]
        mov               word ptr [rsp - 0x10], cx
        movzx             ecx, word ptr [rsi + 0x2e]
        mov               word ptr [rsp - 0x12], cx
        movzx             ecx, word ptr [rsi + 0x2c]
        mov               word ptr [rsp - 0x14], cx
        movzx             ecx, word ptr [rsi + 0x2a]
        mov               word ptr [rsp - 0x16], cx
        movzx             ecx, word ptr [rsi + 0x28]
        mov               word ptr [rsp - 0x18], cx
        movzx             ecx, word ptr [rsi + 0x26]
        mov               word ptr [rsp - 0x1a], cx
        movzx             ecx, word ptr [rsi + 0x24]
        mov               word ptr [rsp - 0x1c], cx
        movzx             ecx, word ptr [rsi + 0x22]
        mov               word ptr [rsp - 0x1e], cx
        movzx             ecx, word ptr [rsi + 0x20]
        mov               word ptr [rsp - 0x20], cx
        movzx             ecx, word ptr [rsi + 0x1e]
        mov               word ptr [rsp - 0x22], cx
        movzx             ecx, word ptr [rsi + 0x1c]
        mov               word ptr [rsp - 0x24], cx
        movzx             r13d, word ptr [rsi + 0x1a]
        movzx             r12d, word ptr [rsi + 0x18]
        movzx             r15d, word ptr [rsi + 0x16]
        movzx             r14d, word ptr [rsi + 0x14]
        movzx             ebp, word ptr [rsi + 0x12]
        movzx             ebx, word ptr [rsi + 0x10]
        movzx             r11d, word ptr [rsi + 0xe]
        movzx             r10d, word ptr [rsi + 0xc]
        movzx             r9d, word ptr [rsi + 0xa]
        movzx             r8d, word ptr [rsi + 0x8]
        movzx             edi, word ptr [rsi + 0x6]
        movzx             edx, word ptr [rsi + 0x4]
        movzx             ecx, word ptr [rsi]
        movzx             esi, word ptr [rsi + 0x2]
        mov               word ptr [rax], cx
        mov               word ptr [rax + 0x2], si
        mov               word ptr [rax + 0x4], dx
        mov               word ptr [rax + 0x6], di
        mov               word ptr [rax + 0x8], r8w
        mov               word ptr [rax + 0xa], r9w
        mov               word ptr [rax + 0xc], r10w
        mov               word ptr [rax + 0xe], r11w
        mov               word ptr [rax + 0x10], bx
        mov               word ptr [rax + 0x12], bp
        mov               word ptr [rax + 0x14], r14w
        mov               word ptr [rax + 0x16], r15w
        mov               word ptr [rax + 0x18], r12w
        mov               word ptr [rax + 0x1a], r13w
        movzx             ecx, word ptr [rsp - 0x24]
        mov               word ptr [rax + 0x1c], cx
        movzx             ecx, word ptr [rsp - 0x22]
        mov               word ptr [rax + 0x1e], cx
        movzx             ecx, word ptr [rsp - 0x20]
        mov               word ptr [rax + 0x20], cx
        movzx             ecx, word ptr [rsp - 0x1e]
        mov               word ptr [rax + 0x22], cx
        movzx             ecx, word ptr [rsp - 0x1c]
        mov               word ptr [rax + 0x24], cx
        movzx             ecx, word ptr [rsp - 0x1a]
        mov               word ptr [rax + 0x26], cx
        movzx             ecx, word ptr [rsp - 0x18]
        mov               word ptr [rax + 0x28], cx
        movzx             ecx, word ptr [rsp - 0x16]
        mov               word ptr [rax + 0x2a], cx
        movzx             ecx, word ptr [rsp - 0x14]
        mov               word ptr [rax + 0x2c], cx
        movzx             ecx, word ptr [rsp - 0x12]
        mov               word ptr [rax + 0x2e], cx
        movzx             ecx, word ptr [rsp - 0x10]
        mov               word ptr [rax + 0x30], cx
        movzx             ecx, word ptr [rsp - 0xe]
        mov               word ptr [rax + 0x32], cx
        movzx             ecx, word ptr [rsp - 0xc]
        mov               word ptr [rax + 0x34], cx
        movzx             ecx, word ptr [rsp - 0xa]
        mov               word ptr [rax + 0x36], cx
        movzx             ecx, word ptr [rsp - 0x8]
        mov               word ptr [rax + 0x38], cx
        movzx             ecx, word ptr [rsp - 0x6]
        mov               word ptr [rax + 0x3a], cx
        movzx             ecx, word ptr [rsp - 0x4]
        mov               word ptr [rax + 0x3c], cx
        movzx             ecx, word ptr [rsp - 0x2]
        mov               word ptr [rax + 0x3e], cx
        pop               rbx
        pop               r12
        pop               r13
        pop               r14
        pop               r15
        pop               rbp
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
        push              rbp
        push              r15
        push              r14
        push              r13
        push              r12
        push              rbx
        mov               rax, rdi
        mov               ecx, dword ptr [rsi + 0x3c]
        mov               dword ptr [rsp - 0x4], ecx
        mov               ecx, dword ptr [rsi + 0x38]
        mov               dword ptr [rsp - 0x8], ecx
        mov               edi, dword ptr [rsi + 0x34]
        mov               r8d, dword ptr [rsi + 0x30]
        mov               r9d, dword ptr [rsi + 0x2c]
        mov               r10d, dword ptr [rsi + 0x28]
        mov               r11d, dword ptr [rsi + 0x24]
        mov               ebx, dword ptr [rsi + 0x20]
        mov               ebp, dword ptr [rsi + 0x1c]
        mov               r14d, dword ptr [rsi + 0x18]
        mov               r15d, dword ptr [rsi + 0x14]
        mov               r12d, dword ptr [rsi + 0x10]
        mov               r13d, dword ptr [rsi + 0xc]
        mov               edx, dword ptr [rsi + 0x8]
        mov               ecx, dword ptr [rsi]
        mov               esi, dword ptr [rsi + 0x4]
        mov               dword ptr [rax], ecx
        mov               dword ptr [rax + 0x4], esi
        mov               dword ptr [rax + 0x8], edx
        mov               dword ptr [rax + 0xc], r13d
        mov               dword ptr [rax + 0x10], r12d
        mov               dword ptr [rax + 0x14], r15d
        mov               dword ptr [rax + 0x18], r14d
        mov               dword ptr [rax + 0x1c], ebp
        mov               dword ptr [rax + 0x20], ebx
        mov               dword ptr [rax + 0x24], r11d
        mov               dword ptr [rax + 0x28], r10d
        mov               dword ptr [rax + 0x2c], r9d
        mov               dword ptr [rax + 0x30], r8d
        mov               dword ptr [rax + 0x34], edi
        mov               ecx, dword ptr [rsp - 0x8]
        mov               dword ptr [rax + 0x38], ecx
        mov               ecx, dword ptr [rsp - 0x4]
        mov               dword ptr [rax + 0x3c], ecx
        pop               rbx
        pop               r12
        pop               r13
        pop               r14
        pop               r15
        pop               rbp
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
        mov               rcx, qword ptr [rsi + 0x38]
        mov               rdx, qword ptr [rsi + 0x30]
        mov               rdi, qword ptr [rsi + 0x28]
        mov               r8, qword ptr [rsi + 0x20]
        mov               r9, qword ptr [rsi + 0x18]
        mov               r10, qword ptr [rsi + 0x10]
        mov               r11, qword ptr [rsi]
        mov               rsi, qword ptr [rsi + 0x8]
        mov               qword ptr [rax], r11
        mov               qword ptr [rax + 0x8], rsi
        mov               qword ptr [rax + 0x10], r10
        mov               qword ptr [rax + 0x18], r9
        mov               qword ptr [rax + 0x20], r8
        mov               qword ptr [rax + 0x28], rdi
        mov               qword ptr [rax + 0x30], rdx
        mov               qword ptr [rax + 0x38], rcx
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
        mov               rcx, qword ptr [rsi + 0x38]
        mov               rdx, qword ptr [rsi + 0x30]
        mov               rdi, qword ptr [rsi + 0x28]
        mov               r8, qword ptr [rsi + 0x20]
        mov               r9, qword ptr [rsi + 0x18]
        mov               r10, qword ptr [rsi + 0x10]
        mov               r11, qword ptr [rsi]
        mov               rsi, qword ptr [rsi + 0x8]
        mov               qword ptr [rax], r11
        mov               qword ptr [rax + 0x8], rsi
        mov               qword ptr [rax + 0x10], r10
        mov               qword ptr [rax + 0x18], r9
        mov               qword ptr [rax + 0x20], r8
        mov               qword ptr [rax + 0x28], rdi
        mov               qword ptr [rax + 0x30], rdx
        mov               qword ptr [rax + 0x38], rcx
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

