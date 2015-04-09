slate.source('~/.slate/operations.js')
slate.source('~/.slate/layouts.js')

operations = _(operations).extend({
  defaultWorkspace: slate.operation('layout', { name: defaultWorkspace }),
  reviewWorkspace: slate.operation('layout', { name: reviewWorkspace }),
  commitWorkspace: slate.operation('layout', { name: commitWorkspace })
})
