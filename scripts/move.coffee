
move = (direction, minus) ->
	$('.falling').each(fun = () ->
			blockTop = $(this).css("#{direction}")
			if minus == 1
				blockTop = parseInt(blockTop.slice(0, -2)) + 10
			else
				blockTop = parseInt(blockTop.slice(0, -2)) - 10
			# console.log(blockTop)
			$(this).css("#{direction}", blockTop)
		)

$(window).on "keydown", (e) ->
	console.log(e.keyCode)
	switch e.keyCode
	  when 40
	    move("top", 1)
    when 39
      move("left", 1)
    when 37
      move("left", -1)
