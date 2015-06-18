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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
