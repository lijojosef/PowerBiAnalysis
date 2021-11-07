install.packages("xlsx")
library(readxl)
install.packages("dplyr")
library(dplyr)

OrderWeek = read_excel("C:/Users/lijoj/OneDrive/DataScience/baseAnalytics/R data for superstore/orderWeek.xlsx")
print(OrderWeek)

head(OrderWeek)
tail(OrderWeek)


OrderHistorical = read_excel("C:/Users/lijoj/OneDrive/DataScience/baseAnalytics/R data for superstore/orderHistoricalData.xlsx")
print(OrderHistorical)
head(OrderHistorical)
tail(OrderHistorical)


User = read.csv("C:/Users/lijoj/OneDrive/DataScience/baseAnalytics/R data for superstore/user.csv")
print(User)

temp <- merge(OrderHistorical, OrderWeek, all = TRUE)
print(temp)
head(temp)
head(User)
names(User) <- c('Region', 'Manager')
count(temp)


resultR <- full_join(temp, User, by = 'Region')
head(resultR)

library("writexl")
write_xlsx(resultR, "C://Users//lijoj//OneDrive//DataScience//baseAnalytics//R data for superstore//output//OutputOfR.xlsx")
