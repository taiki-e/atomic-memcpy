// SPDX-License-Identifier: Apache-2.0 OR MIT

#![allow(clippy::undocumented_unsafe_blocks, clippy::cast_possible_truncation)]

use std::{
    cell::UnsafeCell,
    mem, ptr,
    sync::atomic::{AtomicUsize, Ordering},
};

use atomic_memcpy::{atomic_load, atomic_store};

macro_rules! test_int {
    ($test_name:ident, $ty:ident) => {
        #[test]
        fn $test_name() {
            unsafe {
                let x = UnsafeCell::<$ty>::new(0);
                assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), 0);
                atomic_store(x.get(), 1, Ordering::Relaxed);
                assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), 1);
                let x = UnsafeCell::<[$ty; 1]>::new([0]);
                assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), [0]);
                atomic_store(x.get(), [1], Ordering::Relaxed);
                assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), [1]);
                let x = UnsafeCell::<[$ty; 2]>::new([0; 2]);
                assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), [0; 2]);
                atomic_store(x.get(), [1; 2], Ordering::Relaxed);
                assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), [1; 2]);
                let x = UnsafeCell::<[$ty; 3]>::new([0; 3]);
                assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), [0; 3]);
                atomic_store(x.get(), [1; 3], Ordering::Relaxed);
                assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), [1; 3]);
                let x = UnsafeCell::<[$ty; 4]>::new([0; 4]);
                assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), [0; 4]);
                atomic_store(x.get(), [1; 4], Ordering::Relaxed);
                assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), [1; 4]);
                let x = UnsafeCell::<[$ty; 5]>::new([0; 5]);
                assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), [0; 5]);
                atomic_store(x.get(), [1; 5], Ordering::Relaxed);
                assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), [1; 5]);
                let x = UnsafeCell::<[$ty; 100]>::new([0; 100]);
                assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init()[..], [0; 100][..]);
                atomic_store(x.get(), [1; 100], Ordering::Relaxed);
                assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init()[..], [1; 100][..]);
            }
        }
    };
}

test_int!(basic_u8, u8);
test_int!(basic_u16, u16);
test_int!(basic_u32, u32);
test_int!(basic_u64, u64);
test_int!(basic_u128, u128);

#[test]
fn basic_unit() {
    unsafe {
        let x = UnsafeCell::<()>::new(());
        atomic_load(x.get(), Ordering::Relaxed).assume_init();
        atomic_store(x.get(), (), Ordering::Relaxed);
        atomic_load(x.get(), Ordering::Relaxed).assume_init();
    }
}

