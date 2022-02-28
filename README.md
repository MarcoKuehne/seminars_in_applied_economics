# Becoming Fluent in Data (2022)

The Seminar in Applied Economicsis is about empirical analysis of questionnaire data (SOEP) to answer questions from the field of happiness research and labour market discrimination. Analysis is conducted with help of the statistical package R and results are reported in an R Markdown. This course teaches  critical, statistical thinking based on complex rectangular panel data. Participants will become data fluent and learn major skills that they can use in their academic and business career.

This repository contains data and ideas collected in this seminar series. 

Homepage: http://seminars-in-applied-economics.de/

# Welcome Video

TBA ...

# Setup 

Please install R, RStudio & Git locally on your laptop. Part of day 1 will be devoted to ensuring people's instances work correctly.

If you encounter any errors during set up don't worry! Please request technical help from Marco. 

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

