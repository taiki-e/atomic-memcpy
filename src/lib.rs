//! Byte-wise atomic memcpy.
//!
//! This is an attempt to implement equivalent of C++ ["P1478R1: Byte-wise atomic memcpy"][p1478r1] in Rust.
//!
//! This is expected to allow algorithms such as Seqlock and Chase-Lev deque to be implemented without UB of data races.
//! See [P1478R1][p1478r1] for more.
//!
//! [p1478r1]: http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2019/p1478r1.html

#![no_std]
#![doc(test(
    no_crate_inject,
    attr(
        deny(warnings, rust_2018_idioms, single_use_lifetimes),
        allow(dead_code, unused_variables)
    )
))]
#![warn(
    missing_debug_implementations,
    missing_docs,
    rust_2018_idioms,
    single_use_lifetimes,
    unreachable_pub
)]
#![cfg_attr(test, warn(unsafe_op_in_unsafe_fn))] // unsafe_op_in_unsafe_fn requires Rust 1.52
#![cfg_attr(not(test), allow(unused_unsafe))]
#![warn(
    clippy::exhaustive_enums,
    clippy::exhaustive_structs,
    clippy::missing_inline_in_public_items,
    clippy::pedantic,
    clippy::undocumented_unsafe_blocks
)]
#![allow(clippy::inline_always, clippy::single_match_else, clippy::too_many_lines)]

// This crate should work on targets with power-of-two pointer widths,
// but it is not clear how it will work on targets without them.
// There are currently no 8-bit, 128-bit, or higher builtin targets.
// Note that Rust (and C99) pointers must be at least 16-bits: https://github.com/rust-lang/rust/pull/49305
#[cfg(not(any(
    target_pointer_width = "16",
    target_pointer_width = "32",
    target_pointer_width = "64",
)))]
compile_error!(
    "atomic-memcpy currently only supports targets with {16,32,64}-bit pointer width; \
     if you need support for others, \
     please submit an issue at <https://github.com/taiki-e/atomic-memcpy>"
);

use core::sync::atomic::{self, Ordering};

/// Byte-wise atomic load.
///
/// # Safety
///
/// Behavior is undefined if any of the following conditions are violated:
///
/// - `src` must be valid for reads.
/// - `src` must be properly aligned.
/// - `src` must go through [`UnsafeCell::get`](core::cell::UnsafeCell::get).
/// - There are no concurrent non-atomic write operations.
/// - There are no concurrent atomic write operations of different
///   granularity. The granularity of atomic operations is an implementation
///   detail, so the concurrent write operation that can always
///   safely be used is only [`atomic_store`].
///
/// Like [`ptr::read`](core::ptr::read), `atomic_load` creates a bitwise copy of `T`, regardless of
/// whether `T` is [`Copy`]. If `T` is not [`Copy`], using both the returned
/// value and the value at `*src` can [violate memory safety][read-ownership].
///
/// Note that even if `T` has size `0`, the pointer must be non-null.
///
/// ## Returned value
///
/// This function returns [`MaybeUninit<T>`](core::mem::MaybeUninit) instead of `T`.
///
/// - All bits in the returned value are guaranteed to be copied from `src`.
/// - There is *no* guarantee that all bits in the return have been copied at
///   the same time, so if `src` is updated by a concurrent write operation,
///   it is up to the caller to make sure that the returned value is valid as `T`.
///
/// [read-ownership]: core::ptr::read#ownership-of-the-returned-value
/// [valid]: core::ptr#safety
///
/// # Panics
///
/// Panics if `order` is [`Release`](Ordering::Release) or [`AcqRel`](Ordering::AcqRel).
///
/// # Examples
///
/// ```rust
/// use std::{cell::UnsafeCell, sync::atomic::Ordering};
///
/// let v = UnsafeCell::new([0_u8; 64]);
/// let result = unsafe { atomic_memcpy::atomic_load(v.get(), Ordering::Acquire) };
/// // SAFETY: there was no concurrent write operations during load.
/// assert_eq!(unsafe { result.assume_init() }, [0; 64]);
/// ```
#[cfg_attr(all(feature = "no-panic", not(debug_assertions)), no_panic::no_panic)]
#[cfg_attr(feature = "inline-always", inline(always))]
#[cfg_attr(not(feature = "inline-always"), inline)]
pub unsafe fn atomic_load<T>(src: *const T, order: Ordering) -> core::mem::MaybeUninit<T> {
    match order {
        Ordering::Release => panic!("there is no such thing as a release load"),
        Ordering::AcqRel => panic!("there is no such thing as an acquire/release load"),
        _ => {}
    }
    // clippy bug that does not recognize safety comments inside macros.
    #[allow(clippy::undocumented_unsafe_blocks)]
    // SAFETY: the caller must uphold the safety contract for `atomic_load`.
    let val = unsafe { imp::atomic_load(src) };
    match order {
        Ordering::Relaxed => { /* no-op */ }
        _ => atomic::fence(order),
    }
    val
}

