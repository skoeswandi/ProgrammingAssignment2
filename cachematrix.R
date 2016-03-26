## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
     # makeCacheMatrix creates special materix to

# 1. set the value of the matrix

# 2. get the value of the matrix

# 3. set the value of inverse of the matrix

# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) inv <<- inverse 
        getinv <- function() inv
        list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     inv <- x$getinv()
        
        if (!is.null(inv)){
                message("caching the data")
                return(inv)
        }
        
        data = x$get()
        inv = solve(data, ...)
        
        x$setinv(inv)
        
        return(inv)
}
