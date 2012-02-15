(function() {
  var Tuple;

  module.exports = Tuple = (function() {

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
