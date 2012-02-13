exports.sum = (xs) -> 
  sum xs

sum = (xs) ->
  return 0 if xs.length == 0
  tuple = new Tuple(xs)
  tuple.head() + sum(tuple.tail())

class Tuple
  constructor: (@xs) ->
  head: -> @xs[0]
  tail: -> @xs[1..-1]
