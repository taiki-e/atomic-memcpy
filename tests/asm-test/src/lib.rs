#![cfg(nightly)]
#![no_std]
#![warn(rust_2018_idioms, single_use_lifetimes, unsafe_op_in_unsafe_fn)]
#![allow(clippy::missing_safety_doc)]
#![feature(core_intrinsics)]
#![cfg_attr(target_has_atomic_load_store = "ptr", feature(atomic_mut_ptr))]

type Data = [u8; core::mem::size_of::<usize>() * 8];

#[repr(C, align(1))]
pub struct Align1<T>(T);
#[repr(C, align(2))]
pub struct Align2<T>(T);
#[repr(C, align(4))]
pub struct Align4<T>(T);
#[repr(C, align(8))]
pub struct Align8<T>(T);
#[repr(C, align(16))]
pub struct Align16<T>(T);

pub mod atomic_memcpy_load_align1 {
    use core::{
        mem::MaybeUninit,
        sync::atomic::{self, Ordering},
    };
    type Data = super::Align1<super::Data>;
    type A = *mut Data;
    type T = MaybeUninit<Data>;
    #[inline(never)]
    pub unsafe fn acquire(a: A) -> T {
        unsafe { atomic_memcpy::atomic_load(a, Ordering::Acquire) }
    }
    #[inline(never)]
    pub unsafe fn read_volatile_acquire_fence(a: A) -> T {
        let v = unsafe { a.cast::<T>().read_volatile() };
        atomic::fence(Ordering::Acquire);
        v
    }
}
pub mod atomic_memcpy_store_align1 {
    use core::sync::atomic::{self, Ordering};
    type Data = super::Align1<super::Data>;
    type A = *mut Data;
    type T = Data;
    #[inline(never)]
    pub unsafe fn release(a: A, val: T) {
        unsafe { atomic_memcpy::atomic_store(a, val, Ordering::Release) }
    }
    #[inline(never)]
    pub unsafe fn write_volatile_release_fence(a: A, val: T) {
        atomic::fence(Ordering::Release);
        unsafe { a.write_volatile(val) }
    }
}

pub mod atomic_memcpy_load_align2 {
    use core::{
        mem::MaybeUninit,
        sync::atomic::{self, Ordering},
    };
    type Data = super::Align2<super::Data>;
    type A = *mut Data;
    type T = MaybeUninit<Data>;
    #[inline(never)]
    pub unsafe fn acquire(a: A) -> T {
        unsafe { atomic_memcpy::atomic_load(a, Ordering::Acquire) }
    }
    #[inline(never)]
    pub unsafe fn read_volatile_acquire_fence(a: A) -> T {
        let v = unsafe { a.cast::<T>().read_volatile() };
        atomic::fence(Ordering::Acquire);
        v
    }
}
pub mod atomic_memcpy_store_align2 {
    use core::sync::atomic::{self, Ordering};
    type Data = super::Align2<super::Data>;
    type A = *mut Data;
    type T = Data;
    #[inline(never)]
    pub unsafe fn release(a: A, val: T) {
        unsafe { atomic_memcpy::atomic_store(a, val, Ordering::Release) }
    }
    #[inline(never)]
    pub unsafe fn write_volatile_release_fence(a: A, val: T) {
        atomic::fence(Ordering::Release);
        unsafe { a.write_volatile(val) }
    }
}

pub mod atomic_memcpy_load_align4 {
    use core::{
        mem::MaybeUninit,
        sync::atomic::{self, Ordering},
    };
    type Data = super::Align4<super::Data>;
    type A = *mut Data;
    type T = MaybeUninit<Data>;
    #[inline(never)]
    pub unsafe fn acquire(a: A) -> T {
        unsafe { atomic_memcpy::atomic_load(a, Ordering::Acquire) }
    }
    #[inline(never)]
    pub unsafe fn read_volatile_acquire_fence(a: A) -> T {
        let v = unsafe { a.cast::<T>().read_volatile() };
        atomic::fence(Ordering::Acquire);
        v
    }
}
pub mod atomic_memcpy_store_align4 {
    use core::sync::atomic::{self, Ordering};
    type Data = super::Align4<super::Data>;
    type A = *mut Data;
    type T = Data;
    #[inline(never)]
    pub unsafe fn release(a: A, val: T) {
        unsafe { atomic_memcpy::atomic_store(a, val, Ordering::Release) }
    }
    #[inline(never)]
    pub unsafe fn write_volatile_release_fence(a: A, val: T) {
        atomic::fence(Ordering::Release);
        unsafe { a.write_volatile(val) }
    }
}

