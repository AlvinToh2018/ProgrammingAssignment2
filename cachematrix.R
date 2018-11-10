## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # store inverse value
  inverse <- NULL
  # set the original matrix and reset inverse
  set <- function(y) {
    matrix <<- y
    inverse <<- NULL
  }
  # get the original matrix
  get <- function() matrix
  # set inverse value
  set_inverse <- function(inv) inverse <<- inv
  # get inverse value
  get_inverse <- function() inverse
  
  # Returns a list of the 4 functions, this list is the special "matrix"
  list(set = set, get = get,
       set_inverse = set_inverse,
       get_inverse = get_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- special_matrix$get_inverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- special_matrix$get()
  inverse <- solve(data, ...)
  special_matrix$set_inverse(inverse)
  inverse
}
