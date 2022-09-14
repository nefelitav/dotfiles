export GREP_COLORS='ms=01;32'

# enable vi commands in cli
set -o vi 

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
alias diskspace='du -S | sort -n -r |more'
alias delete_evicted='kubectl get pods -A | grep Evicted | awk '{print $1,$2,$4}' | xargs kubectl delete pod $2 -n $1'

alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gl='git log --oneline'
alias gb='git checkout -b'
alias gd='git diff'
alias gp='git push origin -u $(git rev-parse --abbrev-ref HEAD)'

function find_largest_files() {
    du -h -x -s -- * | sort -r -h | head -20;
}