/// Byte-wise atomic store.
///
/// # Safety
///
/// Behavior is undefined if any of the following conditions are violated:
///
/// - `dst` must be [valid] for writes.
/// - `dst` must be properly aligned.
/// - `dst` must go through [`UnsafeCell::get`](core::cell::UnsafeCell::get).
/// - There are no concurrent non-atomic operations.
/// - There are no concurrent atomic operations of different
///   granularity. The granularity of atomic operations is an implementation
///   detail, so the concurrent operation that can always
///   safely be used is only [`atomic_load`].
///
/// If there are concurrent write operations, the resulting value at `*dst` may
/// contain a mixture of bytes written by this thread and bytes written by
/// another thread. If `T` is not valid for all bit patterns, using the value at
/// `*dst` can violate memory safety.
///
/// Note that even if `T` has size `0`, the pointer must be non-null.
///
/// [valid]: core::ptr#safety
///
/// # Panics
///
/// Panics if `order` is [`Acquire`](Ordering::Acquire) or [`AcqRel`](Ordering::AcqRel).
///
/// # Examples
///
/// ```rust
/// use std::{cell::UnsafeCell, sync::atomic::Ordering};
///
/// let v = UnsafeCell::new([0_u8; 64]);
/// unsafe {
///     atomic_memcpy::atomic_store(v.get(), [1; 64], Ordering::Release);
/// }
/// let result = unsafe { atomic_memcpy::atomic_load(v.get(), Ordering::Acquire) };
/// // SAFETY: there was no concurrent write operations during load.
/// assert_eq!(unsafe { result.assume_init() }, [1; 64]);
/// ```
#[cfg_attr(all(feature = "no-panic", not(debug_assertions)), no_panic::no_panic)]
#[cfg_attr(feature = "inline-always", inline(always))]
#[cfg_attr(not(feature = "inline-always"), inline)]
pub unsafe fn atomic_store<T>(dst: *mut T, val: T, order: Ordering) {
    match order {
        Ordering::Acquire => panic!("there is no such thing as an acquire store"),
        Ordering::AcqRel => panic!("there is no such thing as an acquire/release store"),
        Ordering::Relaxed => { /* no-op */ }
        _ => atomic::fence(order),
    }
    // clippy bug that does not recognize safety comments inside macros.
    #[allow(clippy::undocumented_unsafe_blocks)]
    // SAFETY: the caller must uphold the safety contract for `atomic_store`.
    unsafe {
        imp::atomic_store(dst, val);
    }
}

/// Since `#[cfg(target_has_atomic_load_store = "ptr")]` is not available on
/// stable, the following heuristic is used.
///
/// - 16-bit targets (e.g., avr, msp430) don't support atomic load/store.
/// 　　　　msp430 can actually support atomic load/store, but the LLVM backend does not support it yet.
///   - <https://github.com/rust-lang/rust/blob/788b1fe5b79a8b74215022f9df49b0eae68a50b9/compiler/rustc_target/src/spec/msp430_none_elf.rs#L22-L30>
///   - <https://github.com/rust-lang/rust/issues/45085#issuecomment-385090816>
///   - <https://github.com/rust-lang/rust/pull/55450>
/// - riscv32 targets without the A extension (e.g., riscv32i, riscv32imc) don't support atomic load/store.
///   However, if OS is available, atomic operations are supported: <https://github.com/rust-lang/rust/blob/788b1fe5b79a8b74215022f9df49b0eae68a50b9/compiler/rustc_target/src/spec/riscv32imc_esp_espidf.rs#L20-L26>
///
/// This heuristic is based on a list of builtin targets that currently do no support
/// atomic load/store, so it should be quite accurate, at least for builtin targets.
/// The addition of new builtin targets that do not support atomic load/store is
/// being tracked by CI. See `tools/no_atomic.sh` for more.
///
/// In addition to the above cfg, there is `cfg(atomic_memcpy_unsafe_volatile)`
/// to force the use of volatile read/write instead of atomic load/store.
/// Note that the use of `--cfg atomic_memcpy_unsafe_volatile` is
/// undefined behavior in the multi-threaded environment, since volatile
/// read/write does not guarantee anything about data race.
#[cfg(not(any(
    target_pointer_width = "16",
    all(target_arch = "riscv32", not(target_feature = "a"), target_os = "none"),
    atomic_memcpy_unsafe_volatile,
)))]
mod imp {
    #[cfg(not(target_pointer_width = "16"))]
    use core::sync::atomic::AtomicU32;
    #[cfg(not(any(target_pointer_width = "16", target_pointer_width = "32")))]
    use core::sync::atomic::AtomicU64;
    use core::{
        mem::{self, ManuallyDrop, MaybeUninit},
        ops::Range,
        sync::atomic::{AtomicU16, AtomicUsize, Ordering},
    };

    #[cfg(not(atomic_memcpy_symbolic_alignment_check_compat))]
    #[cfg(target_pointer_width = "32")]
    type Half = u16;
    #[cfg(not(atomic_memcpy_symbolic_alignment_check_compat))]
    #[cfg(target_pointer_width = "32")]
    type AtomicHalf = AtomicU16;

    #[cfg(not(atomic_memcpy_symbolic_alignment_check_compat))]
    #[cfg(target_pointer_width = "64")]
    type Half = u32;
    #[cfg(not(atomic_memcpy_symbolic_alignment_check_compat))]
    #[cfg(target_pointer_width = "64")]
    type AtomicHalf = AtomicU32;

