slate.source('~/.slate/constants.js')
slate.source('~/.slate/operations.js')
slate.source('~/.slate/helpers.js')

operations = _(operations).extend({
  leftHalf: move(toLeft('2')),
  rightHalf: move(toRight('2')),

  leftOneThird: move(toLeft('3')),
  rightOneThird: move(toRight('3')),

  leftTwoThirds: move(toLeft('3*2')), // effectively 2/3
  rightTwoThirds: move(toRight('3*2')), // effectively 2/3

  full: move(full()),

  throwToLeft: move(full(LEFT_MONITOR)),
  throwToMiddle: move(full(MIDDLE_MONITOR)),
  throwToRight: move(full(RIGHT_MONITOR)),

  throwToPrimary: move(full(PRIMARY_MONITOR)),
  throwToSecondary: move(full(SECONDARY_MONITOR))
})
