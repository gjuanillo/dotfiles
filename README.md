# My Dotfiles

This repository contains my personal Linux configuration files designed to create a visually cohesive, minimal, and productive desktop environment. It uses the **i3 window manager**, **SDDM for display manager**, **Picom** for compositing, **Polybar** for status bars, and various other tools for a complete and customizable setup.

These dotfiles serve both as my personal setup and as documentation of every tweak and configuration I make.

---

## Components Included (As of June 2025)

| Directory / File  | Description |
|-------------------|-------------|
| `i3/`             | Configs for the [i3 Window Manager](https://i3wm.org). Manages keybindings, window behaviors, gaps, and layout. |
| `kitty/`          | Settings for [Kitty Terminal](https://sw.kovidgoyal.net/kitty/). Currently the default terminal emulator. |
| `alacritty/`      | Previous configs for [Alacritty Terminal](https://github.com/alacritty/alacritty), still included but deprecated. |
| `polybar/`        | Configurations for [Polybar](https://github.com/polybar/polybar), providing a dynamic and modular status bar. |
| `picom.conf`      | Configuration for [Picom](https://github.com/yshui/picom) to handle window transparency, fading, and shadows. |
| `gtk-3.0/`        | GTK theme settings affecting the look and feel of GTK-based apps (colors, icons, etc.). |
| `dunst/`          | Configuration for [Dunst](https://github.com/dunst-project/dunst), a lightweight notification daemon. |
| `neofetch/`       | Custom settings for [Neofetch](https://github.com/dylanaraps/neofetch) to show system info in the terminal. |
| `sddm/`           | Theme and configuration for [SDDM](https://github.com/sddm/sddm), a simple display manager. |
| `tmux/`           | [tmux](https://github.com/tmux/tmux) session manager configuration for terminal multiplexing. |
| `yazi/`           | Settings for [Yazi](https://github.com/sxyazi/yazi), a terminal file manager. |
| `profile/`        | Shell profile settings (e.g., `.bash_profile`, `.zprofile`, etc.). |

---

## Recent Changes

- Default terminal changed from **Alacritty** to **Kitty**
- Added support for **Dunst** notifications
- Integrated **Yazi** as file manager
- New bar for primary monitor using **Polybar**
- Improved modular configs for better maintainability

---

## Usage

To apply these dotfiles to your own setup, you can clone the repository and symlink relevant files to your home directory. Make sure to back up your own configs before replacing them.

```bash
git clone https://github.com/<your-username>/dotfiles.git
cd dotfiles
# Example:
ln -s $(pwd)/i3 ~/.config/i3
