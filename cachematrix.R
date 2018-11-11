##Gerhard Scheucher
##Vienna, 11.11.2018


## The inverse of a matrix plays the same roles in matrix algebra as the reciprocal of a number and division does in ordinary arithmetic

## Caching inverse of a matrix; in following matrix will be created and it's inverse will be catched

## ...in fact just a few changes to the sample code of makeVector had to be made

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
      	list(set = set, get = get,
             setinverse = setinverse, getinverse = getinverse)
}


## ...as in example I, in function number 2 just a few adjustments to the provided sample code had to be made

cacheSolve <- function(x, ...) {
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}

##if anybody has questions on the function's constructions don't hesitate to ask, but I guess it's trivial