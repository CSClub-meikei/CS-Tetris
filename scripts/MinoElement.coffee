class TetriminoBlockElement

  constructor: (name, pTop=0, pLeft=0, color="red") ->
    @pointTop = pTop
    @pointLeft = pLeft
    @myName = name
    @type = color

    @append()
    @move(@pointTop, @pointLeft)

  append: () ->
    # helloConsole("from @append")
    $("#field").append("<div class='falling_#{@type}' id='#{@myName}'></div>")
    return

  move: (deltaPointTop=0, deltaPointLeft=0) ->
    pointTop = @getTop("##{@myName}")
    pointLeft = @getLeft("##{@myName}")

    $("##{@myName}").css("top", pointTop + deltaPointTop)
    $("##{@myName}").css("left", pointLeft + deltaPointLeft)
    return

  moveAbsolute: (top, left) ->
    $("##{@myName}").css("top", top)
    $("##{@myName}").css("left", left)
    return

  getTop: (selector, property="top") ->
    parseInt($(selector).css("top").slice(0, -2))

  getLeft: (selector, property="left") ->
    parseInt($(selector).css("left").slice(0, -2))

  delete: () ->
    $("##{@myName}").remove()

  helloConsole = (str) ->
    console.log "hello from #{str}"
    return
