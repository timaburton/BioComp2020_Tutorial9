#part1
#make new matrix, dimensions, with the dimensions of the iris matrix
#number of rows is in the first column and number of columns is in the second column
dimensions = matrix(dim(iris))
#a subset of rows and columns are called from iris based on the dimensions of the iris matrix
#using the values in the first and second row of dimensions, the number of rows and columns in iris respectively
iris[(dimensions[1,]-1):dimensions[1,],(dimensions[2,]-1):dimensions[2,]]



#part2
#make observations matrix with just column 4 from iris that has species observations
observations = matrix(iris[,dimensions[2,]])

#search for first species, setosa, and find the dimensions of the matrix 
#that is produced when setosa is searched for by grep
setosaobs = dim(matrix(grep("setosa", observations)))
#first item is the number of columns, or the number of setosa species observed
setosa[1]

#search for second species, versicolor, and find the dimensions of the matrix 
#that is produced when versicolor is searched for by grep
versicolorobs = dim(matrix(grep("versicolor", observations)))
#first item is the number of columns, or the number of versicolor species observed
versicolor[1]

#search for third and last species, virginica, and find the dimensions of the matrix 
#that is produced when virginica is searched for by grep
virginicaobs = dim(matrix(grep("virginica", observations)))
#first item is the number of columns, or the number of virginica species observed
virginica[1]


#part3
#returns the lines which have Sepal.Width greater than 3.5
which (iris$Sepal.Width>3.5)



#part4
#returns the data for setosa to a comma delimited file with the name of setosa.csv

write.csv(iris[grep("setosa", iris$Species),], "~/Downloads/Biocomputing/BioComp2020_Tutorial9/setosa.csv", row.names = FALSE)


#part5
#calculating mean, minimum, and maximum of Petal.length for the observations of species virginica
#mean
mean(iris[grep("virginica", iris$Species),3])
#minimum
min(iris[grep("virginica", iris$Species),3])
#maximum
max(iris[grep("virginica", iris$Species),3])
