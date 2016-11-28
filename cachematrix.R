
## Jeny Espinal Caching the Inverse of  a Matrix week 3
## Matrix inversion  is a heavy computation and there are benefits to  cashing the inverse instead.
## The functions below are used to  store a matric and cashe the inverse

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    j <- NULL
    set <- function (y) {
        x <<- y
        j <<- NULL
    }
    get <- function() x
    setinverse <- function (inverse) j <<- inverse
    getinverse <- function () j
    list( set = set,
         get = get,
        setinverse = serinverse,
        getinverse = getinverse)
}
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        j <- x$getinverse()
        if (!is.null(inv))  {
            message ("getting cached data")
            return(inv)
        }
        mat <- x$get()
        j <- solve(mat, ...)
        x$setinverse(j)
        j
}


