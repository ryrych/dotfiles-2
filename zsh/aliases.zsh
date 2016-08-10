alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

alias aliasall="{ alias; git aliases; } | sort"
alias bower='noglob bower' # Fixes zsh: `no matches found: package-at-version#2.3.4`
alias ntb="cd ~/projects/NTBackend"
alias ntf="cd ~/projects/NTFrontend"
alias tmux="TERM=screen-256color-bce tmux"
alias es="ember server -e rails"

# git aliases

# remaps git branch to g co --
alias gb="git checkout -"
alias gbc="git_current_branch"
alias gbcopy="git branch --move $(git_current_branch)-copy && git reset --hard origin/master"
alias gcoo="git checkout --ours"
alias gcot="git checkout --theirs"
alias gdc="git diff --cached"
alias gdf="git diff"
alias ggfpush='git push --force-with-lease origin $(git_current_branch)'
# git head behind
# The number of commits that are not in remote tracking branch
# Helpful when reviewing commits in reverse order before push
alias ghb="git le head --not origin/$(git_current_branch) | wc -l | tr -d ' '"
alias git=hub
alias gle="git log --oneline --decorate"
alias gpr="hub pull-request"
# git review master
alias grevm="git log --oneline --decorate --no-merges origin/master --not master"
alias grl="git rebase -i head~`(git le head --not master | wc -l | awk '{print $1}')`"
alias grm="git rebase master"
alias gs="git status -s"

# rails aliases

alias rc="rails console"
alias rdc="rake db:create"
alias rdd="rake db:drop"
alias rdm="rake db:migrate"
alias rds="rake db:seed"
alias rs="rails server"

alias rbc="rubocop -a"
