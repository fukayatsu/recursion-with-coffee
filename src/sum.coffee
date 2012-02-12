exports.sum = (xs) -> 
	calc 0, xs

calc = (total, xs) ->
	return total if xs.length == 0
	calc total + xs.pop(), xs