    // Boundary to make the fields of LoadState private.
    //
    // Note that this is not a complete safe/unsafe boundary[1], since it is still
    // possible to pass an invalid pointer to the constructor.
    //
    // [1]: https://www.ralfj.de/blog/2016/01/09/the-scope-of-unsafe.html
    mod load {
        use core::{
            mem,
            sync::atomic::{AtomicU8, AtomicUsize, Ordering},
        };

        // Invariant: `src` and `result` will never change.
        // Invariant: Only the `advance` method can advance offset and counter.
        pub(super) struct LoadState {
            src: *const u8,
            // Note: This is a pointer from MaybeUninit.
            result: *mut u8,
            /// Counter to track remaining bytes in `T`.
            remaining: usize,
            offset: usize,
        }

        impl LoadState {
            #[cfg_attr(feature = "inline-always", inline(always))]
            #[cfg_attr(not(feature = "inline-always"), inline)]
            pub(super) fn new<T>(result: *mut T, src: *const T) -> Self {
                Self {
                    src: src as *const u8,
                    result: result as *mut u8,
                    remaining: mem::size_of::<T>(),
                    offset: 0,
                }
            }

            /// Advances pointers by `size` **bytes**.
            ///
            /// # Safety
            ///
            /// - The remaining bytes must be greater than or equal to `size`.
            /// - The range of `self.dst..self.dst.add(size)` must be filled.
            #[cfg_attr(feature = "inline-always", inline(always))]
            #[cfg_attr(not(feature = "inline-always"), inline)]
            unsafe fn advance(&mut self, size: usize) {
                debug_assert!(self.remaining >= size);
                self.remaining -= size;
                self.offset += size;
            }

            #[cfg_attr(feature = "inline-always", inline(always))]
            #[cfg_attr(not(feature = "inline-always"), inline)]
            pub(super) fn remaining(&self) -> usize {
                self.remaining
            }

            #[cfg_attr(feature = "inline-always", inline(always))]
            #[cfg_attr(not(feature = "inline-always"), inline)]
            unsafe fn src<T>(&self) -> &T {
                // SAFETY: the caller must uphold the safety contract.
                unsafe { &*(self.src.add(self.offset) as *const T) }
            }

            #[cfg_attr(feature = "inline-always", inline(always))]
            #[cfg_attr(not(feature = "inline-always"), inline)]
            unsafe fn result<T>(&self) -> *mut T {
                // SAFETY: the caller must uphold the safety contract.
                unsafe { self.result.add(self.offset) as *mut T }
            }

            #[cfg_attr(feature = "inline-always", inline(always))]
            #[cfg_attr(not(feature = "inline-always"), inline)]
            pub(super) fn atomic_load_u8(&mut self, count: usize) {
                // This condition is also checked by the caller, so the compiler
                // will remove this assertion by optimization.
                assert!(self.remaining() >= count);
                for _ in 0..count {
                    // SAFETY:
                    // - we've checked that the remaining bytes is greater than or equal to `count`
                    // Therefore, due to `LoadState`'s invariant:
                    // - `src` is valid to atomic read of `count` of u8.
                    // - `result` is valid to write of `count` of u8.
                    unsafe {
                        let val = self.src::<AtomicU8>().load(Ordering::Relaxed);
                        self.result::<u8>().write(val);
                        // SAFETY: we've filled 1 byte.
                        self.advance(1);
                    }
                }
            }

            /// Note: The remaining bytes smaller than usize are ignored.
            ///
            /// # Safety
            ///
            /// - `self.src` must be properly aligned for `usize`.
            ///
            /// There is no alignment requirement for `self.result`.
            #[cfg_attr(feature = "inline-always", inline(always))]
            #[cfg_attr(not(feature = "inline-always"), inline)]
            pub(super) unsafe fn atomic_load_usize_to_end(&mut self) {
                while self.remaining() >= mem::size_of::<usize>() {
                    // SAFETY:
                    // - the caller must guarantee that `src` is properly aligned for `usize`.
                    // - we've checked that the remaining bytes is greater than
                    //   or equal to `size_of::<usize>()`.
                    // Therefore, due to `LoadState`'s invariant:
                    // - `src` is valid to atomic read of `usize`.
                    // - `result` is valid to *unaligned* write of `usize`.
                    unsafe {
                        let val = self.src::<AtomicUsize>().load(Ordering::Relaxed);
                        self.result::<usize>().write_unaligned(val);
                        // SAFETY: we've filled `size_of::<usize>()` bytes.
                        self.advance(mem::size_of::<usize>());
                    }
                }
            }