pub mod atomic_memcpy_load_align8 {
    use core::{
        mem::MaybeUninit,
        sync::atomic::{self, Ordering},
    };
    type Data = super::Align8<super::Data>;
    type A = *mut Data;
    type T = MaybeUninit<Data>;
    #[inline(never)]
    pub unsafe fn acquire(a: A) -> T {
        unsafe { atomic_memcpy::atomic_load(a, Ordering::Acquire) }
    }
    #[inline(never)]
    pub unsafe fn read_volatile_acquire_fence(a: A) -> T {
        let v = unsafe { a.cast::<T>().read_volatile() };
        atomic::fence(Ordering::Acquire);
        v
    }
}
pub mod atomic_memcpy_store_align8 {
    use core::sync::atomic::{self, Ordering};
    type Data = super::Align8<super::Data>;
    type A = *mut Data;
    type T = Data;
    #[inline(never)]
    pub unsafe fn release(a: A, val: T) {
        unsafe { atomic_memcpy::atomic_store(a, val, Ordering::Release) }
    }
    #[inline(never)]
    pub unsafe fn write_volatile_release_fence(a: A, val: T) {
        atomic::fence(Ordering::Release);
        unsafe { a.write_volatile(val) }
    }
}
pub mod atomic_memcpy_load_align16 {
    use core::{
        mem::MaybeUninit,
        sync::atomic::{self, Ordering},
    };
    type Data = super::Align16<super::Data>;
    type A = *mut Data;
    type T = MaybeUninit<Data>;
    #[inline(never)]
    pub unsafe fn acquire(a: A) -> T {
        unsafe { atomic_memcpy::atomic_load(a, Ordering::Acquire) }
    }
    #[inline(never)]
    pub unsafe fn read_volatile_acquire_fence(a: A) -> T {
        let v = unsafe { a.cast::<T>().read_volatile() };
        atomic::fence(Ordering::Acquire);
        v
    }
}
pub mod atomic_memcpy_store_align16 {
    use core::sync::atomic::{self, Ordering};
    type Data = super::Align16<super::Data>;
    type A = *mut Data;
    type T = Data;
    #[inline(never)]
    pub unsafe fn release(a: A, val: T) {
        unsafe { atomic_memcpy::atomic_store(a, val, Ordering::Release) }
    }
    #[inline(never)]
    pub unsafe fn write_volatile_release_fence(a: A, val: T) {
        atomic::fence(Ordering::Release);
        unsafe { a.write_volatile(val) }
    }
}

#[cfg(target_has_atomic_load_store = "8")]
pub mod atomic_u8_load {
    use core::{
        intrinsics,
        sync::atomic::{self, AtomicU8, Ordering},
    };
    type A<'a> = &'a AtomicU8;
    type T = u8;
    #[inline(never)]
    pub fn unordered(a: A<'_>) -> T {
        unsafe { intrinsics::atomic_load_unordered(a.as_mut_ptr()) }
    }
    #[inline(never)]
    pub fn relaxed(a: A<'_>) -> T {
        a.load(Ordering::Relaxed)
    }
    #[inline(never)]
    pub fn unordered_acquire_fence(a: A<'_>) -> T {
        let v = unsafe { intrinsics::atomic_load_unordered(a.as_mut_ptr()) };
        atomic::fence(Ordering::Acquire);
        v
    }
    #[inline(never)]
    pub fn relaxed_acquire_fence(a: A<'_>) -> T {
        let v = a.load(Ordering::Relaxed);
        atomic::fence(Ordering::Acquire);
        v
    }
    #[inline(never)]
    pub fn acquire(a: A<'_>) -> T {
        a.load(Ordering::Acquire)
    }
    #[inline(never)]
    pub fn unordered_seq_cst_fence(a: A<'_>) -> T {
        let v = unsafe { intrinsics::atomic_load_unordered(a.as_mut_ptr()) };
        atomic::fence(Ordering::SeqCst);
        v
    }
    #[inline(never)]
    pub fn relaxed_seq_cst_fence(a: A<'_>) -> T {
        let v = a.load(Ordering::Relaxed);
        atomic::fence(Ordering::SeqCst);
        v
    }
    #[inline(never)]
    pub fn seq_cst(a: A<'_>) -> T {
        a.load(Ordering::SeqCst)
    }
}

