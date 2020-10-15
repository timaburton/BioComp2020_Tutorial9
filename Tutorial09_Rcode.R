#Question 1
#This example returns first 6 lines of wages.csv file. For flexibility, 
#the wages variable can be changed so that a different document is read
#in, and the lines variable can be edited so that "6L" is replaced
#by any number of desired lines followed by an L

wages <-read.csv("wages.csv", header=TRUE, stringsAsFactors = FALSE)
lines<-6L
firstlines <- head (wages, n=lines)
print("First six lines of the wages.csv file")
firstlines

#Question 2
#load in iris 
iris <-read.csv("iris.csv", header=TRUE, stringsAsFactors = FALSE)

#print last 2 rows of last 2 columns 
print("Last 2 rows in last 2 columns of iris.csv")
iris [149:150, 4:5]

#number of obs for each species 
print("Number of observations for each species")
aggregate(data.frame(count = iris$Species), list(value = iris$Species), length)

#rows with sepal width > 3.5
print("Rows with sepal width > 3.5")
which(iris$Sepal.Width >3.5)

#write data for setosa to csv file "setosa.csv"
setosa <- subset(iris, iris$Species == "setosa")
write.table(x = setosa, file='setosa.csv',sep=',',col.names=TRUE)
print("setosa data subsetted and placed in file setosa.csv")

#mean, min, max petal length for virginica
print("mean, min, and max petal length for species virginica")
virginica <- subset(iris, iris$Species == "virginica")
mean(virginica[,3])
min(virginica[,3])
max(virginica[,3])
