(function() {
  var Tuple, sum;

  exports.sum = function(xs) {
    return sum(xs);
  };

  sum = function(xs) {
    var tuple;
    if (xs.length === 0) return 0;
    tuple = new Tuple(xs);
    return tuple.head() + sum(tuple.tail());
  };

  Tuple = (function() {

    function Tuple(xs) {
      this.xs = xs;
    }

    Tuple.prototype.head = function() {
      return this.xs[0];
    };

    Tuple.prototype.tail = function() {
      return this.xs.slice(1);
    };

    return Tuple;

  })();

}).call(this);
