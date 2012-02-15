(function() {
  var Tuple, sum;

  Tuple = require('./models/tuple');

  exports.sum = function(xs) {
    return sum(xs);
  };

  sum = function(xs) {
    var tuple;
    if (xs.length === 0) return 0;
    tuple = new Tuple(xs);
    return tuple.head() + sum(tuple.tail());
  };

}).call(this);
