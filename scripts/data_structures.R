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
