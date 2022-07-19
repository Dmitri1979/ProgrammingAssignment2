## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 matr <- NULL
    set <- function(y){
        x <<- y
        matr <<- NULL
    }
    get <- function()x
    setInverse <- function(inverse) matr <<- inverse
    getInverse <- function() matr
    list(set = set, get = get, 
         setInverse = setInverse, 
         getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
   matr <- x$getInverse()
    if(!is.null(matr)){
        message("Getting cached data")
        return(matr)
    }
    matc <- x$get()
    matr <- solve(matc)
    x$setInverse(matr)
    matr      ## Return a matrix that is the inverse of 'x'
}
