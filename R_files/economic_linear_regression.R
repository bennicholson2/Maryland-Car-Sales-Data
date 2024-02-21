library(readr)

# Load CSV file into a data frame
data <- read_csv("raw_datasets/MVA_Car_Sales.csv")

plot(data)

time_series_1 <- ts(data, frequency = 12, start = c(2002, 1))
time_series_1

time_series_2 <- ts(data, frequency = 12, start=c(2002,1))
time_series_2

time_series_1_decompose <- decompose(time_series_1)