#[cfg(target_has_atomic_load_store = "16")]
pub mod atomic_u16_load {
    use core::{
        intrinsics,
        sync::atomic::{self, AtomicU16, Ordering},
    };
    type A<'a> = &'a AtomicU16;
    type T = u16;
    #[inline(never)]
    pub fn unordered(a: A<'_>) -> T {
        unsafe { intrinsics::atomic_load_unordered(a.as_mut_ptr()) }
    }
    #[inline(never)]
    pub fn relaxed(a: A<'_>) -> T {
        a.load(Ordering::Relaxed)
    }
    #[inline(never)]
    pub fn unordered_acquire_fence(a: A<'_>) -> T {
        let v = unsafe { intrinsics::atomic_load_unordered(a.as_mut_ptr()) };
        atomic::fence(Ordering::Acquire);
        v
    }
    #[inline(never)]
    pub fn relaxed_acquire_fence(a: A<'_>) -> T {
        let v = a.load(Ordering::Relaxed);
        atomic::fence(Ordering::Acquire);
        v
    }
    #[inline(never)]
    pub fn acquire(a: A<'_>) -> T {
        a.load(Ordering::Acquire)
    }
    #[inline(never)]
    pub fn unordered_seq_cst_fence(a: A<'_>) -> T {
        let v = unsafe { intrinsics::atomic_load_unordered(a.as_mut_ptr()) };
        atomic::fence(Ordering::SeqCst);
        v
    }
    #[inline(never)]
    pub fn relaxed_seq_cst_fence(a: A<'_>) -> T {
        let v = a.load(Ordering::Relaxed);
        atomic::fence(Ordering::SeqCst);
        v
    }
    #[inline(never)]
    pub fn seq_cst(a: A<'_>) -> T {
        a.load(Ordering::SeqCst)
    }
}

#[cfg(target_has_atomic_load_store = "32")]
pub mod atomic_u32_load {
    use core::{
        intrinsics,
        sync::atomic::{self, AtomicU32, Ordering},
    };
    type A<'a> = &'a AtomicU32;
    type T = u32;
    #[inline(never)]
    pub fn unordered(a: A<'_>) -> T {
        unsafe { intrinsics::atomic_load_unordered(a.as_mut_ptr()) }
    }
    #[inline(never)]
    pub fn relaxed(a: A<'_>) -> T {
        a.load(Ordering::Relaxed)
    }
    #[inline(never)]
    pub fn unordered_acquire_fence(a: A<'_>) -> T {
        let v = unsafe { intrinsics::atomic_load_unordered(a.as_mut_ptr()) };
        atomic::fence(Ordering::Acquire);
        v
    }
    #[inline(never)]
    pub fn relaxed_acquire_fence(a: A<'_>) -> T {
        let v = a.load(Ordering::Relaxed);
        atomic::fence(Ordering::Acquire);
        v
    }
    #[inline(never)]
    pub fn acquire(a: A<'_>) -> T {
        a.load(Ordering::Acquire)
    }
    #[inline(never)]
    pub fn unordered_seq_cst_fence(a: A<'_>) -> T {
        let v = unsafe { intrinsics::atomic_load_unordered(a.as_mut_ptr()) };
        atomic::fence(Ordering::SeqCst);
        v
    }
    #[inline(never)]
    pub fn relaxed_seq_cst_fence(a: A<'_>) -> T {
        let v = a.load(Ordering::Relaxed);
        atomic::fence(Ordering::SeqCst);
        v
    }
    #[inline(never)]
    pub fn seq_cst(a: A<'_>) -> T {
        a.load(Ordering::SeqCst)
    }
}

