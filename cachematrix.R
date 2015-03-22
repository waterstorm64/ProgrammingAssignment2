## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverseMatrix <- NULL
    
    get <- function() x
    set <- function(y){
        x <<- y
        inverseMatrix <<- NULL
    }
    getInverse <- function() inverseMatrix
    setInverse <- function(inverse) inverseMatrix <<- inverse
    
    list(get = get, set = set, getInverse = getInverse, setInverse = setInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inverse <- x$getInverse()
    if(!is.null(inverse)){
        message("we have cached inverse matrix")
        return(inverse)
    }
    inverse <- solve(x$get())
    x$setInverse(inverse)
    inverse
}
