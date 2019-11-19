slate.source('~/.slate/constants.js');
slate.source('~/.slate/helpers.js');
slate.source('~/.slate/operations/general.js');
slate.source('~/.slate/operations/resize.js');
slate.source('~/.slate/operations/focus.js');
slate.source('~/.slate/operations/layouts.js');

var bindings = function() {
  // General
    slate.bind(hyperWith('r'), operations.reloadConfig, NO_REPEAT);

  // Resize
    slate.bind(hyperWith('h'), operations.leftHalf, NO_REPEAT);
    slate.bind(hyperWith('l'), operations.rightHalf, NO_REPEAT);
    slate.bind(hyperWith('k'), operations.full, NO_REPEAT);

    slate.bind(hyperWith('left'), operations.throwToLeft, NO_REPEAT);
    slate.bind(hyperWith('up'), operations.throwToMiddle, NO_REPEAT);
    slate.bind(hyperWith('right'), operations.throwToRight, NO_REPEAT);

  // Layouts
  // slate.bind(hyperWith('1'), operations.defaultWorkspace)
  // slate.bind(hyperWith('2'), operations.reviewWorkspace)
  // slate.bind(hyperWith('3'), operations.commitWorkspace)

  // Focus
    slate.bind(altWith('b'), operations.focusBrowser, NO_REPEAT);
    slate.bind(altWith('c'), operations.focusCommunicator, NO_REPEAT);
    slate.bind(altWith('m'), operations.focusMusic, NO_REPEAT);
    slate.bind(altWith('n'), operations.focusTodos, NO_REPEAT);
    slate.bind(altWith('t'), operations.focusTerminal, NO_REPEAT);
    slate.bind(altWith('e'), operations.focusEditor, NO_REPEAT);
    slate.bind(altWith('g'), operations.focusGit, NO_REPEAT);
    slate.bind(altWith('h'), operations.focusLeft, NO_REPEAT);
    slate.bind(altWith('l'), operations.focusRight, NO_REPEAT);
};
