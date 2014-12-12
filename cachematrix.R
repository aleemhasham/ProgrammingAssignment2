# This is the source code for the example problem
# https://class.coursera.org/rprog-016/human_grading/view/courses/
# 973757/assessments/3/submissions


## Write a short comment describing this function

# This function creates a matrix object than is able to cache
# its inverse

makeCacheMatrix <- function(x = matrix()) {
  
  # init. the inv property
  
  m <- NULL # adapted from above replaced m
  
  #set the matrix definition and then we will call on that
  # matrix
  
  set <- function(y){
    x <<- y # adapted from above replaced x
    m <<- NULL
  }
  
  # attempt to recreate the above code for matrix
  get <- function() {
    x
  }
  
  # attempt to define the inverse function here
  
  setinverse <- function(inverse) {
    m <<- inverse
  }
  getinverse <- function() {
    m
  }
  
  # from the example question, all the methods of getting
  # the inverse
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


# The code was adapted from the example part of the question.
# The only modifications that were made from the example funct
# was mean --> solve.

cacheSolve <- function(x, ...) {
  cacheSolve <- function(x=matrix(), ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
    
  
  ## Return a matrix that is the inverse of 'x'
}
