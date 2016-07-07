## Put comments here that give an overall description of what your
## functions do

## overall , it is the same. Just change the function of mean to solve. 

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  ## assigning inverse value to m to be computed 
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## check whether m is a empty matrix , if it is a empty matrix, proceed to calculate inverse, if not take the data in the cache
         m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  ## solving for matrix inverse and storing it to m
  m <- solve(data, ...)
  x$setinverse(m)
  m
        
        
}
