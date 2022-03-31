library(readxl)
mydata1 <- read_excel("test1.xlsx", sheet = "Sheet1")
View(mydata1)
remove(my_data2)

boxplot(mydata1$Height~mydata1$Crop)


#Labeling 

boxplot(Height~Crop,data=mydata1)

#tiltle of plot

boxplot(Height~Crop,data=mydata1,main="box plot",xlab="Crop Typle",ylab="Plant Height")

# Coloring of plot

boxplot(Height~Crop,data=mydata1,main="box plot",xlab="Crop Typle",ylab="Plant Height",col="green",border="red")


# Grouping of Treatment 

library(readxl)
my_data2 <- read_excel("test1.xlsx", sheet = "Sheet2")
View(my_data2)
remove(mydata1)

my_data2$Crop<- factor(my_data2$Crop,levels = c("Rice","Potato","Maize","Wheat"))


boxplot(my_data2$Height~my_data2$Crop*my_data2$Water)

