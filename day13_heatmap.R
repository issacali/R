# Heat Map

x <- mtcars

x <- as.matrix(mtcars)
dev.off()

heatmap(x,scale ="column")
  


#install.packages("gplots")

library(gplots)

#?heatmap.2()

heatmap.2(x,scale="column",col=bluered(100),margins = c(1,4))

dev.off()

heatmap.2(x,scale="column",col=bluered(100),margins=c(7,14),trace="none")

# PheatMap

install.packages("pheatmap")

library(pheatmap)
dev.off()

pheatmap(x,scale="column")

# cut after rows 
pheatmap(x,scale="column",cutree_rows = 4)

# Cut after columns 

pheatmap(x,scale="column",cutree_cols = 2)


# combined cut 

pheatmap(x,scale="column",cutree_rows = 4,cutree_cols=2)

# ggplot2

install.packages("reshape")

library(reshape)

y <- iris

# melt will combine all the columns :

y1 <- melt(y)

View(y1)


# ggplot
install.packages("ggplot2")
library(ggplot2)

ggplot(y1,aes(y1$Species,y1$variable,fill=y1$value))+
  geom_tile()

# Change color 

ggplot(y1,aes(y1$Species,y1$variable,fill=y1$value))+
  geom_tile()+
  scale_fill_gradient(low="yellow",high="green")






