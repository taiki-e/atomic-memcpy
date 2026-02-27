# Changelog

All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](https://semver.org).

Releases may yanked if there is a security bug, a soundness bug, or a regression.

<!--
Note: In this file, do not use the hard wrap in the middle of a sentence for compatibility with GitHub comment style markdown rendering.
-->

## [Unreleased]

- Enable [release immutability](https://docs.github.com/en/code-security/supply-chain-security/understanding-your-software-supply-chain/immutable-releases).

## [0.2.2] - 2023-08-19

- Exclude unneeded files from crates.io.

## [0.2.1] - 2023-01-15

- Update `portable-atomic` to 1.

## [0.2.0] - 2022-08-03

- Use `portable-atomic` crate on no-std targets to soundly support targets that do not have atomic load/store. ([#4](https://github.com/taiki-e/atomic-memcpy/pull/4))

- `inline-always` optional feature is now considered unstable.

- Remove `atomic_memcpy_unsafe_volatile` cfg.

- Remove unstable `no-panic` optional feature.

## [0.1.3] - 2022-02-26

- Fix documentation about uninitialized bytes. ([#5](https://github.com/taiki-e/atomic-memcpy/pull/5))

## [0.1.2] - 2022-02-24

- Fix compatibility with `-Zmiri-symbolic-alignment-check`. ([d7961b8](https://github.com/taiki-e/atomic-memcpy/commit/d7961b845b52fe52549193ff249cba0fe3c97acf))

## [0.1.1] - 2022-02-13

- Fix "unsupported operation: unable to turn pointer into raw bytes" Miri error. ([#1](https://github.com/taiki-e/atomic-memcpy/pull/1))

## [0.1.0] - 2022-02-12

Initial release

[Unreleased]: https://github.com/taiki-e/atomic-memcpy/compare/v0.2.2...HEAD
[0.2.2]: https://github.com/taiki-e/atomic-memcpy/compare/v0.2.1...v0.2.2
[0.2.1]: https://github.com/taiki-e/atomic-memcpy/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/taiki-e/atomic-memcpy/compare/v0.1.3...v0.2.0
[0.1.3]: https://github.com/taiki-e/atomic-memcpy/compare/v0.1.2...v0.1.3
[0.1.2]: https://github.com/taiki-e/atomic-memcpy/compare/v0.1.1...v0.1.2
[0.1.1]: https://github.com/taiki-e/atomic-memcpy/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/taiki-e/atomic-memcpy/releases/tag/v0.1.0
