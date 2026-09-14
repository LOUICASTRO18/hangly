#!/usr/bin/env bash
# Hangly Installer Script
# Installs Hangly to your user desktop environment (~/.local/share/applications and ~/.local/bin)

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_DIR="${HOME}/.local/bin"
APPS_DIR="${HOME}/.local/share/applications"
ICON_PATH="${SCRIPT_DIR}/assets/icon.png"

echo "=================================================="
echo "  Installing Hangly Desktop Ornament..."
echo "=================================================="

# Ensure directories exist
mkdir -p "${BIN_DIR}"
mkdir -p "${APPS_DIR}"

# Ensure launcher is executable
chmod +x "${SCRIPT_DIR}/run.sh"
chmod +x "${SCRIPT_DIR}/hangly.py"

# Create symlink in ~/.local/bin
ln -sf "${SCRIPT_DIR}/run.sh" "${BIN_DIR}/hangly"
echo "  ✔ Created command: ${BIN_DIR}/hangly"

# Create desktop entry in ~/.local/share/applications
cat > "${APPS_DIR}/hangly.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Hangly Desktop Ornament
GenericName=Desktop Ornament
Comment=Physics-based hanging Linux desktop ornament
Exec=/bin/bash "${SCRIPT_DIR}/run.sh"
Icon=${ICON_PATH}
Terminal=false
StartupNotify=false
Categories=Utility;Amusement;
Keywords=ornament;charm;physics;desktop;toy;
EOF

chmod +x "${APPS_DIR}/hangly.desktop"
echo "  ✔ Created desktop shortcut: ${APPS_DIR}/hangly.desktop"

# Update desktop database if available
if command -v update-desktop-database >/dev/null 2>&1; then
    update-desktop-database "${APPS_DIR}" >/dev/null 2>&1 || true
fi

echo "=================================================="
echo "  ✔ Installation Complete!"
echo "  You can now run Hangly by:"
echo "    1. Searching 'Hangly' in your Application Menu"
echo "    2. Running 'hangly' in any terminal"
echo "    3. Running './run.sh' from this directory"
echo "=================================================="
