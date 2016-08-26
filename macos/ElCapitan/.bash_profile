#-------------------------------------------------------------------------------
# .bash_profile
#-------------------------------------------------------------------------------
# Show color
export CLICOLOR=1
export LSCOLORS="gxdxBxDxCxEgEdxbxgxcxd"

# Environment variables
export GIT_PS1_SHOWDIRTYSTATE=true
# Git Theme Variables
GIT_PROMPT_ONLY_IN_REPO=1
# Add theme /usr/local/opt/bash-git-prompt/share/themes/macos-colors.bgptheme
GIT_PROMPT_THEME=macos-colors

export ANT_HOME="/usr/local/Cellar/ant/1.9.7/libexec"
export PATH="$ANT_HOME/bin:$PATH"

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
# Load jenv autocompletion
#---------------------------------------
eval "$(jenv init -)"

#---------------------------------------
# Git autocompletion
#---------------------------------------
if [ -f  /usr/local/git/contrib/completion/git-completion.bash ]; then
    source  /usr/local/git/contrib/completion/git-completion.bash
fi
#---------------------------------------
# Git Info at prompt.
#---------------------------------------
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
   source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

brew_prefix=`brew --prefix`
#---------------------------------------
# brew bash_completion
#---------------------------------------
if [ -f $brew_prefix/etc/bash_completion ]; then
    source $brew_prefix/etc/bash_completion
fi

# Custom bash prompt via http://kirsle.net/wizards/ps1.html
export PS1='\[$(tput setaf 2)\]\u@\h\[$(tput sgr0)\]:\[$(tput setaf 6)\]\w\[$(tput sgr0)\] $ \[$(tput sgr0)\]'