#[cfg(target_has_atomic_load_store = "64")]
pub mod atomic_u64_load {
    use core::{
        intrinsics,
        sync::atomic::{self, AtomicU64, Ordering},
    };
    type A<'a> = &'a AtomicU64;
    type T = u64;
    #[inline(never)]
    pub fn unordered(a: A<'_>) -> T {
        unsafe { intrinsics::atomic_load_unordered(a.as_mut_ptr()) }
    }
    #[inline(never)]
    pub fn relaxed(a: A<'_>) -> T {
        a.load(Ordering::Relaxed)
    }
    #[inline(never)]
    pub fn unordered_acquire_fence(a: A<'_>) -> T {
        let v = unsafe { intrinsics::atomic_load_unordered(a.as_mut_ptr()) };
        atomic::fence(Ordering::Acquire);
        v
    }
    #[inline(never)]
    pub fn relaxed_acquire_fence(a: A<'_>) -> T {
        let v = a.load(Ordering::Relaxed);
        atomic::fence(Ordering::Acquire);
        v
    }
    #[inline(never)]
    pub fn acquire(a: A<'_>) -> T {
        a.load(Ordering::Acquire)
    }
    #[inline(never)]
    pub fn unordered_seq_cst_fence(a: A<'_>) -> T {
        let v = unsafe { intrinsics::atomic_load_unordered(a.as_mut_ptr()) };
        atomic::fence(Ordering::SeqCst);
        v
    }
    #[inline(never)]
    pub fn relaxed_seq_cst_fence(a: A<'_>) -> T {
        let v = a.load(Ordering::Relaxed);
        atomic::fence(Ordering::SeqCst);
        v
    }
    #[inline(never)]
    pub fn seq_cst(a: A<'_>) -> T {
        a.load(Ordering::SeqCst)
    }
}

#[cfg(any(target_has_atomic_load_store = "128", target_feature = "cmpxchg16b"))]
pub mod atomic_u128_load {
    use core::{
        intrinsics,
        sync::atomic::{self, Ordering},
    };
    type A = *mut u128;
    type T = u128;
    #[inline(never)]
    pub unsafe fn unordered(a: A) -> T {
        unsafe { intrinsics::atomic_load_unordered(a) }
    }
    #[inline(never)]
    pub unsafe fn relaxed(a: A) -> T {
        unsafe { intrinsics::atomic_load_relaxed(a) }
    }
    #[inline(never)]
    pub unsafe fn unordered_acquire_fence(a: A) -> T {
        let v = unsafe { intrinsics::atomic_load_unordered(a) };
        atomic::fence(Ordering::Acquire);
        v
    }
    #[inline(never)]
    pub unsafe fn relaxed_acquire_fence(a: A) -> T {
        let v = unsafe { intrinsics::atomic_load_relaxed(a) };
        atomic::fence(Ordering::Acquire);
        v
    }
    #[inline(never)]
    pub unsafe fn acquire(a: A) -> T {
        unsafe { intrinsics::atomic_load_acq(a) }
    }
    #[inline(never)]
    pub unsafe fn unordered_seq_cst_fence(a: A) -> T {
        let v = unsafe { intrinsics::atomic_load_unordered(a) };
        atomic::fence(Ordering::SeqCst);
        v
    }
    #[inline(never)]
    pub unsafe fn relaxed_seq_cst_fence(a: A) -> T {
        let v = unsafe { intrinsics::atomic_load_relaxed(a) };
        atomic::fence(Ordering::SeqCst);
        v
    }
    #[inline(never)]
    pub unsafe fn seq_cst(a: A) -> T {
        unsafe { intrinsics::atomic_load(a) }
    }
}
