install.packages("devtools")
library(devtools)
install_github("genomicsclass/dagdata")
install_github("ririzarr/rafalib")

install.packages("swirl")
library(swirl)
swirl()

# In swirl, we can do...
#=======================
# | When you are at the R prompt (>):
#     | -- Typing skip() allows you to skip the current question.
# | -- Typing play() lets you experiment with R on your own; swirl will ignore what you do...
# | -- UNTIL you type nxt() which will regain swirl's attention.
# | -- Typing bye() causes swirl to exit. Your progress will be saved.
# | -- Typing main() returns you to swirl's main menu.
# | -- Typing info() displays these options again.

v <- c(2.23, 3.45, 1.87, 2.11, 7.33, 18.34, 19.23)


# Use a for loop to determine the value of ∑i=125i2
# Remember to execute these three line in a batch
total <- 0
for(i in 1:25) {total <- total + i^2}
total


# Use nrow to count how many rows in a data.frame
nrow(cars)
# Use ncol to count how many columns in a data.frame
ncol(cars)


# What is the name of the second column of cars?
names(cars)[2]


# The simplest way to extract the columns of a matrix or data.frame is
# using [. For example you can access the second column with cars[,2].
# What is the average distance traveled in this dataset?
mean(cars[,2])


# Familiarize yourself with the which function. What row of cars has a a distance of 85?
which(cars$dist == 85)

setwd("c:/my_projects/PH525.1x Statistics and R/")
data <- read.csv("./dagdata/inst/extdata/femaleMiceWeights.csv")

head(data)

nrow(data)
ncol(data)
dim(data)

install.packages("downloader")
library("downloader")
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
download(url, destfile="femaleMiceWeights.csv")
data <- read.csv("femaleMiceWeights.csv")
head(data)
names(data)
names(data)[2]
data[12,2]
data$Bodyweight
data$Bodyweight[11]
length(data$Diet)
length(data$Bodyweight)

class(data)
nrow(data)
seq(3, 7)
3:7
seq(3, 7, 2)

mean(data[13:24,]$Bodyweight)

?sample
set.seed(1)
sample(data[13:24,], 5)


set.seed(1)
data[sample(13:24, 1),]$Bodyweight

install.packages("dplyr")
library("dplyr")

?dplyr

bt <- c("A", "B", "AB", "O")
bt <- factor(bt)
bt
bt[1]
bt[2]
bt[3]
bt[4]

bt <- factor(c("A", "B", "O", "AB"), ordered = TRUE)
str(bt)
levels(bt)

bt <- factor(c("A", "B", "O", "AB", "A"), levels = c("O", "A", "B", "AB"), labels = c("M", "N", "O", "P"), ordered = TRUE)
str(bt)
levels(bt)


a <- c(10, 20, 30, 40)
a[-3]



getwd()
setwd("~/my_projects/PH525.1x-Statistics-and-R/")
getwd()
url <- "https://github.com/justmarkham/dplyr-tutorial/raw/master/dplyr-tutorial.Rmd"
download.file(url, basename(url))


install.packages("downloader")
library(downloader)
url="https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- basename(url)
download(url,filename)




install.packages("dplyr")
library(dplyr)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
msleep <- read.csv(url)
head(msleep)


mg <- read.csv("./msleep_ggplot2.csv")
class(mg)
nrow(mg)
mg
filter(mg, order == "Primates")
mg %>% filter(order == "Primates") %>% nrow()
mg %>% filter(order == "Primates") %>% class()
mg %>% filter(order == "Primates") %>% select(sleep_total) %>% class()
mg %>% filter(order == "Primates") %>% select(sleep_total) %>% mean() # error!
?unlist
mg %>% filter(order == "Primates") %>% select(sleep_total) %>% unlist() %>% mean()
mg %>% filter(order == "Primates") %>% summarise(mean(sleep_total))




