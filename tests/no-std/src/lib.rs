// SPDX-License-Identifier: Apache-2.0 OR MIT

#![no_std]
#![allow(dead_code, unused_imports, clippy::undocumented_unsafe_blocks)]

use core::{cell::UnsafeCell, mem, sync::atomic::Ordering};

use atomic_memcpy::{atomic_load, atomic_store};

fn all() {
    unsafe {
        let x = UnsafeCell::new([0u8; 300]);
        assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), [0u8; 300]);
        atomic_store(x.get(), [1u8; 300], Ordering::Relaxed);
        assert_eq!(atomic_load(x.get(), Ordering::Relaxed).assume_init(), [1u8; 300]);
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test() {
        all();
    }
}
