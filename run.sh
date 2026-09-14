#!/usr/bin/env bash
# Hangly Launcher Script
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Starting Hangly Desktop Ornament..."
exec python3 "${SCRIPT_DIR}/hangly.py" "$@"
