idNumber = 0

class TetriminoRed

  constructor: () ->
    @point =
      top: 0
      left: 0
    @blocks = [
      new TetriminoBlockElement("block#{idNumber++}", 0, 0),
      new TetriminoBlockElement("block#{idNumber++}", 30, 0),
      new TetriminoBlockElement("block#{idNumber++}", 30, 30),
      new TetriminoBlockElement("block#{idNumber++}", 30, 60),
    ]

  move: (deltaPointTop, deltaPointLeft) ->
    @point.top += deltaPointTop
    @point.left += deltaPointLeft
    for block in @blocks
      block.move(deltaPointTop, deltaPointLeft)
