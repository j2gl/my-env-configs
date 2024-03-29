#-------------------------------------------------------------------------------
# .zshrc
#-------------------------------------------------------------------------------
# Show color
export CLICOLOR=1
export LSCOLORS="gxdxBxDxCxEgEdxbxgxcxd"

# Options
# See reference: https://scriptingosx.com/2019/06/moving-to-zsh-part-3-shell-options/


# To not auto complete with TAB key ~/D with /Users/{~user}/...
setopt GLOB_COMPLETE

# History
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_REDUCE_BLANKS
setopt HIST_FIND_NO_DUPS
setopt HIST_VERIFY
setopt HIST_IGNORE_SPACE
SAVEHIST=5000
HISTSIZE=2000
HISTCONTROL=ignorespace  # prevents commands starting with space from being added to history


#---------------------------------------
# Git Propmpt
#---------------------------------------
autoload -Uz vcs_info

precmd() { vcs_info }
setopt prompt_subst

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '!'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' formats "%u%c"
zstyle ':vcs_info:git*' formats "(%b)%m%u%c "

#---------------------------------------
# Prompt
#---------------------------------------
PS1='%(?.%F{green}√.%F{red}?%?)%f %B%F{blue}%~%f%b ${vcs_info_msg_0_}%# '

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
# Configuring Completions in zsh
#---------------------------------------
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

export PATH="/usr/local/opt/mysql-client/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/juan.garciaelinvar.d/.sdkman"
[[ -s "/Users/juan.garciaelinvar.d/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/juan.garciaelinvar.d/.sdkman/bin/sdkman-init.sh"
