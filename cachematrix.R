## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## makeCacheMatrix creates a special "vector", which is really a list containing a function to
## - set the matrix
## - get the matrix
## - set the solved matrix
## - get the solved matrix

## initialize solved matrix
  i <- NULL
  
## define set matrix
  set <- function(y) {
    x <<- y
    i <<- NULL
  }

## define get matrix
  get <- function() x

## set solve matrix
  setsolve <- function(mean) m <<- mean

## set solve matrix
  getsolve <- function() m

## define and return list of functions
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'

  ## Get solved matrix from cache
  i <- x$getsolve()
  
  ## Check if it was set / calculated before
  if(!is.null(i)) {
  ## If defined, print a message and return the cached values
    message("getting cached data")
    return(i)
  }
  
  ## If not defined, solve the matrix, cache the result and return it
  data <- x$get()
  i <- solve(data, ...)
  x$setsolve(i)
  i
}
