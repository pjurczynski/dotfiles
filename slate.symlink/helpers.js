// hyper key
var hyper = 'ctrl,shift,alt,cmd'

// binding helpers
var hyperWith = function(bindKey) { return bindKey + ':' + hyper }
var altWith = function(bindKey) { return bindKey + ':alt' }

var current_monitor = function() { undefined }
// movement helpers
var move = function(params) { return slate.operation('move', params) }

var toRight = function(divider) {
  rightEdge = 'screenSizeX + screenOriginX'
  return {
    x: rightEdge + ' - (screenSizeX/' + divider + ')',
    y: 'screenOriginY',
    width: 'screenSizeX/' + divider,
    height: 'screenSizeY'
  }
}

var toLeft = function(divider) {
  return {
    x: 'screenOriginX',
    y: 'screenOriginY',
    width: 'screenSizeX/' + divider,
    height: 'screenSizeY'
  }
}

var full = function(monitor) {
  params =  {
    x: 'screenOriginX',
    y: 'screenOriginY',
    width: 'screenSizeX',
    height: 'screenSizeY'
  }
  if(monitor !== undefined) { params['screen'] = monitor }
  return params
}

var chain = function(operations) {
  return slate.operation('chain', { operations: operations })
}

var chainOperations = function(ops) {
  slate.log(JSON.stringify(ops))
  return [function(windowOjbect) {
    _(ops).each(function(operation) {
      windowOjbect.doOperation(operation)
    })
  }]
}
