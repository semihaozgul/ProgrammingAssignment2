## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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
        ## Return a matrix mthat is the inverse of 'x'
}
