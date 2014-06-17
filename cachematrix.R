## Put comments here that give an overall description of what your
## functions do

## makeCahceMatrix returns a list of functions that can
#        set a matrix
#        get a matrix
#        set the inverse of the matrix
#        get the inverse of the matrix
        
#        it accepts the matrix as argument

makeCacheMatrix <- function(x = matrix()) {
        mtx <- NULL
        set <- function(y) {
                x <<- y
                mtx <<- NULL
        }
        get <- function() x
        setinversematrix <- function(solve) mtx <<- solve
        getinversematrix <- function() mtx
        list(set = set, get = get,
             setinversematrix = setinversematrix,
             getinversematrix = getinversematrix)
}


## cacheSolve is a function that solves the inverse of a matrix
# if the inversed matrix is cached it will returend
# otherwise it will be solved and set.

cacheSolve <- function(x, ...) {
        mtx <- x$getinversematrix()
        if(!is.null(mtx)) {
                message("getting cached inversed matrix")
                return(mtx)
        }
        data <- x$get()
        mtx <- solve(data, ...)
        x$setinversematrix(mtx)
        mtx      ## Return a matrix that is the inverse of 'x'
}
