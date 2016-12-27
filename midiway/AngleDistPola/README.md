This is a sample of usage of three mathemathical functions for geometrical calculation:


    AngleBetweenPoints(p1, p2)
	
↳ given two points, it returns the angle between them in radians, as a float



    DistanceBetweenPoints(p1, p2)
	
↳ given two points, it returns the distance between them in pixels, as a float



	PolarOffset(angle, dist)
	
↳ calculates the X and Y offset values of a point parting from in the given angle, in radians, at the given distance, in pixels, returns it as a [X,Y] float array



Note: all points parameters are passed as an array of two floats, X and Y, for example [43, 45]