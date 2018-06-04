#!/bin/zsh
PATH=$(ruby -e 'print Gem.user_dir')/bin:~/.bin:/$HOME/.bin/application_shortcuts:$PATH

#Load oh-my-zsh configuration
[ -f "/$HOME/.config/zsh/oh-my.zsh" ] && source "/$HOME/.config/zsh/oh-my.zsh"

#Load aliases
[ -f "/$HOME/.config/zsh/alias.zsh" ] && source "/$HOME/.config/zsh/alias.zsh"

#Load local configuration Options
[ -f "/$HOME/.z.local" ] && source "/$HOME/.z.local"

export EDITOR=editor
export VISUAL=editor
