# R code for Exercise 7

# Set working directory
setwd("/Users/platinaz/Desktop/BioComp2020_Tutorial9")

# Problem 1
# This function is for reading in csv files.
# Filename should be a string (surrounded by quotes) and numlines should be an integer (default is 5)
rheadcsv <-function(filename, numlines=5L){
  inputfile <- read.csv(filename, header = TRUE, stringsAsFactors = FALSE)
  print(inputfile[1:numlines,])
  # Alternatively:
  # head(inputfile, numlines)
}

# Test
rheadcsv("iris.csv",10)


# Problem 2
# Read in file
iris <- read.csv("iris.csv", header = TRUE, stringsAsFactors = FALSE)

# Print the last 2 rows in the last two columns
print(iris[(nrow(iris)-1):nrow(iris), (ncol(iris)-1):ncol(iris)])

# Get the number of observations for each epecies in the data set
table(iris$Species)

# Get rows with sepal width > 3.5
sepal_width_greater_than_3_5 <- iris[which(iris$Sepal.Width > 3.5),]
print(sepal_width_greater_than_3_5)

# Write the data for the species setosa to setosa.csv
write.table(iris[which(iris$Species == 'setosa'),],file = 'setosa.csv',sep = ',', col.names = TRUE)
read.csv('setosa.csv')

# Calculate the mean, minimum and maximum Petal Length for virginica
virginica <- iris[which(iris$Species == 'virginica'),]
mean_petal_length = mean(virginica$Petal.Length)
paste('Mean petal length = ', mean_petal_length, sep = '')
min_petal_length = min(virginica$Petal.Length)
paste('Minmum petal length = ', min_petal_length, sep = '')
max_petal_length = max(virginica$Petal.Length)
paste('Maximum petal length = ', max_petal_length, sep = '')
