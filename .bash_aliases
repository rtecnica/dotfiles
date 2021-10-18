alias chercan='ssh $CHERCAN'
alias sapt='sudo apt-get'
alias sinstall='sapt install'
alias supgrade='sapt update && sapt upgrade'
alias vim='nvim'
alias viminit='vim ~/.config/nvim/init.vim'
alias bashrc='vim ~/.bashrc'
alias bashalias='vim ~/.bash_aliases'
alias lg='~/go/bin/lazygit'
alias ttime='/usr/bin/time'
function hxdmp() {
    let width=$COLUMNS-9
    let width=$width/18
    let width=$width*4
    if [[ -f $1 ]]; then
        Oxdump --width $width $1 | bat --style plain 
    else
        printf "hxdmp: $1: No such file\n"
        return 1
    fi
    }
