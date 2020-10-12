#R Terminal?????
wages <-read.csv("wages.csv", header=T, stringsAsFactors = F)
firstlines <- head (wages, n=6L)
sink("firstlines.txt", append=TRUE, split=TRUE)

#question 2
#load in iris 
iris <-read.csv("iris.csv", header=T, stringsAsFactors = F)

#print last 2 rows of last 2 columns 
iris [149:150, 4:5]

#number of obs for each species 
summary(iris[,5])

#rows with sepal width > 3.5
which(iris$Sepal.Width >3.5)

#write data for setosa to csv file "setosa.csv"
setosa <- subset(iris, Species == "setosa")
write.table(x = setosa, file='setosa.csv',sep=',',col.names=TRUE)

#mean, min, max petal length for virginica
virginica <- subset(iris, Species == "virginica")
summary(iris[,3])
