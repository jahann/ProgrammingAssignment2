## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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
