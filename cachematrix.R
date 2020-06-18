## Put comments here that give an overall description of what your
## functions do

## This function will store the var y as a vector and calculate the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


##This is the main functionality which calculates the inverse. 
##We first check if the inverse has already been calculated or not. If not, we call
##the set inverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<- x$getinverse()
  if(!is.null(m))
  {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setinverse(m)
  m
}
