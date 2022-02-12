#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
cd "$(dirname "$0")"/..

# Update the list of targets that do not support atomic load/store.
#
# Usage:
#    ./tools/no_atomic.sh

file="tools/no_atomic"

no_atomic=()
for target in $(rustc --print target-list); do
    target_spec=$(rustc --print target-spec-json -Z unstable-options --target "${target}")
    max_atomic_width=$(jq <<<"${target_spec}" -r '."max-atomic-width"')
    case "${max_atomic_width}" in
        # `"max-atomic-width" == 0` means that atomic is not supported at all.
        0) no_atomic+=("${target}") ;;
        # It is not clear exactly what `"max-atomic-width" == null` means, but they
        # actually seem to have the same max-atomic-width as the target-pointer-width.
        # The targets currently included in this group are "mipsel-sony-psp",
        # "thumbv4t-none-eabi", "thumbv6m-none-eabi", all of which are
        # `"target-pointer-width" == "32"`, so assuming them `"max-atomic-width" == 32`
        # for now.
        32 | 64 | 128 | null) ;;
        # There is no `"max-atomic-width" == 16` or `"max-atomic-width" == 8` targets.
        *) echo "unrecognized max-atomic-width value '${max_atomic_width}' for target '${target}'" && exit 1 ;;
    esac
done

echo -n "" >"${file}"
for target in "${no_atomic[@]}"; do
    echo "${target}" >>"${file}"
done
