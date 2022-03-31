# install packages 

# intall.packages("psych")
# install.packages("corrplot")
# install.packages("RColorBrewer")

library(psych)
library(corrplot)
library(RColorBrewer)

data("iris")
x <- corr.test(iris[-5])
x

pairs.panels(iris[-5])


# Import your data set

library(readxl)
x <- read_excel("iris.xlsx")
View(x)


m <-cor(x[,0:3],method = "spearman")
m
corrplot(m)

corrplot(m,type = "upper")

corrplot(m,type = "lower")

corrplot(m,type="full")


corrplot(m,type = "upper",order="hslust")

corrplot(m,type="full",method="pie")

corrplot(m,type="full",method="ellipse")

corrplot(m,type="full",method="square")

corrplot(m,type="full",method="color")

corrplot(m,type="full",method="pie",col=brewer.pal(n=8,name="YlOrRd"))




# Mixed cor Plot

corrplot.mixed(m)

corrplot.mixed(m,lower.col = "black",number.cex=0.8) 


corrplot.mixed(m,lower= "pie",upper = "square",t1.co="red") 







