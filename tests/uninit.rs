// This is a test to check if valgrind/sanitizer/miri can properly detect
// the use of uninitialized bytes.
//
// All tests are ignored by default.
// Do not run this test without valgrind/sanitizer/miri.
//
// With miri:
//   cargo miri test --test uninit -- --test-threads=1 --ignored

use std::{cell::UnsafeCell, env, mem, sync::atomic::Ordering};

use atomic_memcpy::{atomic_load, atomic_store};

#[test]
#[ignore]
fn uninit() {
    check_context();

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
        // UNINIT!
        assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init().u32, Test { u32: 0 }.u32);
    }
}

/// Panics if the test runs without valgrind/sanitizer/miri.
///
/// Note that this is heuristic not a complete check,
/// as users can break this check by setting --cfg themselves.
#[track_caller]
fn check_context() {
    // miri
    if cfg!(miri) {
        return;
    }

    // sanitizer
    if let Ok(rustflags) = env::var("RUSTFLAGS") {
        if rustflags.contains("-Z sanitizer=memory") || rustflags.contains("-Zsanitizer=memory") {
            return;
        }
    };

    // valgrind
    if let Ok(runner) = env::var(&format!(
        "CARGO_TARGET_{}_RUNNER",
        target_spec::Platform::current()
            .unwrap()
            .triple_str()
            .replace(|c| matches!(c, '-' | '.'), "_") // there are targets containing `.` like `thumbv8m.base-none-eabi`.
            .to_ascii_uppercase()
    )) {
        if runner.split(' ').next().unwrap() == "valgrind" {
            return;
        }
    }

    panic!("Do not run this test without valgrind/sanitizer/miri")
}
