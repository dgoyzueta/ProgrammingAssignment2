## This function creates in the global enviroment the matrix passed as argument
## and its inverse to be used in other functions

makeCacheMatrix <- function(x = matrix()) {
    
    cachedMatrix <<- x
    cachedInverse <<- solve(cachedMatrix)
    print("Matrix and its inverse created in the global environment")
}


## This function checks whether the matrix passed as argument has the same
## values in the global variable cachedMatrix in the global environment. If so,
## the function returns the inverse from the cache, otherwise, it returns a new
## calculated inverse and caches this result and the matrix by invoking makeCacheMatrix()

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
    if(all(x == cachedMatrix)) {
        print("Getting the inverse from the cache")
        return(cachedInverse)
    }
    
    print("Calculating the inverse")
    newinverse = solve(x)
    
    print("Caching the new matrix and its inverse")
    makeCacheMatrix(x)
    
    newinverse
}
