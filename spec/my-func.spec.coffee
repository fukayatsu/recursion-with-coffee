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
