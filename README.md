Dotfiles
===
*Work in Progress...*

Details and Documentation will follow soon. But you should be able to get up and running pretty easily using [Gnu Stow](https://www.gnu.org/software/stow/)

## Environment Variables
To add or override custom variables you don't want to add to the `.zshrc` Dotfiles, create the file `.z.local` and add it to your home directory.

Currently my Dotfiles are sensitive to the following Environment Variables:

- $WM - The Window manager that will be opened by the [.xinitrc](./X/.xinitrc) Script
