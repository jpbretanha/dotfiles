autoload colors zsh/terminfo
colors
setopt auto_cd
setopt correctall
alias git status='nocorrect git status'
if [[ ! -f ~/.antigen.zsh ]]; then
  curl -L git.io/antigen-nightly > ~/.antigen.zsh
fi
source ~/.antigen.zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle git
antigen theme agnoster
antigen apply

alias vim="nvim"
alias g="git"
alias gc="git commit"
alias gst="git status"
alias gco="git checkout"
alias gp="git push"
alias gaa="git add --all"
alias grh="git reset --hard"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
