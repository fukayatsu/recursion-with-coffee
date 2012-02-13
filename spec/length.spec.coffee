length = require('../lib/length').length

describe('length is 0', ->
  it '[]', ->
    expect(length []).toEqual 0
)

describe('length is 1', ->
  it '[1]', ->
    expect(length [1]).toEqual 1
)

describe('length is 2', ->
  it '[1,2]', ->
    expect(length [1,2]).toEqual 2
  it "['a','b']", ->
    expect(length ['a', 'b']).toEqual 2
)

describe('length is 3', ->
  it '[1,2,3]', ->
    expect(length [1,2,3]).toEqual 3
)

