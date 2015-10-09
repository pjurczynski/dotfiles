### ls aliases
alias ll='ls -GhalF'
alias la='ls -GA'
alias l='ls -GCF'

### spring aliases
alias srails='spring rails'
alias srake='spring rake'
alias srspec='spring rspec'
alias restart='touch ~/.pow/restart.txt'

### git aliases
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

### Not used/assorted
alias bc="bc -lq"
alias gctags='ctags -R --languages=ruby --exclude=.git --exclude=log --exclude=tmp . $(bundle list --paths)'
