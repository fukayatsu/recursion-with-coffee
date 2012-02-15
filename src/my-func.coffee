Tuple = require './models/tuple'

module.exports = class MyFunc
  @sum : (xs) -> sum xs
  @len : (xs) -> len xs
  @max : (xs) -> max xs
  @min : (xs) -> min xs

sum = (xs) ->
  return 0 if xs.length == 0
  tuple = new Tuple xs
  tuple.head() + sum(tuple.tail())

len = (xs) ->
  return 0 if xs.length == 0
  tuple = new Tuple xs
  1 + len tuple.tail()

max = (xs) ->
  return xs[0] if xs.length == 1
  tuple = new Tuple xs
  ret = max tuple.tail()
  if tuple.head() > ret then tuple.head() else ret

min = (xs) ->
  return xs[0] if xs.length == 1
  tuple = new Tuple xs
  ret = min tuple.tail()
  if tuple.head() < ret then tuple.head() else ret
