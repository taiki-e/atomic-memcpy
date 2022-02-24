#![allow(dead_code)]

use std::{
    cell::UnsafeCell,
    mem,
    sync::{atomic::Ordering, Barrier},
};

use criterion::{black_box, criterion_group, criterion_main, Criterion};
use crossbeam_utils::thread;

const WRITER_THREADS: usize = 1;
const READER_THREADS: usize = 2;
const LOAD_ORDERING: Ordering = Ordering::Acquire;
const STORE_ORDERING: Ordering = Ordering::Release;
const N: u32 = 5000;

#[repr(transparent)]
struct SendSync<T>(UnsafeCell<T>);
unsafe impl<T: Send> Send for SendSync<T> {}
unsafe impl<T: Sync> Sync for SendSync<T> {}

fn bench_load<T: Copy + Send + Sync>(v: &SendSync<T>, _val: T) {
    unsafe {
        black_box(atomic_memcpy::atomic_load(v.0.get(), LOAD_ORDERING).assume_init());
    }
}
fn bench_store<T: Copy + Send + Sync>(v: &SendSync<T>, val: T) {
    unsafe {
        atomic_memcpy::atomic_store(v.0.get(), val, STORE_ORDERING);
    }
}
fn bench_concurrent_load_store<T: Copy + Send + Sync>(v: &SendSync<T>, val: T) {
    let barrier = Barrier::new(WRITER_THREADS + READER_THREADS);
    thread::scope(|s| {
        for _ in 0..READER_THREADS {
            s.spawn(|_| {
                barrier.wait();
                for _ in 0..N {
                    unsafe {
                        black_box(
                            atomic_memcpy::atomic_load(v.0.get(), LOAD_ORDERING).assume_init(),
                        );
                    }
                }
            });
        }
        for _ in 0..WRITER_THREADS {
            s.spawn(|_| {
                barrier.wait();
                for _ in 0..N {
                    unsafe {
                        atomic_memcpy::atomic_store(v.0.get(), val, STORE_ORDERING);
                    }
                }
            });
        }
    })
    .unwrap();
}

#[derive(Clone, Copy, Default)]
#[repr(C, align(1))]
struct Align1<T>(T);
#[derive(Clone, Copy, Default)]
#[repr(C, align(2))]
struct Align2<T>(T);
#[derive(Clone, Copy, Default)]
#[repr(C, align(4))]
struct Align4<T>(T);
#[derive(Clone, Copy, Default)]
#[repr(C, align(8))]
struct Align8<T>(T);
#[derive(Clone, Copy, Default)]
#[repr(C, align(16))]
struct Align16<T>(T);

macro_rules! b {
    ($b:ident, $bench_fn:ident, $v:expr) => {
        let val1 = black_box($v);
        let val2 = black_box($v);
        $b.iter(|| {
            let v = SendSync(UnsafeCell::new(val1));
            $bench_fn(&v, val2);
            v
        });
    };
}
macro_rules! bg {
    ($c:ident, $group_name:expr, $bench_fn:ident, $v:expr) => {{
        let mut g = $c.benchmark_group($group_name);
        g.bench_function("align1", |b| {
            b!(b, $bench_fn, Align1($v));
        });
        g.bench_function("align2", |b| {
            b!(b, $bench_fn, Align2($v));
        });
        g.bench_function("align4", |b| {
            b!(b, $bench_fn, Align4($v));
        });
        g.bench_function("align8", |b| {
            b!(b, $bench_fn, Align8($v));
        });
    }};
}

fn bench_atomic_copy(c: &mut Criterion) {
    assert_eq!(mem::align_of::<Align1<[u8; 2048]>>(), 1);
    assert_eq!(mem::align_of::<Align2<[u8; 2048]>>(), 2);
    assert_eq!(mem::align_of::<Align4<[u8; 2048]>>(), 4);
    assert_eq!(mem::align_of::<Align8<[u8; 2048]>>(), 8);
    assert_eq!(mem::align_of::<Align16<[u8; 2048]>>(), 16);

    bg!(c, "load_u8x8", bench_load, [0u8; 8]);
    bg!(c, "load_u8x16", bench_load, [0u8; 16]);
    bg!(c, "load_u8x32", bench_load, [0u8; 32]);
    bg!(c, "load_u8x64", bench_load, [0u8; 64]);
    bg!(c, "load_u8x256", bench_load, [0u8; 256]);

    bg!(c, "store_u8x16", bench_store, [0u8; 16]);
    bg!(c, "store_u8x32", bench_store, [0u8; 32]);
    bg!(c, "store_u8x64", bench_store, [0u8; 64]);
    bg!(c, "store_u8x256", bench_store, [0u8; 256]);

    // bg!(c, "concurrent_load_store_u8x16", bench_concurrent_load_store, [0u8; 16]);
    // bg!(c, "concurrent_load_store_u8x64", bench_concurrent_load_store, [0u8; 64]);
    // bg!(c, "concurrent_load_store_u8x256", bench_concurrent_load_store, [0u8; 256]);
}

criterion_group!(benches, bench_atomic_copy);
criterion_main!(benches);
