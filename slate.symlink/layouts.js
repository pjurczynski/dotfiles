slate.source('~/.slate/constants.js')
slate.source('~/.slate/helpers.js')
slate.source('~/.slate/applications.js')
slate.source('~/.slate/operations/resize.js')

var params = function() {
  var params = {}
  return {
    params: params,
    add: function(name, operations) {
      params[name] = { operations: chainOperations(operations) }
    }
  }
}

var apps = applications()
var ops = operations
var defaults = params()
defaults.add(apps.editor,        [ops.throwToPrimary,    ops.rightTwoThirds])
defaults.add(apps.terminal,      [ops.throwToPrimary,    ops.leftOneThird])
defaults.add(apps.browser,       [ops.throwToSecondary,  ops.full])
defaults.add(apps.communicator,  [ops.throwToSecondary,  ops.full])
defaults.add(apps.music,         [ops.throwToSecondary,  ops.full])
defaults.add(apps.github,        [ops.throwToPrimary,    ops.rightTwoThirds])
var defaultWorkspace = slate.layout('defaultWorkspace', defaults.params)

var review = defaults
review.add(apps.browser,       [ops.throwToPrimary,    ops.full])
review.add(apps.communicator,  [ops.throwToSecondary,  ops.full])
var reviewWorkspace = slate.layout('reviewWorkspace', review.params)

var commit = defaults
commit.add(apps.browser,   [ops.throwToSecondary,  ops.leftHalf])
commit.add(apps.terminal,  [ops.throwToSecondary,  ops.rightHalf])
commit.add(apps.editor,    [ops.throwToPrimary,    ops.leftOneThird])
commit.add(apps.github,    [ops.throwToPrimary,    ops.rightTwoThirds])
var commitWorkspace = slate.layout('commitWorkspace', commit.params)
