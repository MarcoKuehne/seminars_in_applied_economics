# Becoming Fluent in Data (2022)

The *Seminar in Applied Economics* 2022 is all about data. *Becoming Fluent in Data* teaches what data is, where it can be found and what can be done with it. We explore various sources and types of data. We collect and create data on our own, conduct field research, surveys and experiments. We will download data from various sources. A lot of data is free. Last but not least, we have fun with data. 

This repository contains data and material collected in this seminar series. 

Homepage: http://seminars-in-applied-economics.de/

# Welcome Video

TBA ...

# Setup 

Please install R, RStudio & Git locally on your laptop. Follow the setup guide:

https://github.com/MarcoKuehne/seminars_in_applied_economics/blob/main/Setup.pdf

Part of day 1 will be devoted to ensuring people's instances work correctly. If you encounter any errors during set up don't worry! Please request technical help from Marco. 

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

