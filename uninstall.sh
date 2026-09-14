#!/usr/bin/env bash
# Hangly Uninstaller Script

set -e

BIN_FILE="${HOME}/.local/bin/hangly"
APPS_FILE="${HOME}/.local/share/applications/hangly.desktop"
AUTOSTART_FILE="${HOME}/.config/autostart/hangly.desktop"

echo "=================================================="
echo "  Uninstalling Hangly Desktop Ornament..."
echo "=================================================="

rm -f "${BIN_FILE}"
echo "  ✔ Removed: ${BIN_FILE}"

rm -f "${APPS_FILE}"
echo "  ✔ Removed: ${APPS_FILE}"

if [ -f "${AUTOSTART_FILE}" ]; then
    rm -f "${AUTOSTART_FILE}"
    echo "  ✔ Removed autostart: ${AUTOSTART_FILE}"
fi

if command -v update-desktop-database >/dev/null 2>&1; then
    update-desktop-database "${HOME}/.local/share/applications" >/dev/null 2>&1 || true
fi

echo "=================================================="
echo "  ✔ Hangly has been uninstalled."
echo "=================================================="
