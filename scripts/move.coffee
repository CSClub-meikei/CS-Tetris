move = (direction = "top", minus = 1) ->
	$('.falling_red').each(fun = () ->		#
			blockCSS = parseInt($(this).css("#{direction}").slice(0, -2))
			if minus == 1
				if "#{direction}" == "top"
					blockCSS += 30 if blockCSS+60 < 600
				else if "#{direction}" == "left"
					blockCSS += 30 if blockCSS+90 < 600
			else
				blockCSS -= 30 if blockCSS > 0
			console.log(blockCSS)
			$(this).css("#{direction}", blockCSS)
		)

$(window).on "keydown", (e) ->
	switch e.keyCode
		when 40
			move()
		when 39
			move("left", 1)
		when 37
			move("left", -1)
		when 32
			setInterval("move()", 1000)

hey = () ->
	window.alert("Hello")
