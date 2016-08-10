# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases

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
