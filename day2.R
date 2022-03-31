library(readxl)
test2 <- read_excel("test1.xlsx", sheet = "Sheet1", 
                    col_types = c("text", "numeric", "numeric"))
View(test2) 

#strip chart

stripchart(test2$Height)
stripchart(test2$Height ~ test2$Weight)

# Histogram
hist(test2$Height)
hist(test2$Weight)

# plot 
plot(test2$Height,test2$Weight)

# QQ Norm
qqnorm(test2$Height)

# Bar Plot 

barplot(test2$Height)


# Mosaic plot
mosaicplot(~test2$Height+test2$Weight)

