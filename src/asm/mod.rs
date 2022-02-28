use core::{
    mem::{self, ManuallyDrop, MaybeUninit},
    ops::Range,
};

#[cfg(target_arch = "x86_64")]
mod x86_64;

trait AtomicMaybeUninitOperations: Copy {
    unsafe fn atomic_load_relaxed(src: *const MaybeUninit<Self>, dst: *mut MaybeUninit<Self>);
    unsafe fn atomic_store_relaxed(dst: *mut MaybeUninit<Self>, src: *const MaybeUninit<Self>);
}

#[cfg_attr(feature = "inline-always", inline(always))]
#[cfg_attr(not(feature = "inline-always"), inline)]
pub(crate) unsafe fn atomic_load<T>(src: *const T) -> MaybeUninit<T> {
    // Safety requirements guaranteed by the caller:
    // - `src` is valid for atomic reads.
    // - `src` is properly aligned for `T`.
    // - `src` go through `UnsafeCell::get`.
    // - there are no concurrent non-atomic write operations.
    // - there are no concurrent atomic write operations of different granularity.
    // Note that the safety of the code in this function relies on these guarantees,
    // whether or not they are explicitly mentioned in the each safety comment.
    debug_assert!(!src.is_null());
    debug_assert!(src as usize % mem::align_of::<T>() == 0);

    let mut result = MaybeUninit::<T>::uninit();

    if mem::size_of::<T>() == 0 {
        return result;
    }

    // If the alignment of `T` is greater than or equal to usize,
    // we can read it as a chunk of usize.
    if mem::align_of::<T>() >= mem::align_of::<usize>() {
        let src = src as *const MaybeUninit<usize>;
        let dst = result.as_mut_ptr() as *mut MaybeUninit<usize>;
        for i in range(0..mem::size_of::<T>() / mem::size_of::<usize>()) {
            // SAFETY:
            // - the caller must guarantee that `src` is properly aligned for `T`.
            // - `T` has an alignment greater than or equal to usize.
            // - the remaining bytes is greater than or equal to `size_of::<usize>()`.
            unsafe {
                usize::atomic_load_relaxed(src.add(i), dst.add(i));
            }
        }
        return result;
    }

    // If the alignment of `T` is greater than or equal to u32,
    // we can read it as a chunk of u32.
    if mem::size_of::<usize>() > 4 && mem::align_of::<T>() >= mem::align_of::<u32>() {
        let src = src as *const MaybeUninit<u32>;
        let dst = result.as_mut_ptr() as *mut MaybeUninit<u32>;
        for i in range(0..mem::size_of::<T>() / mem::size_of::<u32>()) {
            // SAFETY:
            // - the caller must guarantee that `src` is properly aligned for `T`.
            // - `T` has an alignment greater than or equal to u32.
            // - the remaining bytes is greater than or equal to `size_of::<u32>()`.
            unsafe {
                u32::atomic_load_relaxed(src.add(i), dst.add(i));
            }
        }
        return result;
    }

    // If the alignment of `T` is greater than or equal to u16,
    // we can read it as a chunk of u16.
    if mem::size_of::<usize>() > 2 && mem::align_of::<T>() >= mem::align_of::<u16>() {
        let src = src as *const MaybeUninit<u16>;
        let dst = result.as_mut_ptr() as *mut MaybeUninit<u16>;
        for i in range(0..mem::size_of::<T>() / mem::size_of::<u16>()) {
            // SAFETY:
            // - the caller must guarantee that `src` is properly aligned for `T`.
            // - `T` has an alignment greater than or equal to u16.
            // - the remaining bytes is greater than or equal to `size_of::<u16>()`.
            unsafe {
                u16::atomic_load_relaxed(src.add(i), dst.add(i));
            }
        }
        return result;
    }

    // Otherwise, we read it per byte.
    let src = src as *const MaybeUninit<u8>;
    let dst = result.as_mut_ptr() as *mut MaybeUninit<u8>;
    for i in range(0..mem::size_of::<T>()) {
        // SAFETY:
        // - the remaining bytes is greater than or equal to 1.
        unsafe {
            u8::atomic_load_relaxed(src.add(i), dst.add(i));
        }
    }
    result
}

