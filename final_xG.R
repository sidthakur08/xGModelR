data = read.csv(file="data/shot_data.csv")

#to print the first five rows of the dataframe we're working with
head(data)

ncol(data)
nrow(data)

goal = data$Goal
x = data$X*105/100
y = data$C*65/100

dist = sqrt(x^2+y^2)
ang = atan(7.32*x/(x^2+y^2-(7.32/2)^2))

data$Distance = dist
data$Angle = ang

#plotting histograms of goals
barplot(table(goal), xlab="Goal Scored", ylab="Number of Goals scored",main="Goal Data")

plot(x,dist)



#modelling the data
mod <- glm(Goal ~ Angle + Distance, data=data, family="binomial")
mod

int <- coef(mod)
class(intercepts)

int[1]
