makeCacheMatrix <- function(a = matrix()) {
  j <- NULL
  set <- function(b) {
    a <<- b
    j <<- NULL
  }
  get <- function() a
  setinverse <- function(inverse) j <<- inverse
  getinverse <- function() j
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

