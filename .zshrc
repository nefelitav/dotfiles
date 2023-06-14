if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="awesomepanda"

# Ctrl + U – delete from the cursor to the start of the line.
# Ctrl + K – delete from the cursor to the end of the line.
# Ctrl + W – delete from the cursor to the start of the preceding word.
# Alt + D – delete from the cursor to the end of the next word.

plugins=(git # command completion, prompt customization, shortcuts, git status, branch
        docker 
        docker-compose
        kubectl 
        node 
        npm
        yarn
        golang 
        rust
        postgres 
        jsontools # curl ... | pp_json (pretty), jq
        zsh-autosuggestions  # suggestions
        zsh-syntax-highlighting # highlighting
        # pip
        # web-search # google from terminal
        # colored-man-pages
        sudo # press esc twice to add sudo
        copyfile # copy file content to clipboard
        copybuffer # copy from command line using ctrl + o
        dirhistory # dirs, ALT + left, ALT + right, move in directories
        ) 

source $ZSH/oh-my-zsh.sh

alias c='clear'
alias h='history'
alias hs='history | grep'
alias mkdir='mkdir -p -v'
alias q='exit'
alias ll='ls -lahtr'
alias home='cd ~'
alias root='cd /'

alias p='python3'
alias startpost='sudo service postgresql start;psql -U postgres'

alias d='docker'
alias dim='docker images'
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias drm="docker rm $(docker ps -a -q)"
alias dex='f() { docker exec -it $1 mysql -u root -p };f'

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
alias gcl='git clone'
alias gac='git add .;git commit -m'
alias gl='git log --oneline'
alias gb='git checkout -b'
alias gd='git diff'
alias gp='f() { git add .;git commit -m $1;git push origin -u $(git rev-parse --abbrev-ref HEAD) };f'

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

neofetch



# Move in CLI
# CTRL + A -> start of line
# CTRL + E -> end of line
# CTRL + W -> Delete word before cursor
# ALT + D -> Delete word after cursor

# ESC twice -> sudo 
# copyfile <filename> ->  copy file content to clipboard
# CTRL + o -> copy from command line 
# dirs, ALT + left, ALT + right -> move in directories