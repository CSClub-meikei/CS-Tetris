cd scripts
coffee --compile --bare index.coffee
coffee --compile --bare move.coffee
coffee --compile --bare update.coffee
# nkf -Lw move.js
cd ..
