## Put comments here that give an overall description of what your
## functions do

## Creates a cached-version of a matrix, that caches the
## inverse of the currente matrix.
## Its internal state is contains the matrix and its inverse, 
## and provides methods for setting/getting the corresponding 
## values.
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  #matrix setter method
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  #matrix getter method
  get <- function() x
  #inverse setter method
  setinv <- function(i) inv <<- i
  #inverse getter method
  getinv <- function() inv
  #return a list containing the methods.
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Computes the inverse of a "cached" matrix.
## The matrix x must be a matrix returned by the
## makeCacheMatrix function.
## If the matrix contains a cached version of the
## inverse, this function returns it, otherwise, it
## computes.
cacheSolve <- function(x, ...) {
  # obtain the cached inverse
  inv <- x$getinv()
  #if there is a cached inverse, we return it
  if (!is.null(inv)) {
    return(inv)
  }
  # if there is no cached inverse, we compute it
  # we get the internal matrix
  data <- x$get()
  #compute the inverse matrix
  inv <- solve(data, ...)
  #set the cached value
  x$setinv(inv)
  #return the inverse
  inv
  }
