## makeCacheMatrix creates a special matrix object that can cache a matrix. 
## cacheSolve checks to see if the cached matrix object has been inversed,
## if not, it creates the inverse and saves it to the cache.  If the matrix
## has already been inversed, it returns the cached matrix.

## Creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
     matrixinverse <<- NULL
     matrixcache <<- x
}


## Computes the inverse of the special matrix object returned by makeCacheMatrix. 
## If inverse has already been calculated, retrieve inverse from cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     if (!is.null(matrixinverse)){
          message("getting cached data")
          return(matrixcache)
     }
     matrixinverse <<- 1
     matrixcache <<-solve(matrixcache)
}
