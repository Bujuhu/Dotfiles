Dotfiles
===

My Dotfiles repository comprised of  [Stow](https://www.gnu.org/software/stow/) Packages.

*Documentation for individual packages will follow*

## Global Environment Variables
To add or override custom variables you don't want to add to the `.zshrc` Dotfiles, create the file `.z.local` and add it to your home directory.

Currently my Dotfiles are sensitive to the following Environment Variables:

- $WM - The Window manager that will be opened by the [.xinitrc](./X/.xinitrc) Script
- $SW - The Screenwidth of your Computer Screen - needed for the lockscreen Wallpaper
