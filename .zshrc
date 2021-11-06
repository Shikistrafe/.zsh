# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/shikistrafe/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="alanpeabody"

plugins=(git ruby node npm sudo command-not-found archlinux)

source /usr/share/doc/pkgfile/command-not-found.zsh
source $ZSH/oh-my-zsh.sh


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshcfg="vim ~/.zshrc"
alias zshrc="nano ~/.zshrc"
alias vimcfg="vim ~/.vim/vimrc"
alias /d="cd ~/development"
