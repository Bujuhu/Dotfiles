Orange
===

A GNU Stow package comprised of window manager themes and a set of Xresource variables for theming

## GTK 2 & 3 Theme

A slightly modified (and outdated) version of the [arc-theme](https://github.com/horst3180/arc-theme).

## Openbox Theme

The Openbox theme is desinged by myself and is pretty much just an orange border around all widgets.

## Icons
This Themes uses the default [Lüv icon theme](https://github.com/Nitrux/luv-icon-theme)

The icon theme is not bundled with this repository and has to be installed manually

## Wallpapers

### Change Wallpapers

To switch between wallpapers modify the file path in [.fehbg](./.fehbg)

### [neusiedlersee.jpg](./.themes/orange/neusiedlersee.jpg)

Shot by myself. Fee free to use it however you desire.

### [orange.png](./.themes/orange/orange.png)

I believe this is somehow extracted from the Google calendar app. Sadly, I'm not able to find an original source for it.

## Xresources

The Xresources variables are used to change the theming of other applications configured by my Dotfiles.

Currently they affect the following things:

- **Rofi** Color Scheme
- **URXVT** Color Scheme

Unless you use either use my Dotfiles or modify yours so they use the provided Xresource variables they will have no effect on your Computer.

## Notable things

I disabled the close, minimize and maximize buttons on gtk3 windows. If you need them reenable them by removing `gtk-decoration-layout=menu:` inside [settings.ini](./.config/gtk-3.0/settings.ini)