#[cfg_attr(feature = "inline-always", inline(always))]
#[cfg_attr(not(feature = "inline-always"), inline)]
pub(crate) unsafe fn atomic_store<T>(dst: *mut T, val: T) {
    // Safety requirements guaranteed by the caller:
    // - `dst` is valid for atomic writes.
    // - `dst` is properly aligned for `T`.
    // - `dst` go through `UnsafeCell::get`.
    // - there are no concurrent non-atomic operations.
    // - there are no concurrent atomic operations of different granularity.
    // - if there are concurrent atomic write operations, `T` is valid for all bit patterns.
    // Note that the safety of the code in this function relies on these guarantees,
    // whether or not they are explicitly mentioned in the each safety comment.
    debug_assert!(!dst.is_null());
    debug_assert!(dst as usize % mem::align_of::<T>() == 0);

    //　In atomic_store, the panic *after* the first store operation is unsound
    // because dst may become an invalid bit pattern.
    //
    // Our code is written very carefully so as not to cause panic, but we
    // will use additional guards just in case.
    //
    // Note:
    // - If the compiler can understand at compile time that panic will
    //   never occur, this guard will be removed (as with no-panic).
    // - atomic_load does not modify the data, so it does not have this requirement.
    // - If an invalid ordering is passed, it will be panic *before* the
    //   first store operation, so is fine.
    let guard = PanicGuard;

    let val = ManuallyDrop::new(val); // Do not drop `val`.

    if mem::size_of::<T>() == 0 {
        mem::forget(guard);
        return;
    }

    // If the alignment of `T` is greater than or equal to usize,
    // we can write it as a chunk of usize.
    if mem::align_of::<T>() >= mem::align_of::<usize>() {
        let src = (&*val as *const T).cast::<MaybeUninit<usize>>();
        let dst = dst.cast::<MaybeUninit<usize>>();
        for i in range(0..mem::size_of::<T>() / mem::size_of::<usize>()) {
            // SAFETY:
            // - the caller must guarantee that `dst` is properly aligned for `T`.
            // - `T` has an alignment greater than or equal to usize.
            // - the remaining bytes is greater than or equal to `size_of::<usize>()`.
            unsafe {
                usize::atomic_store_relaxed(dst.add(i), src.add(i));
            }
        }
        mem::forget(guard);
        return;
    }

    // If the alignment of `T` is greater than or equal to u32,
    // we can write it as a chunk of u32.
    if mem::size_of::<usize>() > 4 && mem::align_of::<T>() >= mem::align_of::<u32>() {
        let src = (&*val as *const T).cast::<MaybeUninit<u32>>();
        let dst = dst.cast::<MaybeUninit<u32>>();
        for i in range(0..mem::size_of::<T>() / mem::size_of::<u32>()) {
            // SAFETY:
            // - the caller must guarantee that `dst` is properly aligned for `T`.
            // - `T` has an alignment greater than or equal to u32.
            // - the remaining bytes is greater than or equal to `size_of::<u32>()`.
            unsafe {
                u32::atomic_store_relaxed(dst.add(i), src.add(i));
            }
        }
        mem::forget(guard);
        return;
    }

    // If the alignment of `T` is greater than or equal to u16,
    // we can write it as a chunk of u16.
    if mem::size_of::<usize>() > 2 && mem::align_of::<T>() >= mem::align_of::<u16>() {
        let src = (&*val as *const T).cast::<MaybeUninit<u16>>();
        let dst = dst.cast::<MaybeUninit<u16>>();
        for i in range(0..mem::size_of::<T>() / mem::size_of::<u16>()) {
            // SAFETY:
            // - the caller must guarantee that `dst` is properly aligned for `T`.
            // - `T` has an alignment greater than or equal to u16.
            // - the remaining bytes is greater than or equal to `size_of::<u16>()`.
            unsafe {
                u16::atomic_store_relaxed(dst.add(i), src.add(i));
            }
        }
        mem::forget(guard);
        return;
    }

    // Otherwise, we write it per byte.
    let src = (&*val as *const T).cast::<MaybeUninit<u8>>();
    let dst = dst.cast::<MaybeUninit<u8>>();
    for i in range(0..mem::size_of::<T>()) {
        // SAFETY:
        // - the caller must guarantee that `dst` is properly aligned for `T`.
        // - `T` has an alignment greater than or equal to u16.
        // - the remaining bytes is greater than or equal to `size_of::<u16>()`.
        unsafe {
            u8::atomic_store_relaxed(dst.add(i), src.add(i));
        }
    }
    mem::forget(guard);
}

// This allows read_volatile and atomic_load to be lowered to exactly the
// same assembly on little endian platforms such as aarch64, riscv64.
#[cfg_attr(feature = "inline-always", inline(always))]
#[cfg_attr(not(feature = "inline-always"), inline)]
#[cfg(target_endian = "little")]
fn range<T>(r: Range<T>) -> core::iter::Rev<Range<T>>
where
    Range<T>: DoubleEndedIterator,
{
    r.rev()
}
#[cfg_attr(feature = "inline-always", inline(always))]
#[cfg_attr(not(feature = "inline-always"), inline)]
#[cfg(target_endian = "big")]
fn range<T>(r: Range<T>) -> Range<T>
where
    Range<T>: DoubleEndedIterator,
{
    r
}

struct PanicGuard;

impl Drop for PanicGuard {
    fn drop(&mut self) {
        // This crate supports no-std environment, so we cannot use std::process::abort.
        // Instead, it uses the nature of double panics being converted to an abort.
        panic!("abort");
    }
}
