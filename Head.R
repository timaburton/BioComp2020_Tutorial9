#x is the variable that represents the dataset you want to subset
#this functions returns "lines" number of lines up to and including the "end" mark
x  = setofdata #iris
#number of lines returned
lines = 10
#end mark for lines returned
end = 11
#printing the subset of lines up to and including the line corresponding to "end"
print(x[(end-lines+1):end,])
