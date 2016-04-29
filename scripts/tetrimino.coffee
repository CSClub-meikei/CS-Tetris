class TetriminoBlockElement

  constructor: (name, pTop=0, pLeft=0) ->
    @pointTop = pTop
    @pointLeft = pLeft
    @myName = name

    @append()
    @move(@pointTop, @pointLeft)

  append: () ->
    # helloConsole("from @append")
    $("#field").append("<div class='falling_red' id='#{@myName}'></div>")

  move: (deltaPointTop=0, deltaPointLeft=0) ->
    pointTop = @getTop("##{@myName}")
    pointLeft = @getLeft("##{@myName}")

    $("##{@myName}").css("top", pointTop + deltaPointTop)
    $("##{@myName}").css("left", pointLeft + deltaPointLeft)

  getTop: (selector, property="top") ->
    parseInt($(selector).css("top").slice(0, -2))

  getLeft: (selector, property="left") ->
    parseInt($(selector).css("left").slice(0, -2))

  helloConsole = (str) ->
    console.log "hello from #{str}"
