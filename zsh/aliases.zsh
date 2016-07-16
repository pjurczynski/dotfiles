### ls aliases
alias ll='ls -GhalF'
alias la='ls -GA'
alias l='ls -GCF'

alias rc='rails console'
### spring aliases
alias srails='spring rails'
alias srake='spring rake'
alias srspec='spring rspec'
alias restart='touch ~/.pow/restart.txt'

### git aliases
alias g='git'

# add all modified
alias gaddM='git status --porcelain | grep "^.M " | cut -c4- | xargs git add && git status --short --branch'
# add all untracked
alias gaddQ='git status --porcelain | grep "^?? " | cut -c4- | xargs git add && git status --short --branch'
# add all deleted
alias gaddD='git status --porcelain | grep "^.D " | cut -c4- | xargs git rm && git status --short --branch'

### assorted
alias be='bundle exec'
alias psgrep='ps -ef | grep ' # grep in process list
alias kill='kill -9' # always kill to death
alias gpr='open "https://github.com/netguru/`basename $(git rev-parse --show-toplevel)`/compare/master...`git rev-parse --abbrev-ref HEAD`?expand=1"'

### Not used/assorted
alias bc="bc -lq"
alias gctags='ctags -R --languages=ruby --exclude=.git --exclude=log --exclude=tmp . $(bundle list --paths)'
alias tar="tar -zcvf"
alias untar="tar -zxvf"
