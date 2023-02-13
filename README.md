# my-env-configs

My custom environment configurations for each system like

* .bash_profile
* .bash_rc
* .gitconfig

## Notes
* brew installation.  See: http://brew.sh/
```bash
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
* For brew completion need to run:
```bash
$ brew install bash-completion
```

## ZSH Notes

### zsh-theme command prompt

1. Install Oh My Zsh [website](https://ohmyz.sh/) - [github](https://github.com/ohmyzsh/ohmyzsh)
2. Add the theme [juanjo.zsh-theme](prompt-zsh-theme/juanjo.zsh-theme) in `~/.oh-my-zsh/themes`
3. Edit `~/.zshrc` and set `ZSH_THEME="juanjo"`


## Other Credits
* Some ideas taken from: https://github.com/mathiasbynens/dotfiles
* Custom bash prompt via: http://kirsle.net/wizards/ps1.html
* [jealvarez](https://github.com/jealvarez) for taking the time to custom macos-colors.bgptheme
