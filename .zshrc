export ZSH="$HOME/.oh-my-zsh"
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="alanpeabody"

plugins=(git python ruby node npm sudo command-not-found archlinux copypath copyfile extract systemd zsh-interactive-cd)
source /usr/share/doc/pkgfile/command-not-found.zsh   # For Archlinux
# source /etc/command-not-found.plugin.zsh            # For Debian/Ubuntu
source $ZSH/oh-my-zsh.sh

autoload -U compinit
compinit
autoload -U colors && colors
zstyle ':completion:*' menu select
setopt completealiases
autoload -U compinit && compinit
setopt HIST_IGNORE_DUPS

# Aliases
alias zshcfg="vim ~/.zshrc"
alias zshrc="nano ~/.zshrc"
alias vimcfg="vim ~/.vim/vimrc"
alias /d="cd /disk0/development"
alias d="sudo docker"
alias rma="rm -rfvd"
alias ip="ip -color=auto"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias meminfo="free -m -l -t -h"
alias shn="sudo shutdown now"
alias oports='netstat -tulanp'
alias quit="exit"
