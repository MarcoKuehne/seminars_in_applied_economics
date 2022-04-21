##
## Purpose of script: Get familiar with R and RStudio 
##
## Author: Marco Kühne
##
## Date Created: 2022-01-26
##
##

## Introduction ---- 

# An .R file is a text document. You can open (and edit) it with a text editor 
# (or RStudio). Comments start with one or multiple hash tags.
# You can collapse sections in RStudio. 
# You can navigate between sections in RStudio. 
# Check out your four panels and what they contain. 

## Code running ---- 

# You can run/execute code in the console. 
# Type or copy commands in the console and hit enter. 
# Alternatively click 'run' in RStudio.
# Alternatively use shortcuts like STRG + ENTER (run 1 line)

# Simple math 
42

21*2

# Help, check the note of the pie chart function 
?pie

## Define objects ---- 
# Numeric Variables ----
x <- 2

y = 4

# Logical variables (T/F) ----
harvard                  <- TRUE # spacing doesn't matter
yale      <- FALSE
princeton <- F # short for FALSE

# Attention: FALSE=0, TRUE=1
harvard + 1

# String variables ---- 
emily  <- 'She is a friend.'     # string / character class / plain text
libby  <- "she is a coworker"    # can use ' and " interchangeably
other  <- "people"               # prefer "  

# Factor variables ---- 
fruit  <- as.factor(c("apple", "banana")  ) 
fruit                                       # ordered variable     

fruit  <- as.factor(c("banana", "apple")  ) # The default ordering is alphabetic
fruit

dose <- as.factor(c("low", "medium", "high")  ) # The default ordering is alphabetic
dose

# Combine objects ---- 
# Declare new objects using other variables
z <- x + y + 10

# Open z object or put everything in parentheses 
(z <- x + y + 10)

# Vectors ----
# think of as a single column in a spreadsheet
vectorA <- c(1,2,y)

vectorB <- c(TRUE,TRUE,FALSE)

vectorC <- c(emily, libby, other) # 3 separate "rows" of the vector

# Vector Operations
vectorA
vectorB
vectorA - vectorB # Vector operation AND auto-change TRUE =1, FALSE=0

# Data frame ----
# think of it conceptually like a spreadsheet
dataDF <- data.frame(numberVec    = vectorA,
                     trueFalseVec = vectorB,
                     stringsVec   = vectorC)

# Examine an entire data frame 
dataDF

# Declare a new column
dataDF$NewCol <- c(10,9,8)

# Examine with new column
dataDF

# Examine a single column
dataDF$numberVec # by name
dataDF[,1] # by index...remember ROWS then COLUMNS

# Examine a single row
dataDF[2,] # by index position

# Examine a single value
dataDF$numberVec[2] # column name, then position (2)
dataDF[1,2] #by index row 1, column 2 

# Save/read objects ----
# Check where the working directory is
getwd()

# Store data.frame as csv file 
write.csv(dataDF,"example.csv", row.names=F) 

# Read in a file as an object
newDF<-read.csv("example.csv") 

# Examine & Compare to original
newDF
dataDF

## Basic plotting ---- 
# MUCH more to come

# Scatterplot 
x <- c(1,2,3,4)
y <- c(4,3,2,1)
plot(x,y)
plot(y,x)
plot(x,x)

data(anscombe)

# Barplot 
vec1 <- c('Harvard', 'Harvard','Yale','Harvard')
table(vec1)
barplot(table(vec1))

# Save a plot to disk programmatically
jpeg('example.jpg') # open up a background graphics device, declare path and file name
barplot(table(vec1)) # plot it
dev.off() # turn off the background graphics device

# Download file from source (to computer)
download.file("https://memegenerator.net/img/images/300x300/1678051.jpg", 'meme.jpg', mode = 'wb')

# Packages ---- 
# Install a package once (RStudio tells to install in a small pop up)
# Load package 
library(meme)
# Create meme inside R
u <- "https://memegenerator.net/img/images/300x300/1678051.jpg" # store URL
meme(u, "\n Tries To Be Cool", "By Going Over Boring Class \n Procedures Using Memes. \n", size=1.5)

## Logical statements ----

# If statements
someValue <- 1 # set it 1 or not

if (someValue==1){
  print('the value is 1')
}

otherValue <- TRUE
if (otherValue==F){
  print('value is FALSE')
  x <- 2+2
  } else {
  print('value is TRUE')
  x <- 3+3
  }
x

# For loop ---- 
for (i in 1:length(dataDF)){
  print('R is easy')
}
