# Hangly v2.0 — Linux Desktop Ornament

> A physics-based hanging desktop charm with a 20-segment Verlet rope, sliding wooden beads, weather FX, an analog clock charm, rope color themes, physics modes, mouse magnet, and zero-CPU idle sleep — all rendered as a borderless transparent overlay with no window chrome.

![Platform](https://img.shields.io/badge/platform-Linux-blue) ![Python](https://img.shields.io/badge/python-3.10%2B-green) ![GTK](https://img.shields.io/badge/GTK-3.24-orange) ![License](https://img.shields.io/badge/license-MIT-lightgrey)

---

## What's New in v2.0

| Feature | Key | Notes |
|---------|-----|-------|
| **Rain Mode** | `r` | Wind-slanted streaks, react to bidirectional wind |
| **Fire / Embers** | `f` | Ember particles spawn from the charm and drift upward |
| **Bubble Mode** | `b` | Floating soap bubbles with wobble and wind drift |
| **Glow Effect** | `g` | Golden radial halo around the active charm |
| **Clock Charm** | `→` | Beautiful Cairo-rendered analog clock, live ticking |
| **Mouse Magnet** | `n` | Charm gently attracted to cursor within 200 px |
| **Rope Color Themes** | `t` | 6 themes: Classic, Silver, Gold, Neon, Candy, Rainbow (animated!) |
| **Physics Modes** | `p` | 4 modes: Pendulum, Spring, Bouncy, Ragdoll |
| **4-Tab Menu** | right-click | Charm \| FX \| Rope \| Settings |

---

## Features (Complete List)

- **Physics** — 20-segment Verlet rope with Gauss-Seidel constraints and sliding wooden beads
- **Wind** — Bidirectional ±100 m/s with realistic aerodynamic forces and turbulent gusts
- **Snowfall** — 70 particles, wind-driven drift, wrap-around boundaries
- **Rain** — 120 streaks with wind-slant angle
- **Fire / Embers** — Live embers that spawn around the charm and float upward
- **Bubbles** — Soap bubble float with sinusoidal wobble and wind drift
- **Glow** — Radial golden halo pulsing around any charm
- **Clock Charm** — 17th built-in charm, live analog clock with gold bezel
- **Mouse Magnet** — Gravitational attraction toward cursor (200 px range)
- **16 built-in SVG charms** + **Clock charm** + **unlimited custom images**
- **Custom Image Import** — PNG, JPG, JPEG, SVG, WebP — auto-processes with bail ring
- **Drag & Drop** — Drop image files directly onto the window
- **Momentum Throwing** — Fling the charm with realistic velocity
- **Zero-CPU Idle Sleep** — Stops physics when at rest; wakes on interaction
- **Rope Color Themes** — Classic, Silver, Gold, Neon, Candy, Rainbow
- **Physics Modes** — Pendulum (realistic), Spring (elastic), Bouncy (floaty), Ragdoll (heavy)
- **Transparent Overlay** — No window chrome, sits above all windows
- **Auto-Open on Login** — XDG autostart via `~/.config/autostart/`
- **Hide / Show** — Full transparency toggle; press `h` or use menu

---

## Quick Start

```bash
git clone https://github.com/yourname/hangly
cd hangly
chmod +x run.sh
./run.sh
```

Or preview in a window frame:

```bash
python3 hangly.py --preview
```

---

## Requirements

```bash
# Ubuntu / Debian / Linux Mint
sudo apt install python3-gi python3-gi-cairo gir1.2-gtk-3.0 \
     gir1.2-gdk-3.0 python3-pil librsvg2-common

# Fedora / RHEL
sudo dnf install python3-gobject python3-cairo gtk3 python3-pillow librsvg2

# Arch Linux
sudo pacman -S python-gobject python-cairo gtk3 python-pillow librsvg
```

---

## Installation

```bash
chmod +x install.sh
./install.sh          # installs to ~/.local/bin, adds desktop entry
```

To uninstall:

```bash
./uninstall.sh
```

---

## Keyboard Shortcuts

### Core Controls

| Key | Action |
|-----|--------|
| `m` / Right-click | Open / Close menu |
| `Space` | Flick charm |
| `←` / `→` / Scroll | Cycle charms |
| `1`–`9` | Jump to charm by number |
| `c` | Toggle charm accessory ON/OFF |
| `h` | Hide / Show ornament |
| `q` / `Esc` | Close menu, or quit |

### Weather & FX

| Key | Action |
|-----|--------|
| `s` | Toggle Snow |
| `r` | Toggle Rain |
| `f` | Toggle Fire / Embers |
| `b` | Toggle Bubbles |
| `g` | Toggle Glow effect |
| `n` | Toggle Mouse Magnet |
| `w` | Cycle Wind speed (0→20→50→100→-20→-50→-100 m/s) |

### Style & Physics

| Key | Action |
|-----|--------|
| `t` | Cycle Rope Theme (Classic→Silver→Gold→Neon→Candy→Rainbow) |
| `p` | Cycle Physics Mode (Pendulum→Spring→Bouncy→Ragdoll) |
| `o` | Open custom image file chooser |

---

## Mouse Controls

| Action | Result |
|--------|--------|
| Left-click drag on charm | Grab and swing / throw |
| Left-click + release (no drag) | Tap charm — gentle impulse |
| Left-click drag on background | Move the window |
| Left-click on golden hook | Drag window from hook |
| Right-click anywhere | Toggle menu |
| Middle-click drag | Move window |
| Scroll wheel on window | Cycle charms |
| Drop image file | Import as custom charm |

---

## Menu — 4 Tabs

### Charm Tab
- Browse all charms with `[<]` / `[>]` arrows
- Click the charm title to toggle charm ON/OFF
- `[+] Add Custom Image` button

### FX Tab
- Toggle: Snow | Rain | Fire | Bubbles | Glow | Mouse Magnet
- Wind direction banner + stepper buttons (±1, ±10)
- Gale presets: ±50, ±100 m/s

### Rope Tab
- Rope color theme picker (6 themes, animated Rainbow)
- Physics mode picker with description and parameters

### Settings Tab
- Auto-Open on Login toggle
- Hide Ornament toggle
- Charm Accessory toggle
- **Power OFF** button (quits Hangly with fade-out)

---

## Rope Color Themes

| Theme | Description |
|-------|-------------|
| Classic | Warm beige/cream rope, wooden beads |
| Silver | Metallic silver, cool highlight |
| Gold | Rich gold rope and beads |
| Neon | Bright cyan-green glow |
| Candy | Hot pink / rose |
| Rainbow | Animated per-segment hue cycling |

---

## Physics Modes

| Mode | Gravity | Damping | Stretch | Feel |
|------|---------|---------|---------|------|
| Pendulum | 980 | 0.0008 | 2% | Realistic, classic |
| Spring | 980 | 0.0002 | 15% | Elastic, longer oscillations |
| Bouncy | 750 | 0.0001 | 25% | Light, floaty |
| Ragdoll | 1200 | 0.0030 | 2% | Heavy, quick damping |

---

## Wind Physics

| Wind Speed | Deflection Angle |
|-----------|-----------------|
| 0 m/s | 0° (vertical) |
| ±5 m/s | ±12° |
| ±20 m/s | ±41° |
| ±50 m/s | ±63° |
| ±75 m/s | ±69° |
| ±100 m/s | ±76° |

Wind affects: rope physics, snowflake drift, raindrop slant, ember direction, bubble drift.

---

## Supported Desktop Environments

Hangly works on any Linux DE with compositor (RGBA transparency):

GNOME · KDE Plasma · XFCE · Cinnamon · MATE · LXQt · Budgie · Pantheon · COSMIC · DDE · Enlightenment · i3 (picom) · Sway (wlroots) · CDE · Razor-qt · UKUI · Trinity

---

## Project Structure

```
hangly/
├── hangly.py          # Main application (~1700 lines)
├── run.sh             # Launch script
├── install.sh         # Desktop installer
├── uninstall.sh       # Clean uninstaller
├── hangly.desktop     # XDG Desktop app launcher entry
├── README.md
├── LICENSE            # MIT
├── .gitignore
└── assets/
    ├── icon.png       # 256×256 app icon
    └── charms/
        ├── evil_eye.svg
        ├── hamsa.svg
        ├── maneki_neko.svg
        ├── dreamcatcher.svg
        ├── om.svg
        ├── cross.svg
        ├── crescent_star.svg
        ├── clover.svg
        ├── elephant.svg
        ├── turtle.svg
        ├── horseshoe.svg
        ├── circle.svg
        ├── triangle.svg
        ├── hexagon.svg
        ├── star.svg
        ├── diamond.svg
        ├── custom/    # User-imported charms (PNG)
        └── samples/   # Sample images for quick import
```

---

## License

MIT — see [LICENSE](LICENSE)
