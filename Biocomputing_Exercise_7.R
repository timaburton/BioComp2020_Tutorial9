##Part 1##
##create a function that replicates head function in Linux
##create variable with file to return lines from
##create a variable for number of lines to be returned from top of the file

head_function <- function(filename, numlines){
    output <- read.csv(filename,header = TRUE,nrows=numlines)
    return(output)
}
##this function will be a row off if a file is read without headers or isn't a csv
head_function('iris.csv',4)

###########################################

##Part 2##
##load iris.csv file
##print last 2 rows in the last 2 columns
iris <- read.csv('iris.csv',header = TRUE)
iris[(nrow(iris)-1):nrow(iris),(ncol(iris)-1):ncol(iris)]

#get number of observations for each species
unique(iris[,'Species'])
##gives three unique sepcies: setosa, versicolor, virginica
setosa <- subset(iris, iris$Species=='setosa')
##environment window shows there are 50 observations with Setosa as the species
versicolor <- subset(iris, iris$Species=='versicolor')
##environment window shows there are 50 observations with Versicolor as the species
virginica <- subset(iris, iris$Species=='virginica')
##environment window shows there are 50 observations with Virginica as the species

#print rows with Sepal.Width > 3.5
width <- subset(iris, iris$Sepal.Width>3.5)
width

#write observations for setosa species into a file called setosa.csv
setwd("/Users/benjaminwalter/Desktop/Storage/Biocomputing/BioComp2020_Tutorial9")
write.csv(setosa, 'setosa.csv')
##I set the working directory to be specific to my computer, so you will need to change this for yours

#calculate mean, min, and max for petal length for virginica species
virginica
mean(virginica$Petal.Length)
##result is 5.552
min(virginica$Petal.Length)
##result is 4.5
max(virginica$Petal.Length)
##result is 6.9