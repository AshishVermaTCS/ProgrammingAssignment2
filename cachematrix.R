## This function will invert any provided matrix and store it in cache. This function has fours sub function to:
## set the value of the matrix
## get the value of the matrix
## set the value of the inverted matrix
## get the value of the inverted matrix

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function (y)
	{
		x <<- y
		m <<- NULL 
	}
	
	get <- function()
	{
		x
	} 

	set_inverted <- function(solve)
	{
		m <<- solve	
	}

	get_inverted <- function()
	{
		m
	} 
	
	list(set = set, get = get,
set_inverted = set_inverted, get_inverted = get_inverted)
}

#################################################################### Demarkating second function

## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
	m <- x$get_inverted() 
	if(!is.null(m)) 
	{

		message("getting cached data")

                return(m)
        
	}


        data <- x$get()

        m <- solve(data, ...)

        x$set_inverted(m)

        m        
}
