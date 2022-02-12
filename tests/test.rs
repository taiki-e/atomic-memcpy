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

#[cfg(not(feature = "no-panic"))]
#[track_caller]
fn assert_panic<T: std::fmt::Debug>(f: impl FnOnce() -> T) -> std::string::String {
    let msg = std::panic::catch_unwind(std::panic::AssertUnwindSafe(f)).unwrap_err();
    msg.downcast_ref::<std::string::String>()
        .cloned()
        .unwrap_or_else(|| msg.downcast_ref::<&'static str>().copied().unwrap().into())
}
fn load_orderings() -> [Ordering; 3] {
    [Ordering::Relaxed, Ordering::Acquire, Ordering::SeqCst]
}
fn store_orderings() -> [Ordering; 3] {
    [Ordering::Relaxed, Ordering::Release, Ordering::SeqCst]
}

#[test]
fn ordering() {
    let x = UnsafeCell::new(0u8);
    unsafe {
        for &order in &load_orderings() {
            atomic_load(x.get(), order);
        }
        for &order in &store_orderings() {
            atomic_store(x.get(), 1, order);
        }
    }

    // Miri's panic handling is slow
    if !cfg!(miri) {
        #[cfg(not(feature = "no-panic"))]
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
                "there is no such thing as an acquire/release load"
            );
            assert_eq!(
                assert_panic(|| {
                    let x = UnsafeCell::new(0u8);
                    atomic_store(x.get(), 1, Ordering::Acquire)
                }),
                "there is no such thing as an acquire store"
            );
            assert_eq!(
                assert_panic(|| {
                    let x = UnsafeCell::new(0u8);
                    atomic_store(x.get(), 1, Ordering::AcqRel)
                }),
                "there is no such thing as an acquire/release store"
            );
        }
    }
}

#[test]
fn unaligned() {
    #[derive(Clone, Copy)]
    #[repr(C, align(8))]
    struct Align8<T>(T);

    let x = UnsafeCell::new(Align8([0u8; 1024]));
    assert_eq!(x.get() as usize % mem::align_of::<AtomicUsize>(), 0);
    unsafe {
        let ptr = x.get().cast::<u8>().add(1).cast::<[u8; 1000]>();
        assert_ne!(ptr as usize % mem::align_of::<AtomicUsize>(), 0);
        assert_eq!(atomic_load(ptr, Ordering::Relaxed).assume_init()[..], [0u8; 1000][..]);
        atomic_store(ptr, [1u8; 1000], Ordering::Relaxed);
        assert_eq!(atomic_load(ptr, Ordering::Relaxed).assume_init()[..], [1u8; 1000][..]);

        for i in 0..mem::size_of::<usize>() * 4 {
            *x.get().cast::<u8>().add(i) = i as u8;
        }
        let mut ptr = x.get().cast::<u8>();
        for i in 0..mem::size_of::<usize>() * 2 {
            assert_eq!(ptr as usize % mem::align_of::<AtomicUsize>(), i % mem::size_of::<usize>());
            assert_eq!(ptr.align_offset(mem::align_of::<AtomicUsize>()), {
                let v = mem::size_of::<usize>() - i % mem::size_of::<usize>();
                if v == mem::size_of::<usize>() {
                    0
                } else {
                    v
                }
            });

            let val =
                atomic_load(ptr.cast::<[u8; mem::size_of::<usize>() * 2]>(), Ordering::Relaxed)
                    .assume_init();
            atomic_store(ptr.cast::<[u8; mem::size_of::<usize>() * 2]>(), val, Ordering::Relaxed);
            assert_eq!(
                val[..],
                (i as u8..).take(mem::size_of::<usize>() * 2).collect::<Vec<_>>()[..]
            );

            let val =
                atomic_load(ptr.cast::<[u8; mem::size_of::<usize>() * 2 - 1]>(), Ordering::Relaxed)
                    .assume_init();
            atomic_store(
                ptr.cast::<[u8; mem::size_of::<usize>() * 2 - 1]>(),
                val,
                Ordering::Relaxed,
            );
            assert_eq!(
                val[..],
                (i as u8..).take(mem::size_of::<usize>() * 2 - 1).collect::<Vec<_>>()[..]
            );

            let val =
                atomic_load(ptr.cast::<[u8; mem::size_of::<usize>() * 2 - 2]>(), Ordering::Relaxed)
                    .assume_init();
            atomic_store(
                ptr.cast::<[u8; mem::size_of::<usize>() * 2 - 2]>(),
                val,
                Ordering::Relaxed,
            );
            assert_eq!(
                val[..],
                (i as u8..).take(mem::size_of::<usize>() * 2 - 2).collect::<Vec<_>>()[..]
            );

            ptr = ptr.cast::<u8>().add(1).cast();
        }
    }
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
