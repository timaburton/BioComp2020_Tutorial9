#replicate linux head function
fileToRead <- "textfile"
numOfLines <- 10
writeLines(readLines(fileToRead, numOfLines))

#load iris.csv and print last two columns of last two rows
iris<- read.csv("iris.csv", header=TRUE)
iris[149:150, 4:5]

#get number of observations of each species
length(which(iris == "setosa"))
length(which(iris == "versicolor"))
length(which(iris == "virginica"))

#get rows of data with Sepal.Width greater than 3.5
iris[iris$Sepal.Width>=3.5,]

#write setosa data to comma delimited file
write.csv(iris[iris$Species == "setosa",], file = "setosa.csv")

#calculate mean, min, and max of Petal.Length for virginica
virPL <- iris[iris$Species == "virginica",]
mean(virPL[,3])
min(virPL[,3])
max(virPL[,3])
