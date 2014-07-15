// Generated by IcedCoffeeScript 1.7.1-f
(function() {
  var Faucet, faucet, stream,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  stream = require('stream');

  exports.Faucet = Faucet = (function(_super) {
    __extends(Faucet, _super);

    function Faucet(buf) {
      this.buf = buf;
      Faucet.__super__.constructor.apply(this, arguments);
    }

    Faucet.prototype._read = function(sz) {
      this.push(this.buf);
      return this.buf = null;
    };

    return Faucet;

  })(stream.Readable);

  exports.faucet = faucet = function(_arg, cb) {
    var buf, done, f, stream;
    buf = _arg.buf, stream = _arg.stream;
    f = new Faucet(buf);
    f.pipe(stream);
    done = function(err) {
      var tmp;
      if ((tmp = cb) != null) {
        cb = null;
        return tmp(err);
      }
    };
    stream.on('finish', function() {
      return done(null);
    });
    return stream.on('error', function(err) {
      return done(err);
    });
  };

}).call(this);