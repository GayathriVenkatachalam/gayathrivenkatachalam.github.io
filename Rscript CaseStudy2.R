install.packages("tidyverse")
install.packages("readr")
install.packages("dplyr")
install.packages("rmarkdown")

library(readr)
library(dplyr)
library(tidyverse) 
library(rmarkdown)

dailyActivity_merged <-read_csv("C:/Users/rajam/Desktop/path to Data Analyst/CASE STUDIES/Case Study - 2/data sets/for analysis/mturkfitbit_export_3.12.16-4.11.16/Fitabase Data 3.12.16-4.11.16/dailyActivity_merged.csv")
dailyCalories_merged <-read_csv("C:/Users/rajam/Desktop/Path to Data Analyst/CASE STUDIES/Case Study - 2/data sets/for analysis/mturkfitbit_export_3.12.16-4.11.16/Fitabase Data 3.12.16-4.11.16/hourlyCalories_merged.csv")
dailyIntensities_merged <-read_csv("C:/Users/rajam/Desktop/Path to Data Analyst/CASE STUDIES/Case Study - 2/data sets/for analysis/mturkfitbit_export_3.12.16-4.11.16/Fitabase Data 3.12.16-4.11.16/hourlyIntensities_merged.csv")
dailySteps_merged <-read_csv("C:/Users/rajam/Desktop/Path to Data Analyst/CASE STUDIES/Case Study - 2/data sets/for analysis/mturkfitbit_export_3.12.16-4.11.16/Fitabase Data 3.12.16-4.11.16/hourlySteps_merged.csv")
sleepDay_merged <- read_csv("C:/Users/rajam/Desktop/Path to Data Analyst/CASE STUDIES/Case Study - 2/data sets/for analysis/mturkfitbit_export_3.12.16-4.11.16/Fitabase Data 3.12.16-4.11.16/minuteSleep_merged.csv")
weightLogInfo_merged <- read_csv("C:/Users/rajam/Desktop/Path to Data Analyst/CASE STUDIES/Case Study - 2/data sets/for analysis/mturkfitbit_export_3.12.16-4.11.16/Fitabase Data 3.12.16-4.11.16/weightLogInfo_merged.csv")

summary(dailyActivity_merged)
head(dailyActivity_merged)


ggplot() + 
  geom_line(data=dailyActivity_merged, aes(x=LightlyActiveMinutes, y=TotalSteps),color='yellow')+
  geom_line(data=dailyActivity_merged, aes(x=VeryActiveMinutes, y=TotalSteps),color='green')+
  geom_line(data=dailyActivity_merged, aes(x=FairlyActiveMinutes, y=TotalSteps),color='blue')+
  labs(title="Total Steps Vs Degree of Activeness")


ggplot(data=dailyActivity_merged)+
  geom_point(mapping=aes(x=TotalSteps,y=Calories),color='black')+
  labs(title="Total Steps Vs Calories Burnt")
