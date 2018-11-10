## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  inv <- NULL

  set <- function(y) {
    matrix <<- y
    inv <<- NULL
  }

  get <- function() matrix
  set_inverse <- function(input) inv <<- input
  get_inverse <- function() inverse
  
  list(set = set, get = get,
       set_inverse = set_inverse,
       get_inverse = get_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

  inv <- special_matrix$get_inverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- special_matrix$get()
  inv <- solve(data, ...)
  special_matrix$set_inverse(inv)
  inv
}
