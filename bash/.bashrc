# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ "$(whoami)" = "root" ]] && return
[[ -z "$FUNCNEST" ]] && export FUNCNEST=100 # limits recursive functions, see 'man bash'

set -o ignoreeof
# set -o vi

eval "$(starship init bash)"
eval "$(zoxide init bash)"

alias cat="bat"
alias ls="exa --icons -a --group-directories-first"
alias fd='fd --type f --color=always -H --exclude .git'
alias vim='nvim'
alias lg='lazygit'
alias init-conda='source /opt/anaconda/bin/activate root'
# alias docker='sudo docker'

## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

export MANPAGER="sh -c 'col -bx | bat -l man -p'"
alias bathelp='bat --plain --language=help'
alias xpaste='xclip -selection clipboard -o'
help() {
	"$@" --help 2>&1 | bathelp
}

export FZF_DEFAULT_OPTS="-m --height 50% --layout=reverse --border --inline-info 
  --preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
  --bind '?:toggle-preview' 
"
export FZF_DEFAULT_COMMAND='fd --type file --hidden --exclude .git'
export FZF_CTRL_T_COMMAND='fd --type file --hidden --exclude .git'
export PATH=/home/amora/.local/bin:$PATH
export CARGO_REGISTRIES_CRATES_IO_PROTOCOL=sparse
export _JAVA_AWT_WM_NONREPARENTING=1
export ANDROID_EMULATOR_WAIT_TIME_BEFORE_KILL=10
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export REACT_EDITOR=code
export PATH="$PATH:$HOME/.cargo/bin/"

source /usr/share/nvm/init-nvm.sh
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

export PATH="$PATH:$HOME/.rvm/bin"
# source /home/amora/.rvm/bin/rvm
# source /home/amora/.cache/yay/rvm/src/rvm/scripts/rvm

export PNPM_HOME="/home/amora/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
