# makeCacheMatrix - creates a special matrix object that can 
##cache its inverse. 

## In the makeCacheMatrix:-
## im stands for invesrse matrix.
## set - set the value of the matrix aka x.
## get - get the value of the matrix.
## setinverse - set the value of the inverse.
## getinverse - get the value of the inverse. 

makeCacheMatrix <- function(x = matrix()) {
  im  <- NULL
  set <- function(y) {
    x <<- y 
    im <<- NULL
  }
  
  get <- function() x
  setinverse <- function(solve) im <<- solve(x)
  getinverse <- function() im
  list( set = set, get = get, 
        setinverse = setinverse,
        getinverse = getinverse)
  
}


## cacheSolve - computes the inverse of the matrix, returned by makeCacheMatrix.

## In the cacheSolve function:-
## im - is extracting the value of the inverse assigned/calculated
## by the previous function.
## If the inverse isn't NULL & it was previous calculated; then it retrieves it
## from the cache.

cacheSolve <- function(x, ...) {
  im <- x$getinverse()
  if (!is.null(im)) {
    message("Retrieving cached inverse matrix.")
    return(im)
  }
  
}


