export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# PRIVATE ALIASES THAT ARE IGNORED BY GIT
source ~/.private.sh


# GENERAL ALIASES
alias ls='ls -Glah'
alias dot='source ~/dotfiles/.bash_profile ~/dotfiles/.bashrc'
alias cd..='cd ..'
#alias gitline='sh ~/projects/github_bash_project/execute.sh'
alias gitlog='git log --oneline --decorate --graph'

# BUNDLE
alias bx='bundle exec'
alias b='bundle'
alias s='bundle exec rails s'

# GIT
alias gs='git status'

git_branch () {
    if git rev-parse --git-dir >/dev/null 2>&1
        then echo -e "" [$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')]
    else
        echo ""
    fi
}
function git_color {
    local STATUS=`git status 2>&1`
    if [[ "$STATUS" == *'Not a git repository'* ]]
        then echo ""
    else
    if [[ "$STATUS" != *'working directory clean'* ]]
        then
        # red if need to commit
        echo -e '\033[0;31m'
    else
    if [[ "$STATUS" == *'Your branch is ahead'* ]]
        then
        # yellow if need to push
        echo -e '\033[0;33m'
    else
        # else cyan
        echo -e '\033[0;32m'
    fi
    fi
    fi
}
export PS1='\[\033[0;35m\]⚡ \[\033[0;36m\]\w/\[$(git_color)\]$(git_branch)\[\033[m\] '

export PGDATA='/usr/local/var/postgres'
export PGHOST=localhost
alias start-pg='pg_ctl -l $PGDATA/server.log start'
alias stop-pg='pg_ctl stop -m fast'
alias restart-pg='pg_ctl reload'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Git Completion Script
# http://code-worrier.com/blog/autocomplete-git/
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
