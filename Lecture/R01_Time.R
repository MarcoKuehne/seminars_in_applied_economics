

##
## Purpose of script: Investigate Difficulty of R01 
##
## Author: Marco Kühne
##
## Date Created: 2022-04-29
##
##

# Load R01 time data---- 
# You can take this for granted.



# Get the exact URL from GitHub
github_link <- "https://raw.githubusercontent.com/MarcoKuehne/seminars_in_applied_economics/main/Data/R01_Time.xlsx"

# Making it independent of your local path
# Of course, you can click, download and select the file you would like to load
library(httr)
temp_file <- tempfile(fileext = ".xlsx")
req <- GET(github_link, 
           # authenticate using GITHUB_PAT
           authenticate(Sys.getenv("GITHUB_PAT"), ""),
           # write result to disk
           write_disk(path = temp_file))

# read excel magic from a mysterious place
library("readxl")
R01time <- read_excel(temp_file)
R01time

# remove temporary files
rm(temp_file)
rm(github_link)
rm(req)




# Explore R01 time data ---- 
# You should check this in detail.



# view the table inside RStudio
View(R01time)

# Names of columnes
colnames(R01time)

# Structure of the data
str(R01time)

# the first column contains the plain answers
# you see a lot of different inputs
# the questionnaire did not require a specific format
# any text could have been inputed, what do you learn from this?
R01time$`How long did it take to complete R01 (in total minutes)?` # run this line to see all answers

# the second column if a fixed version of time in minutes
# what is the average time to complete? 
summary(R01time$Fix)

# The distribution is skewed to the right
hist(R01time$Fix, breaks=15)

# Check the fastest solutions
sort(R01time$Fix)










