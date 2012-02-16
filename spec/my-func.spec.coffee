Func = require('../lib/my-func')

describe('sum', ->
  it '[]', -> expect(Func.sum []).toEqual 0
  it '[0]', -> expect(Func.sum [0]).toEqual 0
  it '[1]', -> expect(Func.sum [1]).toEqual 1
  it '[1,2]', -> expect(Func.sum [1,2]).toEqual 3
  it '[1,2,-5]', -> expect(Func.sum [1,2,-5]).toEqual -2
)

describe('length', ->
  it '[]', -> expect(Func.len []).toEqual 0
  it '[0]', -> expect(Func.len [0]).toEqual 1
  it '[1]', -> expect(Func.len [1]).toEqual 1
  it '[1,2]', -> expect(Func.len [1,2]).toEqual 2
  it '[1,2,-5]', -> expect(Func.len [1,2,-5]).toEqual 3
)

describe('max', ->
  it '[0]', -> expect(Func.max [0]).toEqual 0
  it '[1]', -> expect(Func.max [1]).toEqual 1
  it '[1,2]', -> expect(Func.max [1,2]).toEqual 2
  it '[2,1]', -> expect(Func.max [2,1]).toEqual 2
  it '[1,2,5,6,3]', -> expect(Func.max [1,2,5,6,3]).toEqual 6
)

describe('min', ->
  it '[0]', -> expect(Func.min [0]).toEqual 0
  it '[1]', -> expect(Func.min [1]).toEqual 1
  it '[1,2]', -> expect(Func.min [1,2]).toEqual 1
  it '[2,1]', -> expect(Func.min [2,1]).toEqual 1
  it '[1,2,-2,6,3]', -> expect(Func.min [1,2,-2,6,3]).toEqual -2
)

pred = (num) ->
  if num%2==0 then true else false

describe('forAll', ->
  it '[]', -> expect(Func.forAll [], pred).toEqual true
  it '[1]', -> expect(Func.forAll [1], pred).toEqual false
  it '[2]', -> expect(Func.forAll [2], pred).toEqual true
  it '[2,2]', -> expect(Func.forAll [2,2], pred).toEqual true
  it '[1,1]', -> expect(Func.forAll [1,1], pred).toEqual false
  it '[2,4,6,8]', -> expect(Func.forAll [2,4,6,8], pred).toEqual true
  it '[2,4,5,8]', -> expect(Func.forAll [2,4,5,8], pred).toEqual false
)

describe('forAny', ->
  it '[]', -> expect(Func.forAny [], pred).toEqual false
  it '[1]', -> expect(Func.forAny [1], pred).toEqual false
  it '[2]', -> expect(Func.forAny [2], pred).toEqual true
  it '[1,3,5,7]', -> expect(Func.forAny [1,3,5,7], pred).toEqual false
  it '[1,3,5,8]', -> expect(Func.forAny [1,3,5,8], pred).toEqual true
)

describe('find', ->
  it '[]', ->expect(Func.find [], pred).toEqual null
  it '[1]', ->expect(Func.find [1], pred).toEqual null
  it '[2]', ->expect(Func.find [2], pred).toEqual 2
  it '[2,3]', ->expect(Func.find [2,3], pred).toEqual 2
  it '[1,3,5,6]', -> expect(Func.find [1,3,5,6], pred).toEqual 6
)
