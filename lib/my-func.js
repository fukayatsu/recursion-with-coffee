(function() {
  var MyFunc, Tuple, find, forAll, forAny, len, max, min, sum;

  Tuple = require('./models/tuple');

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

  forAll = function(xs, func) {
    var tuple;
    if (xs.length === 0) return true;
    tuple = new Tuple(xs);
    return (func(tuple.head())) && (forAll(tuple.tail(), func));
  };

  forAny = function(xs, func) {
    var tuple;
    if (xs.length === 0) return false;
    tuple = new Tuple(xs);
    return (func(tuple.head())) || (forAny(tuple.tail(), func));
  };

  find = function(xs, func) {
    var tuple;
    if (xs.length === 0) return null;
    tuple = new Tuple(xs);
    if (func(tuple.head())) {
      return tuple.head();
    } else {
      return find(tuple.tail(), func);
    }
  };

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

    MyFunc.forAll = function(xs, func) {
      return forAll(xs, func);
    };

    MyFunc.forAny = function(xs, func) {
      return forAny(xs, func);
    };

    MyFunc.find = function(xs, func) {
      return find(xs, func);
    };

    return MyFunc;

  })();

}).call(this);
