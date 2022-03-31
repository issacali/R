library(readxl)
x <- read_excel("test1.xlsx", sheet = "Sheet2")
View(x)

# Box plot
boxplot(x$Height~x$Crop)

boxplot(Height~Crop,data=x)

# Multiple comparison of Mean :
#1 Tuccky Test
 
install("agricolae")
library(agricolae)

model<-aov(Height~Crop,data=x)
out<- HSD.test(model,"Crop",group= TRUE,console=TRUE,main="Tucky test")
plot(out)

#2 LCD.test

model<-aov(Height~Crop,data=x)
out<- LSD.test(model,"Crop",group= TRUE,console=TRUE,main="LSD test")

plot(out)

# Duncan Test


model<-aov(Height~Crop,data=x)
out<- duncan.test(model,"Crop",group= TRUE,console=TRUE,main="Duncan test")
plot(out)

# Grouping 
boxplot(Height~Crop*Water,data=x,las=2,xlab = "")
model1<-aov(Height~Crop*Water,data=x)
out1<- HSD.test(model1,c("Crop","Height"),group= TRUE,console=TRUE,main="Tucky test")
plot(out1,horiz=TRUE,las=1)


# saving a plot with high resolution :

jpeg(file="Tuckey Test.tiff",width = 6,height = 4,units = "in",res = 300,)
boxplot(Height~Crop*Water,data=x,las=2,xlab = "")
dev.off()
