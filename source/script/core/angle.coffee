@Angle =
	wrap: (ang, bias)->
		while bias - ang > +Math.PI then ang += TAU
		while bias - ang < -Math.PI then ang -= TAU
		ang
