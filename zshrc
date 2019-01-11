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
git-current-branch () {
    if ! git rev-parse 2> /dev/null
    then
        print "$0: not a repository: $PWD" >&2
        return 1
    fi
    local ref="$(git symbolic-ref HEAD 2> /dev/null)"
    if [[ -n "$ref" ]]
    then
        print "${ref#refs/heads/}"
        return 0
    else
        return 1
    fi
  }

alias avd="~/Library/Android/sdk/tools/emulator -avd Nexus_5X_API_27_x86 -netdelay none -netspeed full -no-snapshot-save"
alias vim="nvim"
alias g="git"
alias gc="git commit"
alias gst="git status"
alias gco="git checkout"
alias gp='git push origin "$(git-current-branch 2> /dev/null)"'
alias gpull='git pull origin "$(git-current-branch 2> /dev/null)" --rebase'
alias gaa="git add --all"
alias grh="git reset --hard"
alias gdb="git branch -D"
alias glog='log --pretty=oneline --abbrev-commit --graph --decorate'
alias gdm='git branch --merged master | grep -v master | xargs -n 1 git branch -d'
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export ANDROID_HOME=~/Library/Android/sdk/
export PATH=$PATH:~/android-sdks/platform-tools/
export PATH=$PATH:~/android-sdks/tools/
export PATH=$PATH:~/anaconda2/
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
