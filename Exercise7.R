## 1) Writing R code that has the same functionality as 
##    the head function in Linux.

## The basic head function in Linux gives the first ten 
## lines of code. The head function in R only gives the 
## first six lines (when I tried it on a practice data set).

## "n" will be a variable used to represent the data you 
## want to find the first ten lines of. 
n <- dataset
head(n, 10)

## 2) 'iris.csv' file code

## First make sure you are in the proper directory:
setwd("~/BioComp2020_Tutorial9/")

## Then read you file into your R studio:
iris = read.csv ("~/BioComp2020_Tutorial9/iris.csv", header = T, stringsAsFactors = F)

## Last 2 rows in the last 2 columns printed.
iris[149:150, 4:5]

## Number of observations for each species in data set.
length(grep("setosa", iris[1:150, 5]))
length(grep("versicolor", iris[1:150, 5]))
length(grep("virginica", iris[1:150, 5]))

## Rows with "Sepal.Width" > 3.5
which(iris[, 2] > 3.5)


## The data for the species "setosa" to a comma-delimited
## file named "setosa.csv"
write.csv(iris[1:50, ], "~/BioComp2020_Tutorial9/setosa.csv", row.names = FALSE)

## Calculating the mean, minimum, and maximum of Petal.Length
## for observations from virginica

##mean:
mean(iris[101:150, 3])
## minimum:
min(iris[101:150, 3])
## maximum:
max(iris[101:150, 3])



