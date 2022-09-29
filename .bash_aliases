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
alias bat='bat --theme=gruvbox-dark'
alias man='batman'
alias bg='batgrep'
alias bw='batwatch'
alias zz='zenith'
alias nvid="~/Repos/neovide/target/release/neovide"
alias hterm="alacritty -e $SHELL &"
alias bt="btm --color gruvbox --battery --mem_as_value -T -b"
alias race="traceroute"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ls='exa'
alias ll='ls -alF --icons --git'
alias la='ls -a'
alias l='ls -1'

function hxdmp() {
    hexyl $1 | bat -p 
}

function tre() {
    exa -1 --tree --icons $1 | bat -pf
}

function rb() {
    rg $1 -p | bat -p
}

function bing() {
    bingrep --color $1 | bat -pf
}
