# Notes M4 2025 Installation

MacOS version: Sequotia 15.5


## Install brew

1. from https://brew.sh/

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Do what it says

## Install iterm

brew install iterm2

Open iterm


## Install next things
Install the following
```sh
brew install --cask rectangle
brew install --cask meetingbar
brew install --cask visual-studio-code
brew install --cask docker
```

```sh
brew install awscli
brew install libpq
```


## GitHub

Create ssh key for github (personal)
call it `id_juanjo-gmail-m4`

it will be on `~/.ssh/id_juanjo-gmail-m4`

```sh
ssh-keygen -t ed25519 -C "juanjo.garcia@gmail.com"
cat ~/.ssh/id_juanjo-gmail-m4.pub
```

Paste the public part in GitHub in settings -> SSH and GPG Keys and call it §Juanjo M4§


## Stream Camera Logitech
Download LogiTune software to make the camera work.

## Java Installation

### JDK
Using SDKMan: https://sdkman.io

```sh
$ curl -s "https://get.sdkman.io" | bash
```


### Install Java and maven
```sh

$ sdk list java
$ sdk install java 21.0.7-tem

Downloading: java 21.0.7-tem

In progress...

######################################################################################################################## 100.0%

Repackaging Java 21.0.7-tem...

Done repackaging...
Cleaning up residual files...

Installing: java 21.0.7-tem
Done installing!


Setting java 21.0.7-tem as default.
```

### Maven

```sh
sdk list maven 
sdk install maven 3.9.10
```

## Developer IDE
```
brew install --cask intellij-idea
```

## Several Apps
```sh
brew install --cask bitwarden
brew install --cask chatgpt
brew install --cask drawio
brew install --cask dbeaver-community
brew install --cask gpg-suite
brew install --cask notion
brew install --cask obsidian
brew install --cask screens
brew install --cask spotify
brew install --cask zen
```

## For Later
```sh
brew install --cask devtoys
brew install --cask gimp

brew install --cask whatsapp
brew install --cask cursor
```



## Fixing Shell

### tmux
```sh
brew install tmux
```

### ZSH Notes

#### zsh-theme command prompt

1. Install Oh My Zsh [website](https://ohmyz.sh/) - [github](https://github.com/ohmyzsh/ohmyzsh)
2. Add the theme [juanjo.zsh-theme](/prompt-zsh-theme/juanjo.zsh-theme) in `~/.oh-my-zsh/themes`
3. Edit `~/.zshrc` and set `ZSH_THEME="juanjo"`
4. copy [j2gl.zsh](/macos/2025-07-Macbook-Pro-m4/config-files/j2gl.zsh) to the custom OhMyZsh directory ~/.oh-my-zsh/custom.  
    `cp macos/2025-07-Macbook-Pro-m4/config-files/j2gl.zsh ~/.oh-my-zsh/custom`

### Compleation
* For brew completion need to run:
```bash
$ brew install bash-completion
```



## GitHub
### Git Completion

```sh
brew install git bash-completion
```

### Create ssh keys files for github

```sh
ssh-keygen -t ed25519 -C "juanjo.garcia@gmail.com" -f id_juanjo-gmail-m4
ssh-keygen -t ed25519 -C "juan.garcia@getpliant.com" -f ~/.ssh/id_juanjo-pliant
```


### Config

## Multi SSH Users Config file

This is for having multiple ssh Keys 
Copy the `config` file in `~/.ssh` forlder.


Copy configuration [file](config): 

```sh
cp config ~/.ssh/config`
```
Important, or to check:

It seems maybe we don't need the `config` file in .ssh directory, because the `.gitconfig` file 


### Copy .gitconfig file

[.gitconfig-pliant](/macos/2025-07-Macbook-Pro-m4/.gitconfig-pliant)

```sh
cp .gitconfig-pliant ~/.gitconfig
```

### Sign commits with GPG 

See [sign commit](/git-configuration/sign-commits-gpg.md)

```sh
brew install gpg

# Optional
brew install pinentry-mac
```

Import the Key, I have it on bitwarden
```sh
gpg --import ./j2gl.dev-gmail.com-gpg-key.asc
gpg --import ./juanjo-github-gpg-key.asc
gpg --import ./juanjo-gpg-key.asc
```

List Keys: 
```sh
 gpg --list-secret-keys --keyid-format long
```

Don't forget to import the public GitHub signature at the end of the file [sign-commits-gpg.md](/git-configuration/sign-commits-gpg.md)
