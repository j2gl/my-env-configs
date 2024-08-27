#!/bin/bash
# --------------------
# The sript initialize a GIT repository 
# 
# # Instructions
#
# 1. Check comment with CURL below to download or copy the data from RAW: 
#   curl [URL] -o prepare-git-repo-j2gl-git-noreply.sh
# 2. Run the script
#   source prepare-git-repo-j2gl-git-noreply.sh
# 3. Delete the file
#   rm prepare-git-repo-j2gl-git-noreply.sh
# 
# # Warning
#
# You need zsh, in bash the `.git/hooks/commit-msg` file did not have the end of lines.

set -u

git init 

git config --local user.email 3269677+j2gl@users.noreply.github.com
git config --local user.name j2gl
git config --local user.signingkey 4FEFBEFA03CA3A321512C5969C6DAA40A4F015C0
git config --local commit.gpgsign true


COMMIT_MSG_FILE=.git/hooks/commit-msg 

FILE_CONTENTS="#!/bin/sh
#
# Automatically adds branch name to every commit message
# 
# Instructions:
#   1. Put this inside your repo in \${GIT_REPO}.git/hooks/commit-msg
#   2. chmod 0755 .git/hooks/commit-msg
#

NAME=\$(git branch | grep '*' | sed 's/* //')
DESCRIPTION=\$(git config branch.\"\$NAME\".description)
TEXT=\$(cat \"\$1\" | sed '/^#.*/d')

if [ -n \"\$TEXT\" ]
then
    echo \"\$NAME\"': '\$(cat \"\$1\" | sed '/^#.*/d') > \"\$1\"
    if [ -n \"\$DESCRIPTION\" ]
    then
       echo \"\" >> \"\$1\"
       echo \$DESCRIPTION >> \"\$1\"
    fi
else
    echo \"Aborting commit due to empty commit message.\"
    exit 1
fi
"

echo ${FILE_CONTENTS} > ${COMMIT_MSG_FILE}
chmod 0755 .git/hooks/commit-msg

git config --list --local
