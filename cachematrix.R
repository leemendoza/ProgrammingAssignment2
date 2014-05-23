## Put comments here that give an overall description of what your
## functions do

## equalMatrices : function that tests equality between two
## matrices. We'll use this as one test to determine if we
## can use a cached version of the inverted matrix in makeCacheMatrix

equalMatrices <- function(a, b){

    ## check to see if a and b are matrices
    ## check to see if a and b have same dimensions
    ## check to see if a and b elements are same
    res = is.matrix(a) && is.matrix(b) && dim(a) == dim(b) && all(a == b)
    res
}

## makeCacheMatrix : function that caches the inverse
## of a supplied matrix to save the computing expense
## of recalcuating every time the inverse is needed

makeCacheMatrix <- function(x = matrix()) {
    ## see if supplied matrix is different from earlier matrix
    ## or if an inverse does not exist
    if (!exists("gx") || !equalMatrices(x, gx) || !exists("invx"))    {
        ## Gotta invert the matrix - go ahead and cache it too
        ## print("Solving...")
        invx <<- solve(x)
        ## cache the matrix as well for future comparison
        gx <<- x
    }
    else {
        ## Use cached matrix inverse instead
        ## print("Using cached version")
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
