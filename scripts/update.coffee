class Update

  constructor: () ->
    helloConole("by constructor")

  append: () ->
    helloConole("from @append")
    $("#field").append("<div class='falling_red'></div>")


$(window).on "keydown", (e) ->
  if e.keyCode == 32
    helloConole("ShiftKeyDownEvent")
    up = new Update
    up.append()

helloConole = (str) ->
  console.log "hello from #{str}"
