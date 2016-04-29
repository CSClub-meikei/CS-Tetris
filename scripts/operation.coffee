blocks = []
$(document).on "ready", () ->
  blocks.push new TetriminoBlockElement("testBlock01", 0, 0)
  blocks.push new TetriminoBlockElement("testBlock02", 30, 0)
  blocks.push new TetriminoBlockElement("testBlock03", 30, 30)
  blocks.push new TetriminoBlockElement("testBlock04", 30, 60)
  for block in blocks
    console.log "#{block}: #{block.pointLeft}"
  return

$(window).on "keydown", (e)->
  if e.keyCode == 40
    for block in blocks
      block.move(30, 0)
  else if e.keyCode == 39
    for block in blocks
      block.move(0, 30)
  else if e.keyCode == 37
    for block in blocks
      block.move(0, -30)
