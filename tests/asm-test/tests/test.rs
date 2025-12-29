// SPDX-License-Identifier: Apache-2.0 OR MIT

use asmtest::{Revision, Tester};

#[rustfmt::skip]
#[test]
fn test() {
    let revisions = &[
        // All tier 1 or tier 2 linux (GNU) target
        // rustup target list | cut -d' ' -f1 | grep -F -e '-linux-gnu' | sed -E 's/^/    "/g; s/$/",/g'
        Revision::new("aarch64", "aarch64-unknown-linux-gnu"),
        Revision::new("armv6", "arm-unknown-linux-gnueabi"),
        Revision::new("armv6hf", "arm-unknown-linux-gnueabihf"),
        Revision::new("armv5te", "armv5te-unknown-linux-gnueabi"),
        Revision::new("armv7", "armv7-unknown-linux-gnueabi"),
        Revision::new("armv7hf", "armv7-unknown-linux-gnueabihf"),
        Revision::new("i586", "i586-unknown-linux-gnu"),
        Revision::new("i686", "i686-unknown-linux-gnu"),
        Revision::new("loongarch64", "loongarch64-unknown-linux-gnu"),
        Revision::new("powerpc", "powerpc-unknown-linux-gnu"),
        Revision::new("powerpc64", "powerpc64-unknown-linux-gnu"),
        Revision::new("powerpc64le", "powerpc64le-unknown-linux-gnu"),
        Revision::new("riscv64a23", "riscv64a23-unknown-linux-gnu"),
        Revision::new("riscv64gc", "riscv64gc-unknown-linux-gnu"),
        Revision::new("s390x", "s390x-unknown-linux-gnu"),
        Revision::new("sparc64", "sparc64-unknown-linux-gnu"),
        Revision::new("thumbv7neon", "thumbv7neon-unknown-linux-gnueabihf"),
        Revision::new("x86_64", "x86_64-unknown-linux-gnu"),
        Revision::new("x86_64_x32", "x86_64-unknown-linux-gnux32"),
        // Other targets
        Revision::new("riscv32i", "riscv32i-unknown-none-elf"),
        Revision::new("riscv32imac", "riscv32imac-unknown-none-elf"),
    ];
    Tester::new()
        .cargo_args(["-Z", "build-std=core", "--features", "atomic-memcpy"])
        .dump(env!("CARGO_MANIFEST_DIR"), "asm", revisions);
}
