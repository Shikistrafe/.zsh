# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/home/user/.oh-my-zsh"
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="alanpeabody"
plugins=(git ruby node npm sudo command-not-found archlinux debian)
# source /usr/share/doc/pkgfile/command-not-found.zsh   # For Archlinux
source /etc/command-not-found.plugin.zsh                # For Debian/Ubuntu
source $ZSH/oh-my-zsh.sh
# export LANG=en_US.UTF-8
autoload -U compinit
compinit

autoload -U colors && colors

zstyle ':completion:*' menu select

setopt completealiases

autoload -U compinit && compinit

setopt HIST_IGNORE_DUPS

ex () {                                         # UnZip
 if [ -f $1 ] ; then
   case $1 in
     *.tar.bz2) tar xvjf $1   ;;
     *.tar.gz)  tar xvzf $1   ;;
     *.tar.xz)  tar xvfJ $1   ;;
     *.bz2)     bunzip2 $1    ;;
     *.rar)     unrar x $1    ;;
     *.gz)      gunzip $1     ;;
     *.tar)     tar xvf $1    ;;
     *.tbz2)    tar xvjf $1   ;;
     *.tgz)     tar xvzf $1   ;;
     *.zip)     unzip $1      ;;
     *.Z)       uncompress $1 ;;
     *.7z)      7z x $1       ;;
     *)         echo "'$1' Не может быть распакован при помощи >ex<" ;;
   esac
 else
   echo "'$1' не является допустимым файлом"
 fi
}

pk () {                                         # Zip
if [ $1 ] ; then
case $1 in
tbz)       tar cjvf $2.tar.bz2 $2      ;;
tgz)       tar czvf $2.tar.gz  $2       ;;
tar)      tar cpvf $2.tar  $2       ;;
bz2)    bzip $2 ;;
gz)        gzip -c -9 -n $2 > $2.gz ;;
zip)       zip -r $2.zip $2   ;;
7z)        7z a $2.7z $2    ;;
*)         echo "'$1' не может быть упакован с помощью pk()" ;;
esac
else
echo "'$1' не является допустимым файлом"
fi
}

alias zshcfg="vim ~/.zshrc"
alias zshrc="nano ~/.zshrc"
alias vimcfg="vim ~/.vim/vimrc"
alias /d="cd ~/development"
alias d="sudo docker"
alias rm="rm -rfvd"
alias ip="ip -color=auto"
alias ls='ls --color=auto'
