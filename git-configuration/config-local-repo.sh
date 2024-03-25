#!/bin/sh

git config --local user.name "j2gl"
git config --local user.email "j2gl.dev@gmail.com"
git config --local user.signingkey "AE0A92EFBACF6F13E73521F72C41843BFBD92A71"

key_id=`git config --get user.signingkey`


echo 'user.name      : '`git config --get user.name`
echo 'user.email     : '`git config --get user.email`
echo 'user.signingkey: ' $key_id
echo
gpg --list-keys $key_id
