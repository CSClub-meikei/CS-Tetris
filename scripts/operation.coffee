blocks = []
test = 0
$(document).on "ready", () ->
  test = new TetriminoRed

$(window).on "keydown", (e)->
  if e.keyCode == 40
    test.move(30, 0)
  else if e.keyCode == 39
    test.move(0, 30)
  else if e.keyCode == 37
    test.move(0,-30)
