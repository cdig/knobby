Array.prototype.sum = ()->
	return 0 unless this.length > 0
	this.reduce (a,b)->
		a+b

Array.prototype.average = ()->
	return 0 unless this.length > 0
	total = this.reduce (a,b)->
		a+b
	total/this.length
	
Array.prototype.mapPairs = (call)->
	return [] unless this.length > 1
	values = []
	this.reduce (a,b)->
		values.push(call(a,b))
		b
	values