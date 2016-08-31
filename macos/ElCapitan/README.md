# El Capitan Shell Config

## Setup Instructions

Install Homebrew, see http://brew.sh

## Install utilities

These are optional, but if you miss something, you will need to fix ```.bash_profile``` file.

1. Install Git with brew
```sh
brew install git
```
2. Install bash completion.
```sh
brew install bash-completion
```
3. Install jenv
```sh
$ brew install jenv
```
4. Install Apache Ant
```sh
$ brew install ant
```
5. Install Maven
```sh
$ brew install maven
```

## Installing Git Prompt

Git prompt allows you to show a lot of useful information about a git repository at your shell command line prompt.

Example:
```sh
✔ ~/path/to/git-repo [feature/branch|✔]
user@host $

✔ ~/projects/my-env-configs [develop|✚ 1]
user@host $
```

### Installation

Install bash-git-prompt with brew
```sh
$ brew install bash-git-prompt
```

Copy ```macos-colors.bgptheme``` to ```/usr/local/opt/bash-git-prompt/share/themes```.  This theme it's optimized for a dark theme terminal.   You can change to any theme listed on that direcotry changing ```GIT_PROMPT_THEME``` variable of ```.bash_profile```.

To reload your bash profile you can run:
```sh
source ~/.bash_profile
```
