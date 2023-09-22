read_csv("Divvy_Trips_2019_Q1.csv")
Divvy_Trips_2019_Q1 <- read.csv("//wsl.localhost/Ubuntu/home/josef/code/josefperera/Capstone Project/Data/csv/Divvy_Trips_2019_Q1.csv")
View(Divvy_Trips_2019_Q1)
df <- Divvy_Trips_2019_Q1
library(skimr)
skim_without_charts(df)

df$start_time <- as.POSIXct(df$start_time, format='%Y-%m-%d %H:%M:%S')
skim_without_charts(df)
df$end_time <- as.POSIXct(df$end_time, format='%Y-%m-%d %H:%M:%S')
df$gender[df$gender == ""] <- NA
df$trip_length <- (df$end_time-df$start_time)
df$weekdays <- weekdays(df$start_time)
Sys.setlocale("LC_TIME", "en_US.UTF-8")
