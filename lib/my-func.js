(function() {
  var MyFunc, Tuple, len, max, min, sum;

  Tuple = require('./models/tuple');

  module.exports = MyFunc = (function() {

    function MyFunc() {}

    MyFunc.sum = function(xs) {
      return sum(xs);
    };

    MyFunc.len = function(xs) {
      return len(xs);
    };

    MyFunc.max = function(xs) {
      return max(xs);
    };

    MyFunc.min = function(xs) {
      return min(xs);
    };

    return MyFunc;

  })();

  sum = function(xs) {
    var tuple;
    if (xs.length === 0) return 0;
    tuple = new Tuple(xs);
    return tuple.head() + sum(tuple.tail());
  };

  len = function(xs) {
    var tuple;
    if (xs.length === 0) return 0;
    tuple = new Tuple(xs);
    return 1 + len(tuple.tail());
  };

  max = function(xs) {
    var ret, tuple;
    if (xs.length === 1) return xs[0];
    tuple = new Tuple(xs);
    ret = max(tuple.tail());
    if (tuple.head() > ret) {
      return tuple.head();
    } else {
      return ret;
    }
  };

  min = function(xs) {
    var ret, tuple;
    if (xs.length === 1) return xs[0];
    tuple = new Tuple(xs);
    ret = min(tuple.tail());
    if (tuple.head() < ret) {
      return tuple.head();
    } else {
      return ret;
    }
  };

}).call(this);
