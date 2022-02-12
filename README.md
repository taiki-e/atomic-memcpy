# atomic-memcpy

[![crates.io](https://img.shields.io/crates/v/atomic-memcpy?style=flat-square&logo=rust)](https://crates.io/crates/atomic-memcpy)
[![docs.rs](https://img.shields.io/badge/docs.rs-atomic--memcpy-blue?style=flat-square)](https://docs.rs/atomic-memcpy)
[![license](https://img.shields.io/badge/license-Apache--2.0_OR_MIT-blue?style=flat-square)](#license)
[![rustc](https://img.shields.io/badge/rustc-1.36+-blue?style=flat-square&logo=rust)](https://www.rust-lang.org)
[![build status](https://img.shields.io/github/workflow/status/taiki-e/atomic-memcpy/CI/main?style=flat-square&logo=github)](https://github.com/taiki-e/atomic-memcpy/actions)

Byte-wise atomic memcpy.

This is an attempt to implement equivalent of C++ ["P1478R1: Byte-wise atomic memcpy"][p1478r1] in Rust.

This is expected to allow algorithms such as Seqlock and Chase-Lev deque to be implemented without UB of data races.
See [P1478R1][p1478r1] for more.

## Status

- If the alignment of the type being copied is the same as the pointer width, `atomic_load` is possible to produce an assembly roughly equivalent to the case of using volatile read + atomic fence on many platforms. (See [`tests/asm-test/asm`][asm-test] directory for more).
- If the alignment of the type being copied is smaller than the pointer width, there will be some performance degradation. However, it is implemented in such a way that it does not cause extreme performance degradation at least on x86_64. (See [the implementation comments of `atomic_load`][implementation] for more.) It is possible that there is still room for improvement, especially on non-x86_64 platforms.
- Optimization for the case where the alignment of the type being copied is larger than the pointer width has not yet been fully investigated. It is possible that there is still room for improvement, especially on 32-bit platforms where `AtomicU64` is available.
- If the type being copied contains uninitialized bytes (e.g., padding), it is incompatible with `-Zmiri-check-number-validity`. This will probably not be resolved until something like `AtomicMaybeUninit` is supported.

[p1478r1]: http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2019/p1478r1.html
[implementation]: https://github.com/taiki-e/atomic-memcpy/blob/279d7041e48fae0943a50102ebab97e7ed3977ae/src/lib.rs#L359-L403
[asm-test]: tests/asm-test/asm

## License

Licensed under either of [Apache License, Version 2.0](LICENSE-APACHE) or
[MIT license](LICENSE-MIT) at your option.

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the Apache-2.0 license, shall
be dual licensed as above, without any additional terms or conditions.
