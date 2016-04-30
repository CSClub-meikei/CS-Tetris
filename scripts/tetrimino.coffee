idNumber = 0

class Tetrimino

  constructor: (locate) ->
    @point =
      top: 0
      left: 0
    @blocks = [
      new TetriminoBlockElement("block#{idNumber++}", locate[0], locate[1]),
      new TetriminoBlockElement("block#{idNumber++}", locate[2], locate[3]),
      new TetriminoBlockElement("block#{idNumber++}", locate[4], locate[5]),
      new TetriminoBlockElement("block#{idNumber++}", locate[6], locate[7]),
    ]
    @deg0 = locate
    @deg90 = []
    @deg180 = []
    @deg270 = []

  move: (deltaPointTop, deltaPointLeft) ->
    @point.top += deltaPointTop
    @point.left += deltaPointLeft
    for block in @blocks
      block.move(deltaPointTop, deltaPointLeft)
    console.log @point.top
    console.log @point.left

  rotate: (deg) -> # TODO: let it go!
    @blocks[0].moveAbolute(@point.top + @deg0[0], @point.left + @deg0[1])
    @blocks[1].moveAbolute(@point.top + @deg0[2], @point.left + @deg0[3])
    @blocks[2].moveAbolute(@point.top + @deg0[4], @point.left + @deg0[5])
    @blocks[3].moveAbolute(@point.top + @deg0[6], @point.left + @deg0[7])


class TetriminoRed extends Tetrimino

  constructor: () ->
    super([
      0, 0
      30, 0
      30, 30
      30, 60
      ])
