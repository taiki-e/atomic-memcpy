#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
cd "$(dirname "$0")"/..

trap -- 'exit 0' SIGINT

default_targets=(
    # no atomic load/store (16-bit)
    avr-unknown-gnu-atmega328
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

x() {
    local cmd="$1"
    shift
    (
        set -x
        "${cmd}" "$@"
    )
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

rustup_target_list=$(rustup ${pre_args[@]+"${pre_args[@]}"} target list)
rustc_target_list=$(rustc ${pre_args[@]+"${pre_args[@]}"} --print target-list)
rustc_version=$(rustc ${pre_args[@]+"${pre_args[@]}"} -Vv | grep 'release: ' | sed 's/release: //')
base_args=(${pre_args[@]+"${pre_args[@]}"} hack build)
nightly=''
if [[ "${rustc_version}" == *"nightly"* ]] || [[ "${rustc_version}" == *"dev"* ]]; then
    nightly=1
    rustup ${pre_args[@]+"${pre_args[@]}"} component add rust-src &>/dev/null
    case "${rustc_version}" in
        # -Z check-cfg requires 1.63.0-nightly
        1.[0-5]* | 1.6[0-2].*) ;;
        *)
            check_cfg="-Z unstable-options --check-cfg=names() --check-cfg=values(feature,\"cargo-clippy\")"
            rustup ${pre_args[@]+"${pre_args[@]}"} component add clippy &>/dev/null
            base_args=(${pre_args[@]+"${pre_args[@]}"} hack clippy -Z check-cfg="names,values,output,features")
            ;;
    esac
fi
echo "base rustflags='${RUSTFLAGS:-} ${check_cfg:-}'"

build() {
    local target="$1"
    shift
    local args=("${base_args[@]}" --target "${target}")
    local target_rustflags="${RUSTFLAGS:-} ${check_cfg:-}"
    if ! grep <<<"${rustc_target_list}" -Eq "^${target}$"; then
        echo "target '${target}' not available on ${rustc_version} (skipped all checks)"
        return 0
    fi
    if grep <<<"${rustup_target_list}" -Eq "^${target}( |$)"; then
        x rustup ${pre_args[@]+"${pre_args[@]}"} target add "${target}" &>/dev/null
    elif [[ -n "${nightly}" ]]; then
        case "${target}" in
            *-none* | avr-* | *-esp-espidf) args+=(-Z build-std="core") ;;
            *) args+=(-Z build-std) ;;
        esac
    else
        echo "target '${target}' requires nightly compiler"
        return 0
    fi
    if [[ "${target}" == "avr-"* ]]; then
        # https://github.com/rust-lang/rust/issues/88252
        target_rustflags="${target_rustflags} -C opt-level=s"
    fi

    RUSTFLAGS="${target_rustflags}" \
        x cargo "${args[@]}" --manifest-path tests/no-std/Cargo.toml
    RUSTFLAGS="${target_rustflags}" \
        x cargo "${args[@]}" --release --manifest-path tests/no-std/Cargo.toml

    RUSTFLAGS="${target_rustflags}" \
        x cargo "${args[@]}" --feature-powerset --optional-deps --no-dev-deps --manifest-path Cargo.toml
    RUSTFLAGS="${target_rustflags}" \
        x cargo "${args[@]}" --release --feature-powerset --optional-deps --no-dev-deps --manifest-path Cargo.toml
}

for target in "${targets[@]}"; do
    build "${target}"
done
