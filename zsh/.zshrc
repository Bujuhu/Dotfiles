#!/bin/zsh
PATH=$HOME/.gem/ruby/2.3.0/bin:/$HOME/.bin:/$HOME/.bin/application_shortcuts:$PATH

#Load local configuration Options
if [ -f "/$HOME/.z.local" ]; then
  source "/$HOME/.z.local"
fi

#Load aliases
source "/$HOME/.config/zsh/alias.zsh"

# Load Prompt (PS1)
# I intent to replace poweline with someting more lightweight in the future. Probably a dyi solution
# source "/$HOME/.config/zsh/prompt.zsh"

export EDITOR=editor
export VISUAL=editor



#Setting powerline theme
. /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh



# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' max-errors 2
zstyle :compinstall filename '/home/bujuhu/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
#Setting Window title
case $TERM in
  (*xterm* | rxvt*)

    # Write some info to terminal title.
    # This is seen when the shell prompts for input.
    function precmd {
      print -Pn "\e]0; %(1j,%j job%(2j|s|); ,)%~\a"
    }
    # Write command and args to terminal title.
    # This is seen while the shell waits for a command to complete.
    function preexec {
      printf "\033]0;term · %s\a" "$1"
    }

  ;;
esac
