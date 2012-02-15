(function() {
  var Tuple, length;

  Tuple = require('./models/tuple');

  module.exports.length = function(xs) {
    return length(xs);
  };

  length = function(xs) {
    var tuple;
    if (xs.length === 0) return 0;
    tuple = new Tuple(xs);
    return 1 + length(tuple.tail());
  };

}).call(this);
