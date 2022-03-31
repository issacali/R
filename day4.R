library(readxl)
my_data3 <- read_excel("test1.xlsx", sheet = "Sheet2")
View(my_data3)

# Mean
mean(my_data3$Height)
mean(my_data3$Weight)


# Median
median(my_data3$Height)
median(my_data3$Weight)


# Min and Max

min(my_data3$Height)
max(my_data3$Weight)


# Range
range(my_data3$Height)

# Quartile or Quantile

quantile(my_data3$Height,.25)  # first quartile
quantile(my_data3$Height,.75)  # third quartile 


# Standard deviation 

sd(my_data3$Height)

# Varience 

var(my_data3$Height)

# finding specific rows and column (group by and mean median mode sd etc)
# Mean
lapply(my_data3[,2:3],mean)  # its same as group by and iloc fuction of python.


#Standard deviation 
lapply(my_data3[,2:3],sd)

# Varience 

lapply(my_data3[,2:3],var)

# summary
summary(my_data3)


# ANNOVA (Annalysis of Varience)
aov(my_data3$Height~my_data3$Crop)
a1<-aov(my_data3$Height~my_data3$Crop)

# Summary
summary(a1)

# Tuckky Test (to know specific varience)

TukeyHSD(a1)

# Group Annova (or Two way annoava or multi annova)

a2<-aov(my_data3$Height~my_data3$Crop*my_data3$Water)
summary(a2)
TukeyHSD(a2)
# for lettering one can install agricolae

