library(rjson)
library(data.table)
library(tidyverse)
library(plyr)

data <- fromJSON(file="data/events_England.json")
print(data[[1]]$eventName)

data_frame <- data.frame(do.call(rbind,data))
shot_data <- data_frame %>% filter(eventName=='Shot')

shot_data[1,]

# to get some idea about the dataframe
glimpse(shot_data)

# declaring data frame
shots_model <- data.frame(
  goal=numeric(),
  x=numeric(),
  y=numeric()
)


for(s in unlist(shot_data$tags)){
  print(s)
}


print(shot_data$tags[[2]][[2]]$id)
print(unlist(shot_data$tags))
