class TetorisObject

  constructor: (args, width, height) ->
    @args = args
    @width = width    #横のサイズ。これで横のあたり判定
    @height = height  #下も同様
    @moveEnable = true #あたり判定によって移動可能か確認　→　このメソッドの中に　#TODO:　クラスを変える処理を記述

	update = () -> #あたり判定がtrueの場合
    return true

  check = () -> #あたり判定
    return true

	create = () -> #クラスの中に入れるべきではない？
    $('#field').append('<div class="blockElement"></div>')
    return true


class TetoriMinoRed extends TetorisObject

  constructor: (args) ->
    create
