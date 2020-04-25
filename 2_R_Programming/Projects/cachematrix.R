## a pair of functions that cache the inverse of a matrix

## This function creates a special "matrix" object that can cache 
## its inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        
        ## Method to set the matrix
        set <- function(y){
                x <<- y
                m <<-NULL
        }
        
        ## Method to get the matrix
        get <- function() x
        
        ## Method to set the inverse of the matrix
        setinverse <- function(inverse) m <<- inverse
        
        ## Method to set the inverse of the matrix
        getinverse <- fuction() m
        
        ## Return a list of the methods
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
                
}


## Compute the inverse of the special "matrix" returned by 
## makeCacheMatrix above

cacheSolve <- function(x, ...) {
        
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        
        ## Return the inverse if it has been calculated
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        
        ## Get the matrix from our object
        data <- x$get()
        
        ## Calculate the inverse using matrix multiplication
        m <- solve(data) %*% data
        
        ## Set the inverse to the object
        x$setinverse(m)
        
        m
}
