sum = require('../lib/sum').sum

describe('引数が0', ->
	it '[]', ->
		expect(sum []).toEqual 0
)

describe('引数が1つ', ->
	it '[0]', ->
		expect(sum [0]).toEqual 0
	it '[1]', ->
		expect(sum [1]).toEqual 1
)

describe('引数が2つ以上', ->
	it '[1,2]', ->
		expect(sum [1,2]).toEqual 3
	it '[1,2,3,4,5]', ->
		expect(sum [1,2,3,4,5]).toEqual 15

)
