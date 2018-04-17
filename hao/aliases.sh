bindkey -e

# Global aliases. ####################
alias -g .l='|& less -FRX'
alias -g .b='$(git branch | fzf +s +m)'
alias -g .rb='$(git branch -r | sed "s/origin\///" | fzf +s +m)'
alias -g .log='$(git log --pretty=oneline --abbrev-commit -20 | fzf +s --prompt="fixup> " | awk ''{ print $1 }'')'
alias -g .json='-H "Content-type: application/json"'
alias -g .nb='--no-build'
alias -g .ne='--no-edit'
alias -g .w='--ghc-options="-Wall -Werror"'
alias -g .gc='--fast --ghc-options="-j3 +RTS -A256m -n16m -gq -RTS"'
alias -g .gd='--ghc-options="-j +RTS -A128m -RTS -O2"'
alias -g .fw='--file-watch'
alias -g .bb='$(git rev-parse --abbrev-ref HEAD)'
alias -g .rbb='$(git for-each-ref --format="%(upstream:short)" $(git symbolic-ref -q HEAD))'
alias -g .f='--force-with-lease'

alias l='ls -Fha'
alias ll='l -l'
alias reload='. ~/.zshrc'
alias v='vim'
alias xargsi="xargs -I {}"
alias brewup="brew update; brew upgrade; brew cleanup"
alias dc="docker-compose"
alias stackup='curl -sSL https://get.haskellstack.org/ > /tmp/a.sh && chmod +x /tmp/a.sh && /tmp/a.sh --force'

alias recask='pushd ~/.emacs.d && cask build && popd'

alias dgit='git --git-dir ~/dotfiles/.git'
alias egit='git --git-dir ~/.emacs.d/.git'

# [alias]
# 	a = commit --amend -p --verbose
# 	co = checkout
# 	b = branch -vv
# 	d = diff
# 	dd = diff --cached
# 	ri = rebase -i --autosquash
# 	rc = rebase --cont
# 	fixup = commit --fixup
# 	rv = remote -v
# 	bm = branch -vv --merged
# 	brm = branch -rvv --merged

alias s='git status'

alias gl="git log --graph --pretty=format:'%w(100,0,10)%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -20"
alias gll="gl --all -10000 --not origin/gh-pages"
alias gam='git commit --amend -p -v'
alias gpr="git pull --rebase"
alias gpc='git push --set-upstream origin "$(git-branch-current 2> /dev/null)"'
alias grz='git reset --soft HEAD^ && git reset HEAD .'
alias gcp='git cherry-pick'
alias gr='git rebase'
alias gri='git rebase -i'
alias grc='git rebase --cont'
alias gc='git commit -p -v'
alias gb='git branch'
alias gco='git checkout'
alias gcod='git checkout develop'
alias gcom='git checkout master'
alias gz="git reset"
alias gj="git diff"
alias gjj="git diff --cached"

alias up="git b -D tmp; git co -B tmp && git fetch --all && git fetch -v origin master:master && git remote -v prune origin && git co - && git branch -d tmp"
alias show="git show"

hash -d w=~/w
hash -d lab=~/lab
hash -d m=~/m
hash -d p=~/.zprezto

alias ee='open -a /Applications/Emacs.app'
alias o='cd ~/w/o'

function gimme {
  while ! nc -z 127.0.0.1 "$1"; do
    sleep 0.5
  done
}
