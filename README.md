# atomic-memcpy

[![crates.io](https://img.shields.io/crates/v/atomic-memcpy?style=flat-square&logo=rust)](https://crates.io/crates/atomic-memcpy)
[![docs.rs](https://img.shields.io/badge/docs.rs-atomic--memcpy-blue?style=flat-square&logo=docs.rs)](https://docs.rs/atomic-memcpy)
[![license](https://img.shields.io/badge/license-Apache--2.0_OR_MIT-blue?style=flat-square)](#license)
[![msrv](https://img.shields.io/badge/msrv-1.36-blue?style=flat-square&logo=rust)](https://www.rust-lang.org)
[![github actions](https://img.shields.io/github/actions/workflow/status/taiki-e/atomic-memcpy/ci.yml?branch=main&style=flat-square&logo=github)](https://github.com/taiki-e/atomic-memcpy/actions)

<!-- tidy:crate-doc:start -->
Byte-wise atomic memcpy.

This is an attempt to implement equivalent of C++ ["P1478: Byte-wise atomic memcpy"][p1478] in Rust.

This is expected to allow algorithms such as Seqlock and Chase-Lev deque to be implemented without UB of data races.
See [P1478][p1478] for more.

## Status

- If the alignment of the type being copied is the same as the pointer width, `atomic_load` is possible to produce an assembly roughly equivalent to the case of using volatile read + atomic fence on many platforms. (e.g., [aarch64](https://github.com/taiki-e/atomic-memcpy/blob/HEAD/tests/asm-test/asm/aarch64-unknown-linux-gnu/atomic_memcpy_load_align8), [riscv64](https://github.com/taiki-e/atomic-memcpy/blob/HEAD/tests/asm-test/asm/riscv64gc-unknown-linux-gnu/atomic_memcpy_load_align8). See [`tests/asm-test/asm`][asm-test] directory for more).
- If the alignment of the type being copied is smaller than the pointer width, there will be some performance degradation. However, it is implemented in such a way that it does not cause extreme performance degradation at least on x86_64. (See [the implementation comments of `atomic_load`][implementation] for more.) It is possible that there is still room for improvement, especially on non-x86_64 platforms.
- Optimization for the case where the alignment of the type being copied is larger than the pointer width has not yet been fully investigated. It is possible that there is still room for improvement.
- If the type being copied contains pointers it is not compatible with strict provenance because the copy does ptr-to-int transmutes.
- If the type being copied contains uninitialized bytes (e.g., padding) [it is undefined behavior because the copy goes through integers][undefined-behavior]. This problem will probably not be resolved until something like `AtomicMaybeUninit` is supported.

## Related Projects

- [portable-atomic]: Portable atomic types including support for 128-bit atomics, atomic float, etc. Using byte-wise atomic memcpy to implement Seqlock, which is used in the fallback implementation.
- [atomic-maybe-uninit]: Atomic operations on potentially uninitialized integers.

[asm-test]: https://github.com/taiki-e/atomic-memcpy/tree/HEAD/tests/asm-test/asm
[atomic-maybe-uninit]: https://github.com/taiki-e/atomic-maybe-uninit
[implementation]: https://github.com/taiki-e/atomic-memcpy/blob/v0.2.0/src/lib.rs#L367-L427
[p1478]: https://www.open-std.org/jtc1/sc22/wg21/docs/papers/2022/p1478r7.html
[portable-atomic]: https://github.com/taiki-e/portable-atomic
[undefined-behavior]: https://doc.rust-lang.org/reference/behavior-considered-undefined.html

<!-- tidy:crate-doc:end -->

## License

Licensed under either of [Apache License, Version 2.0](LICENSE-APACHE) or
[MIT license](LICENSE-MIT) at your option.

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the Apache-2.0 license, shall
be dual licensed as above, without any additional terms or conditions.
