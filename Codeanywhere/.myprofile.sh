#!/bin/bash

# Add colors
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Git completion
source /usr/share/bash-completion/completions/git

# Git propmt
GIT_PROMPT_THEME=Single_line_Dark
GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

# Add agent
eval `ssh-agent -s`
