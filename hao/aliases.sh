bindkey -e

function xxx {
  export FZF_CTRL_T_COMMAND="rg --files --hidden --no-ignore"
}

# Global aliases. ####################
alias -g .l='|& less -FRXWN'
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
alias -g .m='origin/master'

alias l='ls -Fha'
alias ll='l -l'
alias reload=". ${ZDOTDIR}/.zshrc"
alias v='nvim'
alias xargsi="xargs -I {}"
alias brewup="brew update; brew upgrade; brew cleanup"
alias cdcc="cd ~/.config"

alias dgit='git --git-dir ~/dotfiles/.git'
alias egit='git --git-dir ~/.emacs.d/.git'

alias am='git commit --amend -pv'
alias ci='git commit -v'
alias cip='git commit -pv'
alias cia='git commit -av'
alias p='git pull'
alias pr='git pull --rebase'
alias s='git status -s'
alias r='git rebase'
alias ri='git rebase -i'
alias rc='git rebase --cont'
alias gcp='git cherry-pick'
alias d="git diff"
alias dd="git diff --cached"
alias sigh="git remote"
alias ed="emacs --daemon"

alias gl="git log --graph --pretty=format:'%w(100,0,10)%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -20"
alias gll="gl --all -10000 --not origin/gh-pages"
alias gpr="git pull --rebase"
alias gpc='git push --set-upstream origin "$(git-branch-current 2> /dev/null)"'
alias grz='git reset --soft HEAD^ && git reset HEAD .'

alias up="git stash && git switch -C tmp && git fetch --all && git fetch -v origin master:master && git remote -v prune origin"
alias show="git show"

alias co='git switch'
alias com='git switch master'
alias re='git restore'

hash -d work=~/w
hash -d lab=~/lab
hash -d m=~/m
hash -d p=~/.zprezto

alias o='cd ~/w/o'
alias y='yarn --silent'
alias rg=rg '--glob=!.git/*' --hidden
alias g="bundle exec fastlane gym --export_method developer-id --scheme InsertGif; say HELLO"

function nn {
  bundle exec fastlane run notarize --verbose verbose:'true' print_log:'true' "package:$1/InsertGif.app"
}

function sign {
  ~/Desktop/sign_update "$1/InsertGif.app.zip"
}

function gimme {
  while ! nc -z 127.0.0.1 "$1"; do
    sleep 0.5
  done
}

function ee {
  emacsclient -c "$1" &
}

function fd () { [[ -f "$1" ]] && { cd "$(dirname "$1")"; } || { cd "$1"; } }

unalias e >&/dev/null
function e {
  emacsclient -nw -c $1
}

function ee {
  emacsclient -c $1 &
}
