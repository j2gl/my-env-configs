#-------------------------------------------------------------------------------
# .bash_profile
#-------------------------------------------------------------------------------
# Show color
export CLICOLOR=1
export LSCOLORS="gxdxBxDxCxEgEdxbxgxcxd"
export HOSTNAME=$(hostname)

# Environment variables
export PATH="$ANT_HOME/bin:$PATH"

# Custom bash prompt via http://kirsle.net/wizards/ps1.html
export PS1='\[$(tput setaf 2)\]\u@\h\[$(tput sgr0)\]:\[$(tput setaf 6)\]\w\[$(tput sgr0)\] $ \[$(tput sgr0)\]'

# History
export HISTCONTROL=ignorespace

#---------------------------------------
# Aliases
#---------------------------------------
alias ll='ls -laF'
# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Colorize the grep command output
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Docker
alias ps-docker="docker ps --format 'table {{.Names}}\t{{.Image}}'"

#---------------------------------------
# Load jenv
#---------------------------------------
eval "$(jenv init -)"

# ------------------------------------------------
# Set JAVA_HOME with the version provided by jenv
# ------------------------------------------------
export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'

BREW_PREFIX=`brew --prefix`
#---------------------------------------
# brew bash_completion
#---------------------------------------
if [ -f "$BREW_PREFIX/etc/bash_completion" ]; then
    source "$BREW_PREFIX/etc/bash_completion"
fi

#---------------------------------------
# Git Info at prompt.
#---------------------------------------
if [ -f "$BREW_PREFIX/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    GIT_PS1_SHOWDIRTYSTATE=true
    # Git Theme Variables
    # Add theme /usr/local/opt/bash-git-prompt/share/themes/macos-colors.bgptheme
    GIT_PROMPT_ONLY_IN_REPO=1
    GIT_PROMPT_THEME=macos-colors
    source "$BREW_PREFIX/opt/bash-git-prompt/share/gitprompt.sh"
fi
