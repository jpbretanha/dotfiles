#!/bin/bash
brew install zsh tmux neovim/neovim/neovim python3 ag reattach-to-user-namespace
brew tap caskroom/cask
brew cask install iterm2

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip3 install neovim

brew tap caskroom/fonts
brew cask install font-fira-code

chsh -s /usr/local/bin/zsh

rm -rf ~/.vim ~/.vimrc ~/.zshrc ~/.tmux ~/.tmux.conf ~/.config/nvim 2> /dev/null

mkdir -p ~/.config ~/.config/nvim

ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/vimrc ~/.config/nvim/init.vim

alias vim="nvim"
alias g="git"
alias gc="git commit"
alias gst="git status"
alias gco="git checkout"
alias gp="git push"