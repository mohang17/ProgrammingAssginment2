cacheSolve <- function(y, ...) {
  j <- y$getinverse()
  if (!is.null(j)) {
    message("getting cached data")
    return(j)
  }
  data <- y$get()
  j <- solve(data, ...)
  y$setinverse(j)
  j
}
