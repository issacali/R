# violin plot in ggplot
library(ggplot2)
data()
data("diamonds")
View(diamonds)

d_sample <- diamonds[seq(from=0, to =53000,by=100),]

nrow(d_sample)

# Violin Plot
ggplot(d_sample,aes(x=cut,y=price,color=cut))+geom_violin()
  

#Box Plot with violin
ggplot(d_sample,aes(x=cut,y=price,color=cut))+geom_violin()+
  geom_boxplot(width=0.1)



# Jitter plot

ggplot(d_sample,aes(x=cut,y=price,color=cut))+geom_violin()+
  geom_boxplot(width=0.1)+geom_jitter()

# saving Plot


ggplot(d_sample,aes(x=cut,y=price,color=cut))+geom_violin()+
  geom_boxplot(width=0.1)+geom_jitter()+
  ggsave("violinPlot.pdf")

