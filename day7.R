data()
View(iris)
names(iris)
nrow(iris)
head(iris)
ncol(iris)


install.packages("writexl")
library("writexl")
write_xlsx(iris,path="I:\\R\\Test1\\R with Aammar\\iris.xlsx")



library(ggplot2)
ggplot(iris,aes(Sepal.Length
,Sepal.Width
))+geom_point()+geom_smooth(method="lm")

View(trees)

ggplot(trees,aes(Girth,Height))+geom_point()+geom_smooth(method="lm")


