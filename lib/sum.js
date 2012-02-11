var calc;

exports.sum = function(xs) {
  return calc(0, xs);
};

calc = function(total, xs) {
  if (xs.length === 0) return total;
  total = total + xs.pop();
  return calc(total, xs);
};
