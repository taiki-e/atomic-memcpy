#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0 OR MIT
set -eEuo pipefail
IFS=$'\n\t'
cd "$(dirname "$0")"/..

# shellcheck disable=SC2154
trap 's=$?; echo >&2 "$0: error on line "${LINENO}": ${BASH_COMMAND}"; exit ${s}' ERR
trap -- 'echo >&2 "$0: trapped SIGINT"; exit 1' SIGINT

# USAGE:
#    ./tools/build.sh [+toolchain] [target]...

default_targets=(
    # no atomic load/store (16-bit)
    msp430-none-elf
    # no atomic load/store (32-bit)
    riscv32i-unknown-none-elf

    # no atomic CAS (16-bit)
    avr-unknown-gnu-atmega328
    # no atomic CAS (32-bit)
    thumbv6m-none-eabi

    # no-std
    thumbv7m-none-eabi
    # riscv32 with atomic
    riscv32imac-unknown-none-elf
    riscv32imc-esp-espidf
)

x() {
    local cmd="$1"
    shift
    (
        set -x
        "${cmd}" "$@"
    )
}
x_cargo() {
    if [[ -n "${RUSTFLAGS:-}" ]]; then
        echo "+ RUSTFLAGS='${RUSTFLAGS}' \\"
    fi
    x cargo "$@"
    echo
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

rustup_target_list=$(rustup ${pre_args[@]+"${pre_args[@]}"} target list | sed 's/ .*//g')
rustc_target_list=$(rustc ${pre_args[@]+"${pre_args[@]}"} --print target-list)
rustc_version=$(rustc ${pre_args[@]+"${pre_args[@]}"} -Vv | grep 'release: ' | sed 's/release: //')
rustc_minor_version="${rustc_version#*.}"
rustc_minor_version="${rustc_minor_version%%.*}"
llvm_version=$(rustc ${pre_args[@]+"${pre_args[@]}"} -Vv | (grep 'LLVM version: ' || true) | (sed 's/LLVM version: //' || true))
llvm_version="${llvm_version%%.*}"
base_args=(${pre_args[@]+"${pre_args[@]}"} hack build)
nightly=''
if [[ "${rustc_version}" == *"nightly"* ]] || [[ "${rustc_version}" == *"dev"* ]]; then
    nightly=1
    rustup ${pre_args[@]+"${pre_args[@]}"} component add rust-src &>/dev/null
fi

build() {
    local target="$1"
    shift
    local args=("${base_args[@]}" --target "${target}")
    local target_rustflags="${RUSTFLAGS:-}"
    if ! grep <<<"${rustc_target_list}" -Eq "^${target}$"; then
        echo "target '${target}' not available on ${rustc_version} (skipped all checks)"
        return 0
    fi
    if grep <<<"${rustup_target_list}" -Eq "^${target}$"; then
        rustup ${pre_args[@]+"${pre_args[@]}"} target add "${target}" &>/dev/null
    elif [[ -n "${nightly}" ]]; then
        # Only build core because our library code doesn't depend on std.
        args+=(-Z build-std="core")
    else
        echo "target '${target}' requires nightly compiler (skipped all checks)"
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
        x_cargo "${args[@]}" --release --manifest-path tests/no-std/Cargo.toml

    RUSTFLAGS="${target_rustflags}" \
        x_cargo "${args[@]}" --feature-powerset --optional-deps --no-dev-deps --manifest-path Cargo.toml
    RUSTFLAGS="${target_rustflags}" \
        x_cargo "${args[@]}" --release --feature-powerset --optional-deps --no-dev-deps --manifest-path Cargo.toml
}

for target in "${targets[@]}"; do
    build "${target}"
done
