# TO copy to the correct location use;
# cp macos/2025-07-Macbook-Pro-m4/config-files/j2gl.zsh $ZSH_CUSTOM/j2gl.zsh

# Put files in this folder to add your own custom functionality.
# See: https://github.com/ohmyzsh/ohmyzsh/wiki/Customization
#
# Files in the custom/ directory will be:
# - loaded automatically by the init script, in alphabetical order
# - loaded last, after all built-ins in the lib/ directory, to override them
# - ignored by git by default
#
# Example: add custom/shortcuts.zsh for shortcuts to your local projects
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr

# MySQL Client
# export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# GPG
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

export PAGER="bat"
export DEVTOOLS_PROJECT_ROOT=~/dev/devtools
export PATH="/opt/homebrew/opt/libpq/bin:$HOME/dev/devtools/dist:$HOME/dev/devtools-aws/bin:$PATH"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# yazi
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  command yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}
