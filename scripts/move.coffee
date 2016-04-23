
blockTop = 0
move = () ->
	blockTop+=10
	$('.falling').each(fun = () ->
			console.log(blockTop)
			$(this).css("top", blockTop)
		)
	# console.log(blockTop)
	# $('#fall').css("width", blockTop)
	# console.log ($('#fall').css("width"))


$(document).on "click", '#button', ->
	console.log("Hi")
	move()
