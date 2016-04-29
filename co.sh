cd scripts
coffee --compile --bare index.coffee
coffee --compile --bare move.coffee
coffee --compile --bare tetrimino.coffee
coffee --compile --bare operation.coffee
# nkf -Lw move.js
cd ..