            /// # Safety
            ///
            /// - both `self.src` and `self.result` must be properly aligned for `Half`.
            /// - the remaining bytes is greater than or equal to `size_of::<Half>()`.
            #[cfg(not(atomic_memcpy_symbolic_alignment_check_compat))]
            #[cfg(not(target_pointer_width = "16"))]
            #[cfg_attr(feature = "inline-always", inline(always))]
            #[cfg_attr(not(feature = "inline-always"), inline)]
            pub(super) unsafe fn atomic_load_half(&mut self) {
                use super::{AtomicHalf, Half};
                debug_assert!(self.remaining() >= mem::size_of::<Half>());
                // SAFETY:
                // - the caller must guarantee that both `src` and `dst` are properly aligned for `Half`.
                // - the caller must guarantee that the remaining bytes is greater than
                //   or equal to `size_of::<Half>()`.
                // Therefore, due to `LoadState`'s invariant:
                // - `src` is valid to atomic read of `Half`.
                // - `result` is valid to write of `Half`.
                unsafe {
                    let val = self.src::<AtomicHalf>().load(Ordering::Relaxed);
                    self.result::<Half>().write(val);
                    // SAFETY: we've filled `size_of::<Half>()` bytes.
                    self.advance(mem::size_of::<Half>());
                }
            }
        }
    }

    /// Byte-wise atomic load.
    ///
    /// # Safety
    ///
    /// See the documentation of [crate root's `atomic_load`](crate::atomic_load) for safety requirements.
    /**
    # Implementation

    It is implemented based on the assumption that atomic operations at a granularity greater than bytes is not a problem, as stated by [p1478r1].

    > Note that on standard hardware, it should be OK to actually perform the copy at larger than byte granularity. Copying multiple bytes as part of one operation is indistinguishable from running them so quickly that the intermediate state is not observed. In fact, we expect that existing assembly memcpy implementations will suffice when suffixed with the required fence.

    And it turns out that the granularity of the atomic operations is very important for performance.

    - Loading/storing all bytes in bytes is very slow at least on x86/x86_64.
    - The pointer width atomic operation is the fastest at least on x86/x86_64.
    - Atomic operations with a granularity larger than the pointer width are slow at least on x86/x86_64 (cmpxchg8b/cmpxchg16b).

    Note that the following additional safety requirements.

    - The granularity of the atomic operations in load and store must be the same.
    - When performing an atomic operation as a type with alignment greater than 1, the pointer must be properly aligned.

    The caller of `atomic_load` guarantees that the `src` is properly aligned.
    So, we can avoid calling align_offset or read at a granularity greater than u8 in some cases.

    The following is what this implementation is currently `atomic_load` using (Note: `atomic_store` also uses exactly the same way to determine the granularity of atomic operations):

    Branch | Granularity of atomic operations | Conditions
    ------ | -------------------------------- | ----------
    1      | u8 ..., usize ..., u8 ...        | `size_of::<T>() >= size_of::<usize>() * 4`, `align_of::<T>() < align_of::<usize>()`
    2      | usize ...                        | `align_of::<T>() >= align_of::<usize>()`
    3      | u32 ...                          | `align_of::<T>() >= align_of::<u32>()`, 64-bit or higher
    4      | u16 ...                          | `align_of::<T>() >= align_of::<u16>()`, 32-bit or higher
    5      | u8 ...                           |

    - Branch 1: If the alignment of `T` is less than usize, but `T` can be read as at least a few numbers of usize, compute the align offset and read it like `(&[AtomicU8], &[AtomicUsize], &[AtomicU8])`.
    - Branch 2: If the alignment of `T` is greater than or equal to usize, we can read it as a chunk of usize from the first byte.
    - Branch 3, 4: If the alignment of `T` is greater than 1, we can read it as a chunk of smaller integers (u32 or u16). This is basically the same strategy as Branch 2.
    - Branch 5: Otherwise, we read it per byte.

    Note that only Branch 1 requires to compute align offset dynamically.
    Note that which branch is chosen is evaluated at compile time.

    - The fastest is Branch 2, which can read all bytes as a chunk of usize.
    - If the size of `T` is not too small, Branch 1 is the next fastest to Branch 2.
    - If the size of `T` is small, Branch 3/4/5 can be faster than Branch 1.

    Whether to choose Branch 1 or Branch 3/4/5 when `T` is small is currently based on a rough heuristic based on simple benchmarks on x86_64.

    TODO: Update description to include additional optimization in Branch 1.

    [p1478r1]: http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2019/p1478r1.html
    */
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
        static_assert_atomic_alignment();

        let mut result = MaybeUninit::<T>::uninit();

        if mem::size_of::<T>() == 0 {
            return result;
        }

