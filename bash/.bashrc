# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ "$(whoami)" = "root" ]] && return
[[ -z "$FUNCNEST" ]] && export FUNCNEST=100 # limits recursive functions, see 'man bash'

set -o ignoreeof

eval "$(starship init bash)"
eval "$(zoxide init bash)"

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

alias cat="bat"
alias ls="exa --icons -a --group-directories-first"
alias fd='fd --type f --color=always -H --exclude .git'
alias vim='nvim'
alias lg='lazygit'
alias init-conda='source /opt/anaconda/bin/activate root'
alias bathelp='bat --plain --language=help'
alias xpaste='xclip -selection c -o'
alias xcopy='xclip -selection c'
alias v='nvim'
alias vim='nvim'

help() {
	"$@" --help 2>&1 | bathelp
}

export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export FZF_DEFAULT_OPTS="-m --height 50% --layout=reverse --border --inline-info 
  --preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
  --bind '?:toggle-preview' 
"
export FZF_DEFAULT_COMMAND='fd --type file --hidden --exclude .git'
export FZF_CTRL_T_COMMAND='fd --type file --hidden --exclude .git'
export PATH=/home/amora/.local/bin:$PATH
export CARGO_NET_GIT_FETCH_WITH_CLI=true
export _JAVA_AWT_WM_NONREPARENTING=1
export ANDROID_EMULATOR_WAIT_TIME_BEFORE_KILL=10
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export LAUNCH_EDITOR=nvim
export REACT_EDITOR=nvim
export EDITOR=nvim
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$PATH:$HOME/.cargo/bin/"
export PATH="$PATH:$HOME/.rvm/bin"
export PNPM_HOME="$HOME/.local/share/pnpm"
export VOLTA_FEATURE_PNPM=1
export PATH="$PNPM_HOME:$PATH"

# nvm is TOOOOOOOOOOOOOOOOOOOOO slow wtf
# source /usr/share/nvm/init-nvm.sh
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
