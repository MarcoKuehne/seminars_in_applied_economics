

# Here are some insights and comments from R01


# Load data ---- 
CourseData2020 <- read.csv("https://raw.githubusercontent.com/MarcoKuehne/seminars_in_applied_economics/main/Data/GF_2020.csv")


# % of female participants ----


# The table() command shows the counts of a variable 
table(CourseData2020$Gender)

# table() can be applied to two variables and returns a contingency table
table(CourseData2020$Gender, CourseData2020$Academic.level)

# prop.table() can wrap around the prior table, returns proportions
prop.table(table(CourseData2020$Gender))

# the outcome of the prop.table() table() combination is another "table" object 
class(prop.table(table(CourseData2020$Gender)))

# access the elements of a "table" object
prop.table(table(CourseData2020$Gender))[1] # still consists of a label and a value

# turn a table object into a dataframe
myTable <- prop.table(table(CourseData2020$Gender))
myDataframe <- as.data.frame(myTable)

# easier to access specific elements of a dataframe or matrix
myDataframe[1,2] # element in the row 1 and column 2 
rladies <- myDataframe[1,2]

# alternative approach

# get the plain number of female participants
num_females_a <- sum(CourseData2020$Gender=="Female") # num_females_a is 16
num_females_b <- nrow(subset(CourseData2020, CourseData2020$Gender=="Female")) # num_females_b is 16 as well

# calculate the proportion
rladies <- num_females_a/nrow(CourseData2020)



# Integers in CourseData2020 ---- 

NumInt <- rowSums(as.data.frame(lapply(CourseData2020, class))=="integer")

# see the parts of the combined functions
lapply(CourseData2020, class) # it applies the class() function on all variables of CourseData2020

# logical comparison between all types of data and the integer class
lapply(CourseData2020, class)=="integer" # some are TRUE, some are FALSE

# again, convert to another object type (dataframe)
as.data.frame(lapply(CourseData2020, class))=="integer"

# since the row sums of a dataframe can be calculated
rowSums(as.data.frame(lapply(CourseData2020, class))=="integer")
# this is based on the fact, that TRUE counts as 1 in R and FALSE as 0 













