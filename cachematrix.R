## Put comments here that give an overall description of what your
## functions do
##  makeCacheMatrix: This function creates a special "matrix"
## object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
    cachedinvertedmatrix <- NULL ## creating an empty vector 
    invertedmatrix <- solve(x) ##inverting the matrix
    cachedinvertedmatrix <<- invertedmatrix ##caching the result of calculation
    invertedmatrix #optional: returning the inverted matrix
  }
## This function computes the inverse of the special "matrix"
##returned by makeCacheMatrix above. If the inverse has already 
##been calculated (and the matrix has not changed), then cacheSolve 
##should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {    
    if(!is.null(cachedinvertedmatrix)) { ##checks if the cache ISN'T empty
      message("getting cached data") ##notifies you that cached data is available
      return(cachedinvertedmatrix) ##fetches the cached inverted matrix
    }
    else {
    message("no cached data, calculating")
    invertedmatrix <- solve(x) ##inverts a matrix IF cached info is not present
    return(invertedmatrix) ## Return a matrix that is the inverse of 'x'
    }
  }