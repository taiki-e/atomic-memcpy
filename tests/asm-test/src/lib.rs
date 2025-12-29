// SPDX-License-Identifier: Apache-2.0 OR MIT

#![no_std]
#![allow(unused, internal_features, unsafe_op_in_unsafe_fn)]
#![cfg(feature = "atomic-memcpy")]

type Data = [u8; core::mem::size_of::<usize>() * 8];

// TODO: Add tests for the case where the pointers are known to be aligned.

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
