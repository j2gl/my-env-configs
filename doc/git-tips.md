# Git Tips

## Useful alias

### git lg

This is an alias to see git log with branches graph and colors on terminal.

Try it if you like it:
```sh
$ git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
```

Add this alias to global git config.
```sh
$ git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
```

Then use it like this:
```sh
$ git lg
```

### git ll

Try it if you like it:
```sh
$ git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat
```


Add this alias to global git config.
```sh
$ git config --global alias.ll "log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat"
```

Then use it like this:
```sh
$ git ll
```

## Remove pager behaviour

Sometime ago, when you do something like `git branch -l` it opens a pager, like less.  To remove it:

```sh
git config --global core.pager "less -FRX"
```
