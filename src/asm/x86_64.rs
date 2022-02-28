#![allow(clippy::undocumented_unsafe_blocks)] // TODO

use core::{arch::asm, mem::MaybeUninit};

use super::AtomicMaybeUninitOperations;

impl AtomicMaybeUninitOperations for usize {
    #[inline(always)]
    unsafe fn atomic_load_relaxed(src: *const MaybeUninit<Self>, dst: *mut MaybeUninit<Self>) {
        unsafe {
            asm!(
                "mov {tmp}, qword ptr [{src}]",
                "mov qword ptr [{dst}], {tmp}",
                src = in(reg) src,
                dst = in(reg) dst,
                tmp = out(reg) _,
                options(nostack),
            );
        }
    }

    #[inline(always)]
    unsafe fn atomic_store_relaxed(dst: *mut MaybeUninit<Self>, src: *const MaybeUninit<Self>) {
        unsafe {
            asm!(
                "mov {tmp}, qword ptr [{src}]",
                "mov qword ptr [{dst}], {tmp}",
                src = in(reg) src,
                dst = in(reg) dst,
                tmp = out(reg) _,
                options(nostack),
            );
        }
    }
}

impl AtomicMaybeUninitOperations for u32 {
    #[inline(always)]
    unsafe fn atomic_load_relaxed(src: *const MaybeUninit<Self>, dst: *mut MaybeUninit<Self>) {
        unsafe {
            asm!(
                "mov {tmp:e}, dword ptr [{src}]",
                "mov dword ptr [{dst}], {tmp:e}",
                src = in(reg) src,
                dst = in(reg) dst,
                tmp = out(reg) _,
                options(nostack),
            );
        }
    }

    #[inline(always)]
    unsafe fn atomic_store_relaxed(dst: *mut MaybeUninit<Self>, src: *const MaybeUninit<Self>) {
        unsafe {
            asm!(
                "mov {tmp:e}, dword ptr [{src}]",
                "mov dword ptr [{dst}], {tmp:e}",
                src = in(reg) src,
                dst = in(reg) dst,
                tmp = out(reg) _,
                options(nostack),
            );
        }
    }
}

impl AtomicMaybeUninitOperations for u16 {
    #[inline(always)]
    unsafe fn atomic_load_relaxed(src: *const MaybeUninit<Self>, dst: *mut MaybeUninit<Self>) {
        unsafe {
            asm!(
                "mov ax, word ptr [{src}]",
                "mov word ptr [{dst}], ax",
                src = in(reg) src,
                dst = in(reg) dst,
                out("ax") _,
                options(nostack),
            );
        }
    }

    #[inline(always)]
    unsafe fn atomic_store_relaxed(dst: *mut MaybeUninit<Self>, src: *const MaybeUninit<Self>) {
        unsafe {
            asm!(
                "mov ax, word ptr [{src}]",
                "mov word ptr [{dst}], ax",
                src = in(reg) src,
                dst = in(reg) dst,
                out("ax") _,
                options(nostack),
            );
        }
    }
}

impl AtomicMaybeUninitOperations for u8 {
    #[inline(always)]
    unsafe fn atomic_load_relaxed(src: *const MaybeUninit<Self>, dst: *mut MaybeUninit<Self>) {
        unsafe {
            asm!(
                "mov {tmp}, byte ptr [{src}]",
                "mov byte ptr [{dst}], {tmp}",
                src = in(reg) src,
                dst = in(reg) dst,
                tmp = out(reg_byte) _,
                options(nostack),
            );
        }
    }

    #[inline(always)]
    unsafe fn atomic_store_relaxed(dst: *mut MaybeUninit<Self>, src: *const MaybeUninit<Self>) {
        unsafe {
            asm!(
                "mov {tmp}, byte ptr [{src}]",
                "mov byte ptr [{dst}], {tmp}",
                src = in(reg) src,
                dst = in(reg) dst,
                tmp = out(reg_byte) _,
                options(nostack),
            );
        }
    }
}
