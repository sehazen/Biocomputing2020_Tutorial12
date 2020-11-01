# Exercise 10 Question 1

#Data: Portugese Students Math Scores used in a Statistical
#Methods project this semester

mathscores <- read.csv("student-mat.csv", sep = ";")

library(ggplot2)

ggplot(data=mathscores, aes(x=G1, y=G3))+
  geom_point()+
  xlab("Second Period Math Scores")+
  ylab("Third Period Math Scores")+
  ggtitle("The Linear Relationship Between Second and Third Period Math Scores")+
  stat_smooth(method="lm")+
  theme_bw()
  