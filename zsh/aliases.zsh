### ls aliases
alias ll='ls -GhalF'
alias la='ls -GA'
alias l='ls -GCF'

### spring aliases
alias flyhelper='~/code/pix/concourse-tools/fly_helper.py'

### git aliases
alias g='git'

# add all modified
alias gaddM='git status --porcelain | grep "^.M " | cut -c4- | xargs git add && git status --short --branch'
# add all untracked
alias gaddQ='git status --porcelain | grep "^?? " | cut -c4- | xargs git add && git status --short --branch'
# add all deleted
alias gaddD='git status --porcelain | grep "^.D " | cut -c4- | xargs git rm && git status --short --branch'

### assorted
alias psgrep='ps -ef | grep ' # grep in process list
alias kill='kill -9' # always kill to death

### Not used/assorted
alias gctags='ctags -R --languages=ruby --exclude=.git --exclude=log --exclude=tmp . $(bundle list --paths)'
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias tstags='ctags -e -R --exclude=.git --exclude=log --languages=typescript *'

# workdir
alias wd='cd ~/code/pix/pix4d-cloud-spa'
# work
alias wk='wd; yarn start:cloud'
# e2e tests
alias e2e="sh -c 'CYPRESS_BASE_URL=http://local.${0}.pix4d.com:4200 CYPRESS_INTEGRATION_FOLDER=./cypress/integration/${0} yarn cypress open --project e2e' cloud"

unrelease() {
  lastTag=$(git describe --tags `git rev-list --tags --max-count=1`)
  git tag -d $lastTag
}

unrelease-force() {
  lastTag=$(git describe --tags `git rev-list --tags --max-count=1`)
  git tag -d $lastTag
  git push --delete origin $lastTag
}

release() {
  branchName=$(date +%Y-%m-%d-rc)
  git branch -D $branchName
  git checkout staging
  git checkout -b $branchName
  yarn prepare-release
}

alias release="release"
