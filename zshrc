# zshrc config (0xFreDi)
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="obraun" #junkfood , jonathan
HYPHEN_INSENSITIVE="true"
# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"
# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

plugins=(git zsh-autosuggestions colorize)
source $ZSH/oh-my-zsh.sh
#alias fdisk="sudo grc fdisk -l"
alias stat="grc stat"
alias df="grc df"
alias docker="grc docker"
alias iwconfig="grc iwconfig"
alias fdisk="grc fdisk"
alias dig="grc dig"
alias netstat="grc netstat"
alias fdisk="grc fdisk"
alias enum4linux="perl PenTestLib/enum4linux/enum4linux.pl"
alias c="clear"
alias ls="grc ls --color=always"
alias ifconfig="grc ifconfig"
alias lsblk="grc lsblk"
alias ping="grc ping"
alias l="tree -f -L 1"
alias lsize="tree -fh -L 1"
alias g++win='docker run -v "$(pwd)":/vol -w /vol -it cppwin'
alias grep='grep --color=always'
export PATH=$PATH:/bin/omatsetit:/usr/local/lib/:/home/fredi/.cargo/bin
export GREP_COLORS=$GREP_COLORS:'ms=01;91'
#export LD_LIBRARY_PATH=/opt/cuda/lib64
bindkey '^@'      autosuggest-accept # ctrl+space       [0x00]
bindkey '^[[3~'   autosuggest-clear  # DEL              [0x1b]
bindkey '^[[1;3D' backward-word      # ALT + left arrow [0x1b]
bindkey '^[[2~'   autosuggest-fetch  # Insert           [0x1b]   
eval "$(dircolors ~/.dircolors)"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff0000,bold"
ZSH_COLORIZE_STYLE="colorful"
zstyle ':completion:*default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select
zstyle ':completion:*:default' select-prompt $'\e[1;32m -- Option %M    %P -- \e[00;00m' 
zstyle ':completion:*'  matcher-list "m:{a-zA-Z}={A-Za-z}" "r:|[._-]=* r:|=*" "l:|=* r:|=*"
