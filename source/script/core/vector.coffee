@Vec =
	diff: (a,b)->
		x: b.x - a.x
		y: b.y - a.y
	
	angle: (a, b)->
		p = Vec.diff(a,b)
		Math.atan2(p.y, p.x)
	
	distance: (a,b)->
		p = Vec.diff(a,b)
		Math.sqrt(p.x*p.x + p.y*p.y)
	
	pathLength: (arr)->
		arr.mapPairs(Vec.distance).sum()
	
	lerp: (a, b, t)->
		d = Math.max(0, Math.min(1, t))
		{
			x: a.x*(1-d) + b.x*d
			y: a.y*(1-d) + b.y*d
		}