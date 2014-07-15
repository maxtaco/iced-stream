
##
## A drain that you can hook up to a stream that will drain it all
## into a single buffer...
##

stream = require 'stream'

#=======================================================================================

# Spew a buffer into a stream
exports.Faucet = class Faucet extends stream.Readable

  constructor : (@buf) ->
    super

  _read : (sz) -> 
    @push @buf
    @buf = null

#=======================================================================================

# Take a stream, and cb when it's fully drained.  Callback with the buffer of what was
# in the stream.
exports.faucet = faucet = ({buf, stream}, cb) ->
  f = new Faucet buf
  f.pipe(stream)
  done = (err) ->
    if (tmp = cb)?
      cb = null
      tmp err
  stream.on 'finish', ()    -> done null
  stream.on 'error' , (err) -> done err 

#=======================================================================================

