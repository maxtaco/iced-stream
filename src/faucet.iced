
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

exports.SlowFaucet = class SlowFaucet extends stream.Readable

  constructor :({@buf, @blocksize, @wait_msec}) ->
    super()
    @_i = 0

  _read : (n) ->
    buf = null
    if not @buf? then # noop
    else if not @blocksize?
      buf = @buf
      @buf = null
    else if @_i < @buf.length
      end = @_i + @blocksize
      buf = @buf[@_i...end]
      @_i = end
    @push buf

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

