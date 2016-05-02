blocks = []
test = 0
degValue = 0
$(document).on "ready", () ->
  test = new TetriminoRed
  timer = setInterval( (->test.move(30, 0)), 500)
  return

$(window).on "keydown", (e)->
  if e.keyCode is 40
    test.move(30, 0)
  else if e.keyCode is 39
    test.move(0, 30)
  else if e.keyCode is 37
    test.move(0,-30)
  else if e.keyCode is 32
    if degValue < 270
      test.rotate(degValue+=90)
    else
      test.rotate(0)
      degValue = 0
