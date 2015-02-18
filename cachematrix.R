## Put comments here that give an overall description of what your
## functions do

## The function is divided in four parts, $set - that set the Matrix, $get - that get the matrix, $setinverse - that inverse the Matrix, getinverse that get the inverse value

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function (y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function () x
  setinverse <- function (solve) m <<- solve
  getinverse <- function() m
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## the function will get the cached value if it is real, or calculate the inverse of a nwe MAtrix.

cacheSolve <- function(x=matrix(), ...) {
  m <- x$getinverse()
  if (!is.null(m)) {
    message("getting cache data")
    return(m)
  }
data <- x$get()
m <- solve(data,...)
x$setinverse(m)
m

        ## Return a matrix that is the inverse of 'x'
}
}
