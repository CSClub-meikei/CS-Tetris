cd scripts
# coffee --compile --bare index.coffee
# coffee --compile --bare move.coffee
coffee --compile --bare MinoElement.coffee
coffee --compile --bare TetriMino.coffee
coffee --compile --bare operation.coffee
# nkf -Lw move.js
cd ..
