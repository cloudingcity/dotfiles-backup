# If you come from bash you might have to change your $PATH.
export PATH=$HOME/Library/Python/2.7/bin:~/.composer/vendor/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export ZSH="$HOME/.oh-my-zsh"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim
export BAT_THEME=gruvbox-dark-medium
export FZF_DEFAULT_OPTS='--bind alt-j:down,alt-k:up'

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions zsh-syntax-highlighting)

# Load oh my zsh
source $ZSH/oh-my-zsh.sh

# Powerline
POWERLINE_PATH=$HOME/Library/Python/2.7/lib/python/site-packages
POWERLINE_SCRIPT=$POWERLINE_PATH/powerline/bindings/zsh/powerline.zsh
if [ -f $POWERLINE_SCRIPT ]; then
    $POWERLINE_PATH/scripts/powerline-daemon -q
    source $POWERLINE_SCRIPT
fi


# Load aliases
source ~/.aliases

# Functions
zssh() {
  local remotes remote
  remotes=$(cat ~/.remotes) &&
  remote=$(echo "$remotes" | fzf +m) &&
  ssh "$remote" -t zsh
}

fbr() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}
