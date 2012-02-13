exports.length=(xs)->
  length xs

length = (xs)->
  return 0 if xs.length == 0
  tuple = new Tuple(xs)
  1 + length tuple.tail()

class Tuple
  constructor: (@xs) ->
  head: -> @xs[0]
  tail: -> @xs[1..-1]
