library(readxl)
test1 <- read_excel("test1.xlsx")
View(test1)

str(test1)
head(test1)
tail(test1)


plot(test1)
boxplot(test1$Height,test1$Weight)

boxplot(test1$Height ~ test1$Crop)


r.debugger.updateRPackage
