slate.source('~/.slate/operations.js')

operations = _(operations).extend({
  reloadConfig: slate.operation('relaunch')
})

