block = 0
$(document).on "ready", () ->
  console.log "Hi."
  block = new TetriminoBlockElement

$(window).on "keydown", (e)->
  if e.keyCode == 40
    block.move(30, 0)
  else if e.keyCode == 39
    block.move(0, 30)
  else if e.keyCode == 37
    block.move(0, -30)
