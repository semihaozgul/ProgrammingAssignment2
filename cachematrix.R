## First function creates a special matrix and return list, second function uses matrix which is 
## created with makeCacheMatrix and calculates inverse of the matrix after checking whether the
## inverse has already been calculated

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
             m<-NULL
             set<-function(y) {
             x<<-y
             m<-NULL
             }
             get<-function() x
             setınverse<-function(ınverse) m<<-ınverse
             getınverse<-function() m
             list(set=set,get=get,setınverse=setınverse,getınverse=getınverse)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
        m<-x$getınverse()
        if (!is.null(m)) {
          message("getting cached data")
          return(m)
          }
                    data<-x$get()
          m<-solve(data,...)
          x$setınverse(m)
          m
}
