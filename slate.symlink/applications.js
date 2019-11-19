var applications = function() {
    var applications = {
        chrome: 'Google Chrome',
        firefox: 'Firefox',
        slack: 'Slack',
        chat: 'Chat',
        clementine: 'Clementine',
        spotify: 'Spotify',
        iterm: 'iTerm2',
        vim: 'nvim',
        emacs: 'Emacs',
        notes: 'Notes', // mac notes
        vscode: 'Code',
        github: 'GitHub'
    };

    applications['browser'] = applications.chrome;
    applications['communicator'] = applications.chat;
    applications['music'] = applications.spotify;
    applications['terminal'] = applications.iterm;
    applications['editor'] = applications.vscode;
    applications['todos'] = applications.notes;
    applications['git'] = applications.emacs;

    return applications;
};
