use std::{cell::UnsafeCell, mem, sync::atomic::Ordering};

use atomic_memcpy::{atomic_load, atomic_store};

#[test]
fn enum_padding() {
    // Miri cannot track uninitialized bytes on a per byte basis for partially
    // initialized scalars: https://github.com/rust-lang/rust/issues/69488
    // See also https://github.com/crossbeam-rs/crossbeam/issues/748#issuecomment-1022432401
    if cfg!(miri) {
        return;
    }

    #[allow(dead_code)]
    #[repr(align(8))]
    #[derive(Debug, Clone, Copy, PartialEq, Eq)]
    enum Test {
        Field(u32),
        FieldLess,
        FieldLess2,
    }

    assert_eq!(mem::align_of::<Test>(), 8);
    assert_eq!(mem::size_of::<Test>(), 8);
    unsafe {
        let x = UnsafeCell::new(Test::Field(0));
        assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), Test::Field(0));
        atomic_store(x.get(), Test::FieldLess, Ordering::Relaxed);
        assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), Test::FieldLess);
        assert_ne!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), Test::FieldLess2);
        atomic_store(x.get(), Test::FieldLess2, Ordering::Relaxed);
        assert_ne!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), Test::FieldLess);
        assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), Test::FieldLess2);
        atomic_store(x.get(), Test::Field(1), Ordering::Relaxed);
        assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), Test::Field(1));
    }
}

#[test]
fn union_padding() {
    // Miri cannot track uninitialized bytes on a per byte basis for partially
    // initialized scalars: https://github.com/rust-lang/rust/issues/69488
    // See also https://github.com/crossbeam-rs/crossbeam/issues/748#issuecomment-1022432401
    if cfg!(miri) {
        return;
    }

    #[allow(dead_code)]
    #[repr(C, align(8))]
    #[derive(Clone, Copy)]
    union Test {
        u32: u32,
        u8: u8,
    }

    assert_eq!(mem::align_of::<Test>(), 8);
    assert_eq!(mem::size_of::<Test>(), 8);
    unsafe {
        let x = UnsafeCell::new(Test { u32: 0 });
        assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init().u32, Test { u32: 0 }.u32);
        atomic_store(x.get(), Test { u8: 0 }, Ordering::Relaxed);
        assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init().u8, Test { u8: 0 }.u8);
        atomic_store(x.get(), Test { u32: 0 }, Ordering::Relaxed);
        assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init().u8, Test { u8: 0 }.u8);
    }
}
