#install.packages("rjson")

library(rjson)
library(data.table)
library(tidyverse)
library(plyr)

data <- fromJSON(file="data/events_England.json")
print(data[[1]]$eventName)

data_frame <- data.frame(do.call(rbind,data),stringAsFactors = FALSE)
shot_data <- data_frame %>% filter(eventName=='Shot')
r <- nrow(shot_data)
c <- ncol(shot_data)

shot_data[1,]

# to get some idea about the dataframe
glimpse(shot_data)
# to get count of elements in list
table(unlist(shot_data$playerId))
