slate.source('~/.slate/helpers.js')
slate.source('~/.slate/applications.js')
slate.source('~/.slate/operations.js')

var focus = function(params) { return slate.operation('focus', params) }

operations = _(operations).extend({
  focusBrowser:       focus({ app:  applications().browser }),
  focusCommunicator:  focus({ app:  applications().communicator }),
  focusMusic:         focus({ app:  applications().music }),
  focusTerminal:      focus({ app:  applications().terminal }),
  focusEditor:        focus({ app:  applications().editor }),
  focusGit:           focus({ app:  applications().git }),
  focusTodos:         focus({ app:  applications().todos }),

  focusLeft:   focus({ direction:  'left' }),
  focusRight:  focus({ direction:  'right' })
})