        // Branch 1: If the alignment of `T` is less than usize, but `T` can be read as
        // at least one or more usize, compute the align offset and read it
        // like `(&[AtomicU8], &[AtomicUsize], &[AtomicU8])`.
        if mem::align_of::<T>() < mem::align_of::<AtomicUsize>()
            && mem::size_of::<T>() >= mem::size_of::<usize>() * 4
        {
            let mut state = load::LoadState::new(result.as_mut_ptr(), src);
            // -Zmiri-symbolic-alignment-check is incompatible with the code that does manual integer arithmetic to ensure alignment.
            #[cfg(not(atomic_memcpy_symbolic_alignment_check_compat))]
            #[cfg(not(target_pointer_width = "16"))]
            {
                // Since the caller guarantees that the pointer is properly aligned,
                // if `T` has an alignment of half of usize, there are only two
                // patterns: read as usize from the first byte, or read as usize
                // after reading `usize / 2` bytes.
                //
                // on 64-bit:
                // | 8 | 8 | 8 | 4 |
                // | 4 | 8 | 8 | 8 |
                // or
                // | 8 | 8 | 8 |
                // | 4 | 8 | 8 | 4 |
                //
                // Handling this case manually can reduce the number of instructions
                // significantly compared to using align_offset.
                //
                // TODO: This may not be necessary if the call is well inlined.
                if mem::align_of::<T>() >= mem::align_of::<Half>() {
                    if src as usize % mem::size_of::<usize>() == 0 {
                        // SAFETY:
                        // - we've checked that `src` is properly aligned for `usize`.
                        // - the remaining bytes is greater than or equal to `size_of::<usize>()`.
                        unsafe { state.atomic_load_usize_to_end() }
                    } else {
                        debug_assert_eq!(
                            src as usize % mem::size_of::<usize>(),
                            mem::size_of::<Half>()
                        );
                        // SAFETY:
                        // - the caller must guarantee that `src` is properly aligned for `T`.
                        // - `T` has an alignment greater than or equal to `Half`.
                        // - the remaining bytes is greater than or equal to `size_of::<usize>()`.
                        unsafe {
                            state.atomic_load_half();
                            // SAFETY: we've advanced `size_of::<Half>()` bytes,
                            // so now `state.src` is definitely aligned.
                            state.atomic_load_usize_to_end();
                        }
                    }
                    // Load remaining bytes.
                    if state.remaining() != 0 {
                        debug_assert_eq!(state.remaining(), mem::size_of::<Half>());
                        // SAFETY:
                        // - the caller must guarantee that `src` is properly aligned for `T`.
                        // - `T` has an alignment greater than or equal to `Half`.
                        // - the remaining bytes is equal to `size_of::<Half>()`.
                        unsafe { state.atomic_load_half() }
                    }
                    return result;
                }
            }
            let offset = (src as *const u8).align_offset(mem::align_of::<AtomicUsize>());
            // Note: align_offset may returns usize::MAX: https://github.com/rust-lang/rust/issues/62420
            if state.remaining() >= offset {
                // Load `offset` bytes per byte to align `state.src`.
                state.atomic_load_u8(offset);
                debug_assert!(state.remaining() >= mem::size_of::<usize>());
                // SAFETY:
                // - align_offset succeeds and the `offset` bytes have been
                //   filled, so now `state.src` is definitely aligned.
                // - we've checked that the remaining bytes is greater than
                //   or equal to `size_of::<usize>()`.
                //
                // In this branch, the pointer to `state.result` is usually
                // not properly aligned, so we use `atomic_load_usize_to_end`,
                // which has no requirement for alignment of `state.result`.
                unsafe { state.atomic_load_usize_to_end() }
                // Load remaining bytes per byte.
                state.atomic_load_u8(state.remaining());
                debug_assert_eq!(state.remaining(), 0);
                return result;
            }
        }

        // Branch 2: If the alignment of `T` is greater than or equal to usize,
        // we can read it as a chunk of usize from the first byte.
        if mem::align_of::<T>() >= mem::align_of::<AtomicUsize>() {
            let src = src as *const AtomicUsize;
            let dst = result.as_mut_ptr() as *mut usize;
            for i in range(0..mem::size_of::<T>() / mem::size_of::<usize>()) {
                // SAFETY:
                // - the caller must guarantee that `src` is properly aligned for `T`.
                // - `T` has an alignment greater than or equal to usize.
                // - the remaining bytes is greater than or equal to `size_of::<usize>()`.
                unsafe {
                    let val: usize = (*src.add(i)).load(Ordering::Relaxed);
                    dst.add(i).write(val);
                }
            }
            return result;
        }

        #[cfg(not(target_pointer_width = "16"))]
        {
            // Branch 3: If the alignment of `T` is greater than or equal to u32,
            // we can read it as a chunk of u32 from the first byte.
            if mem::size_of::<usize>() > 4 && mem::align_of::<T>() >= mem::align_of::<AtomicU32>() {
                let src = src as *const AtomicU32;
                let dst = result.as_mut_ptr() as *mut u32;
                for i in range(0..mem::size_of::<T>() / mem::size_of::<u32>()) {
                    // SAFETY:
                    // - the caller must guarantee that `src` is properly aligned for `T`.
                    // - `T` has an alignment greater than or equal to u32.
                    // - the remaining bytes is greater than or equal to `size_of::<u32>()`.
                    unsafe {
                        let val: u32 = (*src.add(i)).load(Ordering::Relaxed);
                        dst.add(i).write(val);
                    }
                }
                return result;
            }
        }

        // Branch 4: If the alignment of `T` is greater than or equal to u16,
        // we can read it as a chunk of u16 from the first byte.
        if mem::size_of::<usize>() > 2 && mem::align_of::<T>() >= mem::align_of::<AtomicU16>() {
            let src = src as *const AtomicU16;
            let dst = result.as_mut_ptr() as *mut u16;
            for i in range(0..mem::size_of::<T>() / mem::size_of::<u16>()) {
                // SAFETY:
                // - the caller must guarantee that `src` is properly aligned for `T`.
                // - `T` has an alignment greater than or equal to u16.
                // - the remaining bytes is greater than or equal to `size_of::<u16>()`.
                unsafe {
                    let val: u16 = (*src.add(i)).load(Ordering::Relaxed);
                    dst.add(i).write(val);
                }
            }
            return result;
        }

