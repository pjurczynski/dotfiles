var applications = function() {
  var applications = {
    chrome: 'Google Chrome',
    slack: 'Slack',
    clementine: 'Clementine',
    spotify: 'Spotify',
    iterm: 'iTerm2',
    vim: 'nvim',
    emacs: 'Emacs',
    github: 'GitHub'
  }

  applications['browser'] = applications.chrome
  applications['communicator'] = applications.slack
  applications['music'] = applications.spotify
  applications['terminal'] = applications.iterm
  applications['editor'] = applications.emacs

  return applications
}
