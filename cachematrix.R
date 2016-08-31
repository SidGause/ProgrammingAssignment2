## The assignment was to create makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## I sought instruction from Stack Overflow (stackoverflow.com/questions/11995832/inverse-of-matrix-in-r)
## I also googled other entries.

## I am going to attempt to return: a list containing functions to
        ## set the Invers and get the Inverse
        ## This will also be used in the next code CacheSolve 


makeCacheMatrix <- function(x = matrix()) {

i <- NULL
  set <- function(matrix) {
    m <<- matrix
    i <<- NULL
  }
  get <- function() {
    m
  }
  setInverse <- function(inverse) {
  ## ## add the inverse code here
    i <<- inverse
  }
  getInverse <- function() {
   i 
  }
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}}


## The goal of the below is to This function computes the inverse of the 
## special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
        m <- x$getInverse(){
if( !is.null(m) ) {
  message("getting cached data")
  return(m)
}
## Here, it will find the inverse by matrix multiplication
m <- solve(data) %*% data
## Next, we have the inverse to it
x$setInverse(m)
## lastly, get the back to the matrix
m
}
