## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function
## Two functions one for making the matrix and the second one for chechking if we already have the desired result in the cache otherwise solving the inverse of the matrix. Initially we wet the values of m and y as NULL to create a default value if cache has not been used before.
## The setmatrix and get matrix functions are used for setting up the matrix and calling the matrix whenever prompted.
## list function holds a list of all the functions

## This function makes or creates the matrix that can cache its inverse

makeCacheMatrix <- function(x=matrix()){
	m<-NULL
	set <- function(y){
	x <<- y
	m <<- NULL
	}
get <- function() x
setmatrix <- function(solve) m <<- solve
getmatrix <- function() m
list(set=set, get=get,
	setmatrix = setmatrix,
	getmatrix = getmatrix)
}

## This function solves the inverse for the matrix provided by the makeCachematrix function also checks if the same matrix has already been evaluated, then it collects the inverse from the cache without going through the solving process

cacheSolve <- function(x, ...) {
m<-x$getmatrix()
if(!is.null(m)){
message("getting cached data")
return(m)
}
matrix<-x$get()
m<-solve(matrix, ...)
x$setmatrix(m)
m
}

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
