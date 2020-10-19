# reads the wages.csv file and saves it into a variable called file
file <- read.csv(file = "wages.csv", header = TRUE, stringsAsFactors = FALSE) 

# the number of lines to be printed from the top of the file
numberlines <- 4L

# prints the first four lines of the wages.csv file
head(file, n = numberlines)

#------------------------------------------------------------------------------

# make sure you are running this code from the BioComp2020_Tutorial directory
setwd("~/Desktop/r-novice-inflammation/BioComp2020_Tutorial9")

# assign a variable to read out the iris.csv file which has headers
dat <- read.csv(file = "iris.csv")

# prints out the last two columns of the last two rows of the iris.csv file
dat[c(149,150),c(4,5)]

# prints out the number of observations for the setosa species
SetosaSpecies <- dat[dat[,5]=="setosa",]
dim(SetosaSpecies)

# shows which rows have a sepal width greater than 3.5
bigSepalWidth <- dat[dat[,2] > 3.5,]
bigSepalWidth

# Uses the variable SetosaSpecies used further up in the code 
# writes data for setosa species into new comma delimited file named setosa.csv
write.csv(x = SetosaSpecies, file = "setosa.csv")

# a variable that only includes the rows of observations of the Virginica species
VirginicaSpecies <- dat[dat[,5]=="virginica",]

# calculates the mean petal length from Virginica species observations
mean(VirginicaSpecies$Petal.Length)

# calculates the maximum petal length from Virginica species observations
max(VirginicaSpecies$Petal.Length)

# calculates the minimum petal length from Virginica species observations
min(VirginicaSpecies$Petal.Length)
