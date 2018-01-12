## Script for storing data structures
## Load in CSV data file as a data frame 
cats <- read.csv(file= "data/feline_data.csv")

## Preliminary analysis of inflammation
##Load data (no headers, CSV)
data <- read.csv(file= "data/inflammation-01.csv", header = FALSE)
