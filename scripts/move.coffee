
move = (direction = "top", minus = 1) ->
	$('.falling').each(fun = () ->		#
			blockCSS = parseInt($(this).css("#{direction}").slice(0, -2))
			# blockBottom = parseInt($(this).css("bottom").slice(0, -2))
			# blockRight = parseInt($(this).css("right").slice(0, -2))
			if minus == 1
				blockCSS += 30 if blockCSS < 600
			else
				blockCSS -= 30 if blockCSS > 0
			console.log(blockCSS)
			$(this).css("#{direction}", blockCSS)
		)

$(window).on "keydown", (e) ->
	# bot = $('#field').css("bottom")
	# console.log bot
	switch e.keyCode
	  when 40
	    move()
    when 39
      move("left", 1)
    when 37
      move("left", -1)
    when 32
      setInterval("move()", 1000) # FIXME: error move is not defined...
