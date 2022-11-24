if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting kubectl)

source $ZSH/oh-my-zsh.sh

alias c='clear'
alias h='history'
alias mkdir='mkdir -p -v'
alias q='exit'
alias ll='ls -lahtr'
alias home='cd ~'
alias root='cd /'
alias python='python3'

alias d='docker'
alias dim='docker images'
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias drm="docker rm $(docker ps -a -q)"

alias k='kubectl'
alias nodes='kubectl get nodes -owide'
alias pods='kubectl get pods'
alias ns='kubectl get ns'

alias desktop='cd /mnt/c/Users/ntavoula/Desktop'
alias docs='cd /mnt/c/Users/ntavoula/Documents'
alias downloads='cd /mnt/c/Users/ntavoula/Downloads'
alias icarus='cd /mnt/c/Users/ntavoula/Desktop/icarus/cdp; code .'
alias eskort='cd /mnt/c/Users/ntavoula/Desktop/eskort/cdp; code .'
alias arpa='cd /mnt/c/Users/ntavoula/Desktop/arpa/cdp; code .'

alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gac='git add .;git commit -m'
alias gl='git log --oneline'
alias gb='git checkout -b'
alias gd='git diff'
alias gp='f() { git add .; git commit -m $1;git push origin -u $(git rev-parse --abbrev-ref HEAD) };f'


[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
