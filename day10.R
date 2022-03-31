# Sccater plots in R

library(ggplot2)
data("cars")
View(cars)

ggplot(data=cars,aes(x=speed,y=dist))+geom_point()+
  geom_smooth(method = "lm",se=F,level=.70)


# Sccater Plot with muti lines 

data("Orange")
View(Orange)

ggplot(data=Orange,aes(age,circumference,color=Tree))+geom_point(size=3,shape=17)

 
# seperate by shape 
ggplot(data=Orange,aes(age,circumference,color=Tree))+geom_point(size=3,aes(shape=Tree))


# Showing lInes 
#+geom_point(size=3,aes(shape=5))

ggplot(data=Orange,aes(age,circumference,color=Tree))+geom_line(aes(linetype=Tree),size=1)+labs(x="age",y="circumference",title="Graph")

ggsave("sccaterPlot.pdf")


# Bubble Plot

install.packages("viridis")

library(viridis)

data("quakes")

View(quakes)
head(quakes)
nrow(quakes)
q_sample <- quakes[seq( from=1, to =1000, by=10),]
nrow(q_sample)

ggplot(data=q_sample,aes(x=lat,y=long))+geom_point()

ggplot(data=q_sample,aes(x=lat,y=long))+geom_point(aes(size=mag,color=mag))


ggplot(data=q_sample,aes(x=lat,y=long))+geom_point(aes(size=mag,color=mag))+
  guides(size=F)


ggplot(data=q_sample,aes(x=lat,y=long))+geom_point(aes(size=mag,color=mag))+
  guides(color=F)


# using color palets 

ggplot(data=q_sample,aes(x=lat,y=long))+geom_point(aes(size=mag,color=mag))+
  guides(size=F)+
  scale_color_viridis_b(option="B")

# Bubble size

ggplot(data=q_sample,aes(x=lat,y=long))+geom_point(aes(size=mag,color=mag))+
  guides(size=F)+
  scale_color_viridis_b(option="B")+
  scale_size_continuous(range=c(1,9))

# changing labs

ggplot(data=q_sample,aes(x=lat,y=long))+geom_point(aes(size=mag,color=mag))+
  guides(size=F)+
  scale_color_viridis_b(option="B")+
  scale_size_continuous(range=c(1,9))+
  labs(x="Latitude",y="Longitude",title="Graph")

  ggsave("BubblePlot.pdf")
  
  # Jitter Plot
  
data("diamonds")
View(diamonds)  
d_sample <- diamonds[seq(from=0,to=50000,by=100),]
nrow(d_sample)

ggplot(d_sample,aes(cut,price))+geom_point()


ggplot(d_sample,aes(cut,price))+geom_jitter()

ggplot(d_sample,aes(cut,price,color=cut))+geom_jitter()


