module.exports = class Tuple
  constructor: (@xs) ->
  head: -> @xs[0]
  tail: -> @xs[1..-1]
