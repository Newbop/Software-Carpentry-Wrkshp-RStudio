## Script for storing data structures
## Load in CSV data file as a data frame 
cats <- read.csv(file= "data/feline_data.csv")

## Preliminary analysis of inflammation
##Load data (no headers, CSV)
data <- read.csv(file= "data/inflammation-01.csv", header = FALSE)

##Calculate mean info by patient and day
avg_inflammation_patient <- rowMeans(data)
avg_inflammation_day <- apply(data, 2, mean)

##Calculate max daily inflammation
max_day_inflammation <- apply(data, 2, max)

##Calculate std. dev. by day
std_deviation_inflammation <- apply(data, 2, sd)

##Afternoon script-work
#integer vector definition
x <- c(10, 12, 45, 33)
xx <- c(1, 2, "a")

#Define factor
f <- factor(c("no", "yes", "no"))

#Create matrix of zeros
m1 <- matrix(0, ncol=6, nrow=3)
#create a list
l <- list(1, "a", TRUE, matrix(0, nrow=2, ncol=2), f)

#create named list
l_named <- list(course="SWC", b=1.4)

#create vector
v <- c(5.4, 6.2, 7.1, 4.8, 7.5)
mask <- c(TRUE, FALSE, TRUE, FALSE, TRUE)

#create dataframe
df <- data.frame(a=1:3, b=c("eeny", "meeny", "miney"), c=c(TRUE, FALSE, TRUE))

##Dataframe test
author_book <- data.frame(author_first = c("Charles", "Ernst", "Theodosius"), author_last = c("Darwin", "Mayr", "Dobzhansky"), year =c(1859,1942, 1970))






