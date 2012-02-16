Tuple = require './models/tuple'

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

forAll = (xs, func) ->
  return true if xs.length == 0
  tuple = new Tuple xs
  (func tuple.head())&&(forAll tuple.tail(), func)

forAny = (xs, func) ->
  return false if xs.length == 0
  tuple = new Tuple xs
  (func tuple.head())||(forAny tuple.tail(), func)

find = (xs, func) ->
  return null if xs.length == 0
  tuple = new Tuple xs
  if func tuple.head()
    return tuple.head()
  else
    return find tuple.tail(), func

skip = (xs, n) ->
  return xs if n == 0 || xs.length == 0
  tuple = new Tuple xs
  skip tuple.tail(), n-1

#配列の先頭に要素を追加する関数
cons = (x,xs) -> xs.unshift x; xs

take = (xs, n) ->
  return [] if n == 0 || xs.length == 0
  tuple = new Tuple xs
  cons tuple.head(), (take tuple.tail(), n-1)




module.exports = class MyFunc
  @sum : (xs) -> sum xs
  @len : (xs) -> len xs
  @max : (xs) -> max xs
  @min : (xs) -> min xs
  @forAll : (xs, func) -> forAll xs, func
  @forAny : (xs, func) -> forAny xs, func
  @find : (xs, func) -> find xs, func
  @skip : (xs, n) -> skip xs, n
  @take : (xs, n) -> take xs, n
