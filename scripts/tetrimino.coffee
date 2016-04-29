class TetriminoBlockElement

  constructor: () ->
    helloConole("by constructor")
    @append()

  append: () ->
    helloConole("from @append")
    $("#field").append("<div class='falling_red'></div>")

  move: (deltaPointTop=0, deltaPointLeft=0) ->
    pointTop = @getTop(".falling_red")
    pointLeft = @getLeft(".falling_red")

    $(".falling_red").css("top", pointTop + deltaPointTop)
    $(".falling_red").css("left", pointLeft + deltaPointLeft)

  getTop: (selector, property="top") ->
    parseInt($(selector).css("top").slice(0, -2))

  getLeft: (selector, property="left") ->
    parseInt($(selector).css("left").slice(0, -2))

  helloConole = (str) ->
    console.log "hello from #{str}"
