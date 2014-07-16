

#=========================================================

class Base

  constructor : (opts) ->

  write : (buf, cb) ->

  read : (cb) ->

  stop_read : () ->

  pump : (s2, cb) ->
    err = null
    until err? or @eof()
      await @read { min : 0x100, max : 0x100000 } defer err, buf
      if err? await s2.error err, defer()
      else    await s2.write buf, defer err
    cb? null


#=========================================================

class MyBuffer

  constructor : (c) ->
    @_buffers = []
    @_len = 0
    @_capacity = c
    @_writers = []

  write : (buf, cb) ->
    while (buf.length + @_len) > @_capacity
      await @_writers.push defer()
    @_buffers.push buf
    @_len += buf.length
    cb()

  # XXX what if there's no data ready?
  # XXX thing about min and mix size
  read : ({min, max}, cb) ->
    tot = 0
    i = 0
    while i < @_buffers.length
      tot += @_buffers[i]
      break if tot >= sz
      i++
    buf = Buffers.concat @_buffers[0...i]
    @_buffers = @_buffers[i...]
    @_len -= tot
    if buf.length > sz
      ret = buf[0...sz]
      @_len += (buf.length - sz)
      @_buffers.push buf[sz...]
    if @_writers.length
      @_writers.pop()()
    cb ret

#=========================================================
