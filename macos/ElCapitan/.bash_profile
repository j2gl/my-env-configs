#-------------------------------------------------------------------------------
# .bash_profile
#-------------------------------------------------------------------------------
# Show color
export CLICOLOR=1
export LSCOLORS="gxdxBxDxCxEgEdxbxgxcxd"

# Environment variables
export GIT_PS1_SHOWDIRTYSTATE=true
export PATH="$PATH"

#---------------------------------------
# Aliases
#---------------------------------------
alias ll='ls -la'

#---------------------------------------
# Git autocompletion
#---------------------------------------
if [ -f  /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    source  /usr/local/etc/bash_completion.d/git-completion.bash
fi
#---------------------------------------
# Git Info at prompt.
#---------------------------------------
if [ -f  /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
    source  /usr/local/etc/bash_completion.d/git-prompt.sh
fi
#---------------------------------------
# brew bash_completion
#---------------------------------------
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Custom bash prompt via http://kirsle.net/wizards/ps1.html
export PS1='\[$(tput setaf 2)\]\u@\h\[$(tput sgr0)\]:\[$(tput setaf 6)\]\w\[$(tput sgr0)\] $(__git_ps1 "(%s)")$ \[$(tput sgr0)\]'
