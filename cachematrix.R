## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix: This function creates a special "matrix" 
##                  object that can cache its inverse. 
## cacheSolve: This function computes the inverse of the 
## special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated 
## (and the matrix has not changed), then the cachesolve 
## should retrieve the inverse from the cache.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      inverse <- matrix()
      set <- function(y){
            x <<- y
            inverse <<- matrix()
      }
      get function() x
      setInverseCache <- function(inversion){
            inverse <- inversion
      }
      getInverseCache <- function() inverse
      list(set = set,get = get,setInverseCache = setInverseCache,getInverseCache = getInverseCache)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      m <- x$getInverseCache()
      if(!is.null(m)){
            message("getting cache data")
            return(m)
      }
      data <- x$get()
      m <- solve(data)
      x$setInverseCache(m)
      m
}
