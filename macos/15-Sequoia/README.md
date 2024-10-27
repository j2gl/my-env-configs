# Mac Installation

### Step 1: Install Brew

Install brew, most important to install other things.
Check the instructions at the end show in the installation, something like this:

```sh
echo >> ~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

### Step 2: iterm2
```sh
brew install iterm2
```
### Step 3 

Open iterm

Install the following
```sh
brew install --cask rectangle
brew install --cask visual-studio-code
brew install --cask docker

brew install --cask whatsapp
brew install --cask intellij-idea
brew install --cask nordvpn
brew install --cask gpg-suite
```

Command Line
```sh
brew install git
brew install maven
brew install gpg
```

## ohmyzsh

### zsh-theme command prompt

1. Install Oh My Zsh [website](https://ohmyz.sh/) - [github](https://github.com/ohmyzsh/ohmyzsh)
2. Add the theme [juanjo.zsh-theme](prompt-zsh-theme/juanjo.zsh-theme) in `~/.oh-my-zsh/themes`
3. Edit `~/.zshrc` and set `ZSH_THEME="juanjo"`


# Checking Git Configuration

See [git-configuration/README.md](../../git-configuration/README.md)

# GPG Singing

## Import GPG KEYS

Also import GitHub public [signature](./github-key.asc) to not check everything.

```sh
gpg --import ./j2gl-dev-gpg-key.asc
gpg --import ./juanjo-gpg-key.asc
gpg --import ./juanjo-github-gpg-key.asc
gpg --import ./github-key.asc
```

### Signing git commits and gpg password 

```sh
mkdir ~/.gnupg
touch ~/.gnupg/gpg.conf ~/.gnupg/gpg-agent.conf
```

1.- Add or edit: `~/.gnupg/gpg.conf`
```
use-agent
```

2.- Add or edit: `~/.gnupg/gpg-agent.conf`
```
# 28,800 sec = 8 hours
default-cache-ttl 28800
max-cache-ttl 345600
default-cache-ttl-ssh 28800
max-cache-ttl-ssh 345600
# if pinentry-mac is is intalled via homebrew
pinentry-program /opt/homebrew/bin/pinentry-mac
```


3. Fix zsh scripts

Add this [file](./j2gl.zsh) to `$ZSH_CUSTOM/j2gl.zsh`


```sh
git config --global user.email ******@*****.***
git config --global user.name j2gl
git config --global user.signingkey AE0A92EFBACF6F13E73521F72C41843BFBD92A71
git config --global commit.gpgsign true
```
```
