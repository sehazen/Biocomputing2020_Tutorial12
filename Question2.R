# Question 2

library(ggplot2)

data1 <- read.csv("data.txt", sep = ",")

#Summary with no arg defaults to mean_se()
ggplot(data=data1, aes(x=region, y=observations))+
  geom_bar(stat = "summary")+
  ggtitle("Mean Obervation By Region")+
  theme_bw()

ggplot(data=data1, aes(x=region, y=observations))+
  geom_jitter()+
  ggtitle("Observation Distribution by Region")+
  theme_bw()

#Both graphs show that the mean for each region is approx. 15.
#But the scatterplot shows that each region has their own unique
#distribution. The eastern observations are grouped around 15 but
#have a large spread. The northern observations are tightly packed
#around 15 with little to no spread. The southern observations have
#two distinct groups at 25 and 5 that average to 15,and the western
#observations are approx. uniformly distributed between 0 and 30.
#Thus providing more information about each region than the bar plot
#alone. The barplot shows only the means, while the scatter shows
#the distribtuions that led to those means.