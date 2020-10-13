##Answers to tutorial 9
##Make sure to set the right wd!!

###PROBLEM1###

##Substitute:
#the number of lines you want in the place of LineNumb
#the file you're looking in for in the place of FileNm
num <- LineNumb
fil <- FileNm
fil[num,]

###PROBLEM2###
##PartA##
iris <- read.csv(file="iris.csv",header=TRUE,stringsAsFactors = FALSE)
rows <- c(nrow(iris)-1, nrow(iris))
cols <- c(ncol(iris)-1, ncol(iris))
iris[rows,cols]
##PartB##
length(which(iris[,5]=="setosa"))
length(which(iris[,5]=="versicolor"))
length(which(iris[,5]=="virginica"))
##PartC##
iris[which(iris$Sepal.Width>3.5),]
##PartD##
write.csv(iris[which(iris[,5]=="setosa"),], file="setosa.csv")
##PartE##
mean(iris[which(iris[,5]=="virginica"),"Petal.Length"])
min(iris[which(iris[,5]=="virginica"),"Petal.Length"])                       
max(iris[which(iris[,5]=="virginica"),"Petal.Length"])
