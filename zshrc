autoload colors zsh/terminfo
colors
precmd() { print "" }
PS1="⟩"
RPS1="%{$fg[magenta]%}%20<...<%~%<<%{$reset_color%}"
if [ "$TMUX" = "" ]; then tmux; fi

setopt auto_cd
setopt correctall
alias git status='nocorrect git status'
if [[ ! -f ~/.antigen.zsh ]]; then
  curl https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > ~/.antigen.zsh
fi
source ~/.antigen.zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle git
