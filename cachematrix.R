## Write a short comment describing this function
# Function to create a special matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  # Setter function to set the matrix
  set <- function(matrix) {
    x <<- matrix
    inv <<- NULL  # Reset the cached inverse when the matrix changes
  }
  
  # Getter function to retrieve the matrix
  get <- function() {
    x
  }
  
  # Setter and getter functions for the inverse
  setInverse <- function(inverse) {
    inv <<- inverse
  }
  
  getInverse <- function() {
    inv
  }
  
  # Return a list containing the functions
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Write a short comment describing this function
# Function to compute the inverse of the special matrix object
cacheSolve <- function(x, ...) {
  inv <- x$getInverse()  # Check if the inverse is already computed and cached
  if (!is.null(inv)) {
    message("Getting cached inverse")
    return(inv)  # If cached, return the cached inverse
  } else {
    matrix <- x$get()  # If not cached, get the matrix
    inv <- solve(matrix, ...)  # Calculate the inverse
    x$setInverse(inv)  # Cache the computed inverse
    return(inv)
  }
}
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
