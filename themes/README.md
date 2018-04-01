Themes
===
To enable a theme just stow this package, and the package you want to use. Currently available are

- theme-orange
  - **gtk2/gtk3**: slightliy customized [arc-theme](https://github.com/horst3180/arc-theme)
  - **openbox**: very basic openbox theme by me
  - **icons**: [Lüv icon theme](https://github.com/Nitrux/luv-icon-theme) (from repository)
  - **xresources colorscheme**: very orangy
## Xresources

Xresources are used to change the configuration of multiple applications.

Currently they affect the following applications:

- **Rofi**
- **URXVT**

## Notable things

I disabled the close, minimize and maximize buttons on gtk3 windows. If you need them reenable them by removing `gtk-decoration-layout=menu:` inside [settings.ini](./.config/gtk-3.0/settings.ini)