#[track_caller]
fn assert_panic<T: std::fmt::Debug>(f: impl FnOnce() -> T) -> std::string::String {
    let backtrace = std::env::var_os("RUST_BACKTRACE");
    let hook = std::panic::take_hook();
    // set_var/remove_var is fine as we run tests with RUST_TEST_THREADS=1
    // std::panic::set_backtrace_style is better way here, but is unstable.
    unsafe { std::env::set_var("RUST_BACKTRACE", "0") } // Suppress backtrace
    std::panic::set_hook(std::boxed::Box::new(|_| {})); // Suppress panic msg
    let res = std::panic::catch_unwind(std::panic::AssertUnwindSafe(f));
    std::panic::set_hook(hook);
    match backtrace {
        Some(v) => unsafe { std::env::set_var("RUST_BACKTRACE", v) },
        None => unsafe { std::env::remove_var("RUST_BACKTRACE") },
    }
    let msg = res.unwrap_err();
    msg.downcast_ref::<std::string::String>()
        .cloned()
        .unwrap_or_else(|| msg.downcast_ref::<&'static str>().copied().unwrap().into())
}
const LOAD_ORDERINGS: [Ordering; 3] = [Ordering::Relaxed, Ordering::Acquire, Ordering::SeqCst];
const STORE_ORDERINGS: [Ordering; 3] = [Ordering::Relaxed, Ordering::Release, Ordering::SeqCst];

#[test]
fn ordering() {
    let x = UnsafeCell::new(0u8);
    unsafe {
        for &order in &LOAD_ORDERINGS {
            atomic_load(x.get(), order);
        }
        for &order in &STORE_ORDERINGS {
            atomic_store(x.get(), 1, order);
        }
    }

    if option_env!("CARGO_PROFILE_RELEASE_LTO").map_or(false, |v| v == "fat")
        && build_context::SANITIZE.contains("memory")
    {
        // MSAN false positive: https://gist.github.com/taiki-e/dd6269a8ffec46284fdc764a4849f884
        return;
    }

    // Miri's panic handling is slow
    if !cfg!(miri) {
        unsafe {
            assert_eq!(
                assert_panic(|| {
                    let x = UnsafeCell::new(0u8);
                    atomic_load(x.get(), Ordering::Release)
                }),
                "there is no such thing as a release load"
            );
            assert_eq!(
                assert_panic(|| {
                    let x = UnsafeCell::new(0u8);
                    atomic_load(x.get(), Ordering::AcqRel)
                }),
                "there is no such thing as an acquire-release load"
            );
            assert_eq!(
                assert_panic(|| {
                    let x = UnsafeCell::new(0u8);
                    atomic_store(x.get(), 1, Ordering::Acquire);
                }),
                "there is no such thing as an acquire store"
            );
            assert_eq!(
                assert_panic(|| {
                    let x = UnsafeCell::new(0u8);
                    atomic_store(x.get(), 1, Ordering::AcqRel);
                }),
                "there is no such thing as an acquire-release store"
            );
        }
    }
}

// test for alignment smaller than usize
#[test]
#[cfg_attr(miri, ignore)] // TODO: Miri ICE
fn small_alignment() {
    #[derive(Clone, Copy)]
    #[repr(C, align(8))]
    struct Align8<T>(T);

    macro_rules! test_small_alignment {
        ($ty:ident) => {
            unsafe {
                let x = UnsafeCell::new(Align8::<[$ty; 1024]>([0; 1024]));
                assert_eq!(x.get() as usize % mem::align_of::<AtomicUsize>(), 0);
                let ptr = x.get().cast::<$ty>().add(1).cast::<[$ty; 1000]>();
                assert_ne!(ptr as usize % mem::align_of::<AtomicUsize>(), 0);
                assert_eq!(atomic_load(ptr, Ordering::Relaxed).assume_init()[..], [0; 1000][..]);
                atomic_store(ptr, [1; 1000], Ordering::Relaxed);
                assert_eq!(atomic_load(ptr, Ordering::Relaxed).assume_init()[..], [1; 1000][..]);

                for i in 0..mem::size_of::<usize>() * 4 {
                    *x.get().cast::<$ty>().add(i) = i as $ty;
                }
                let mut ptr = x.get().cast::<$ty>();
                for i in 0..mem::size_of::<usize>() * 2 {
                    assert_eq!(
                        ptr as usize % mem::align_of::<AtomicUsize>(),
                        i * mem::size_of::<$ty>() % mem::size_of::<usize>()
                    );
                    assert_eq!(ptr.align_offset(mem::align_of::<AtomicUsize>()), {
                        let v = i * mem::size_of::<$ty>() % mem::size_of::<usize>();
                        if v == 0 {
                            0
                        } else {
                            (mem::size_of::<usize>() - v) / mem::size_of::<$ty>()
                        }
                    });

                    let val = atomic_load(
                        ptr.cast::<[$ty; mem::size_of::<usize>() * 2]>(),
                        Ordering::Relaxed,
                    )
                    .assume_init();
                    atomic_store(
                        ptr.cast::<[$ty; mem::size_of::<usize>() * 2]>(),
                        val,
                        Ordering::Relaxed,
                    );
                    assert_eq!(
                        val[..],
                        (i as $ty..).take(mem::size_of::<usize>() * 2).collect::<Vec<_>>()[..]
                    );

                    let val = atomic_load(
                        ptr.cast::<[$ty; mem::size_of::<usize>() * 2 - 1]>(),
                        Ordering::Relaxed,
                    )
                    .assume_init();
                    atomic_store(
                        ptr.cast::<[$ty; mem::size_of::<usize>() * 2 - 1]>(),
                        val,
                        Ordering::Relaxed,
                    );
                    assert_eq!(
                        val[..],
                        (i as $ty..).take(mem::size_of::<usize>() * 2 - 1).collect::<Vec<_>>()[..]
                    );

                    let val = atomic_load(
                        ptr.cast::<[$ty; mem::size_of::<usize>() * 2 - 2]>(),
                        Ordering::Relaxed,
                    )
                    .assume_init();
                    atomic_store(
                        ptr.cast::<[$ty; mem::size_of::<usize>() * 2 - 2]>(),
                        val,
                        Ordering::Relaxed,
                    );
                    assert_eq!(
                        val[..],
                        (i as $ty..).take(mem::size_of::<usize>() * 2 - 2).collect::<Vec<_>>()[..]
                    );

                    ptr = ptr.cast::<$ty>().add(1);
                }
            }
        };
    }
    test_small_alignment!(u8); // align 1
    test_small_alignment!(u16); // align 2
    #[cfg(target_pointer_width = "64")]
    test_small_alignment!(u32); // align 4
}

#[test]
fn drop() {
    #[repr(transparent)]
    struct PanicOnDrop<T>(T);
    impl<T> Drop for PanicOnDrop<T> {
        fn drop(&mut self) {
            panic!();
        }
    }

    // std write
    let mut a = PanicOnDrop(());
    let b = PanicOnDrop(());
    unsafe {
        ptr::write(&mut a, b);
    }
    mem::forget(a);
    let mut a = PanicOnDrop(0_u8);
    let b = PanicOnDrop(0_u8);
    unsafe {
        ptr::write(&mut a, b);
    }
    mem::forget(a);

    // atomic store
    let a = UnsafeCell::new(PanicOnDrop(()));
    let b = PanicOnDrop(());
    unsafe {
        atomic_store(a.get(), b, Ordering::Relaxed);
    }
    mem::forget(a);
    let a = UnsafeCell::new(PanicOnDrop(0_u8));
    let b = PanicOnDrop(0_u8);
    unsafe {
        atomic_store(a.get(), b, Ordering::Relaxed);
    }
    mem::forget(a);
}
