Themes
===
To enable a theme just stow this package, and the package you want to use. Currently available are

- theme-orange
  - **gtk2/gtk3**: slightliy customized [arc-theme](https://github.com/horst3180/arc-theme)
  - **openbox**: very basic openbox theme by me
  - **icons**: [Lüv icon theme](https://github.com/Nitrux/luv-icon-theme) (from repository)
  - **xresources colorscheme**: very orangy
- theme-nord

  inspired by [daguil68367](https://www.reddit.com/r/unixporn/comments/6sv806/xfce_cave_story_desktop/)

  - **gtk2/gtk3**: [arc-theme](https://github.com/horst3180/arc-theme) (from repository)
  - **icons**: [Lüv icon theme](https://github.com/Nitrux/luv-icon-theme) (from repository)
  - **xresources colorscheme**: [Nord color colorscheme](https://github.com/arcticicestudio/nord)

## Xresources

Xresources are used to change the configuration of multiple applications.

Currently they affect the following applications:

- **Rofi**
- **URXVT**
- **Dunst** (if you use my included script for generating a config file)
- **i3**

## Notable things

I disabled the close, minimize and maximize buttons on gtk3 windows. If you need them reenable them by removing `gtk-decoration-layout=menu:` inside [settings.ini](./.config/gtk-3.0/settings.ini)