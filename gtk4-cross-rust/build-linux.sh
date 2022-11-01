#!/bin/bash
set -euo pipefail
# shellcheck source=/dev/null
source "$HOME/.cargo/env"
cargo build --release --locked
