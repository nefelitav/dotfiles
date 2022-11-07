if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting kubectl)

source $ZSH/oh-my-zsh.sh

alias c='clear'
alias h='history'
alias tree='tree --dirsfirst -F'
alias mkdir='mkdir -p -v'
alias q='exit'
alias ll='ls -lahtr'
alias home='cd ~'
alias root='cd /'
alias python='python3'
alias d='docker'
alias k='kubectl'
alias desktop='cd /mnt/c/Users/ntavoula/Desktop'
alias docs='cd /mnt/c/Users/ntavoula/Documents'
alias downloads='cd /mnt/c/Users/ntavoula/Downloads'
alias icarus='cd /mnt/c/Users/ntavoula/Desktop/icarus/cdp'
alias eskort='cd /mnt/c/Users/ntavoula/Desktop/eskort/cdp'
alias icarus='cd /mnt/c/Users/ntavoula/Desktop/icarus/cdp'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gac='git add .;git commit -m'
alias gl='git log --oneline'
alias gb='git checkout -b'
alias gd='git diff'
alias gp='git push origin -u $(git rev-parse --abbrev-ref HEAD)'


[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
