# Becoming Fluent in Data (2022)

The *Seminar in Applied Economics* 2022 is all about data. *Becoming Fluent in Data* teaches what data is, where it can be found and what can be done with it. We explore various sources and types of data. We collect and create data on our own, conduct field research, surveys and experiments. We will download data from various sources. A lot of data is free. Last but not least, we have fun with data. 

# Welcome Video

https://user-images.githubusercontent.com/68418162/159294084-76c15b2e-9891-48c7-8813-ec87690f4425.mp4

# GitHub Repo

This repository contains data and material collected in this seminar series. 

### Data

The *Data* folder contains datasets that we use. Using an absolute path to a web resource prevents problems with different local paths.

### Assignments

The *Exercises* folder contains an up-to-date version of the weekly home assignments. Upload your solutions (as .R or .Rmd and .html file) on Microsoft Teams. 

### Lecture

The *Lecture* folder contains lecture slides, templates and course material that is for your interest. The material will help you solving the assignments.

# Schedule

|Date  |  Assignment             | Date  | Meeting              |
|:-----|:-----|----------------------|:-------------------------|
|20.04.|R00 Setup               |  21.04.|L01 Introduction      |  
|27.04.|R01 Introduction to R   |  28.04.|L02 R and R Markdown  | 
|04.05.|R02 Group Comparison    |  05.05.|L03 Group Comparison  | 
|11.05.|R03 Mean Comparison     |  12.05.|L04 Panel Data        | 
|18.05.|R04 Panel Data          |  19.05.|L05 Textmining & API  | 
|25.05.|R05 Textmining          |  26.05.|No meeting (Holiday)  | 
|01.06.|Field Trip              |  02.06.|Field Trip            |
|Exam Week|Exam Week|Exam Week  |  Exam Week                    |   
|15.06.|R06 Data Scraping       |  16.06.|L07 Relationships     | 
|22.06.|R07 Relationships       |  23.06.|L08 Linear Regression | 
|29.06.|R08 Linear Regression   |  30.06.|No meeting            |  
|06.07.|R09 Logistic Regression |  07.07.|L09 Logistic Regression | 
|13.07.|R10 Interaction Effects |  14.07.|L10 Interaction Models  | 
|20.07.|R11 Fixed Effects I     |  21.07.|L11 Fixed Effects Regression |  
|27.07.|R12 Fixed Effects II    |  28.07.|L12 Wrap Up                  | 

# Setup 

Please install R, RStudio & Git locally on your laptop. Follow the setup guide:

https://github.com/MarcoKuehne/seminars_in_applied_economics/blob/main/Setup.pdf

Part of day 1 will be devoted to ensuring people's instances work correctly. If you encounter any errors during set up don't worry! Please request technical help from Marco. 

*Each day, please perform a `git pull` to get the most up to date files and lessons.*

# R packages

Here are the first R packages that we will need. Run this install once on your system. 

```
# Easiest method to run in your console
install.packages('pacman')
pacman::p_load(tidyverse, cowplot, magick, haven, DT, beepr, fun, cowsay, plotly)

# You can install packages individually such as below if pacman fails.
install.packages('tidyverse')

# Or using base functions use a nested `c()`
install.packages(c("fun", "beepr", "cowsay"))
```



