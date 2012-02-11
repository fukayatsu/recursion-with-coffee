exports.sum = xs -> 
	calc 0, xs

calc = total, xs ->
	if xs.length == 0
		return total
	total += xs.pop()
	calc total, xs
