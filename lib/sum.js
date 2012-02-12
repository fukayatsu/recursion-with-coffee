(function() {
  var calc;

  exports.sum = function(xs) {
    return calc(0, xs);
  };

  calc = function(total, xs) {
    if (xs.length === 0) return total;
    return calc(total + xs.pop(), xs);
  };

}).call(this);
