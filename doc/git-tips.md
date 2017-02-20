# Git Tips

## Useful alias

### git lg

This is an alias to see git log with branches graph and colors on terminal.

First add this alias to global git config.
```
$ git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
```

Then use it like this:
```
$ git lg
```
