## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- x$cashesolve()
 if (!is.null(m)){ ##checking if the value is found in the history of the function
   message("getting cached data")
   return(m)    ##returing the presolved inverse of matrix
 }
 data <- x$get()  ## solving the matrix when no history of solveing the given matrix
 m <- solve(data, ...)
 x$setmat(m)
 m

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- NULL
   set <- function(y) {
     x <<- y
     m <<- NULL
   } ##setting up the initial conditions 
   get <- function() x
   setmat <- function(solve) m <<- solve ##defining the functions setmat and getmat
   getmat <- function() m
   list(set = set, get = get,
        setmat = setmat,
        getmat = getmat)
        ## Return a matrix that is the inverse of 'x'
}
