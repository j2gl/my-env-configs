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
alias ll='ls -laF'
# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

#---------------------------------------
# Git autocompletion
#---------------------------------------
if [ -f  /usr/local/git/contrib/completion/git-completion.bash ]; then
    source  /usr/local/git/contrib/completion/git-completion.bash
fi
#---------------------------------------
# Git Info at prompt.
#---------------------------------------
if [ -f  /usr/local/git/contrib/completion/git-prompt.sh ]; then
    source  /usr/local/git/contrib/completion/git-prompt.sh
fi

brew_prefix=`brew --prefix`
#---------------------------------------
# brew bash_completion
#---------------------------------------
if [ -f $brew_prefix/etc/bash_completion ]; then
    source $brew_prefix/etc/bash_completion
fi

# Custom bash prompt via http://kirsle.net/wizards/ps1.html
export PS1='\[$(tput setaf 2)\]\u@\h\[$(tput sgr0)\]:\[$(tput setaf 6)\]\w\[$(tput sgr0)\] $(__git_ps1 "(%s)")$ \[$(tput sgr0)\]'

if [ -f ~/.xoom_profile.sh ]; then
    source ~/.xoom_profile.sh
fi