        // Branch 5: Otherwise, we read it per byte.
        let mut state = load::LoadState::new(result.as_mut_ptr(), src);
        state.atomic_load_u8(state.remaining());
        debug_assert_eq!(state.remaining(), 0);
        result
    }

    // Boundary to make the fields of StoreState private.
    //
    // Note that this is not a complete safe/unsafe boundary, since it is still
    // possible to pass an invalid pointer to the constructor.
    mod store {
        use core::{
            mem,
            sync::atomic::{AtomicU8, AtomicUsize, Ordering},
        };

        // Invariant: `src` and `dst` will never change.
        // Invariant: Only the `advance` method can advance offset and counter.
        pub(super) struct StoreState {
            src: *const u8,
            dst: *const u8,
            /// Number of remaining bytes in `T`.
            remaining: usize,
            offset: usize,
        }

        impl StoreState {
            #[cfg_attr(feature = "inline-always", inline(always))]
            #[cfg_attr(not(feature = "inline-always"), inline)]
            pub(super) fn new<T>(dst: *mut T, src: *const T) -> Self {
                Self {
                    src: src as *const u8,
                    dst: dst as *mut u8 as *const u8,
                    remaining: mem::size_of::<T>(),
                    offset: 0,
                }
            }

            /// Advances pointers by `size` **bytes**.
            ///
            /// # Safety
            ///
            /// - The remaining bytes must be greater than or equal to `size`.
            /// - The range of `self.dst..self.dst.add(size)` must be filled.
            #[cfg_attr(feature = "inline-always", inline(always))]
            #[cfg_attr(not(feature = "inline-always"), inline)]
            unsafe fn advance(&mut self, size: usize) {
                debug_assert!(self.remaining >= size);
                self.remaining -= size;
                self.offset += size;
            }

            #[cfg_attr(feature = "inline-always", inline(always))]
            #[cfg_attr(not(feature = "inline-always"), inline)]
            pub(super) fn remaining(&self) -> usize {
                self.remaining
            }

            #[cfg_attr(feature = "inline-always", inline(always))]
            #[cfg_attr(not(feature = "inline-always"), inline)]
            unsafe fn src<T>(&self) -> *const T {
                // SAFETY: the caller must uphold the safety contract.
                unsafe { self.src.add(self.offset) as *const T }
            }

            #[cfg_attr(feature = "inline-always", inline(always))]
            #[cfg_attr(not(feature = "inline-always"), inline)]
            unsafe fn dst<T>(&self) -> &T {
                // SAFETY: the caller must uphold the safety contract.
                unsafe { &*(self.dst.add(self.offset) as *const T) }
            }

            #[cfg_attr(feature = "inline-always", inline(always))]
            #[cfg_attr(not(feature = "inline-always"), inline)]
            pub(super) fn atomic_store_u8(&mut self, count: usize) {
                // This condition is also checked by the caller, so the compiler
                // will remove this assertion by optimization.
                assert!(self.remaining() >= count);
                for _ in 0..count {
                    // SAFETY:
                    // - we've checked that the remaining bytes is greater than or equal to `count`
                    // Therefore, due to `StoreState`'s invariant:
                    // - `src` is valid to read of `count` of u8.
                    // - `dst` is valid to atomic write of `count` of u8.
                    unsafe {
                        let val = self.src::<u8>().read();
                        self.dst::<AtomicU8>().store(val, Ordering::Relaxed);
                        // SAFETY: we've filled 1 byte.
                        self.advance(1);
                    }
                }
            }

            /// Note: The remaining bytes smaller than usize are ignored.
            ///
            /// # Safety
            ///
            /// - `self.dst` must be properly aligned for `usize`.
            ///
            /// There is no alignment requirement for `self.src`.
            #[cfg_attr(feature = "inline-always", inline(always))]
            #[cfg_attr(not(feature = "inline-always"), inline)]
            pub(super) unsafe fn atomic_store_usize_to_end(&mut self) {
                while self.remaining() >= mem::size_of::<usize>() {
                    // SAFETY:
                    // - the caller must guarantee that `dst` is properly aligned for `usize`.
                    // - we've checked that the remaining bytes is greater than
                    //   or equal to `size_of::<usize>()`.
                    // Therefore, due to `StoreState`'s invariant:
                    // - `src` is valid to *unaligned* read of `usize`.
                    // - `dst` is valid to atomic write of `usize`.
                    unsafe {
                        let val = self.src::<usize>().read_unaligned();
                        self.dst::<AtomicUsize>().store(val, Ordering::Relaxed);
                        // SAFETY: we've filled `size_of::<usize>()` bytes.
                        self.advance(mem::size_of::<usize>());
                    }
                }
            }

            /// # Safety
            ///
            /// - both `self.src` and `self.dst` must be properly aligned for `Half`.
            /// - the remaining bytes is greater than or equal to `size_of::<Half>()`.
            #[cfg(not(atomic_memcpy_symbolic_alignment_check_compat))]
            #[cfg(not(target_pointer_width = "16"))]
            #[cfg_attr(feature = "inline-always", inline(always))]
            #[cfg_attr(not(feature = "inline-always"), inline)]
            pub(super) unsafe fn atomic_store_half(&mut self) {
                use super::{AtomicHalf, Half};
                debug_assert!(self.remaining() >= mem::size_of::<Half>());
                // SAFETY:
                // - the caller must guarantee that both `src` and `dst` is properly aligned for `Half`.
                // - the caller must guarantee that the remaining bytes is greater than
                //   or equal to `size_of::<Half>()`.
                // Therefore, due to `StoreState`'s invariant:
                // - `src` is valid to read of `Half`.
                // - `dst` is valid to atomic write of `Half`.
                unsafe {
                    let val = self.src::<Half>().read();
                    self.dst::<AtomicHalf>().store(val, Ordering::Relaxed);
                    // SAFETY: we've filled `size_of::<Half>()` bytes.
                    self.advance(mem::size_of::<Half>());
                }
            }
        }
    }

    /// Byte-wise atomic store.
    ///
    /// See the [`atomic_load`] function for the detailed implementation comment.
    ///
    /// # Safety
    ///
    /// See the documentation of [crate root's `atomic_store`](crate::atomic_store) for safety requirements.
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
        static_assert_atomic_alignment();

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

        // Branch 1: If the alignment of `T` is less than usize, but `T` can be write as
        // at least one or more usize, compute the align offset and write it
        // like `(&[AtomicU8], &[AtomicUsize], &[AtomicU8])`.
        if mem::align_of::<T>() < mem::align_of::<AtomicUsize>()
            && mem::size_of::<T>() >= mem::size_of::<usize>() * 4
        {
            let mut state = store::StoreState::new(dst, &*val);
            // See the `atomic_load` function for the detailed comment.
            #[cfg(not(atomic_memcpy_symbolic_alignment_check_compat))]
            #[cfg(not(target_pointer_width = "16"))]
            {
                if mem::align_of::<T>() >= mem::align_of::<Half>() {
                    if dst as usize % mem::size_of::<usize>() == 0 {
                        // SAFETY:
                        // - we've checked that `dst` is properly aligned for `usize`.
                        // - the remaining bytes is greater than or equal to `size_of::<usize>()`.
                        unsafe { state.atomic_store_usize_to_end() }
                    } else {
                        debug_assert_eq!(
                            dst as usize % mem::size_of::<usize>(),
                            mem::size_of::<Half>()
                        );
                        // SAFETY:
                        // - the caller must guarantee that `dst` is properly aligned for `T`.
                        // - `T` has an alignment greater than or equal to `Half`.
                        // - the remaining bytes is greater than or equal to `size_of::<usize>()`.
                        unsafe {
                            state.atomic_store_half();
                            // SAFETY: we've advanced `size_of::<Half>()` bytes,
                            // so now `state.dst` is definitely aligned.
                            state.atomic_store_usize_to_end();
                        }
                    }
                    // Store remaining bytes.
                    if state.remaining() != 0 {
                        debug_assert_eq!(state.remaining(), mem::size_of::<Half>());
                        // SAFETY:
                        // - the caller must guarantee that `src` is properly aligned for `T`.
                        // - `T` has an alignment greater than or equal to `Half`.
                        // - the remaining bytes is equal to `size_of::<Half>()`.
                        unsafe { state.atomic_store_half() }
                    }
                    mem::forget(guard);
                    return;
                }
            }
            let offset = (dst as *mut u8).align_offset(mem::align_of::<AtomicUsize>());
            // Note: align_offset may returns usize::MAX: https://github.com/rust-lang/rust/issues/62420
            if state.remaining() >= offset {
                // Store `offset` bytes per byte to align `state.dst`.
                state.atomic_store_u8(offset);
                debug_assert!(state.remaining() >= mem::size_of::<usize>());
                // SAFETY:
                // - align_offset succeeds and the `offset` bytes have been
                //   filled, so now `state.dst` is definitely aligned.
                // - we've checked that the remaining bytes is greater than
                //   or equal to `size_of::<usize>()`.
                //
                // In this branch, the pointer to `state.src` is usually
                // not properly aligned, so we use `atomic_store_usize_to_end`,
                // which has no requirement for alignment of `state.src`.
                unsafe {
                    state.atomic_store_usize_to_end();
                }
                // Store remaining bytes per byte.
                state.atomic_store_u8(state.remaining());
                debug_assert_eq!(state.remaining(), 0);
                mem::forget(guard);
                return;
            }
        }

        // Branch 2: If the alignment of `T` is greater than or equal to usize,
        // we can write it as a chunk of usize from the first byte.
        if mem::align_of::<T>() >= mem::align_of::<AtomicUsize>() {
            let src = &*val as *const T as *const usize;
            let dst = dst as *const AtomicUsize;
            for i in range(0..mem::size_of::<T>() / mem::size_of::<usize>()) {
                // SAFETY:
                // - the caller must guarantee that `dst` is properly aligned for `T`.
                // - `T` has an alignment greater than or equal to usize.
                // - the remaining bytes is greater than or equal to `size_of::<usize>()`.
                unsafe {
                    let val: usize = src.add(i).read();
                    (*dst.add(i)).store(val, Ordering::Relaxed);
                }
            }
            mem::forget(guard);
            return;
        }

        #[cfg(not(target_pointer_width = "16"))]
        {
            // Branch 3: If the alignment of `T` is greater than or equal to u32,
            // we can write it as a chunk of u32 from the first byte.
            if mem::size_of::<usize>() > 4 && mem::align_of::<T>() >= mem::align_of::<AtomicU32>() {
                let src = &*val as *const T as *const u32;
                let dst = dst as *const AtomicU32;
                for i in range(0..mem::size_of::<T>() / mem::size_of::<u32>()) {
                    // SAFETY:
                    // - the caller must guarantee that `dst` is properly aligned for `T`.
                    // - `T` has an alignment greater than or equal to u32.
                    // - the remaining bytes is greater than or equal to `size_of::<u32>()`.
                    unsafe {
                        let val: u32 = src.add(i).read();
                        (*dst.add(i)).store(val, Ordering::Relaxed);
                    }
                }
                mem::forget(guard);
                return;
            }
        }

        // Branch 4: If the alignment of `T` is greater than or equal to u16,
        // we can write it as a chunk of u16 from the first byte.
        if mem::size_of::<usize>() > 2 && mem::align_of::<T>() >= mem::align_of::<AtomicU16>() {
            let src = &*val as *const T as *const u16;
            let dst = dst as *const AtomicU16;
            for i in range(0..mem::size_of::<T>() / mem::size_of::<u16>()) {
                // SAFETY:
                // - the caller must guarantee that `dst` is properly aligned for `T`.
                // - `T` has an alignment greater than or equal to u16.
                // - the remaining bytes is greater than or equal to `size_of::<u16>()`.
                unsafe {
                    let val: u16 = src.add(i).read();
                    (*dst.add(i)).store(val, Ordering::Relaxed);
                }
            }
            mem::forget(guard);
            return;
        }

        // Branch 5: Otherwise, we write it per byte.
        let mut state = store::StoreState::new(dst, &*val);
        state.atomic_store_u8(state.remaining());
        debug_assert_eq!(state.remaining(), 0);
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

    // Atomic integers larger than the pointer size often does not have the
    // same alignment as the corresponding integer types.
    //
    // ```console
    // $ rustc --print cfg --target x86_64-apple-darwin | grep -E 'target_has_atomic_.*(64|128)'
    // target_has_atomic_equal_alignment="64"
    // target_has_atomic_load_store="128"
    // target_has_atomic_load_store="64"
    // ```
    //
    // It's unlikely that the same thing will happen with an atomic type
    // less than or equal to the pointer size, but we'll check just in case.
    #[cfg_attr(feature = "inline-always", inline(always))]
    #[cfg_attr(not(feature = "inline-always"), inline)]
    fn static_assert_atomic_alignment() {
        let [] = [(); mem::align_of::<usize>() - mem::align_of::<AtomicUsize>()];
        #[cfg(not(any(target_pointer_width = "16", target_pointer_width = "32")))]
        let [] = [(); mem::align_of::<u64>() - mem::align_of::<AtomicU64>()];
        #[cfg(not(target_pointer_width = "16"))]
        let [] = [(); mem::align_of::<u32>() - mem::align_of::<AtomicU32>()];
        let [] = [(); mem::align_of::<u16>() - mem::align_of::<AtomicU16>()];
    }

    struct PanicGuard;

    impl Drop for PanicGuard {
        fn drop(&mut self) {
            // This crate supports no-std environment, so we cannot use std::process::abort.
            // Instead, it uses the nature of double panics being converted to an abort.
            panic!("abort");
        }
    }
}

