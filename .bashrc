blk='\[\033[01;30m\]'   # Black
red='\[\033[01;31m\]'   # Red
grn='\[\033[01;32m\]'   # Green
ylw='\[\033[01;33m\]'   # Yellow
blu='\[\033[01;34m\]'   # Blue
pur='\[\033[01;35m\]'   # Purple
cyn='\[\033[01;36m\]'   # Cyan
wht='\[\033[01;37m\]'   # White
clr='\[\033[00m\]'      # Reset

HISTCONTROL=ignoredups
export GREP_OPTIONS=' — color=auto'
set -o vi

alias c='clear'
alias h='history'
alias tree='tree --dirsfirst -F'
alias mkdir='mkdir -p -v'
alias q='exit'
alias ll='ls -a'
alias k='kill'
alias home='cd ~'
alias root='cd /'
alias python='python3'
alias d='docker'
alias k='kubectl'

function find_largest_files() {
    du -h -x -s -- * | sort -r -h | head -20;
}