
mods = [
  require('./drain'),
  require('./faucet'),
  require('./transform')
]
for mod in mods
  for k,v of mod
    exports[k] = v