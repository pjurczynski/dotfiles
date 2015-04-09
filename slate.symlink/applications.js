var applications = function() {
  var applications = {
    chrome: 'Google Chrome',
    slack: 'Slack',
    clementine: 'Clementine',
    iterm: 'iTerm',
    vim: 'MacVim',
    github: 'GitHub'
  }

  applications['browser'] = applications.chrome
  applications['communicator'] = applications.slack
  applications['music'] = applications.clementine
  applications['terminal'] = applications.iterm
  applications['editor'] = applications.vim

  return applications
}
