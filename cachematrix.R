## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix : function that caches the inverse
## of a supplied matrix to save the computing expense
## of recalcuating every time the inverse is needed

makeCacheMatrix <- function(x = matrix()) {
    ## see if supplied matrix is different from earlier matrix
    ## or if an inverse does not exist
    if ((x != gx) || !exists("invx"))    {
        ## Gotta invert the matrix - go ahead and cache it too
        invx <<- solve(x)
        ## cache the matrix as well for future comparison
        gx <<- x
    }
    else {
        ## Use cached matrix inverse instead
    }
    
    ## return inverse of matrix, cached or otherwise
    invx
    
    ## don't show the output
    invisible()
        
}


## cacheSolve:
## computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache 
cacheSolve <- function(x, ...) {
    
    ## makeCacheMatrix does all the work, we just 
    ## call it here...
    m = makeCacheMatrix(x)
        
    ## Return a matrix that is the inverse of 'x' calculated
    ## or retrieved from the cache in makeCacheMatrix
    m
    
    ## hide the output
    invisible()
}
