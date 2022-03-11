#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
cd "$(dirname "$0")"/..

trap -- 'exit 0' SIGINT

default_targets=(
    # no atomic load/store (16-bit)
    # avr-unknown-gnu-atmega328 # https://github.com/rust-lang/compiler-builtins/issues/400
    msp430-none-elf
    # no atomic load/store (32-bit)
    riscv32i-unknown-none-elf
    riscv32imc-unknown-none-elf

    # no atomic CAS
    thumbv6m-none-eabi

    # no-std
    thumbv7m-none-eabi
    # riscv32 with atomic
    riscv32imac-unknown-none-elf
    riscv32imc-esp-espidf
)

common_args=()
if [[ "${1:-}" == "+"* ]]; then
    common_args+=("$1")
    shift
fi
if [[ $# -gt 0 ]]; then
    targets=("$@")
else
    targets=("${default_targets[@]}")
fi

rustup_target_list=$(rustup ${common_args[@]+"${common_args[@]}"} target list)
rustc_target_list=$(rustc ${common_args[@]+"${common_args[@]}"} --print target-list)
rustc_version=$(rustc ${common_args[@]+"${common_args[@]}"} -Vv | grep 'release: ' | sed 's/release: //')
if [[ "${rustc_version}" == *"nightly"* ]] || [[ "${rustc_version}" == *"dev"* ]]; then
    rustup ${common_args[@]+"${common_args[@]}"} component add rust-src &>/dev/null
    case "${rustc_version}" in
        # -Z check-cfg-features requires 1.61.0-nightly
        1.3* | 1.4* | 1.5* | 1.60.*) ;;
        *)
            check_cfg='-Z unstable-options --check-cfg=names(atomic_memcpy_unsafe_volatile)'
            ;;
    esac
fi

x() {
    local cmd="$1"
    shift
    (
        set -x
        "${cmd}" "$@"
    )
}
build() {
    local target="$1"
    shift
    args=()
    if ! grep <<<"${rustc_target_list}" -Eq "^${target}$"; then
        echo "target '${target}' not available on ${rustc_version}"
        return 0
    fi
    if [[ "${target}" == "avr-"* ]]; then
        # https://github.com/rust-lang/compiler-builtins/issues/400
        case "${rustc_version}" in
            1.4* | 1.50.* | 1.51.*) ;;
            *) return 0 ;;
        esac
    fi
    if [[ "${target}" == "riscv32"* ]]; then
        # TODO: cfg(target_has_atomic) requires Rust 1.60.
        case "${rustc_version}" in
            1.3* | 1.4* | 1.5*) return 0 ;;
            *) ;;
        esac
    fi
    args+=(${common_args[@]+"${common_args[@]}"} hack build)
    if grep <<<"${rustup_target_list}" -Eq "^${target}( |$)"; then
        x rustup ${common_args[@]+"${common_args[@]}"} target add "${target}" &>/dev/null
    elif [[ "${rustc_version}" == *"nightly"* ]] || [[ "${rustc_version}" == *"dev"* ]]; then
        case "${target}" in
            *-none* | avr-* | riscv32imc-esp-espidf) args+=(-Z build-std=core) ;;
            *) args+=(-Z build-std) ;;
        esac
    else
        echo "target '${target}' requires nightly compiler"
        return 0
    fi
    if [[ -n "${check_cfg:-}" ]]; then
        args+=(-Z check-cfg-features)
    fi
    args+=(--target "${target}")

    RUSTFLAGS="${RUSTFLAGS:-} ${check_cfg:-}" \
        x cargo "${args[@]}" --feature-powerset --optional-deps --no-dev-deps --manifest-path Cargo.toml
    RUSTFLAGS="${RUSTFLAGS:-} ${check_cfg:-}" \
        x cargo "${args[@]}" --release --feature-powerset --optional-deps --no-dev-deps --manifest-path Cargo.toml
    RUSTFLAGS="${RUSTFLAGS:-} ${check_cfg:-}" \
        x cargo "${args[@]}" --manifest-path tests/no-std/Cargo.toml
    RUSTFLAGS="${RUSTFLAGS:-} ${check_cfg:-}" \
        x cargo "${args[@]}" --release --manifest-path tests/no-std/Cargo.toml
}

for target in "${targets[@]}"; do
    build "${target}"
done
