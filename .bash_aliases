#!/bin/bash
# Aliases
echo ".bash_aliases"
#
# Some people use a different file for aliases
# if [ -f "${HOME}/.bash_aliases" ]; then
#   source "${HOME}/.bash_aliases"
# fi
#
# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
#
# Interactive operation...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias cd=cd_func
alias dirs='dirs -v'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Misc :)
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort

# Some shortcuts for different directory listings
alias vi=vim

alias relogin='exec $SHELL -l'


case "$(uname -s)" in
  "Linux" )
    . .bash_aliases_linux;;
  MSYS_NT* )
    . .bash_aliases_msys;;
esac

