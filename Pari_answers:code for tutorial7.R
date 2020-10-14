#Question 1
#Write R code that replicates the functionality of the head function we used in Linux.
#define file, i used the file iris.csv
read.csv(file = "iris.csv", header = TRUE, stringsAsFactors = FALSE)
#get the first 5 lines of the file iris.csv
head(iris, 5)

#Question 2
#Load the data contained in the provided ‘iris.csv’ file and write R code to do the following things
read.csv(file = "iris.csv", header = TRUE, stringsAsFactors = FALSE)
#print the last 2 rows in the last 2 columns to the R terminal
tail(iris, 2)

#get the number of observations for each species included in the data set
sumofsetosa<-sum(iris$Species == "setosa")
paste("Number of setosa observations is:", sumofsetosa, sep=" ")
sumofversicolor<-sum(iris$Species == "versicolor")
paste("Number of versicolor observations is:", sumofversicolor, sep=" ")
sumofvirginica<-sum(iris$Species == "virginica")
paste("Number of virginica observations is:", sumofvirginica, sep=" ")

#get rows with Sepal.Width > 3.5
Sepal.Width_greaterthan3.5<-iris[(iris[,2]>3.5),]
Sepal.Width_greaterthan3.5

#write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosarows<-iris[iris$Species == "setosa",]
setosarows
write.csv(setosarows, "/Users/pari/Desktop/setosa.csv", row.names = FALSE)
read.csv(file = "setosa.csv", header = TRUE, stringsAsFactors = FALSE)

#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica

#mean of Petal.Length
virginicarows<-iris[iris$Species == "virginica",]
mean<-mean(virginicarows$Petal.Length)
mean

#maximum Petal.Length
max<-max(virginicarows$Petal.Length)
max

#minimum Petal.Length
min<-min(virginicarows$Petal.Length, na.rm = FALSE)
min
