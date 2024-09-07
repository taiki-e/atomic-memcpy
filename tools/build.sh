#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0 OR MIT
set -CeEuo pipefail
IFS=$'\n\t'
trap -- 's=$?; printf >&2 "%s\n" "${0##*/}:${LINENO}: \`${BASH_COMMAND}\` exit with ${s}"; exit ${s}' ERR
trap -- 'printf >&2 "%s\n" "${0##*/}: trapped SIGINT"; exit 1' SIGINT
cd -- "$(dirname -- "$0")"/..

# USAGE:
#    ./tools/build.sh [+toolchain] [target]...

default_targets=(
    # no atomic load/store (16-bit)
    msp430-none-elf

    # no atomic CAS (16-bit)
    avr-unknown-gnu-atmega328
    # no atomic CAS (32-bit)
    thumbv6m-none-eabi
    riscv32i-unknown-none-elf

    # no-std
    thumbv7m-none-eabi
    # riscv32 with atomic
    riscv32imac-unknown-none-elf
    riscv32imc-esp-espidf
)

x() {
    (
        set -x
        "$@"
    )
}
x_cargo() {
    if [[ -n "${RUSTFLAGS:-}" ]]; then
        printf '%s\n' "+ RUSTFLAGS='${RUSTFLAGS}' \\"
    fi
    x cargo "$@"
    printf '\n'
}

pre_args=()
if [[ "${1:-}" == "+"* ]]; then
    pre_args+=("$1")
    shift
fi
if [[ $# -gt 0 ]]; then
    targets=("$@")
else
    targets=("${default_targets[@]}")
fi

rustup_target_list=$(rustup ${pre_args[@]+"${pre_args[@]}"} target list | cut -d' ' -f1)
rustc_target_list=$(rustc ${pre_args[@]+"${pre_args[@]}"} --print target-list)
rustc_version=$(rustc ${pre_args[@]+"${pre_args[@]}"} -vV | grep -E '^release:' | cut -d' ' -f2)
rustc_minor_version="${rustc_version#*.}"
rustc_minor_version="${rustc_minor_version%%.*}"
llvm_version=$(rustc ${pre_args[@]+"${pre_args[@]}"} -vV | { grep -E '^LLVM version:' || true; } | cut -d' ' -f3)
llvm_version="${llvm_version%%.*}"
base_args=(${pre_args[@]+"${pre_args[@]}"} hack build)
nightly=''
if [[ "${rustc_version}" =~ nightly|dev ]]; then
    nightly=1
    rustup ${pre_args[@]+"${pre_args[@]}"} component add rust-src &>/dev/null
fi

build() {
    local target="$1"
    shift
    local args=("${base_args[@]}" --target "${target}")
    local target_rustflags="${RUSTFLAGS:-}"
    if ! grep -Eq "^${target}$" <<<"${rustc_target_list}"; then
        printf '%s\n' "target '${target}' not available on ${rustc_version} (skipped all checks)"
        return 0
    fi
    if grep -Eq "^${target}$" <<<"${rustup_target_list}"; then
        rustup ${pre_args[@]+"${pre_args[@]}"} target add "${target}" &>/dev/null
    elif [[ -n "${nightly}" ]]; then
        # Only build core because our library code doesn't depend on std.
        args+=(-Z build-std="core")
    else
        printf '%s\n' "target '${target}' requires nightly compiler (skipped all checks)"
        return 0
    fi
    if [[ "${target}" == "avr"* ]]; then
        if [[ "${llvm_version}" -eq 16 ]]; then
            # https://github.com/rust-lang/compiler-builtins/issues/523
            target_rustflags+=" -C linker-plugin-lto -C codegen-units=1"
        elif [[ "${llvm_version}" -ge 17 ]]; then
            # https://github.com/rust-lang/rust/issues/88252
            target_rustflags+=" -C opt-level=s"
        fi
    fi

    RUSTFLAGS="${target_rustflags}" \
        x_cargo "${args[@]}" --manifest-path tests/no-std/Cargo.toml
    RUSTFLAGS="${target_rustflags}" \
        x_cargo "${args[@]}" --manifest-path tests/no-std/Cargo.toml --release

    RUSTFLAGS="${target_rustflags}" \
        x_cargo "${args[@]}" --feature-powerset --optional-deps --no-dev-deps --manifest-path Cargo.toml
    RUSTFLAGS="${target_rustflags}" \
        x_cargo "${args[@]}" --feature-powerset --optional-deps --no-dev-deps --manifest-path Cargo.toml --release
}

for target in "${targets[@]}"; do
    build "${target}"
done