#[cfg(any(
    target_pointer_width = "16",
    all(target_arch = "riscv32", not(target_feature = "a"), target_os = "none"),
    atomic_memcpy_unsafe_volatile,
))]
mod imp {
    #[cfg_attr(feature = "inline-always", inline(always))]
    #[cfg_attr(not(feature = "inline-always"), inline)]
    pub(crate) unsafe fn atomic_load<T>(src: *const T) -> core::mem::MaybeUninit<T> {
        // SAFETY: the user who explicitly specified the `--cfg atomic_memcpy_unsafe_volatile`
        // must guarantees that the volatile read would not cause data races.
        //
        // HACK: Using volatile read/write instead of atomic load/store on single-threaded platforms where
        // LLVM does not support atomic is normally considered to be an okay workaround.
        // <https://github.com/rust-lang/compiler-builtins/commit/e0187f17dbcbf9dc026d379b2af8d866300596a5>
        unsafe { (src as *const core::mem::MaybeUninit<T>).read_volatile() }
    }

    #[cfg_attr(feature = "inline-always", inline(always))]
    #[cfg_attr(not(feature = "inline-always"), inline)]
    pub(crate) unsafe fn atomic_store<T>(dst: *mut T, src: T) {
        // SAFETY: the user who explicitly specified the `--cfg atomic_memcpy_unsafe_volatile`
        // must guarantees that the volatile write would not cause data races.
        //
        // HACK: Using volatile read/write instead of atomic load/store on single-threaded platforms where
        // LLVM does not support atomic is normally considered to be an okay workaround.
        // <https://github.com/rust-lang/compiler-builtins/commit/e0187f17dbcbf9dc026d379b2af8d866300596a5>
        unsafe {
            dst.write_volatile(src);
        }
    }
}
