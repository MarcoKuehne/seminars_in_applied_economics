# Becoming Fluent in Data (2022)

The *Seminar in Applied Economics* 2022 is all about data. *Becoming Fluent in Data* teaches what data is, where it can be found and what can be done with it. We explore various sources and types of data. We collect and create data on our own, conduct field research, surveys and experiments. We will download data from various sources. A lot of data is free. Last but not least, we have fun with data. 

This repository contains data and material collected in this seminar series. 

# Welcome Video

https://user-images.githubusercontent.com/68418162/159294084-76c15b2e-9891-48c7-8813-ec87690f4425.mp4

# Schedule

|Date  | Meeting              |  Assignment             | 
|:-----|----------------------|:------------------------|
|21.04.|L01 Introduction      | R00 Setup               |   
|28.04.|L02 R and R Markdown  | R01 Introduction to R   |   
|05.05.|L03 Group Comparison  | R02 Group Comparison    |  
|12.05.|L04                      | R03 Mean Comparison     |  
|19.05.|L05                      | R04 Panel Data          |   
|26.05.| XXX                  | R05 Text Mining         |  
|02.06.|L06                   | R06 Data Scraping       |   
|Exam Week|Exam Week     |   Exam Week             |   
|16.06.|L07 Correlation       |                                | 
|23.06.|L08 Linear Regression | R07 Covariance + Correlation   | 
|30.06.| XXX                  | R08 Linear Regression          |   
|07.07.|L09 Logistic Regression      | R09 Logistic Regression |
|14.07.|L10 Interaction Models       | R10 Interaction + ME |   
|21.07.|L11 Fixed Effects Regression | R11 Fixed Effects 01 |   
|28.07.|L12 XXX                      | R12 Fixed Effects 02 |  


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

