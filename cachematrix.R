## Week 3 assignment 2021 04 05 Developed by Naomi Xiao
## It includes partial programming including two functions, one assigns values to new matrix, the other inverse it

## This function make a matrix object and is inversible

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL # inverse matrix, set to null
        set <- function(y) { # assign values to new matrix
                m <<- NULL
                x <<- y
        } 
        get <- function() x # get the value of created matrix x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}



cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        if(!is.null(m)){
                message("Getting cached data")
                return(m)
        }
        data <- x$get()
        m <- inverse(data, ...)
        x$setmean(m)
        m
}
