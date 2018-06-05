#-------------------------------------------------------------------------------
# .bash_profile
#-------------------------------------------------------------------------------
# Show color
export CLICOLOR=1
export LSCOLORS="gxdxBxDxCxEgEdxbxgxcxd"
export HOSTNAME=$(hostname)

# Environment variables
export PATH="/usr/local/bin:$PATH"

# Custom bash prompt via http://kirsle.net/wizards/ps1.html
export PS1='\[$(tput setaf 2)\]\u@\h\[$(tput sgr0)\]:\[$(tput setaf 6)\]\w\[$(tput sgr0)\] $ \[$(tput sgr0)\]'
 export MAVEN_OPTS="-Xms1G -Xmx1536m -XX:PermSize=1024m -noverify"

#if [ -f "$(brew --prefix)/etc/bash_completion" ]; then

#fi
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

#---------------------------------------
# Load jenv autocompletion
#---------------------------------------
eval "$(jenv init -)"


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
